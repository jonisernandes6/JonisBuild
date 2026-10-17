.class public Lcom/lvteam/OverlayService$DraggableLayout;
.super Landroid/widget/FrameLayout;
.source "OverlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/OverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DraggableLayout"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/lvteam/OverlayService;


# direct methods
.method public constructor <init>(Lcom/lvteam/OverlayService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v1}, Lcom/lvteam/OverlayService;->-$$Nest$fgetinitialTouchX(Lcom/lvteam/OverlayService;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/lvteam/OverlayService;->-$$Nest$mdp(Lcom/lvteam/OverlayService;I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v1}, Lcom/lvteam/OverlayService;->-$$Nest$fgetinitialTouchY(Lcom/lvteam/OverlayService;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v1, v2}, Lcom/lvteam/OverlayService;->-$$Nest$mdp(Lcom/lvteam/OverlayService;I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    iget-object v1, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v1}, Lcom/lvteam/OverlayService;->-$$Nest$fgetoverlayParams(Lcom/lvteam/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v0, v1}, Lcom/lvteam/OverlayService;->-$$Nest$fputinitialX(Lcom/lvteam/OverlayService;I)V

    iget-object v0, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    iget-object v1, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v1}, Lcom/lvteam/OverlayService;->-$$Nest$fgetoverlayParams(Lcom/lvteam/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v0, v1}, Lcom/lvteam/OverlayService;->-$$Nest$fputinitialY(Lcom/lvteam/OverlayService;I)V

    iget-object v0, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/lvteam/OverlayService;->-$$Nest$fputinitialTouchX(Lcom/lvteam/OverlayService;F)V

    iget-object v0, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/lvteam/OverlayService;->-$$Nest$fputinitialTouchY(Lcom/lvteam/OverlayService;F)V

    nop

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v0}, Lcom/lvteam/OverlayService;->-$$Nest$fgetoverlayParams(Lcom/lvteam/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v2}, Lcom/lvteam/OverlayService;->-$$Nest$fgetinitialX(Lcom/lvteam/OverlayService;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget-object v4, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v4}, Lcom/lvteam/OverlayService;->-$$Nest$fgetinitialTouchX(Lcom/lvteam/OverlayService;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v0}, Lcom/lvteam/OverlayService;->-$$Nest$fgetoverlayParams(Lcom/lvteam/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v2}, Lcom/lvteam/OverlayService;->-$$Nest$fgetinitialY(Lcom/lvteam/OverlayService;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v4, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v4}, Lcom/lvteam/OverlayService;->-$$Nest$fgetinitialTouchY(Lcom/lvteam/OverlayService;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v0}, Lcom/lvteam/OverlayService;->-$$Nest$fgetwindowManager(Lcom/lvteam/OverlayService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/lvteam/OverlayService$DraggableLayout;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v2}, Lcom/lvteam/OverlayService;->-$$Nest$fgetoverlayParams(Lcom/lvteam/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
