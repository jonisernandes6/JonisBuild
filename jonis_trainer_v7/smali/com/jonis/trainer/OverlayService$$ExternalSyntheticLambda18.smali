.class public final synthetic Lcom/jonis/trainer/OverlayService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/jonis/trainer/OverlayService;

.field public final synthetic f$1:Lcom/jonis/trainer/OverlayService$ToggleCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/jonis/trainer/OverlayService;Lcom/jonis/trainer/OverlayService$ToggleCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jonis/trainer/OverlayService$$ExternalSyntheticLambda18;->f$0:Lcom/jonis/trainer/OverlayService;

    iput-object p2, p0, Lcom/jonis/trainer/OverlayService$$ExternalSyntheticLambda18;->f$1:Lcom/jonis/trainer/OverlayService$ToggleCallback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/jonis/trainer/OverlayService$$ExternalSyntheticLambda18;->f$0:Lcom/jonis/trainer/OverlayService;

    iget-object v1, p0, Lcom/jonis/trainer/OverlayService$$ExternalSyntheticLambda18;->f$1:Lcom/jonis/trainer/OverlayService$ToggleCallback;

    invoke-static {v0, v1, p1}, Lcom/jonis/trainer/OverlayService;->$r8$lambda$IfVShZ9NK7cs7Qe6Gd1jYn8txNc(Lcom/jonis/trainer/OverlayService;Lcom/jonis/trainer/OverlayService$ToggleCallback;Landroid/view/View;)V

    return-void
.end method
