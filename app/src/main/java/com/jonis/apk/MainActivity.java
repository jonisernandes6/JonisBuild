import com.jonis.apk.OverlayView;
import android.util.Log;
import android.content.Intent;
import android.provider.Settings;
import android.view.WindowManager;
import android.graphics.PixelFormat;
import android.os.Build;
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
protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    // 🔒 NUEVO: Verificar permiso ANTES de tocar el WindowManager
    if (!android.provider.Settings.canDrawOverlays(this)) {
        new android.app.AlertDialog.Builder(this)
            .setTitle("Permiso Oscuro")
            .setMessage("Necesitas activar 'Dibujar sobre otras apps' para que funcione.")
            .setPositiveButton("Ir a Ajustes", (dialog, which) -> {
                startActivity(new Intent(android.provider.Settings.ACTION_MANAGE_OVERLAY_PERMISSION));
            })
            .setNegativeButton("Salir", (dialog, which) -> finish())
            .show();
        return; // ¡Salimos aquí! No intentamos crear la ventana sin permiso.
    }

    // --- CÓDIGO ORIGINAL PROTEGIDO ---
    comprobarPermisoFlotante();
    preferencias = getSharedPreferences("jonis_config", MODE_PRIVATE);

    // 1. Inicializar el WindowManager para crear ventanas flotantes
    WindowManager windowManager = (WindowManager) getSystemService(WINDOW_SERVICE);

    // 2. Definir los parámetros de la ventana (Tamaño y Tipo)
    WindowManager.LayoutParams params = new WindowManager.LayoutParams(
        350, // Ancho
        450, // Alto
        Build.VERSION.SDK_INT >= Build.VERSION_CODES.O
            ? WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
            : WindowManager.LayoutParams.TYPE_PHONE,
        WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE |
        WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL, 
        PixelFormat.TRANSLUCENT
    );

    // 3. Crear la instancia de tu OverlayView (Asegúrate que 'R.layout.your_layout' sea correcto)
    View overlay = LayoutInflater.from(this).inflate(R.layout.your_layout_name_here, null);

    // 4. ⚠️ IMPORTANTE: Añadir la vista al WindowManager. Sin esto, no se ve.
    windowManager.addView(overlay, params);


    // 3. Crear la instancia de tu OverlayView
    OverlayView overlay = new OverlayView(this);

    // 4. Agregar los botones funcionales
    overlay.addItem("Aimbot", true, newState -> {
        Log.d("JonisAPK", "Aimbot cambiado a: " + newState);
    });

    overlay.addItem("ESP Wallhack", false, newState -> {
        Log.d("JonisAPK", "ESP cambiado a: " + newState);
    });

    overlay.addItem("Speed Hack", false, newState -> {
        Log.d("JonisAPK", "Speed cambiado a: " + newState);
    });

    // 5. Añadir la vista al sistema
    windowManager.addView(overlay, params);

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

}
