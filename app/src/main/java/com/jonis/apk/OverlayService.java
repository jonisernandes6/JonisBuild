package com.jonis.apk;                     // <‑‑ 1. Corregido
import android.util.Log;
import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;                   // <‑‑ 5. Importado
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

public class OverlayService extends Service {

    /* ----- CAMPOS ----- */
    private WindowManager wm;
    private LinearLayout panel;
    private FrameLayout burbuja;            // contenedor de la burbuja
    private View dragArea;                  // área para arrastrar panel
    private SharedPreferences prefs;

    /* ESP */
    private boolean espEnabled = false;
    private Thread hackThread;
    private volatile boolean running = true;
    private boolean drawLine = false, drawBox = false, drawName = false, drawDistance = false;
    private int maxDistanceM = 150;
    private int boxStyleIndex = 0;          // 0=Corner | 1=Full
    private final String[] BOX_STYLES = {"Esquina", "Completo"};

    /* COLORES */
    private static final int COLOR_BG = Color.parseColor("#121420");
    private static final int COLOR_HEADER = Color.parseColor("#FF374785");
    private static final int COLOR_ACCENT = Color.RED;   // Rojo puro para destacar ESP

    /* PARA EL PANEL */
    private WindowManager.LayoutParams panelParams;      // se inicializará en crearPanelHack()

    /* ----- MÉTODOS OVERRIDEN ----- */
    @Override
    public void onCreate() {
        super.onCreate();

        if (!Settings.canDrawOverlays(this)) {
            stopSelf();
            return;
        }

        wm = (WindowManager) getSystemService(WINDOW_SERVICE);
        prefs = getSharedPreferences("jonis_config", MODE_PRIVATE);

        crearBurbujaFlotante();
        crearPanelHack();
        mostrarPanel();   // El panel queda oculto hasta que toques la burbuja
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    /* ----- BARRA DE BURBUJA ----- */
    private void crearBurbujaFlotante() {
        burbuja = new FrameLayout(this);
        FrameLayout.LayoutParams lpIcon = new FrameLayout.LayoutParams(dp(58), dp(58));

        ImageView icon = new ImageView(this);
        icon.setImageBitmap(BitmapFactory.decodeResource(getResources(),
                android.R.drawable.ic_dialog_info));
        icon.setScaleType(ImageView.ScaleType.CENTER_CROP);

        GradientDrawable dIcon = new GradientDrawable();
        dIcon.setCornerRadius(dp(29));
        dIcon.setColor(COLOR_HEADER);
        icon.setBackground(dIcon);

        lpIcon.gravity = Gravity.CENTER;
        burbuja.addView(icon, lpIcon);

        WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                Build.VERSION.SDK_INT >= 26
                        ? WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
                        : WindowManager.LayoutParams.TYPE_PHONE,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE |
                        WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN,
                PixelFormat.TRANSLUCENT
        );

        params.gravity = Gravity.TOP | Gravity.END;
        params.x = dp(20);
        params.y = dp(200);

        final float[] offset = new float[2];
        burbuja.setOnTouchListener((v, e) -> {
            switch (e.getAction()) {
                case MotionEvent.ACTION_DOWN:
                    offset[0] = e.getRawX() - params.x;
                    offset[1] = e.getRawY() - params.y;
                    return true;

                case MotionEvent.ACTION_MOVE:
                    params.x = (int) (e.getRawX() - offset[0]);
                    params.y = (int) (e.getRawY() - offset[1]);
                    wm.updateViewLayout(burbuja, params);
                    return true;

                case MotionEvent.ACTION_UP:
                    if (Math.hypot(e.getRawX() - offset[0] - params.x,
                            e.getRawY() - offset[1] - params.y) < dp(5)) {
                        togglePanel();
                    }
                    return true;
            }
            return false;
        });

        wm.addView(burbuja, params);
    }

    /* ----- PANEL HACKABLE ----- */
    private void crearPanelHack() {
        panel = new LinearLayout(this) {
            @Override
            protected void onDetachedFromWindow() {
                try {
                    super.onDetachedFromWindow();
                } catch (Exception ignored) {
                }
            }
        };
        panel.setOrientation(LinearLayout.VERTICAL);
        panel.setBackgroundColor(Color.argb(230, 18, 20, 32));
        panel.setPadding(dp(4), dp(8), dp(4), dp(8));

        crearCabeceraPanel();
        crearNavegacionTabs();

        ScrollView scrollContenido = crearScrollContenido();
        panel.addView(scrollContenido, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.MATCH_PARENT));

        /* Parámetros del panel flotante */
        DisplayMetrics dm = getResources().getDisplayMetrics();
        int ancho = Math.min(dp(340), dm.widthPixels - (int) (48 * dm.density));
        int alto = Math.min(dm.heightPixels - (int) (96 * dm.density), dp(680));

        panelParams = new WindowManager.LayoutParams(
                ancho,
                alto,
                Build.VERSION.SDK_INT >= 26
                        ? WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
                        : WindowManager.LayoutParams.TYPE_PHONE,
                WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL
                        | WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH
                        | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN,
                PixelFormat.TRANSLUCENT);
    }

    /* ----- METODOS AUXILIARES (solo prototipos) ----- */
    private TextView titulo(String text) {
        TextView t = new TextView(this);
        t.setText(text);
        t.setTextColor(Color.WHITE);
        t.setTextSize(16);
        t.setTypeface(null, android.graphics.Typeface.BOLD);
        return t;
    }

    private Switch switchToggle(String label) {
        Switch s = new Switch(this);
        s.setText(label);
        s.setTextColor(Color.LTGRAY);
        s.setTextSize(14);
        return s;
    }

    private Button botonSimple(String txt) {
        Button b = new Button(this);
        b.setText(txt);
        b.setBackgroundColor(COLOR_HEADER);
        b.setTextColor(Color.WHITE);
        b.setAllCaps(false);
        return b;
    }

    /* ----- CABECERA ARRASTRABLE ----- */
    private void crearCabeceraPanel() {
        LinearLayout cabecera = new LinearLayout(this);
        cabecera.setOrientation(LinearLayout.HORIZONTAL);
        cabecera.setBackground(forma(COLOR_HEADER, 8));
        cabecera.setPadding(dp(8), dp(6), dp(8), dp(6));

        TextView titleText = titulo("🔴 FF H4CK v3");
        titleText.setTypeface(null, android.graphics.Typeface.BOLD_ITALIC);

        dragArea = cabecera;          // zona de arrastre

        Button btnClose = botonSimple("✕");
        btnClose.setOnClickListener(v -> cerrarPanel());

        cabecera.addView(titleText, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT,
                LinearLayout.LayoutParams.WRAP_CONTENT));
        cabecera.addView(btnClose, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT,
                LinearLayout.LayoutParams.WRAP_CONTENT));

        /* Listener para arrastrar el panel desde la cabecera */
        dragArea.setOnTouchListener(new View.OnTouchListener() {
            float sx, sy;
            int ox, oy;

            @Override
            public boolean onTouch(View v, MotionEvent ev) {
                if (ev.getAction() == MotionEvent.ACTION_DOWN) {
                    sx = ev.getRawX();
                    sy = ev.getRawY();
                    ox = panelParams.x;
                    oy = panelParams.y;
                    return true;
                }
                if (ev.getAction() == MotionEvent.ACTION_MOVE) {
                    panelParams.x = ox + (int) (ev.getRawX() - sx);
                    panelParams.y = oy + (int) (ev.getRawY() - sy);
                    wm.updateViewLayout(panel, panelParams);
                    return true;
                }
                return false;
            }
        });

        // Si quieres que el panel se añada aquí, hazlo
        // wm.addView(panel, panelParams);
    }

    /* ------- PUERTAS DE ENTRADA DE LOS MÉTODOS DE TAMAÑO ------- */
    private int dp(int px) {
        return (int) (px * getResources().getDisplayMetrics().density + 0.5f);
    }

    /* ------- METODOS QUE DEBERÍAS IMPLEMENTAR ------- */
    private void togglePanel() { /* … */ }
    private void cerrarPanel() { /* … */ }
    private void mostrarPanel() { /* … */ }
    private void crearNavegacionTabs() { /* … */ }
    private ScrollView crearScrollContenido() {
        ScrollView scroll = new ScrollView(this);
        LinearLayout contentLayout = new LinearLayout(this);
        contentLayout.setOrientation(LinearLayout.VERTICAL);
        contentLayout.setPadding(dp(8), dp(8), dp(8), dp(8));

        Switch espSwitch = switchToggle("👁️ ESP Enabled");

        espSwitch.setOnCheckedChangeListener((buttonView, isChecked) -> {
            espEnabled = isChecked;
            Log.d("JONIS_HACK", "ESP cambiado a: " + isChecked);

            if (isChecked && hackThread == null) {
                iniciarMotorHacks();
            }
        });

        contentLayout.addView(espSwitch);
        scroll.addView(contentLayout);
        return scroll;
    }

    private android.graphics.drawable.Drawable forma(int color, int radius) { 
        return null; 
    }

    private void iniciarMotorHacks() {
        if (hackThread != null && hackThread.isAlive()) return;

        hackThread = new Thread(() -> {
            while (running && !Thread.currentThread().isInterrupted()) {
                if (espEnabled) {
                    Log.d("JONIS_HACK", "Espia activo...");
                }
                try {
                    Thread.sleep(50);
                } catch (InterruptedException e) {
                    break;
                }
            }
        });
        hackThread.setDaemon(true);
        hackThread.start();
    }
}
