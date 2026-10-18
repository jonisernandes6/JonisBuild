package com.jonis.apk;

import android.content.Intent;
import android.net.VpnService;
import android.os.Bundle;
import android.provider.Settings;
import android.widget.Button;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    private Switch switchEsp;
    private Button btnVpn;
    private TextView txtVpnStatus;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Inicializar vistas
        switchEsp = findViewById(R.id.switchEsp);
        btnVpn = findViewById(R.id.btnVpn);
        txtVpnStatus = findViewById(R.id.txtVpnStatus);

        // Verificar permiso de Dibujo sobre otras Apps
        if (!Settings.canDrawOverlays(this)) {
            Toast.makeText(this, "Permiso de pantalla flotante requerido", Toast.LENGTH_LONG).show();
            Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION);
            intent.setData(android.net.Uri.parse("package:" + getPackageName()));
            startActivity(intent);
        }

        // Lógica del Switch ESP
        switchEsp.setOnCheckedChangeListener((buttonView, isChecked) -> {
            if (isChecked) {
                startService(new Intent(this, OverlayService.class));
                Toast.makeText(this, "ESP Activo", Toast.LENGTH_SHORT).show();
            } else {
                stopService(new Intent(this, OverlayService.class));
                Toast.makeText(this, "ESP Detenido", Toast.LENGTH_SHORT).show();
            }
        });

        // Lógica de la VPN
        btnVpn.setOnClickListener(v -> {
            Intent vpnIntent = VpnService.prepare(MainActivity.this);
            if (vpnIntent != null) {
                startActivityForResult(vpnIntent, 1);
            } else {
                startVpn();
            }
        });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 1) {
            if (resultCode == RESULT_OK) {
                startVpn();
            } else {
                txtVpnStatus.setText("VPN: Conexión denegada");
            }
        }
    }

    private void startVpn() {
        txtVpnStatus.setText("VPN: Conectando...");
        // Aquí iniciamos nuestro servicio VPN personalizado
        Intent vpnServiceIntent = new Intent(this, JonisVpnService.class);
        startService(vpnServiceIntent);
        txtVpnStatus.setText("VPN: Conectado");
    }
}
