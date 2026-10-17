package com.jonis.apk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

public class OverlayView extends View {

    private List<OverlayItem> items = new ArrayList<>();
    private Paint backgroundPaint = new Paint();
    private Paint textPaint = new Paint();
    private Paint togglePaint = new Paint();

    public OverlayView(Context context) {
        super(context);
        init();
    }

    private void init() {
        backgroundPaint.setColor(Color.parseColor("#80000000")); // Fondo semi-transparente
        backgroundPaint.setStyle(Paint.Style.FILL);
        
        textPaint.setColor(Color.WHITE);
        textPaint.setTextSize(18);
        textPaint.setAntiAlias(true);

        togglePaint.setColor(Color.GRAY);
        togglePaint.setStyle(Paint.Style.FILL);
    }

    public void addItem(String name, boolean initialState, Consumer<Boolean> onChange) {
        items.add(new OverlayItem(name, initialState, onChange));
        invalidate();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        
        int height = getHeight();
        if (height == 0) return;
        
        // Dibujar fondo
        canvas.drawRect(0, 0, getWidth(), height, backgroundPaint);

        float currentY = 50;
        float itemHeight = 60;
        float toggleWidth = 40;
        float toggleHeight = 20;

        for (int i = 0; i < items.size(); i++) {
            OverlayItem item = items.get(i);
            
            // Texto del nombre
            canvas.drawText(item.name, 20, currentY + 20, textPaint);
            
            // Toggle (rectángulo simple)
            float toggleX = getWidth() - 60;
            float toggleY = currentY + 10;
            
            togglePaint.setColor(item.state ? Color.GREEN : Color.RED);
            canvas.drawRect(toggleX, toggleY, toggleX + toggleWidth, toggleY + toggleHeight, togglePaint);
            
            // Indicador visual de estado
            String status = item.state ? "ON" : "OFF";
            canvas.drawText(status, toggleX + 5, toggleY + 15, textPaint);

            currentY += itemHeight;
        }
    }

    // Click handler básico para alternar estado
    @Override
    public boolean onTouchEvent(android.view.MotionEvent event) {
        if (event.getAction() == android.view.MotionEvent.ACTION_DOWN) {
            float touchY = event.getY();
            float itemHeight = 60;
            
            for (int i = 0; i < items.size(); i++) {
                if (touchY >= i * itemHeight && touchY < (i + 1) * itemHeight) {
                    OverlayItem item = items.get(i);
                    item.state = !item.state;
                    if (item.onChange != null) {
                        item.onChange.accept(item.state);
                    }
                    invalidate();
                    return true;
                }
            }
        }
        return super.onTouchEvent(event);
    }

    private static class OverlayItem {
        String name;
        boolean state;
        Consumer<Boolean> onChange;

        OverlayItem(String name, boolean state, Consumer<Boolean> onChange) {
            this.name = name;
            this.state = state;
            this.onChange = onChange;
        }
    }
}
