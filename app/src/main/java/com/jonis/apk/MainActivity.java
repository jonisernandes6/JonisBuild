package com.jonis.apk;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Switch;
import android.widget.Toast;

public class MainActivity extends Activity {

    // Tus vistas
    private Switch switchEsp;
    private Button btnVpn;
    
    // Tu servicio de overlay (asegúrate que la clase EspOverlayService exista)
    private EspOverlayService espService;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        // Cargar el layout XML
        setContentView(R.layout.activity_main);

        // Inicializar botones/interruptores
        switchEsp = findViewById(R.id.switchEsp);
        btnVpn = findViewById(R.id.btnStartVpn);

        // Lógica de Trampas/ESP
        switchEsp.setOnCheckedChangeListener((buttonView, isChecked) -> {
            if (isChecked) {
                startEspService();
            } else {
                stopEspService();
            }
        });

        // Lógica de VPN
        btnVpn.setOnClickListener(v -> {
            toggleVpn();
        });
    }

    private void startEspService() {
        Intent intent = new Intent(this, EspOverlayService.class);
        startForegroundService(intent);
        Toast.makeText(this, "ESP Activo", Toast.LENGTH_SHORT).show();
    }

    private void stopEspService() {
        Intent intent = new Intent(this, EspOverlayService.class);
        stopService(intent);
        Toast.makeText(this, "ESP Inactivo", Toast.LENGTH_SHORT).show();
    }

    private void toggleVpn() {
        // Aquí llamas a tu servicio VPN real
        // Ejemplo: startService(new Intent(this, MiServicioVpn.class));
        Toast.makeText(this, "VPN Toggle", Toast.LENGTH_SHORT).show();
    }
}
