.class public abstract Lcom/lvteam/LateralShift;
.super Ljava/lang/Object;
.source "LateralShift.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lvteam/LateralShift$Direction;
    }
.end annotation


# static fields
.field public static volatile direction:Lcom/lvteam/LateralShift$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/lvteam/LateralShift$Direction;->NONE:Lcom/lvteam/LateralShift$Direction;

    sput-object v0, Lcom/lvteam/LateralShift;->direction:Lcom/lvteam/LateralShift$Direction;

    return-void
.end method

.method public static direction()Lcom/lvteam/LateralShift$Direction;
    .locals 1

    sget-object v0, Lcom/lvteam/LateralShift;->direction:Lcom/lvteam/LateralShift$Direction;

    return-object v0
.end method
