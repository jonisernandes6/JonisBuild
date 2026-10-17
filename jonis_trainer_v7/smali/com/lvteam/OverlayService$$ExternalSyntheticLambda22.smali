.class public final synthetic Lcom/lvteam/OverlayService$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Landroid/widget/TextView;Lcom/lvteam/OverlayService$DropdownCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda22;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda22;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda22;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda22;->f$1:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/lvteam/OverlayService;->$r8$lambda$GiljZffzQoL1sBXoP_kMGk5Vs70([Ljava/lang/String;Landroid/widget/TextView;Lcom/lvteam/OverlayService$DropdownCallback;Landroid/view/View;)V

    return-void
.end method
