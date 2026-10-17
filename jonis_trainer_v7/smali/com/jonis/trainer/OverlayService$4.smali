.class public Lcom/jonis/trainer/OverlayService$4;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jonis/trainer/OverlayService;->startSessionCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/jonis/trainer/OverlayService;


# direct methods
.method public constructor <init>(Lcom/jonis/trainer/OverlayService;)V
    .locals 0

    iput-object p1, p0, Lcom/jonis/trainer/OverlayService$4;->this$0:Lcom/jonis/trainer/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/jonis/trainer/LvSession;->get()Lcom/jonis/trainer/LvSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jonis/trainer/LvSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jonis/trainer/OverlayService$4;->this$0:Lcom/jonis/trainer/OverlayService;

    const-string v1, "Sessao expirada."

    invoke-static {v0, v1}, Lcom/jonis/trainer/OverlayService;->-$$Nest$mkillApp(Lcom/jonis/trainer/OverlayService;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/jonis/trainer/NativeGuard;->pulse()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jonis/trainer/LvSession;->get()Lcom/jonis/trainer/LvSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jonis/trainer/LvSession;->invalidate()V

    iget-object v1, p0, Lcom/jonis/trainer/OverlayService$4;->this$0:Lcom/jonis/trainer/OverlayService;

    const-string v2, "Sessao encerrada."

    invoke-static {v1, v2}, Lcom/jonis/trainer/OverlayService;->-$$Nest$mkillApp(Lcom/jonis/trainer/OverlayService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    nop

    iget-object v0, p0, Lcom/jonis/trainer/OverlayService$4;->this$0:Lcom/jonis/trainer/OverlayService;

    invoke-static {v0}, Lcom/jonis/trainer/OverlayService;->-$$Nest$fgetsessionCheckHandler(Lcom/jonis/trainer/OverlayService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jonis/trainer/OverlayService$4;->this$0:Lcom/jonis/trainer/OverlayService;

    invoke-static {v0}, Lcom/jonis/trainer/OverlayService;->-$$Nest$fgetsessionCheckHandler(Lcom/jonis/trainer/OverlayService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
