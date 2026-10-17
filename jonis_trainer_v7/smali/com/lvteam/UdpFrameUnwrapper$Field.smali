.class public final enum Lcom/lvteam/UdpFrameUnwrapper$Field;
.super Ljava/lang/Enum;
.source "UdpFrameUnwrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/UdpFrameUnwrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Field"
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/lvteam/UdpFrameUnwrapper$Field;

.field public static final enum DATA_LENGTH:Lcom/lvteam/UdpFrameUnwrapper$Field;

.field public static final enum FLAGS:Lcom/lvteam/UdpFrameUnwrapper$Field;

.field public static final enum ORDER_ID:Lcom/lvteam/UdpFrameUnwrapper$Field;

.field public static final enum SEND_OPTION:Lcom/lvteam/UdpFrameUnwrapper$Field;

.field public static final enum TAG:Lcom/lvteam/UdpFrameUnwrapper$Field;


# instance fields
.field public final reliableOnly:Z

.field public final width:I


# direct methods
.method public static synthetic $values()[Lcom/lvteam/UdpFrameUnwrapper$Field;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lvteam/UdpFrameUnwrapper$Field;

    sget-object v1, Lcom/lvteam/UdpFrameUnwrapper$Field;->SEND_OPTION:Lcom/lvteam/UdpFrameUnwrapper$Field;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/lvteam/UdpFrameUnwrapper$Field;->TAG:Lcom/lvteam/UdpFrameUnwrapper$Field;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/lvteam/UdpFrameUnwrapper$Field;->ORDER_ID:Lcom/lvteam/UdpFrameUnwrapper$Field;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/lvteam/UdpFrameUnwrapper$Field;->FLAGS:Lcom/lvteam/UdpFrameUnwrapper$Field;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/lvteam/UdpFrameUnwrapper$Field;->DATA_LENGTH:Lcom/lvteam/UdpFrameUnwrapper$Field;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/lvteam/UdpFrameUnwrapper$Field;

    const-string v1, "SEND_OPTION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/lvteam/UdpFrameUnwrapper$Field;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/lvteam/UdpFrameUnwrapper$Field;->SEND_OPTION:Lcom/lvteam/UdpFrameUnwrapper$Field;

    new-instance v0, Lcom/lvteam/UdpFrameUnwrapper$Field;

    const-string v1, "TAG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/lvteam/UdpFrameUnwrapper$Field;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/lvteam/UdpFrameUnwrapper$Field;->TAG:Lcom/lvteam/UdpFrameUnwrapper$Field;

    new-instance v0, Lcom/lvteam/UdpFrameUnwrapper$Field;

    const-string v1, "ORDER_ID"

    invoke-direct {v0, v1, v4, v4, v3}, Lcom/lvteam/UdpFrameUnwrapper$Field;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/lvteam/UdpFrameUnwrapper$Field;->ORDER_ID:Lcom/lvteam/UdpFrameUnwrapper$Field;

    new-instance v0, Lcom/lvteam/UdpFrameUnwrapper$Field;

    const-string v1, "FLAGS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/lvteam/UdpFrameUnwrapper$Field;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/lvteam/UdpFrameUnwrapper$Field;->FLAGS:Lcom/lvteam/UdpFrameUnwrapper$Field;

    new-instance v0, Lcom/lvteam/UdpFrameUnwrapper$Field;

    const-string v1, "DATA_LENGTH"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/lvteam/UdpFrameUnwrapper$Field;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/lvteam/UdpFrameUnwrapper$Field;->DATA_LENGTH:Lcom/lvteam/UdpFrameUnwrapper$Field;

    invoke-static {}, Lcom/lvteam/UdpFrameUnwrapper$Field;->$values()[Lcom/lvteam/UdpFrameUnwrapper$Field;

    move-result-object v0

    sput-object v0, Lcom/lvteam/UdpFrameUnwrapper$Field;->$VALUES:[Lcom/lvteam/UdpFrameUnwrapper$Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/lvteam/UdpFrameUnwrapper$Field;->width:I

    iput-boolean p4, p0, Lcom/lvteam/UdpFrameUnwrapper$Field;->reliableOnly:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lvteam/UdpFrameUnwrapper$Field;
    .locals 1

    const-class v0, Lcom/lvteam/UdpFrameUnwrapper$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lvteam/UdpFrameUnwrapper$Field;

    return-object v0
.end method

.method public static values()[Lcom/lvteam/UdpFrameUnwrapper$Field;
    .locals 1

    sget-object v0, Lcom/lvteam/UdpFrameUnwrapper$Field;->$VALUES:[Lcom/lvteam/UdpFrameUnwrapper$Field;

    invoke-virtual {v0}, [Lcom/lvteam/UdpFrameUnwrapper$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lvteam/UdpFrameUnwrapper$Field;

    return-object v0
.end method
