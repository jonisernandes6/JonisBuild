.class public abstract Lcom/jonis/trainer/LvShiftOverlay;
.super Ljava/lang/Object;
.source "LvShiftOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jonis/trainer/LvShiftOverlay$BtnTouch;
    }
.end annotation


# static fields
.field public static final COL:[I

.field public static final LABELS:[Ljava/lang/String;

.field public static final ROW:[I

.field public static final active:[Z

.field public static final bgs:[Landroid/graphics/drawable/GradientDrawable;

.field public static final btns:[Landroid/widget/TextView;

.field public static ctx:Landroid/content/Context;

.field public static density:F

.field public static final lps:[Landroid/view/WindowManager$LayoutParams;

.field public static volatile wantGhost:Z

.field public static volatile wantMagnet:Z

.field public static volatile wantTatu:Z

.field public static volatile wantTpBase:Z

.field public static volatile wantWall:Z

.field public static wm:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$4nwfS9BB-_0WxV--bPawNH4aNJY()V
    .locals 0

    invoke-static {}, Lcom/jonis/trainer/LvShiftOverlay;->lambda$refreshWall$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$eY6vMtiCttk4Qq5H9QAp8nI1FHo()V
    .locals 0

    invoke-static {}, Lcom/jonis/trainer/LvShiftOverlay;->lambda$refreshTpBase$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$yUfr0Kg7RKghplsASDze9lLExWk(Z)V
    .locals 0

    invoke-static {p0}, Lcom/jonis/trainer/LvShiftOverlay;->lambda$playBeep$0(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    filled-new-array {v0, v1, v2, v0, v2}, [I

    move-result-object v3

    sput-object v3, Lcom/jonis/trainer/LvShiftOverlay;->COL:[I

    filled-new-array {v1, v0, v0, v2, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/jonis/trainer/LvShiftOverlay;->ROW:[I

    const/4 v0, 0x5

    new-array v1, v0, [Landroid/widget/TextView;

    sput-object v1, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    new-array v1, v0, [Landroid/view/WindowManager$LayoutParams;

    sput-object v1, Lcom/jonis/trainer/LvShiftOverlay;->lps:[Landroid/view/WindowManager$LayoutParams;

    new-array v1, v0, [Landroid/graphics/drawable/GradientDrawable;

    sput-object v1, Lcom/jonis/trainer/LvShiftOverlay;->bgs:[Landroid/graphics/drawable/GradientDrawable;

    new-array v0, v0, [Z

    sput-object v0, Lcom/jonis/trainer/LvShiftOverlay;->active:[Z

    const-string v0, "\u26a1"

    const-string v1, "\ud83e\uddf1"

    const-string v2, "\ud83e\uddf2"

    const-string v3, "\ud83d\udc7b"

    const-string v4, "\ud83e\udd94"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jonis/trainer/LvShiftOverlay;->LABELS:[Ljava/lang/String;

    return-void
.end method

.method public static clampInto(Landroid/view/WindowManager$LayoutParams;)V
    .locals 5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    :try_start_0
    sget-object v1, Lcom/jonis/trainer/LvShiftOverlay;->wm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-gtz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/jonis/trainer/LvShiftOverlay;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lcom/jonis/trainer/LvShiftOverlay;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    neg-int v3, v1

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    neg-int v3, v2

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method public static dp(I)I
    .locals 2

    int-to-float v0, p0

    sget v1, Lcom/jonis/trainer/LvShiftOverlay;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static hideBtn(I)V
    .locals 2

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v1, v1, p0

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v1, v0, p0

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->lps:[Landroid/view/WindowManager$LayoutParams;

    aput-object v1, v0, p0

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->bgs:[Landroid/graphics/drawable/GradientDrawable;

    aput-object v1, v0, p0

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/jonis/trainer/LvShiftOverlay;->ctx:Landroid/content/Context;

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->ctx:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/jonis/trainer/LvShiftOverlay;->wm:Landroid/view/WindowManager;

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/jonis/trainer/LvShiftOverlay;->density:F

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Lcom/jonis/trainer/LvShiftOverlay;->hideBtn(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jonis/trainer/LvShiftOverlay;->setActive(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-static {v0}, Lcom/jonis/trainer/LvShiftOverlay;->wanted(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/jonis/trainer/LvShiftOverlay;->showBtn(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    nop

    return-void
.end method

.method public static synthetic lambda$playBeep$0(Z)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    if-eqz p0, :cond_0

    const/16 v1, 0x19

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    :goto_0
    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    const-wide/16 v1, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :goto_2
    return-void
.end method

.method public static synthetic lambda$refreshTpBase$2()V
    .locals 3

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->active:[Z

    sget v1, Lcom/jonis/trainer/LvTeamShift;->teleportBaseState:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    invoke-static {}, Lcom/jonis/trainer/LvShiftOverlay;->paintTpBase()V

    return-void
.end method

.method public static synthetic lambda$refreshWall$1()V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/jonis/trainer/LvShiftOverlay;->paint(I)V

    return-void
.end method

.method public static paint(I)V
    .locals 3

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/jonis/trainer/LvShiftOverlay;->paintTpBase()V

    return-void

    :cond_0
    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v0, v0, p0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->bgs:[Landroid/graphics/drawable/GradientDrawable;

    aget-object v0, v0, p0

    if-nez v0, :cond_2

    :cond_1
    goto/16 :goto_5

    :cond_2
    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->active:[Z

    aget-boolean v0, v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eqz v0, :cond_8

    if-nez p0, :cond_3

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v0, v0, p0

    const-string v1, "MAGNET\nKILL ON"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    if-ne p0, v2, :cond_4

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v0, v0, p0

    const-string v1, "UNDER\nPLAYER\nON"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    if-ne p0, v1, :cond_7

    sget-boolean v0, Lcom/jonis/trainer/LvTeamShift;->wallEngaged:Z

    sget-object v1, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v1, v1, p0

    if-eqz v0, :cond_5

    const-string v2, "ATRAVESSAR\nPRONTO"

    goto :goto_0

    :cond_5
    const-string v2, "ATRAVESSAR\nINDO..."

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/jonis/trainer/LvShiftOverlay;->bgs:[Landroid/graphics/drawable/GradientDrawable;

    aget-object v1, v1, p0

    if-eqz v0, :cond_6

    const v2, -0xd182ce

    goto :goto_1

    :cond_6
    const/16 v2, -0x7800

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget-object v1, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_7
    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v0, v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jonis/trainer/LvShiftOverlay;->LABELS:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nON"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->bgs:[Landroid/graphics/drawable/GradientDrawable;

    aget-object v0, v0, p0

    const v1, -0xe5b474

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_4

    :cond_8
    if-nez p0, :cond_9

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v0, v0, p0

    const-string v1, "MAGNET\nKILL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    if-ne p0, v2, :cond_a

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v0, v0, p0

    const-string v1, "UNDER\nPLAYER\nOFF"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_a
    if-ne p0, v1, :cond_b

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v0, v0, p0

    const-string v1, "ATRAVESSAR\nPAREDE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_b
    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v0, v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jonis/trainer/LvShiftOverlay;->LABELS:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nOFF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->bgs:[Landroid/graphics/drawable/GradientDrawable;

    aget-object v0, v0, p0

    const v1, -0xebe8e2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_4
    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :goto_5
    return-void
.end method

.method public static paintTpBase()V
    .locals 4

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->bgs:[Landroid/graphics/drawable/GradientDrawable;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    sget v0, Lcom/jonis/trainer/LvTeamShift;->teleportBaseState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    sget-object v2, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const-string v3, "TP BASE\nREC"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/jonis/trainer/LvShiftOverlay;->bgs:[Landroid/graphics/drawable/GradientDrawable;

    aget-object v2, v2, v1

    const v3, -0xd6490a

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    sget-object v2, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const-string v3, "TP BASE\nPLAY"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/jonis/trainer/LvShiftOverlay;->bgs:[Landroid/graphics/drawable/GradientDrawable;

    aget-object v2, v2, v1

    const/16 v3, -0x7800

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const-string v3, "TP BASE"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/jonis/trainer/LvShiftOverlay;->bgs:[Landroid/graphics/drawable/GradientDrawable;

    aget-object v2, v2, v1

    const v3, -0xebe8e2

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_0
    sget-object v2, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    :goto_1
    return-void
.end method

.method public static playBeep(Z)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jonis/trainer/LvShiftOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/jonis/trainer/LvShiftOverlay$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static refreshTpBase()V
    .locals 2

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->ctx:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/jonis/trainer/LvShiftOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/jonis/trainer/LvShiftOverlay$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static refreshWall()V
    .locals 2

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->ctx:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/jonis/trainer/LvShiftOverlay$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/jonis/trainer/LvShiftOverlay$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setActive(IZ)V
    .locals 1

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->active:[Z

    aput-boolean p1, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lcom/jonis/trainer/LvTeamShift;->setWallPass(Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/jonis/trainer/LvTeamShift;->setTeleportBase(Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/jonis/trainer/LvTeamShift;->setTatu(Z)V

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/jonis/trainer/LvTeamShift;->setLocalFreeze(Z)V

    goto :goto_0

    :pswitch_4
    sput-boolean p1, Lcom/jonis/trainer/LvTeamShift;->magnetOn:Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setGhostVisible(Z)V
    .locals 1

    sput-boolean p0, Lcom/jonis/trainer/LvShiftOverlay;->wantGhost:Z

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/jonis/trainer/LvShiftOverlay;->setVisible(IZ)V

    return-void
.end method

.method public static setMagnetVisible(Z)V
    .locals 1

    sput-boolean p0, Lcom/jonis/trainer/LvShiftOverlay;->wantMagnet:Z

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/jonis/trainer/LvShiftOverlay;->setVisible(IZ)V

    return-void
.end method

.method public static setTatuVisible(Z)V
    .locals 1

    sput-boolean p0, Lcom/jonis/trainer/LvShiftOverlay;->wantTatu:Z

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/jonis/trainer/LvShiftOverlay;->setVisible(IZ)V

    return-void
.end method

.method public static setTpBaseVisible(Z)V
    .locals 1

    sput-boolean p0, Lcom/jonis/trainer/LvShiftOverlay;->wantTpBase:Z

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/jonis/trainer/LvShiftOverlay;->setVisible(IZ)V

    return-void
.end method

.method public static setVisible(IZ)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jonis/trainer/LvShiftOverlay;->setActive(IZ)V

    :cond_0
    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->ctx:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/jonis/trainer/LvShiftOverlay;->showBtn(I)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/jonis/trainer/LvShiftOverlay;->hideBtn(I)V

    :goto_0
    return-void
.end method

.method public static setWallVisible(Z)V
    .locals 1

    sput-boolean p0, Lcom/jonis/trainer/LvShiftOverlay;->wantWall:Z

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/jonis/trainer/LvShiftOverlay;->setVisible(IZ)V

    return-void
.end method

.method public static showBtn(I)V
    .locals 11

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->wm:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    :cond_0
    goto/16 :goto_8

    :cond_1
    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aget-object v0, v0, p0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x2

    if-eqz p0, :cond_3

    if-eq p0, v0, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    const/16 v2, 0x44

    :goto_2
    invoke-static {v2}, Lcom/jonis/trainer/LvShiftOverlay;->dp(I)I

    move-result v2

    move v4, v2

    goto :goto_3

    :cond_5
    const/16 v2, 0x3a

    goto :goto_2

    :goto_3
    new-instance v2, Landroid/widget/TextView;

    sget-object v3, Lcom/jonis/trainer/LvShiftOverlay;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v1, :cond_6

    const/high16 v3, 0x41300000    # 11.0f

    goto :goto_4

    :cond_6
    const/high16 v3, 0x41900000    # 18.0f

    :goto_4
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v9, 0x11

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v10, v3

    const/16 v3, 0xe

    invoke-static {v3}, Lcom/jonis/trainer/LvShiftOverlay;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v10, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {v0}, Lcom/jonis/trainer/LvShiftOverlay;->dp(I)I

    move-result v0

    const v3, -0x9f3001

    invoke-virtual {v10, v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_7

    const/16 v0, 0x7f6

    :goto_5
    move v6, v0

    goto :goto_6

    :cond_7
    const/16 v0, 0x7d2

    goto :goto_5

    :goto_6
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x8

    const/4 v8, -0x3

    move-object v3, v0

    move v5, v4

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v3, Lcom/jonis/trainer/LvShiftOverlay;->COL:[I

    aget v3, v3, p0

    const/16 v5, 0x21

    invoke-static {v5}, Lcom/jonis/trainer/LvShiftOverlay;->dp(I)I

    move-result v7

    mul-int/2addr v3, v7

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v3, Lcom/jonis/trainer/LvShiftOverlay;->ROW:[I

    aget v3, v3, p0

    invoke-static {v5}, Lcom/jonis/trainer/LvShiftOverlay;->dp(I)I

    move-result v5

    mul-int/2addr v3, v5

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v0}, Lcom/jonis/trainer/LvShiftOverlay;->clampInto(Landroid/view/WindowManager$LayoutParams;)V

    sget-object v3, Lcom/jonis/trainer/LvShiftOverlay;->btns:[Landroid/widget/TextView;

    aput-object v2, v3, p0

    sget-object v3, Lcom/jonis/trainer/LvShiftOverlay;->lps:[Landroid/view/WindowManager$LayoutParams;

    aput-object v0, v3, p0

    sget-object v3, Lcom/jonis/trainer/LvShiftOverlay;->bgs:[Landroid/graphics/drawable/GradientDrawable;

    aput-object v10, v3, p0

    invoke-static {p0}, Lcom/jonis/trainer/LvShiftOverlay;->paint(I)V

    new-instance v3, Lcom/jonis/trainer/LvShiftOverlay$BtnTouch;

    invoke-direct {v3, p0}, Lcom/jonis/trainer/LvShiftOverlay$BtnTouch;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :try_start_0
    sget-object v3, Lcom/jonis/trainer/LvShiftOverlay;->wm:Landroid/view/WindowManager;

    invoke-interface {v3, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v3

    :goto_7
    return-void

    :goto_8
    return-void
.end method

.method public static toggle(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    invoke-static {}, Lcom/jonis/trainer/LvTeamShift;->toggleTeleportBase()V

    sget-object v2, Lcom/jonis/trainer/LvShiftOverlay;->active:[Z

    sget v3, Lcom/jonis/trainer/LvTeamShift;->teleportBaseState:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    aput-boolean v0, v2, v1

    invoke-static {}, Lcom/jonis/trainer/LvShiftOverlay;->paintTpBase()V

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->active:[Z

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/jonis/trainer/LvShiftOverlay;->playBeep(Z)V

    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    sget-object v2, Lcom/jonis/trainer/LvShiftOverlay;->active:[Z

    aget-boolean v2, v2, v1

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/jonis/trainer/LvTeamShift;->setWallPass(Z)V

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->active:[Z

    sget-boolean v2, Lcom/jonis/trainer/LvTeamShift;->wallPassOn:Z

    aput-boolean v2, v0, v1

    invoke-static {v1}, Lcom/jonis/trainer/LvShiftOverlay;->paint(I)V

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->active:[Z

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/jonis/trainer/LvShiftOverlay;->playBeep(Z)V

    return-void

    :cond_2
    sget-object v1, Lcom/jonis/trainer/LvShiftOverlay;->active:[Z

    aget-boolean v1, v1, p0

    xor-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/jonis/trainer/LvShiftOverlay;->setActive(IZ)V

    invoke-static {p0}, Lcom/jonis/trainer/LvShiftOverlay;->paint(I)V

    sget-object v0, Lcom/jonis/trainer/LvShiftOverlay;->active:[Z

    aget-boolean v0, v0, p0

    invoke-static {v0}, Lcom/jonis/trainer/LvShiftOverlay;->playBeep(Z)V

    return-void
.end method

.method public static wanted(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    sget-boolean v0, Lcom/jonis/trainer/LvShiftOverlay;->wantWall:Z

    return v0

    :pswitch_1
    sget-boolean v0, Lcom/jonis/trainer/LvShiftOverlay;->wantTpBase:Z

    return v0

    :pswitch_2
    sget-boolean v0, Lcom/jonis/trainer/LvShiftOverlay;->wantTatu:Z

    return v0

    :pswitch_3
    sget-boolean v0, Lcom/jonis/trainer/LvShiftOverlay;->wantGhost:Z

    return v0

    :pswitch_4
    sget-boolean v0, Lcom/jonis/trainer/LvShiftOverlay;->wantMagnet:Z

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
