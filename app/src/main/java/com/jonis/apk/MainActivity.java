package com.jonis.apk;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Switch;
import android.widget.Button;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    private Switch switchEsp;
    private Button btnVpn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main); // Asegúrate que este archivo existe

        // Inicializar vistas
        switchEsp = findViewById(R.id.switchEsp);
        
        // Si tienes un botón VPN, descomenta esto:
        // btnVpn = findViewById(R.id.btnVpn);
        // btnVpn.setOnClickListener(v -> toggleVpn());

        // Lógica del Switch ESP
        switchEsp.setOnCheckedChangeListener((buttonView, isChecked) -> {
            if (isChecked) {
                startService(new Intent(this, OverlayService.class));
            } else {
                stopService(new Intent(this, OverlayService.class));
            }
        });
    }

    /*
    private void toggleVpn() {
        // Tu lógica de VPN aquí
    }
    */
}
