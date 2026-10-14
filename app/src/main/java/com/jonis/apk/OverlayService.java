package com.jonis.apk;

import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.*;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.provider.Settings;
import android.view.*;
import android.widget.*;

import java.util.ArrayList;
import java.util.List;

public class OverlayService extends Service {

    private WindowManager wm;
    private LinearLayout panel;
    private FrameLayout burbuja; // Ahora es contenedor con margen interno
    private View dragArea; // Zona para arrastrar panel
    private SharedPreferences prefs;

    // Estados del hack ESP
    private boolean espEnabled = false;
    private boolean drawLine = false, drawBox = false, drawName = false, drawDistance = false;
    private int maxDistanceM = 150;
    private int boxStyleIndex = 0; // 0=Corner | 1=Full
    private final String[] BOX_STYLES = {"Esquina", "Completo"};

    // Colores premium
    private int COLOR_BG = Color.parseColor("#121420");
    private int COLOR_HEADER = Color.parseColor("#FF374785");
    private int COLOR_ACCENT = Color.RED; // Rojo puro para destacar ESP

    @Override
    public void onCreate() {
        super.onCreate();

        if (!Settings.canDrawOverlays(this)) {
            stopSelf();
            return;
        }

        wm = getSystemService(WindowManager.class);
        prefs = getSharedPreferences("jonis_config", MODE_PRIVATE);

        crearBurbujaFlotante();
        crearPanelHack();
        mostrarPanel(); // Panel oculto al inicio — aparece SOLO si tocas la burbuja
    }

    @Override
    public IBinder onBind(Intent intent) { return null; }

    // --- 💣 CREAR BURBUJA FLOTANTE --- //

private void crearBurbujaFlotante (){
burbuja=new FrameLayout(this ); 
FrameLayout.LayoutParams lpIcon=new FrameLayout.LayoutParams(dp(58 ),dp(58 )); 
ImageView icon=new ImageView(this ); 
icon.setImageBitmap(BitmapFactory.decodeResource(getResources(),android.R.drawable.ic_dialog_info )); 

icon.setScaleType(ImageView.ScaleType.CENTER_CROP );

GradientDrawable dIcon=new GradientDrawable (); 
dIcon.setCornerRadius(dp(29 )); 
dIcon.setColor(COLOR_HEADER );
icon.setBackground(dIcon );

lpIcon.gravity=Gravity.CENTER ;
burbuja.addView(icon ,lpIcon );

WindowManager.LayoutParams params=new WindowManager.LayoutParams(
WindowManager.LayoutParams.WRAP_CONTENT ,
WindowManager.LayoutParams.WRAP_CONTENT ,
Build.VERSION.SDK_INT >=26 ?
WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY :
WindowManager.LayoutParams.TYPE_PHONE ,

WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE |
WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN ,
PixelFormat.TRANSLUCENT );

params.gravity=Gravity.TOP |Gravity.END ;
params.x=dp(20 );
params.y=dp(200 );

final float []offset=new float[2 ];
burbuja.setOnTouchListener ((v,e)->{
switch(e.getAction ()){

case MotionEvent.ACTION_DOWN :
offset [0 ]=(int )(e.getRawX ()- params.x );
offset [1 ]=(int )(e.getRawY () - params.y ); return true ;

case MotionEvent.ACTION_MOVE :
params.x =(int )(e.getRawX () - offset [0 ]); 
params.y =(int )(e .getRawY () - offset [1 ]);
wm.updateViewLayout(burbuja ,params ); return true ;

case MotionEvent.ACTION_UP :
if(Math.hypot(e.getRawX () - offset[0 ] - params.x , e .getRawY () - offset [1 ] - params .y ) < dp(5 )){ togglePanel(); } return true ;
}
return false ;
});

wm.addView(burbuja ,params );
}

// --- 🖼️ PANEL HACKABLE TIPO LVTEAM --- //

private void crearPanelHack (){
panel=new LinearLayout(this ){ @Override protected void onDetachedFromWindow (){ try{super.onDetachedFromWindow ();}catch(Exception ignored){}}};
panel.setOrientation(LinearLayout.VERTICAL );
panel.setBackgroundColor(Color.argb(230 ,18 ,20 ,32 ));
panel.setPadding(dp(4 ),dp(8 ),dp(4 ),dp(8 ));

crearCabeceraPanel ();
crearNavegacionTabs ();
ScrollView scrollContenido=createScrollContenido (); 
panel.addView(scrollContenido,new LinearLayout.LayoutParams(MATCH_PARENT ,MATCH_PARENT ));

// Parámetros del panel flotante adaptable

float density=getResources ().getDisplayMetrics ().density ;
DisplayMetrics dm=getResources ().getDisplayMetrics ();

int ancho=Math.min(dp (340 ),dm.widthPixels -(int )(48 *density ));
int alto=Math.min(dm.heightPixels -(int )(96 *density ),dp (680 ));

panelParams=new WindowManager.LayoutParams (
ancho ,
alto ,
Build.VERSION.SDK_INT >=26 ? WindowManager .LayoutParams.TYPE_APPLICATION_OVERLAY : WindowManager .LayoutParams.TYPE_PHONE ,
WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL | WindowManager .LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH |
WindowManager .LayoutParams.FLAG_LAYOUT_IN_SCREEN ,
PixelFormat.TRANSLUCENT );

}

private TextView titulo(String text ){
TextView t=new TextView(this ); t.setText(text ); t.setTextColor(Color.WHITE ); t.setTextSize(16);t.setTypeface(null , Typeface.BOLD );
return t ;}

private Switch switchToggle(String label ){
Switch s=new Switch(this ); s.setText(label ); s.setTextColor(Color.LTGRAY);s.setTextSize(14);return s ;}

private Button botonSimple(String txt ){
Button b=new Button(this ); b.setText(txt);b.setBackgroundColor(COLOR_HEADER);b.setTextColor(Color.WHITE);b.setAllCaps(false);return b;}

// Cabecera arrastrable

private void crearCabeceraPanel(){
LinearLayout cabecera=new LinearLayout(this);
cabecera.setOrientation(HORIZONTAL);
cabecera.setBackground(forma(COLOR_HEADER ,8));
cabecera.setPadding(dp(8),dp(6),dp(8),dp(6));

TextView titleText=titulo("🔴 FF H4CK v3");
titleText.setTypeface(null, Typeface.BOLD_ITALIC);

dragArea=cabecera;// zona de arrastre

Button btnClose=botonSimple("✕");
btnClose.setOnClickListener(v->cerrarPanel());

cabecera.addView(titleText,new LinearLayout.LayoutParams(WRAP_CONTENT,WRAP_CONTENT));
cabecera.addView(btnClose,new LinearLayout.LayoutParams(WRAP_CONTENT,-2));

LinearLayout headerWrapper=new LinearLayout(this);
headerWrapper.addView(cabecera);

// Agregar listener de drag aquí también si quieres mover todo el panel por cabecera

headerWrapper.setOnTouchListener(new View.OnTouchListener() {
float sx,sy;int ox,oy;
@Override public boolean onTouch(View v,MotionEvent ev){
if(ev.getAction()==MotionEvent.ACTION_DOWN){
sx=ev.getRawX();sy=ev.getRawY();ox=panelParams.x;oy=panelParams.y;return true;}
if(ev.getAction()==MotionEvent.ACTION_MOVE){
panelParams.x=(ox+(int)(ev.getRawX()-sx));
panelParams.y=(oy+(int)(ev.getRawY()-sy));
wm.updateViewLayout(panel, panelParams);
return true;}
return false;} });

contenidoCabecerA=cabecerA;cabecerA=wHeader;r.addVieW(panel);}
cabe erA.addVieW(btnCl ose);}

LinearLayo ut navi gacionT abs;navig ationTa bs=n ew Linear Layout(t his); navigat ionTab s.se tOr ientati on(l ayoutH orizon tal?LINE AR_HORIZ ONTAL: LINEAR _VERTICAL );

for(Str ing nomb re:pe stanas ){

final But ton tab=b otonSim ple(nom bre);

tab.s etBack groundCol or(nam e.cont ains ("VIS UAL")?C OLOR_AC CEN T:C OLORES _DEF);

tab.se tOnCli ckL istene r((v )->m ostr arPest ana(no mbre)));

navigat ionTab s.add View(ta b);}

if(lay outHoriz ontal){

HorizontalScrollView hs croll=n ew Horizo ntalScro llView(th is);

hs cro ll.a ddVie w(nav igation Tabs); pan el.a ddVi ew(hs roll)

;}else{pane l.a ddV iew(na viga tionT abs);}

conten ido=a ddScr ollCon tenid o(); pa nel.ad dView(s crollCon tenido,params Conten ido);

pan elPar ams=d pPa rams(d pPa nelWi dth,d pH ei ghtTru e,fal se)

pan elPar ams.x=d pOf fs et X;p anel Params.y=d po ffset Y;

w m.ad dVi ew(p anel,p anelP arams)}
