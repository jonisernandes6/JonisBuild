.class public Lcom/jonis/trainer/OverlayService$3;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jonis/trainer/OverlayService;->startPlayerListUpdater()V
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

    iput-object p1, p0, Lcom/jonis/trainer/OverlayService$3;->this$0:Lcom/jonis/trainer/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/jonis/trainer/OverlayService$3;->this$0:Lcom/jonis/trainer/OverlayService;

    invoke-static {v0}, Lcom/jonis/trainer/OverlayService;->-$$Nest$fgetminimized(Lcom/jonis/trainer/OverlayService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jonis/trainer/OverlayService$3;->this$0:Lcom/jonis/trainer/OverlayService;

    invoke-static {v0}, Lcom/jonis/trainer/OverlayService;->-$$Nest$fgetactiveTab(Lcom/jonis/trainer/OverlayService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jonis/trainer/OverlayService$3;->this$0:Lcom/jonis/trainer/OverlayService;

    invoke-static {v0}, Lcom/jonis/trainer/OverlayService;->-$$Nest$mrefreshPlayerList(Lcom/jonis/trainer/OverlayService;)V

    :cond_0
    iget-object v0, p0, Lcom/jonis/trainer/OverlayService$3;->this$0:Lcom/jonis/trainer/OverlayService;

    invoke-static {v0}, Lcom/jonis/trainer/OverlayService;->-$$Nest$fgetplayerUpdateHandler(Lcom/jonis/trainer/OverlayService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jonis/trainer/OverlayService$3;->this$0:Lcom/jonis/trainer/OverlayService;

    invoke-static {v0}, Lcom/jonis/trainer/OverlayService;->-$$Nest$fgetplayerUpdateHandler(Lcom/jonis/trainer/OverlayService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
