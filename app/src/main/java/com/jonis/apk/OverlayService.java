package com.jonis.apk;

import android.app.Service;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.IBinder;
import android.provider.Settings;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.*;
import android.graphics.Point;

public class OverlayService extends Service {

    private WindowManager wm;
    private TextView burbuja;
    private LinearLayout panel;
    private LinearLayout contenido;
    private WindowManager.LayoutParams bubbleParams;
    private WindowManager.LayoutParams panelParams;
    private android.content.SharedPreferences preferencias;

    private int azul = Color.rgb(35, 110, 255);
    private int fondo = Color.rgb(16, 18, 28);

    private final String[] pestanas = {
        "🎯 MIRA",
        "👁️ VISUAL",
        "👥 JUGADORES",
        "🧰 HERRAMIENTAS",
        "⚙️ AJUSTES"
    };

    @Override
    public void onCreate() {
        super.onCreate();

        if (!Settings.canDrawOverlays(this)) {
            stopSelf();
            return;
        }

        wm = (WindowManager) getSystemService(WINDOW_SERVICE);
        preferencias = getSharedPreferences("jonis_config", MODE_PRIVATE);

        crearBurbuja();
    }

    private int dp(int valor) {
        return (int) (valor * getResources()
            .getDisplayMetrics().density + 0.5f);
    }

    private GradientDrawable forma(int color, int radio) {
        GradientDrawable g = new GradientDrawable();
        g.setColor(color);
        g.setCornerRadius(dp(radio));
        return g;
    }

    private WindowManager.LayoutParams parametros(
        int ancho, int alto, boolean noEnfocable) {

        int tipo;

        if (Build.VERSION.SDK_INT >= 26) {
            tipo = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
        } else {
            tipo = WindowManager.LayoutParams.TYPE_PHONE;
        }

        int banderas = WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN;

        if (noEnfocable) {
            banderas |= WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
        }

        WindowManager.LayoutParams p =
            new WindowManager.LayoutParams(
                ancho,
                alto,
                tipo,
                banderas,
                PixelFormat.TRANSLUCENT
            );

        p.gravity = Gravity.TOP | Gravity.START;
        p.x = dp(12);
        p.y = dp(180);

        return p;
    }

    private void crearBurbuja() {
        burbuja = new TextView(this);
        burbuja.setText("🤖");
        burbuja.setTextSize(25);
        burbuja.setGravity(Gravity.CENTER);
        burbuja.setTextColor(Color.WHITE);
        burbuja.setBackground(forma(azul, 100));

        bubbleParams = parametros(dp(58), dp(58), true);

        burbuja.setOnTouchListener(new View.OnTouchListener() {
            float inicioX, inicioY;
            int originalX, originalY;
            boolean movido;

            @Override
            public boolean onTouch(View v, MotionEvent e) {
                switch (e.getAction()) {
                    case MotionEvent.ACTION_DOWN:
                        inicioX = e.getRawX();
                        inicioY = e.getRawY();
                        originalX = bubbleParams.x;
                        originalY = bubbleParams.y;
                        movido = false;
                        return true;

                    case MotionEvent.ACTION_MOVE:
                        int dx = (int) (e.getRawX() - inicioX);
                        int dy = (int) (e.getRawY() - inicioY);

                        if (Math.abs(dx) > dp(5)
                                || Math.abs(dy) > dp(5)) {
                            movido = true;
                        }

                        bubbleParams.x = Math.max(0, originalX + dx);
                        bubbleParams.y = Math.max(0, originalY + dy);
                        wm.updateViewLayout(burbuja, bubbleParams);
                        return true;

                    case MotionEvent.ACTION_UP:
                        if (!movido) {
                            if (panel == null) {
                                mostrarPanel();
                            } else {
                                cerrarPanel();
                            }
                        }
                        return true;
                }

                return false;
            }
        });

        wm.addView(burbuja, bubbleParams);
    }

    private TextView texto(String valor, int tamano) {
        TextView t = new TextView(this);
        t.setText(valor);
        t.setTextColor(Color.WHITE);
        t.setTextSize(tamano);
        t.setPadding(dp(6), dp(8), dp(6), dp(8));
        return t;
    }

    private Button boton(String nombre, Runnable accion) {
        Button b = new Button(this);
        b.setText(nombre);
        b.setTextColor(Color.WHITE);
        b.setAllCaps(false);
        b.setOnClickListener(v -> accion.run());
        return b;
    }

    private void mostrarPanel() {
        if (panel != null) return;

        panel = new LinearLayout(this);
        panel.setOrientation(LinearLayout.VERTICAL);
        panel.setPadding(dp(10), dp(8), dp(10), dp(10));
        panel.setBackground(forma(fondo, 18));

        LinearLayout cabecera = new LinearLayout(this);
        cabecera.setGravity(Gravity.CENTER_VERTICAL);
        cabecera.setBackground(forma(Color.rgb(30, 42, 68), 12));

        TextView titulo = texto("🤖 JONIS APK", 19);
        titulo.setTypeface(null, Typeface.BOLD);
        cabecera.addView(titulo,
            new LinearLayout.LayoutParams(0, -2, 1));

        Button cerrar = boton("✕", this::cerrarPanel);
        cabecera.addView(cerrar);
        panel.addView(cabecera);

        cabecera.setOnTouchListener(new View.OnTouchListener() {
            float sx, sy;
            int ox, oy;

            @Override
            public boolean onTouch(View v, MotionEvent e) {
                if (e.getAction() == MotionEvent.ACTION_DOWN) {
                    sx = e.getRawX();
                    sy = e.getRawY();
                    ox = panelParams.x;
                    oy = panelParams.y;
                    return true;
                }

                if (e.getAction() == MotionEvent.ACTION_MOVE) {
                    panelParams.x = ox + (int) (e.getRawX() - sx);
                    panelParams.y = oy + (int) (e.getRawY() - sy);
                    wm.updateViewLayout(panel, panelParams);
                    return true;
                }

                return e.getAction() == MotionEvent.ACTION_UP;
            }
        });

        LinearLayout navegacion = new LinearLayout(this);
        navegacion.setOrientation(LinearLayout.VERTICAL);

        for (String nombre : pestanas) {
            navegacion.addView(boton(nombre, () -> mostrarPestana(nombre)));
        }

        panel.addView(navegacion);

        ScrollView scroll = new ScrollView(this);
        contenido = new LinearLayout(this);
        contenido.setOrientation(LinearLayout.VERTICAL);
        contenido.setPadding(dp(4), dp(6), dp(4), dp(8));
        scroll.addView(contenido);

        panel.addView(scroll,
            new LinearLayout.LayoutParams(-1, dp(280)));

        panelParams = parametros(dp(310), -2, false);
        panelParams.x = dp(8);
        panelParams.y = dp(90);

        wm.addView(panel, panelParams);
        mostrarPestana(pestanas[0]);
    }

    private void mostrarPestana(String nombre) {
        if (contenido == null) return;

        contenido.removeAllViews();
        contenido.addView(texto(nombre, 20));

        if (nombre.contains("MIRA")) {
            agregarInterruptor("Activar círculo visual");
            agregarDeslizador("Tamaño del círculo", 20, 200);
            agregarInterruptor("Mostrar indicador");

        } else if (nombre.contains("VISUAL")) {
            agregarInterruptor("Activar visualización de demostración");
            agregarInterruptor("Mostrar líneas");
            agregarInterruptor("Mostrar cuadros de ejemplo");
            agregarInterruptor("Mostrar nombres de ejemplo");
            agregarInterruptor("Mostrar distancias de ejemplo");
            agregarDeslizador("Distancia máxima", 10, 200);
            agregarSelectorEstilo();
            agregarInterruptor("Mostrar contador de ejemplo");
            agregarDeslizador("Grosor de las líneas", 1, 10);

        } else if (nombre.contains("JUGADORES")) {
            agregarInterruptor("Mostrar lista de ejemplo");
            agregarBotonAccion("Ver jugadores de demostración");

        } else if (nombre.contains("HERRAMIENTAS")) {
            agregarInterruptor("Activar modo de demostración");
            agregarBotonAccion("Mostrar estado");

        } else {
            agregarInterruptor("Modo oscuro");
            agregarDeslizador("Tamaño de los controles", 10, 30);
            agregarDeslizador("Transparencia visual", 10, 100);
            agregarBotonAccion("Restablecer preferencias");
        }
    }

    private void agregarInterruptor(String nombre) {
        Switch control = new Switch(this);
        control.setText(nombre);
        control.setTextColor(Color.WHITE);
        control.setTextSize(14);
        control.setPadding(dp(6), dp(8), dp(6), dp(8));

        control.setChecked(preferencias.getBoolean(nombre, false));

        control.setOnCheckedChangeListener((b, activo) ->
            preferencias.edit().putBoolean(nombre, activo).apply());

        contenido.addView(control);
    }

    private void agregarDeslizador(
        String nombre, int minimo, int maximo) {

        TextView etiqueta = texto("", 14);
        SeekBar barra = new SeekBar(this);
        barra.setMax(maximo - minimo);

        int inicial = minimo + (maximo - minimo) / 2;
        int valor = preferencias.getInt(nombre, inicial);
        valor = Math.max(minimo, Math.min(maximo, valor));

        barra.setProgress(valor - minimo);
        etiqueta.setText(nombre + ": " + valor);

        barra.setOnSeekBarChangeListener(
            new SeekBar.OnSeekBarChangeListener() {
                @Override
                public void onProgressChanged(
                    SeekBar b, int progreso, boolean usuario) {

                    int actual = minimo + progreso;
                    etiqueta.setText(nombre + ": " + actual);

                    if (usuario) {
                        preferencias.edit()
                            .putInt(nombre, actual)
                            .apply();
                    }
                }

                @Override
                public void onStartTrackingTouch(SeekBar b) {}

                @Override
                public void onStopTrackingTouch(SeekBar b) {}
            });

        contenido.addView(etiqueta);
        contenido.addView(barra);
    }

    private void agregarSelectorEstilo() {
        contenido.addView(texto("Estilo de los cuadros", 14));

        String[] estilos = {"Esquinas", "Completo"};

        Spinner selector = new Spinner(this);
        ArrayAdapter<String> adaptador = new ArrayAdapter<>(
            this,
            android.R.layout.simple_spinner_item,
            estilos
        );

        adaptador.setDropDownViewResource(
            android.R.layout.simple_spinner_dropdown_item);

        selector.setAdapter(adaptador);

        String guardado = preferencias.getString(
            "Estilo de los cuadros", "Esquinas");

        selector.setSelection(guardado.equals("Completo") ? 1 : 0);

        selector.setOnItemSelectedListener(
            new android.widget.AdapterView.OnItemSelectedListener() {
                @Override
                public void onItemSelected(
                    android.widget.AdapterView<?> parent,
                    View view, int posicion, long id) {

                    preferencias.edit()
                        .putString("Estilo de los cuadros", estilos[posicion])
                        .apply();
                }

                @Override
                public void onNothingSelected(
                    android.widget.AdapterView<?> parent) {}
            });

        contenido.addView(selector);
    }

    private void agregarBotonAccion(String nombre) {
        contenido.addView(boton(nombre, () -> {
            if (nombre.equals("Restablecer preferencias")) {
                preferencias.edit().clear().apply();
                mostrarPestana("⚙️ AJUSTES");
                Toast.makeText(this,
                    "Preferencias restablecidas",
                    Toast.LENGTH_SHORT).show();

            } else if (nombre.equals("Mostrar estado")) {
                Toast.makeText(this,
                    "Modo de demostración",
                    Toast.LENGTH_SHORT).show();

            } else {
                Toast.makeText(this,
                    "Lista de demostración",
                    Toast.LENGTH_SHORT).show();
            }
        }));
    }

    private void cerrarPanel() {
        if (panel != null) {
            try {
                wm.removeView(panel);
            } catch (Exception ignored) {}

            panel = null;
            contenido = null;
        }
    }

    @Override
    public void onDestroy() {
        cerrarPanel();

        if (burbuja != null) {
            try {
                wm.removeView(burbuja);
            } catch (Exception ignored) {}

            burbuja = null;
        }

        super.onDestroy();
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }
}
