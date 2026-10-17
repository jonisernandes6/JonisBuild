.class public final synthetic Lcom/jonis/trainer/OverlayService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/jonis/trainer/OverlayService$ToggleCallback;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onToggle(Z)V
    .locals 0

    invoke-static {p1}, Lcom/jonis/trainer/LvTeamShift;->setFreezeScop(Z)V

    return-void
.end method
