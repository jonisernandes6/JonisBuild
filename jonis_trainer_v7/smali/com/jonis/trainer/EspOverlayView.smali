.class public final Lcom/jonis/trainer/EspOverlayView;
.super Landroid/view/View;
.source "EspOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jonis/trainer/EspOverlayView$Entity;
    }
.end annotation


# instance fields
.field public final boxPaint:Landroid/graphics/Paint;

.field public final distancePaint:Landroid/graphics/Paint;

.field public drawBox:Z

.field public drawDistance:Z

.field public drawLine:Z

.field public drawName:Z

.field public final entities:Ljava/util/List;

.field public final linePaint:Landroid/graphics/Paint;

.field public final namePaint:Landroid/graphics/Paint;

.field public final textShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jonis/trainer/EspOverlayView;->entities:Ljava/util/List;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jonis/trainer/EspOverlayView;->boxPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jonis/trainer/EspOverlayView;->linePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jonis/trainer/EspOverlayView;->namePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jonis/trainer/EspOverlayView;->distancePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jonis/trainer/EspOverlayView;->textShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/jonis/trainer/EspOverlayView;->boxPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/jonis/trainer/EspOverlayView;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/jonis/trainer/EspOverlayView;->namePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/jonis/trainer/EspOverlayView;->namePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    mul-float v3, v0, v2

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/jonis/trainer/EspOverlayView;->distancePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/jonis/trainer/EspOverlayView;->distancePaint:Landroid/graphics/Paint;

    mul-float v3, v0, v2

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/jonis/trainer/EspOverlayView;->textShadowPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/jonis/trainer/EspOverlayView;->textShadowPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/jonis/trainer/EspOverlayView;->textShadowPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/jonis/trainer/EspOverlayView;->textShadowPaint:Landroid/graphics/Paint;

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/jonis/trainer/EspOverlayView;->textShadowPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/jonis/trainer/EspOverlayView;->setColors(IIII)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/jonis/trainer/EspOverlayView;->setThickness(F)V

    return-void
.end method


# virtual methods
.method public final dp(I)F
    .locals 2

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/jonis/trainer/EspOverlayView;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jonis/trainer/EspOverlayView$Entity;

    iget v2, v1, Lcom/jonis/trainer/EspOverlayView$Entity;->width:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, v1, Lcom/jonis/trainer/EspOverlayView$Entity;->height:F

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, v1, Lcom/jonis/trainer/EspOverlayView$Entity;->health:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v1, Lcom/jonis/trainer/EspOverlayView$Entity;->left:F

    iget v4, v1, Lcom/jonis/trainer/EspOverlayView$Entity;->top:F

    iget v5, v1, Lcom/jonis/trainer/EspOverlayView$Entity;->left:F

    iget v6, v1, Lcom/jonis/trainer/EspOverlayView$Entity;->width:F

    add-float/2addr v5, v6

    iget v6, v1, Lcom/jonis/trainer/EspOverlayView$Entity;->top:F

    iget v7, v1, Lcom/jonis/trainer/EspOverlayView$Entity;->height:F

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-boolean v3, p0, Lcom/jonis/trainer/EspOverlayView;->drawBox:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jonis/trainer/EspOverlayView;->boxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    iget-boolean v3, p0, Lcom/jonis/trainer/EspOverlayView;->drawLine:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v6, v3, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v7, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    iget-object v10, p0, Lcom/jonis/trainer/EspOverlayView;->linePaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    iget-boolean v3, p0, Lcom/jonis/trainer/EspOverlayView;->drawName:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/jonis/trainer/EspOverlayView$Entity;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v5, v2, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/jonis/trainer/EspOverlayView;->dp(I)F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, v1, Lcom/jonis/trainer/EspOverlayView$Entity;->name:Ljava/lang/String;

    add-float v7, v3, v4

    add-float v8, v5, v4

    iget-object v9, p0, Lcom/jonis/trainer/EspOverlayView;->textShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v6, v1, Lcom/jonis/trainer/EspOverlayView$Entity;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/jonis/trainer/EspOverlayView;->namePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    iget-boolean v3, p0, Lcom/jonis/trainer/EspOverlayView;->drawDistance:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    const/16 v6, 0xe

    invoke-virtual {p0, v6}, Lcom/jonis/trainer/EspOverlayView;->dp(I)F

    move-result v6

    add-float/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Lcom/jonis/trainer/EspOverlayView$Entity;->distanceMeters:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "m"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-float v7, v3, v4

    add-float/2addr v4, v5

    iget-object v8, p0, Lcom/jonis/trainer/EspOverlayView;->textShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/jonis/trainer/EspOverlayView;->distancePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overlay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EspOverlayView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setColors(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/jonis/trainer/EspOverlayView;->boxPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/jonis/trainer/EspOverlayView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/jonis/trainer/EspOverlayView;->namePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/jonis/trainer/EspOverlayView;->distancePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawOptions(ZZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/jonis/trainer/EspOverlayView;->drawBox:Z

    iput-boolean p2, p0, Lcom/jonis/trainer/EspOverlayView;->drawLine:Z

    iput-boolean p3, p0, Lcom/jonis/trainer/EspOverlayView;->drawDistance:Z

    iput-boolean p4, p0, Lcom/jonis/trainer/EspOverlayView;->drawName:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThickness(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/jonis/trainer/EspOverlayView;->boxPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/jonis/trainer/EspOverlayView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public submitEntities(Ljava/util/Collection;)V
    .locals 1

    iget-object v0, p0, Lcom/jonis/trainer/EspOverlayView;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jonis/trainer/EspOverlayView;->entities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
