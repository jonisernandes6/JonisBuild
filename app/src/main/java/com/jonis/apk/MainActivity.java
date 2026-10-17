package com.jonis.apk;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.provider.Settings;

public class MainActivity extends Activity {

    private WindowManager windowManager;
    private View overlayView; // Usamos View genérico para evitar conflictos de clase

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // 1. Crear UI principal programáticamente (no necesitamos XML)
        LinearLayout rootLayout = new LinearLayout(this);
        rootLayout.setOrientation(LinearLayout.VERTICAL);
        rootLayout.setBackgroundColor(Color.BLACK);

        TextView title = new TextView(this);
        title.setText("Jonis APK - Funcionando");
        title.setTextColor(Color.WHITE);
        title.setTextSize(24);
        title.setGravity(Gravity.CENTER);
        rootLayout.addView(title);

        Button btnTest = new Button(this);
        btnTest.setText("Probar Pestaña");
        btnTest.setOnClickListener(v -> mostrarPestaña("🎯 MIRA"));
        rootLayout.addView(btnTest);

        setContentView(rootLayout);

        // 2. Inicializar Overlay Flotante
        windowManager = (WindowManager) getSystemService(Context.WINDOW_SERVICE);
        
        // Creamos una vista simple como overlay
        overlayView = new TextView(this);
        ((TextView) overlayView).setText("Overlay Activo");
        ((TextView) overlayView).setTextColor(Color.GREEN);
        
        WindowManager.LayoutParams params = new WindowManager.LayoutParams(
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
            PixelFormat.TRANSLUCENT
        );
        params.gravity = Gravity.TOP | Gravity.RIGHT;
        params.x = 0;
        params.y = 50;

        try {
            windowManager.addView(overlayView, params);
            Log.d("JonisAPK", "Overlay añadido correctamente");
        } catch (Exception e) {
            Log.e("JonisAPK", "Error al añadir overlay: " + e.getMessage());
        }
        
        comprobarPermisoFlotante();
    }

    // Método que faltaba y causaba error
    private void mostrarPestaña(String nombre) {
        Toast.makeText(this, "Abriendo pestaña: " + nombre, Toast.LENGTH_SHORT).show();
        Log.d("JonisAPK", "Pestaña mostrada: " + nombre);
    }

    private void comprobarPermisoFlotante() {
        if (!Settings.canDrawOverlays(this)) {
            Log.w("JonisAPK", "Permiso de dibujo pendiente");
        }
    }
}
