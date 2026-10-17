.class public Lcom/lvteam/LvShiftOverlay$BtnTouch;
.super Ljava/lang/Object;
.source "LvShiftOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/LvShiftOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BtnTouch"
.end annotation


# instance fields
.field public dx:F

.field public dy:F

.field public final id:I

.field public moved:Z

.field public sx:I

.field public sy:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lvteam/LvShiftOverlay$BtnTouch;->id:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    sget-object v0, Lcom/lvteam/LvShiftOverlay;->lps:[Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/lvteam/LvShiftOverlay$BtnTouch;->id:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Lcom/lvteam/LvShiftOverlay$BtnTouch;->dx:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lcom/lvteam/LvShiftOverlay$BtnTouch;->dy:F

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v4, p0, Lcom/lvteam/LvShiftOverlay$BtnTouch;->sx:I

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v4, p0, Lcom/lvteam/LvShiftOverlay$BtnTouch;->sy:I

    iput-boolean v1, p0, Lcom/lvteam/LvShiftOverlay$BtnTouch;->moved:Z

    return v3

    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v4, p0, Lcom/lvteam/LvShiftOverlay$BtnTouch;->dx:F

    sub-float/2addr v1, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Lcom/lvteam/LvShiftOverlay$BtnTouch;->dy:F

    sub-float/2addr v4, v5

    mul-float v5, v1, v1

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    const/high16 v6, 0x42100000    # 36.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    iput-boolean v3, p0, Lcom/lvteam/LvShiftOverlay$BtnTouch;->moved:Z

    :cond_2
    iget v5, p0, Lcom/lvteam/LvShiftOverlay$BtnTouch;->sx:I

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p0, Lcom/lvteam/LvShiftOverlay$BtnTouch;->sy:I

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v0}, Lcom/lvteam/LvShiftOverlay;->clampInto(Landroid/view/WindowManager$LayoutParams;)V

    :try_start_0
    sget-object v5, Lcom/lvteam/LvShiftOverlay;->wm:Landroid/view/WindowManager;

    invoke-interface {v5, p1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :goto_0
    return v3

    :cond_3
    if-ne v2, v3, :cond_5

    iget-boolean v1, p0, Lcom/lvteam/LvShiftOverlay$BtnTouch;->moved:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/lvteam/LvShiftOverlay$BtnTouch;->id:I

    invoke-static {v1}, Lcom/lvteam/LvShiftOverlay;->toggle(I)V

    :cond_4
    return v3

    :cond_5
    return v1
.end method
