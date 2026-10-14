package com.jonis.apk;

import android.app.Activity;
import android.os.Bundle;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Switch;
import android.widget.SeekBar;
import android.widget.Toast;

public class MainActivity extends Activity {

private LinearLayout contenido;
private TextView titulo;
private android.content.SharedPreferences preferencias;

private final String[] pestañas = {
    "🎯 MIRA", "👁️ VISUAL", "👥 JUGADORES",
    "🧰 HERRAMIENTAS", "⚙️ AJUSTES"
};

@Override
protected void onCreate(Bundle estado) {
    super.onCreate(estado);

    comprobarPermisoFlotante();
    preferencias = getSharedPreferences("jonis_config", MODE_PRIVATE);

    LinearLayout principal = new LinearLayout(this);
    principal.setOrientation(LinearLayout.VERTICAL);
    principal.setPadding(14, 14, 14, 14);
    principal.setBackgroundColor(Color.rgb(16, 18, 28));

    titulo = new TextView(this);
    titulo.setText("🤖 JONIS APK");
    titulo.setTextColor(Color.WHITE);
    titulo.setTextSize(24);
    titulo.setTypeface(null, Typeface.BOLD);
    titulo.setGravity(Gravity.CENTER);
    titulo.setPadding(8, 16, 8, 20);
    principal.addView(titulo);

    LinearLayout navegacion = new LinearLayout(this);
    navegacion.setOrientation(LinearLayout.VERTICAL);

    for (String nombre : pestañas) {
        Button boton = new Button(this);
        boton.setText(nombre);
        boton.setTextColor(Color.WHITE);
        boton.setAllCaps(false);
        boton.setOnClickListener(v -> mostrarPestaña(nombre));
        navegacion.addView(boton);
    }

    principal.addView(navegacion);

    ScrollView desplazamiento = new ScrollView(this);
    contenido = new LinearLayout(this);
    contenido.setOrientation(LinearLayout.VERTICAL);
    contenido.setPadding(4, 12, 4, 12);

    desplazamiento.addView(contenido);
    principal.addView(desplazamiento,
        new LinearLayout.LayoutParams(-1, 0, 1));

    setContentView(principal);
    mostrarPestaña("🎯 MIRA");
}

private void mostrarPestaña(String nombre) {
    contenido.removeAllViews();
    titulo.setText("🤖 JONIS APK\n" + nombre);

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
        agregarBoton("Ver jugadores de demostración");
    } else if (nombre.contains("HERRAMIENTAS")) {
        agregarInterruptor("Activar modo de demostración");
        agregarBoton("Mostrar estado");
    } else {
        agregarInterruptor("Modo oscuro");
        agregarDeslizador("Tamaño de los controles", 10, 30);
        agregarDeslizador("Transparencia visual", 10, 100);
        agregarBoton("Restablecer preferencias");
    }
}

private void agregarInterruptor(String texto) {
    Switch control = new Switch(this);
    control.setText(texto);
    control.setTextColor(Color.WHITE);
    control.setTextSize(15);
    control.setPadding(8, 12, 8, 12);

    boolean guardado = preferencias.getBoolean(texto, false);
    control.setChecked(guardado);

    control.setOnCheckedChangeListener((boton, activo) -> {
        preferencias.edit().putBoolean(texto, activo).apply();

        Toast.makeText(this,
            texto + (activo ? ": activado" : ": desactivado"),
            Toast.LENGTH_SHORT).show();
    });

    contenido.addView(control);
}

private void agregarDeslizador(String texto, int minimo, int maximo) {
    TextView etiqueta = new TextView(this);
    etiqueta.setTextColor(Color.WHITE);
    etiqueta.setTextSize(15);
    etiqueta.setPadding(8, 12, 8, 0);

    SeekBar barra = new SeekBar(this);
    barra.setMax(maximo - minimo);

    int valorGuardado = preferencias.getInt(
        texto, minimo + (maximo - minimo) / 2
    );
    valorGuardado = Math.max(minimo, Math.min(maximo, valorGuardado));
    barra.setProgress(valorGuardado - minimo);

    etiqueta.setText(texto + ": " + valorGuardado);
    contenido.addView(etiqueta);
    contenido.addView(barra);

    barra.setOnSeekBarChangeListener(
        new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(
                SeekBar seekBar, int progreso, boolean usuario) {
                int valor = minimo + progreso;
                etiqueta.setText(texto + ": " + valor);

                if (usuario) {
                    preferencias.edit().putInt(texto, valor).apply();
                }
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {}

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {}
        }
    );
}

private void agregarBoton(String texto) {
    Button boton = new Button(this);
    boton.setText(texto);
    boton.setAllCaps(false);

    boton.setOnClickListener(v -> {
        if (texto.equals("Restablecer preferencias")) {
            preferencias.edit().clear().apply();
            mostrarPestaña("⚙️ AJUSTES");
            Toast.makeText(
                this,
                "Preferencias restablecidas",
                Toast.LENGTH_SHORT
            ).show();
        } else {
            Toast.makeText(
                this,
                texto,
                Toast.LENGTH_SHORT
            ).show();
        }
    });

    contenido.addView(boton);
}
private void agregarSelectorEstilo() {
    TextView etiqueta = new TextView(this);
    etiqueta.setText("Estilo de los cuadros");
    etiqueta.setTextColor(Color.WHITE);
    etiqueta.setTextSize(15);
    etiqueta.setPadding(8, 12, 8, 0);
    contenido.addView(etiqueta);

    android.widget.Spinner selector =
        new android.widget.Spinner(this);

    String[] estilos = {"Esquinas", "Completo"};

    android.widget.ArrayAdapter<String> adaptador =
        new android.widget.ArrayAdapter<>(
            this,
            android.R.layout.simple_spinner_item,
            estilos
        );

    adaptador.setDropDownViewResource(
        android.R.layout.simple_spinner_dropdown_item
    );

    selector.setAdapter(adaptador);

    String guardado = preferencias.getString("Estilo de los cuadros", "Esquinas");
    int posicion = guardado.equals("Completo") ? 1 : 0;
    selector.setSelection(posicion);

    selector.setOnItemSelectedListener(
        new android.widget.AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(
                android.widget.AdapterView<?> parent,
                android.view.View view,
                int posicion,
                long id) {

                preferencias.edit()
                    .putString("Estilo de los cuadros", estilos[posicion])
                    .apply();
            }

            @Override
            public void onNothingSelected(
                android.widget.AdapterView<?> parent) {}
        }
    );

    contenido.addView(selector);
}

@Override
protected void onResume() {
    super.onResume();

    if (android.provider.Settings.canDrawOverlays(this)) {
        android.content.Intent intent =
            new android.content.Intent(this, OverlayService.class);

        startService(intent);
    }
}

private void comprobarPermisoFlotante() {
    if (!android.provider.Settings.canDrawOverlays(this)) {
        android.content.Intent intent =
            new android.content.Intent(
                android.provider.Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                android.net.Uri.parse("package:" + getPackageName())
            );

        startActivity(intent);
    }
}

}
