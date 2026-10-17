package com.jonis.apk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends Activity {

    private WindowManager windowManager;
    private View overlayView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // UI Principal
        LinearLayout rootLayout = new LinearLayout(this);
        rootLayout.setOrientation(LinearLayout.VERTICAL);
        rootLayout.setBackgroundColor(Color.BLACK);

        TextView title = new TextView(this);
        title.setText("Jonis APK");
        title.setTextColor(Color.WHITE);
        title.setTextSize(24);
        title.setGravity(Gravity.CENTER);
        rootLayout.addView(title);

        Button btnTest = new Button(this);
        btnTest.setText("Probar Pestaña");
        btnTest.setOnClickListener(v -> mostrarPestaña("🎯 MIRA"));
        rootLayout.addView(btnTest);

        // Botón para pedir permiso si falta
        Button btnPermiso = new Button(this);
        btnPermiso.setText("Ir a Permisos de Superposición");
        btnPermiso.setOnClickListener(v -> abrirConfiguracionPermiso());
        rootLayout.addView(btnPermiso);

        setContentView(rootLayout);

        // Intentar mostrar el overlay
        intentarMostrarOverlay();
    }

    private void intentarMostrarOverlay() {
        if (Settings.canDrawOverlays(this)) {
            crearOverlay();
        } else {
            Log.d("JonisAPK", "Falta permiso OVERLAY, esperando configuración...");
            // Opcional: Mostrar un Toast avisando
            Toast.makeText(this, "Ve a Configuración > Apps > Jonis APK > Permisos > Superposición", Toast.LENGTH_LONG).show();
        }
    }

    private void crearOverlay() {
        windowManager = (WindowManager) getSystemService(Context.WINDOW_SERVICE);
        
        // Creamos un overlay visible para saber que funciona
        overlayView = new TextView(this);
        ((TextView) overlayView).setText("OVERLAY ACTIVO");
        ((TextView) overlayView).setTextColor(Color.RED);
        ((TextView) overlayView).setTextSize(16);
        
        WindowManager.LayoutParams params = new WindowManager.LayoutParams(
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE | WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH,
            PixelFormat.TRANSLUCENT
        );
        params.gravity = Gravity.TOP | Gravity.LEFT;
        params.x = 20;
        params.y = 20;

        try {
            windowManager.addView(overlayView, params);
            Log.d("JonisAPK", "Overlay creado con éxito");
        } catch (Exception e) {
            Log.e("JonisAPK", "Error creando overlay: " + e.getMessage());
        }
    }

    private void abrirConfiguracionPermiso() {
        Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION);
        intent.setData(android.net.Uri.parse("package:" + getPackageName()));
        startActivity(intent);
    }

    private void mostrarPestaña(String nombre) {
        Toast.makeText(this, "Pestaña: " + nombre, Toast.LENGTH_SHORT).show();
    }
}
