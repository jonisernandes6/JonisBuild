package com.jonis.apk.overlay;

import android.content.Context;
import android.graphics.*;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class OverlayView extends View {
    private List<OverlayItem> items = new ArrayList<>();
    
    // Variables para arrastrar la ventana
    private float touchStartX, touchStartY;
    private int viewStartX, viewStartY;
    private boolean isDragging = false;

    public OverlayView(Context context) {
        super(context);
        init();
    }

    public OverlayView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    private void init() {
        // Fondo oscuro semitransparente
        setBackgroundColor(Color.argb(200, 30, 30, 30)); 
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        
        Paint paint = new Paint();
        paint.setColor(Color.WHITE);
        paint.setTextSize(16);
        paint.setAntiAlias(true);

        // Título
        canvas.drawText("JONIS APK CONTROLS", 10, 20, paint);

        // Dibujar cada interruptor
        int yPos = 50;
        for (int i = 0; i < items.size(); i++) {
            OverlayItem item = items.get(i);
            
            // Fondo del botón
            Rect bgRect = new Rect(10, yPos - 15, getWidth() - 10, yPos + 15);
            paint.setColor(Color.parseColor("#444444"));
            canvas.drawRect(bgRect, new Paint(Paint.ANTI_ALIAS_FLAG));

            // Texto
            paint.setColor(Color.WHITE);
            canvas.drawText(item.label, 20, yPos, paint);

            // Indicador visual (Círculo verde/rojo)
            if (item.isToggle) {
                int switchX = getWidth() - 60;
                paint.setColor(item.active ? Color.GREEN : Color.RED);
                canvas.drawCircle(switchX, yPos, 8, paint);
            }
            
            yPos += 40;
        }
    }

    // Lógica de arrastre (Drag & Drop)
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case MotionEvent.ACTION_DOWN:
                touchStartX = event.getRawX();
                touchStartY = event.getRawY();
                viewStartX = getLeft();
                viewStartY = getTop();
                isDragging = true;
                break;
            case MotionEvent.ACTION_MOVE:
                if (isDragging) {
                    float deltaX = event.getRawX() - touchStartX;
                    float deltaY = event.getRawY() - touchStartY;
                    
                    // Actualizar posición en WindowManager
                    ((android.view.ViewGroup.MarginLayoutParams) getLayoutParams()).leftMargin = (int)(viewStartX + deltaX);
                    ((android.view.ViewGroup.MarginLayoutParams) getLayoutParams()).topMargin = (int)(viewStartY + deltaY);
                    requestLayout();
                }
                break;
            case MotionEvent.ACTION_UP:
                isDragging = false;
                break;
        }
        return true;
    }

    // Función pública para agregar botones desde MainActivity
    public void addItem(String label, boolean active, ToggleCallback callback) {
        items.add(new OverlayItem(label, active, callback));
        invalidate();
    }

    public interface ToggleCallback {
        void onToggle(boolean newState);
    }

    private static class OverlayItem {
        String label;
        boolean active;
        boolean isToggle = true;
        ToggleCallback callback;

        OverlayItem(String label, boolean active, ToggleCallback callback) {
            this.label = label;
            this.active = active;
            this.callback = callback;
        }
    }
}
