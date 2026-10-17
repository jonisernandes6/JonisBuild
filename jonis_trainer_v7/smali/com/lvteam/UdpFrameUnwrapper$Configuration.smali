.class public final Lcom/lvteam/UdpFrameUnwrapper$Configuration;
.super Ljava/lang/Object;
.source "UdpFrameUnwrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/UdpFrameUnwrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field public final key:[B

.field public final mask:I

.field public final reliableOffsets:[I

.field public final unreliableOffsets:[I


# direct methods
.method public static bridge synthetic -$$Nest$fgetkey(Lcom/lvteam/UdpFrameUnwrapper$Configuration;)[B
    .locals 0

    iget-object p0, p0, Lcom/lvteam/UdpFrameUnwrapper$Configuration;->key:[B

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmask(Lcom/lvteam/UdpFrameUnwrapper$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/lvteam/UdpFrameUnwrapper$Configuration;->mask:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetreliableOffsets(Lcom/lvteam/UdpFrameUnwrapper$Configuration;)[I
    .locals 0

    iget-object p0, p0, Lcom/lvteam/UdpFrameUnwrapper$Configuration;->reliableOffsets:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetunreliableOffsets(Lcom/lvteam/UdpFrameUnwrapper$Configuration;)[I
    .locals 0

    iget-object p0, p0, Lcom/lvteam/UdpFrameUnwrapper$Configuration;->unreliableOffsets:[I

    return-object p0
.end method

.method public varargs constructor <init>(I[B[Lcom/lvteam/UdpFrameUnwrapper$Field;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lvteam/UdpFrameUnwrapper$Field;->values()[Lcom/lvteam/UdpFrameUnwrapper$Field;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lvteam/UdpFrameUnwrapper$Configuration;->reliableOffsets:[I

    invoke-static {}, Lcom/lvteam/UdpFrameUnwrapper$Field;->values()[Lcom/lvteam/UdpFrameUnwrapper$Field;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lvteam/UdpFrameUnwrapper$Configuration;->unreliableOffsets:[I

    if-eqz p3, :cond_7

    array-length v0, p3

    invoke-static {}, Lcom/lvteam/UdpFrameUnwrapper$Field;->values()[Lcom/lvteam/UdpFrameUnwrapper$Field;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_7

    if-eqz p2, :cond_0

    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session key must contain 16 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/lvteam/UdpFrameUnwrapper$Configuration;->mask:I

    if-nez p2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/lvteam/UdpFrameUnwrapper$Configuration;->key:[B

    iget-object v0, p0, Lcom/lvteam/UdpFrameUnwrapper$Configuration;->reliableOffsets:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/lvteam/UdpFrameUnwrapper$Configuration;->unreliableOffsets:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x2

    const/4 v2, 0x2

    array-length v3, p3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, p3, v4

    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/lvteam/UdpFrameUnwrapper$Configuration;->reliableOffsets:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-ne v6, v1, :cond_4

    iget-object v6, p0, Lcom/lvteam/UdpFrameUnwrapper$Configuration;->reliableOffsets:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v6, v7

    iget v6, v5, Lcom/lvteam/UdpFrameUnwrapper$Field;->width:I

    add-int/2addr v0, v6

    iget-boolean v6, v5, Lcom/lvteam/UdpFrameUnwrapper$Field;->reliableOnly:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/lvteam/UdpFrameUnwrapper$Configuration;->unreliableOffsets:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v2, v6, v7

    iget v6, v5, Lcom/lvteam/UdpFrameUnwrapper$Field;->width:I

    add-int/2addr v2, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Header order must be a field permutation"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    const/16 v1, 0x8

    if-ne v2, v1, :cond_6

    return-void

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid legacy header layout"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header order must name all five fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(I[B[Lcom/lvteam/UdpFrameUnwrapper$Field;Lcom/lvteam/UdpFrameUnwrapper$Configuration-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lvteam/UdpFrameUnwrapper$Configuration;-><init>(I[B[Lcom/lvteam/UdpFrameUnwrapper$Field;)V

    return-void
.end method
