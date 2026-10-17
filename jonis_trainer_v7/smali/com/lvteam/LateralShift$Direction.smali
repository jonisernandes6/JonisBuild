.class public final enum Lcom/lvteam/LateralShift$Direction;
.super Ljava/lang/Enum;
.source "LateralShift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/LateralShift;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/lvteam/LateralShift$Direction;

.field public static final enum FREE:Lcom/lvteam/LateralShift$Direction;

.field public static final enum LEFT:Lcom/lvteam/LateralShift$Direction;

.field public static final enum NONE:Lcom/lvteam/LateralShift$Direction;

.field public static final enum RIGHT:Lcom/lvteam/LateralShift$Direction;


# direct methods
.method public static synthetic $values()[Lcom/lvteam/LateralShift$Direction;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lvteam/LateralShift$Direction;

    sget-object v1, Lcom/lvteam/LateralShift$Direction;->NONE:Lcom/lvteam/LateralShift$Direction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/lvteam/LateralShift$Direction;->LEFT:Lcom/lvteam/LateralShift$Direction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/lvteam/LateralShift$Direction;->RIGHT:Lcom/lvteam/LateralShift$Direction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/lvteam/LateralShift$Direction;->FREE:Lcom/lvteam/LateralShift$Direction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lvteam/LateralShift$Direction;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lvteam/LateralShift$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lvteam/LateralShift$Direction;->NONE:Lcom/lvteam/LateralShift$Direction;

    new-instance v0, Lcom/lvteam/LateralShift$Direction;

    const-string v1, "LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lvteam/LateralShift$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lvteam/LateralShift$Direction;->LEFT:Lcom/lvteam/LateralShift$Direction;

    new-instance v0, Lcom/lvteam/LateralShift$Direction;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lvteam/LateralShift$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lvteam/LateralShift$Direction;->RIGHT:Lcom/lvteam/LateralShift$Direction;

    new-instance v0, Lcom/lvteam/LateralShift$Direction;

    const-string v1, "FREE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lvteam/LateralShift$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lvteam/LateralShift$Direction;->FREE:Lcom/lvteam/LateralShift$Direction;

    invoke-static {}, Lcom/lvteam/LateralShift$Direction;->$values()[Lcom/lvteam/LateralShift$Direction;

    move-result-object v0

    sput-object v0, Lcom/lvteam/LateralShift$Direction;->$VALUES:[Lcom/lvteam/LateralShift$Direction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lvteam/LateralShift$Direction;
    .locals 1

    const-class v0, Lcom/lvteam/LateralShift$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lvteam/LateralShift$Direction;

    return-object v0
.end method

.method public static values()[Lcom/lvteam/LateralShift$Direction;
    .locals 1

    sget-object v0, Lcom/lvteam/LateralShift$Direction;->$VALUES:[Lcom/lvteam/LateralShift$Direction;

    invoke-virtual {v0}, [Lcom/lvteam/LateralShift$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lvteam/LateralShift$Direction;

    return-object v0
.end method
