package com.jonis.apk;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.IpAddress;
import android.net.VpnService;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;

public class JonisVpnService extends VpnService {

    private static final String TAG = "JonisVpn";
    private ParcelFileDescriptor mInterface;

    @Override
    public void onCreate() {
        super.onCreate();
        createNotification();
        startForeground(1, buildNotification());
        
        // Hilo para configurar la VPN
        new Thread(() -> {
            try {
                Builder builder = new Builder();
                builder.addAddress("10.0.0.2", 24); // IP local simulada
                builder.addRoute("0.0.0.0", 0); // Ruteo todo el tráfico
                builder.addDnsServer("8.8.8.8"); // Google DNS
                
                mInterface = builder.setSession("Jonis Secure VPN").establish();
                Log.d(TAG, "VPN Interface Established");
            } catch (Exception e) {
                Log.e(TAG, "Error establishing VPN", e);
            }
        }).start();
    }

    private void createNotification() {
        // Crear canal de notificación para Android 8+
        NotificationChannel channel = new NotificationChannel("VPN_CHANNEL", 
                "Jonis VPN Status", NotificationManager.IMPORTANCE_LOW);
        getSystemService(NotificationManager.class).createNotificationChannel(channel);
    }

    private Notification buildNotification() {
        PendingIntent pendingIntent = PendingIntent.getActivity(
                this, 0, new Intent(this, MainActivity.class), 
                PendingIntent.FLAG_IMMUTABLE);
        
        return new Notification.Builder(this, "VPN_CHANNEL")
                .setContentTitle("Jonis VPN")
                .setContentText("Protección activa")
                .setSmallIcon(R.drawable.ic_notification) // Asegúrate de tener este icono
                .setContentIntent(pendingIntent)
                .build();
    }

    @Override
    public IBinder onBind(Intent intent) {
        return super.onBind(intent);
    }
    
    @Override
    public void onDestroy() {
        super.onDestroy();
        if (mInterface != null) {
            try {
                mInterface.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
