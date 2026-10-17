.class public Lcom/lvteam/OverlayService$3;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lvteam/OverlayService;->startPlayerListUpdater()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/lvteam/OverlayService;


# direct methods
.method public constructor <init>(Lcom/lvteam/OverlayService;)V
    .locals 0

    iput-object p1, p0, Lcom/lvteam/OverlayService$3;->this$0:Lcom/lvteam/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/lvteam/OverlayService$3;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v0}, Lcom/lvteam/OverlayService;->-$$Nest$fgetminimized(Lcom/lvteam/OverlayService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lvteam/OverlayService$3;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v0}, Lcom/lvteam/OverlayService;->-$$Nest$fgetactiveTab(Lcom/lvteam/OverlayService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lvteam/OverlayService$3;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v0}, Lcom/lvteam/OverlayService;->-$$Nest$mrefreshPlayerList(Lcom/lvteam/OverlayService;)V

    :cond_0
    iget-object v0, p0, Lcom/lvteam/OverlayService$3;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v0}, Lcom/lvteam/OverlayService;->-$$Nest$fgetplayerUpdateHandler(Lcom/lvteam/OverlayService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lvteam/OverlayService$3;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v0}, Lcom/lvteam/OverlayService;->-$$Nest$fgetplayerUpdateHandler(Lcom/lvteam/OverlayService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
