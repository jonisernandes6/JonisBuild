.class public abstract Lcom/jonis/trainer/LateralShift;
.super Ljava/lang/Object;
.source "LateralShift.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jonis/trainer/LateralShift$Direction;
    }
.end annotation


# static fields
.field public static volatile direction:Lcom/jonis/trainer/LateralShift$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/jonis/trainer/LateralShift$Direction;->NONE:Lcom/jonis/trainer/LateralShift$Direction;

    sput-object v0, Lcom/jonis/trainer/LateralShift;->direction:Lcom/jonis/trainer/LateralShift$Direction;

    return-void
.end method

.method public static direction()Lcom/jonis/trainer/LateralShift$Direction;
    .locals 1

    sget-object v0, Lcom/jonis/trainer/LateralShift;->direction:Lcom/jonis/trainer/LateralShift$Direction;

    return-object v0
.end method
