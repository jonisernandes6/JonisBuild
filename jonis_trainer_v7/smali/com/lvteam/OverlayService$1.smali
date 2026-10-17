.class public Lcom/lvteam/OverlayService$1;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/OverlayService;
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

    iput-object p1, p0, Lcom/lvteam/OverlayService$1;->this$0:Lcom/lvteam/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 7

    iget-object v0, p0, Lcom/lvteam/OverlayService$1;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v0}, Lcom/lvteam/OverlayService;->-$$Nest$fgetboxOverlay(Lcom/lvteam/OverlayService;)Lcom/lvteam/EspOverlayView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lvteam/OverlayService$1;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v0}, Lcom/lvteam/OverlayService;->-$$Nest$fgetentityState(Lcom/lvteam/OverlayService;)Lcom/lvteam/EntityState;

    move-result-object v0

    iget-object v1, p0, Lcom/lvteam/OverlayService$1;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v1}, Lcom/lvteam/OverlayService;->-$$Nest$fgetespEngine(Lcom/lvteam/OverlayService;)Lcom/lvteam/EspEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lvteam/EntityState;->publishTo(Lcom/lvteam/EspEngine;)V

    iget-object v0, p0, Lcom/lvteam/OverlayService$1;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v0}, Lcom/lvteam/OverlayService;->-$$Nest$fgetespEngine(Lcom/lvteam/OverlayService;)Lcom/lvteam/EspEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/lvteam/OverlayService$1;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v1}, Lcom/lvteam/OverlayService;->-$$Nest$fgetboxOverlay(Lcom/lvteam/OverlayService;)Lcom/lvteam/EspOverlayView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lvteam/OverlayService$1;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v2}, Lcom/lvteam/OverlayService;->-$$Nest$fgetboxOverlay(Lcom/lvteam/OverlayService;)Lcom/lvteam/EspOverlayView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lvteam/EspEngine;->project(II)Ljava/util/Collection;

    move-result-object v0

    move-object v1, v0

    iget-object v2, p0, Lcom/lvteam/OverlayService$1;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v2}, Lcom/lvteam/OverlayService;->-$$Nest$fgetignoredIds(Lcom/lvteam/OverlayService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lvteam/EspOverlayView$Entity;

    iget-object v5, p0, Lcom/lvteam/OverlayService$1;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v5}, Lcom/lvteam/OverlayService;->-$$Nest$fgetignoredIds(Lcom/lvteam/OverlayService;)Ljava/util/Set;

    move-result-object v5

    iget v6, v4, Lcom/lvteam/EspOverlayView$Entity;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    iget-object v2, p0, Lcom/lvteam/OverlayService$1;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v2}, Lcom/lvteam/OverlayService;->-$$Nest$fgetboxOverlay(Lcom/lvteam/OverlayService;)Lcom/lvteam/EspOverlayView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lvteam/EspOverlayView;->submitEntities(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/lvteam/OverlayService$1;->this$0:Lcom/lvteam/OverlayService;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/lvteam/OverlayService;->-$$Nest$mupdateEnemyCounter(Lcom/lvteam/OverlayService;I)V

    iget-object v2, p0, Lcom/lvteam/OverlayService$1;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v2}, Lcom/lvteam/OverlayService;->-$$Nest$fgetminimized(Lcom/lvteam/OverlayService;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/lvteam/OverlayService$1;->this$0:Lcom/lvteam/OverlayService;

    invoke-static {v2}, Lcom/lvteam/OverlayService;->-$$Nest$fgetactiveTab(Lcom/lvteam/OverlayService;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/lvteam/OverlayService$1;->this$0:Lcom/lvteam/OverlayService;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Lcom/lvteam/OverlayService;->-$$Nest$fputlastProjected(Lcom/lvteam/OverlayService;Ljava/util/List;)V

    :cond_3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_4
    return-void
.end method
