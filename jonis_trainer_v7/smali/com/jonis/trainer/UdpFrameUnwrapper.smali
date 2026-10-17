.class public final Lcom/jonis/trainer/UdpFrameUnwrapper;
.super Ljava/lang/Object;
.source "UdpFrameUnwrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jonis/trainer/UdpFrameUnwrapper$Field;,
        Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;
    }
.end annotation


# instance fields
.field public compressedFrames:J

.field public datagramsOffered:J

.field public decryptFailures:J

.field public encryptedFrames:J

.field public invalidCrcs:J

.field public invalidHeaders:J

.field public invalidLengths:J

.field public lastTelemetryMs:J

.field public unconfiguredFrames:J

.field public final verifiedTags:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->verifiedTags:Ljava/util/Map;

    return-void
.end method

.method public static varargs configuration(I[B[Lcom/jonis/trainer/UdpFrameUnwrapper$Field;)Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;
    .locals 2

    new-instance v0, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;-><init>(I[B[Lcom/jonis/trainer/UdpFrameUnwrapper$Field;Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration-IA;)V

    return-object v0
.end method

.method public static crc8([BII)I
    .locals 5

    const/4 v0, 0x0

    add-int v1, p1, p2

    add-int/lit8 v2, p1, 0x2

    :goto_0
    if-ge v2, v1, :cond_0

    shl-int/lit8 v3, v0, 0x1

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/jonis/trainer/UdpFrameUnwrapper;->crcTable(I)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    return v0
.end method

.method public static crcTable(I)I
    .locals 3

    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    and-int/lit16 v1, p0, 0x80

    shl-int/lit8 v2, p0, 0x1

    and-int/lit16 p0, v2, 0xff

    if-eqz v1, :cond_0

    xor-int/lit8 p0, p0, 0x12

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    ushr-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static decryptLegacy([B[B)[B
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p0

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    array-length v1, p0

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_1

    :cond_0
    goto/16 :goto_5

    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    mul-int/lit8 v3, v2, 0x4

    invoke-static {p1, v3}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readIntLe([BI)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    array-length v2, p0

    new-array v2, v2, [B

    const/16 v3, 0x8

    new-array v4, v3, [B

    new-array v5, v3, [B

    new-array v6, v3, [B

    new-array v7, v3, [B

    const/4 v8, 0x0

    :goto_1
    array-length v9, p0

    const/4 v10, 0x0

    if-ge v8, v9, :cond_5

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v3, :cond_3

    add-int v11, v8, v9

    aget-byte v11, p0, v11

    aget-byte v12, v4, v9

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    nop

    invoke-static {v1, v6, v7}, Lcom/jonis/trainer/UdpFrameUnwrapper;->decryptTeaBlock([I[B[B)V

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v3, :cond_4

    add-int v11, v8, v9

    aget-byte v12, v7, v9

    aget-byte v13, v5, v9

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v2, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    nop

    invoke-static {v7, v10, v4, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v8, v5, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x8

    goto :goto_1

    :cond_5
    nop

    aget-byte v3, v2, v10

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x3

    array-length v8, v2

    add-int/lit8 v8, v8, -0x7

    if-ge v8, v3, :cond_6

    return-object v0

    :cond_6
    move v9, v8

    :goto_4
    array-length v10, v2

    if-ge v9, v10, :cond_8

    aget-byte v10, v2, v9

    if-eqz v10, :cond_7

    return-object v0

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_8
    invoke-static {v2, v3, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :goto_5
    return-object v0
.end method

.method public static decryptTeaBlock([I[B[B)V
    .locals 9

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readIntLe([BI)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readIntLe([BI)I

    move-result v3

    const v4, -0x1c886470

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x10

    if-ge v5, v6, :cond_0

    shl-int/lit8 v6, v1, 0x4

    const/4 v7, 0x2

    aget v7, p0, v7

    add-int/2addr v6, v7

    add-int v7, v1, v4

    xor-int/2addr v6, v7

    ushr-int/lit8 v7, v1, 0x5

    const/4 v8, 0x3

    aget v8, p0, v8

    add-int/2addr v7, v8

    xor-int/2addr v6, v7

    sub-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x4

    aget v7, p0, v0

    add-int/2addr v6, v7

    add-int v7, v3, v4

    xor-int/2addr v6, v7

    ushr-int/lit8 v7, v3, 0x5

    const/4 v8, 0x1

    aget v8, p0, v8

    add-int/2addr v7, v8

    xor-int/2addr v6, v7

    sub-int/2addr v1, v6

    const v6, 0x61c88647

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    nop

    invoke-static {p2, v0, v1}, Lcom/jonis/trainer/UdpFrameUnwrapper;->writeIntLe([BII)V

    invoke-static {p2, v2, v3}, Lcom/jonis/trainer/UdpFrameUnwrapper;->writeIntLe([BII)V

    return-void
.end method

.method public static encryptLegacy([B[B)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    array-length v2, v0

    add-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0x7

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    and-int/lit8 v2, v2, 0x7

    array-length v4, v0

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0xa

    new-array v4, v4, [B

    int-to-byte v5, v2

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    add-int/lit8 v5, v2, 0x3

    array-length v7, v0

    invoke-static {v0, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    const/4 v7, 0x0

    :goto_0
    array-length v8, v5

    if-ge v7, v8, :cond_1

    mul-int/lit8 v8, v7, 0x4

    invoke-static {v1, v8}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readIntLe([BI)I

    move-result v8

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    array-length v7, v4

    new-array v7, v7, [B

    new-array v8, v3, [B

    new-array v9, v3, [B

    new-array v10, v3, [B

    new-array v11, v3, [B

    const/4 v12, 0x0

    :goto_1
    array-length v13, v4

    if-ge v12, v13, :cond_4

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v3, :cond_2

    add-int v14, v12, v13

    aget-byte v14, v4, v14

    aget-byte v15, v9, v13

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v10, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v5, v10, v11}, Lcom/jonis/trainer/UdpFrameUnwrapper;->encryptTeaBlock([I[B[B)V

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v3, :cond_3

    add-int v14, v12, v13

    aget-byte v15, v11, v13

    aget-byte v16, v8, v13

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v7, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    invoke-static {v10, v6, v8, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7, v12, v9, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v12, v12, 0x8

    goto :goto_1

    :cond_4
    nop

    return-object v7
.end method

.method public static encryptTeaBlock([I[B[B)V
    .locals 9

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readIntLe([BI)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readIntLe([BI)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x10

    if-ge v5, v6, :cond_0

    const v6, 0x61c88647

    sub-int/2addr v4, v6

    shl-int/lit8 v6, v3, 0x4

    aget v7, p0, v0

    add-int/2addr v6, v7

    add-int v7, v3, v4

    xor-int/2addr v6, v7

    ushr-int/lit8 v7, v3, 0x5

    const/4 v8, 0x1

    aget v8, p0, v8

    add-int/2addr v7, v8

    xor-int/2addr v6, v7

    add-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x4

    const/4 v7, 0x2

    aget v7, p0, v7

    add-int/2addr v6, v7

    add-int v7, v1, v4

    xor-int/2addr v6, v7

    ushr-int/lit8 v7, v1, 0x5

    const/4 v8, 0x3

    aget v8, p0, v8

    add-int/2addr v7, v8

    xor-int/2addr v6, v7

    add-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    nop

    invoke-static {p2, v0, v1}, Lcom/jonis/trainer/UdpFrameUnwrapper;->writeIntLe([BII)V

    invoke-static {p2, v2, v3}, Lcom/jonis/trainer/UdpFrameUnwrapper;->writeIntLe([BII)V

    return-void
.end method

.method public static headerLength(I)I
    .locals 2

    const/16 v0, 0x5a

    const/16 v1, 0x64

    if-lt p0, v0, :cond_0

    if-ge p0, v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    if-lt p0, v1, :cond_1

    const/16 v0, 0x6e

    if-gt p0, v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static readByte([BIII)I
    .locals 1

    add-int v0, p1, p2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr v0, p3

    return v0
.end method

.method public static readIntLe([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static readShort([BIII)I
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readByte([BIII)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    invoke-static {p0, p1, v1, p3}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readByte([BIII)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static writeIntLe([BII)V
    .locals 2

    int-to-byte v0, p2

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method public static writeShort([BIII)V
    .locals 2

    and-int/lit16 v0, p2, 0xff

    xor-int/2addr v0, p3

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr v1, p3

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method


# virtual methods
.method public final formatTags()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->verifiedTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->verifiedTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, "0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized peekTag([BIILcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)I
    .locals 5

    monitor-enter p0

    const/4 v0, -0x1

    if-eqz p4, :cond_6

    if-eqz p1, :cond_6

    if-ltz p2, :cond_6

    const/16 v1, 0x8

    if-lt p3, v1, :cond_6

    :try_start_0
    array-length v1, p1

    sub-int/2addr v1, p3

    if-le p2, v1, :cond_0

    goto :goto_4

    :cond_0
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lcom/jonis/trainer/UdpFrameUnwrapper;->headerLength(I)I

    move-result v1

    if-eq v1, v0, :cond_5

    if-ge p3, v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {p1, p2, p3}, Lcom/jonis/trainer/UdpFrameUnwrapper;->crc8([BII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_2

    monitor-exit p0

    return v0

    :cond_2
    const/16 v0, 0xa

    if-ne v1, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetreliableOffsets(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)[I

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    invoke-static {p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetunreliableOffsets(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)[I

    move-result-object v2

    :goto_1
    nop

    sget-object v3, Lcom/jonis/trainer/UdpFrameUnwrapper$Field;->TAG:Lcom/jonis/trainer/UdpFrameUnwrapper$Field;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v2, v3

    invoke-static {p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetmask(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)I

    move-result v4

    invoke-static {p1, p2, v3, v4}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readShort([BIII)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :cond_5
    :goto_2
    monitor-exit p0

    return v0

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_6
    :goto_4
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized rebuild([BIILcom/jonis/trainer/UdpFrameUnwrapper$Configuration;Lcom/jonis/trainer/UdpDecodedFrame;[B)[B
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    monitor-enter p0

    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    if-eqz p4, :cond_b

    :try_start_0
    iget v6, v3, Lcom/jonis/trainer/UdpDecodedFrame;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_b

    if-eqz v0, :cond_b

    if-ltz v1, :cond_b

    const/16 v6, 0x8

    if-lt v2, v6, :cond_b

    array-length v6, v0

    sub-int/2addr v6, v2

    if-le v1, v6, :cond_0

    goto/16 :goto_7

    :cond_0
    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Lcom/jonis/trainer/UdpFrameUnwrapper;->headerLength(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    if-lt v2, v6, :cond_a

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    invoke-static/range {p1 .. p3}, Lcom/jonis/trainer/UdpFrameUnwrapper;->crc8([BII)I

    move-result v8

    if-eq v7, v8, :cond_1

    goto/16 :goto_5

    :cond_1
    const/16 v7, 0xa

    const/4 v8, 0x0

    if-ne v6, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    move v7, v8

    :goto_0
    if-eqz v7, :cond_3

    invoke-static/range {p4 .. p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetreliableOffsets(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)[I

    move-result-object v10

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_3
    invoke-static/range {p4 .. p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetunreliableOffsets(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)[I

    move-result-object v10

    :goto_1
    nop

    sget-object v11, Lcom/jonis/trainer/UdpFrameUnwrapper$Field;->TAG:Lcom/jonis/trainer/UdpFrameUnwrapper$Field;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v10, v11

    invoke-static/range {p4 .. p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetmask(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)I

    move-result v12

    invoke-static {v0, v1, v11, v12}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readShort([BIII)I

    move-result v11

    sget-object v12, Lcom/jonis/trainer/UdpFrameUnwrapper$Field;->FLAGS:Lcom/jonis/trainer/UdpFrameUnwrapper$Field;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v10, v12

    invoke-static/range {p4 .. p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetmask(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)I

    move-result v13

    invoke-static {v0, v1, v12, v13}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readByte([BIII)I

    move-result v12

    sget-object v13, Lcom/jonis/trainer/UdpFrameUnwrapper$Field;->DATA_LENGTH:Lcom/jonis/trainer/UdpFrameUnwrapper$Field;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v13, v10, v13

    invoke-static/range {p4 .. p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetmask(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)I

    move-result v14

    invoke-static {v0, v1, v13, v14}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readShort([BIII)I

    move-result v13

    iget-boolean v14, v3, Lcom/jonis/trainer/UdpDecodedFrame;->reliable:Z

    if-ne v7, v14, :cond_4

    iget v14, v3, Lcom/jonis/trainer/UdpDecodedFrame;->tag:I

    if-ne v11, v14, :cond_4

    iget v14, v3, Lcom/jonis/trainer/UdpDecodedFrame;->flags:I

    if-ne v12, v14, :cond_4

    iget v14, v3, Lcom/jonis/trainer/UdpDecodedFrame;->declaredPayloadLength:I

    if-ne v13, v14, :cond_4

    sub-int v14, v2, v6

    if-le v13, v14, :cond_5

    :cond_4
    goto :goto_4

    :cond_5
    and-int/lit8 v14, v12, 0x1

    if-nez v14, :cond_6

    move-object v14, v4

    goto :goto_2

    :cond_6
    invoke-static/range {p4 .. p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetkey(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)[B

    move-result-object v14

    invoke-static {v4, v14}, Lcom/jonis/trainer/UdpFrameUnwrapper;->encryptLegacy([B[B)[B

    move-result-object v14

    :goto_2
    nop

    if-eqz v14, :cond_7

    array-length v15, v14

    const v5, 0xffff

    if-le v15, v5, :cond_8

    :cond_7
    goto :goto_3

    :cond_8
    sub-int v5, v2, v6

    sub-int/2addr v5, v13

    array-length v15, v14

    add-int/2addr v15, v6

    add-int/2addr v15, v5

    new-array v15, v15, [B

    invoke-static {v0, v1, v15, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v14

    invoke-static {v14, v8, v15, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v5, :cond_9

    add-int v9, v1, v6

    add-int/2addr v9, v13

    array-length v8, v14

    add-int/2addr v8, v6

    invoke-static {v0, v9, v15, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    sget-object v8, Lcom/jonis/trainer/UdpFrameUnwrapper$Field;->DATA_LENGTH:Lcom/jonis/trainer/UdpFrameUnwrapper$Field;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v10, v8

    array-length v9, v14

    invoke-static/range {p4 .. p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetmask(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)I

    move-result v0

    invoke-static {v15, v8, v9, v0}, Lcom/jonis/trainer/UdpFrameUnwrapper;->writeShort([BIII)V

    array-length v0, v15

    const/4 v8, 0x0

    invoke-static {v15, v8, v0}, Lcom/jonis/trainer/UdpFrameUnwrapper;->crc8([BII)I

    move-result v0

    int-to-byte v0, v0

    const/4 v8, 0x1

    aput-byte v0, v15, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v15

    :goto_3
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_4
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_a
    :goto_5
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    :goto_7
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized recordDatagramOffered()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->datagramsOffered:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->datagramsOffered:J

    invoke-virtual {p0}, Lcom/jonis/trainer/UdpFrameUnwrapper;->reportTelemetryIfDue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final reportTelemetryIfDue()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->lastTelemetryMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->datagramsOffered:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    goto/16 :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "udp offered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->datagramsOffered:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " unconfigured="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->unconfiguredFrames:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " invalidHeader="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidHeaders:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " invalidCrc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidCrcs:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " invalidLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidLengths:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " encrypted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->encryptedFrames:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " compressed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->compressedFrames:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " decryptFailed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->decryptFailures:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " verifiedTags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jonis/trainer/UdpFrameUnwrapper;->formatTags()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UdpFrameUnwrapper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v4, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->datagramsOffered:J

    iput-wide v4, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->unconfiguredFrames:J

    iput-wide v4, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidHeaders:J

    iput-wide v4, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidCrcs:J

    iput-wide v4, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidLengths:J

    iput-wide v4, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->encryptedFrames:J

    iput-wide v4, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->compressedFrames:J

    iput-wide v4, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->decryptFailures:J

    iget-object v2, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->verifiedTags:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iput-wide v0, p0, Lcom/jonis/trainer/UdpFrameUnwrapper;->lastTelemetryMs:J

    return-void

    :goto_0
    return-void
.end method

.method public declared-synchronized unwrap([BIILcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)Lcom/jonis/trainer/UdpDecodedFrame;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    monitor-enter p0

    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    if-nez p4, :cond_0

    :try_start_0
    iget-wide v7, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->unconfiguredFrames:J

    add-long/2addr v7, v5

    iput-wide v7, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->unconfiguredFrames:J

    invoke-virtual/range {p0 .. p0}, Lcom/jonis/trainer/UdpFrameUnwrapper;->reportTelemetryIfDue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    if-eqz v0, :cond_1

    if-ltz v2, :cond_1

    const/16 v7, 0x8

    if-lt v3, v7, :cond_1

    :try_start_1
    array-length v7, v0

    sub-int/2addr v7, v3

    if-le v2, v7, :cond_2

    :cond_1
    goto/16 :goto_5

    :cond_2
    aget-byte v7, v0, v2

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Lcom/jonis/trainer/UdpFrameUnwrapper;->headerLength(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    iget-wide v8, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidHeaders:J

    add-long/2addr v8, v5

    iput-wide v8, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidHeaders:J

    invoke-virtual/range {p0 .. p0}, Lcom/jonis/trainer/UdpFrameUnwrapper;->reportTelemetryIfDue()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_3
    const/16 v9, 0xa

    if-ne v7, v9, :cond_4

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :goto_0
    if-ge v3, v7, :cond_5

    :try_start_2
    iget-wide v10, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidLengths:J

    add-long/2addr v10, v5

    iput-wide v10, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidLengths:J

    invoke-virtual/range {p0 .. p0}, Lcom/jonis/trainer/UdpFrameUnwrapper;->reportTelemetryIfDue()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_5
    add-int/lit8 v10, v2, 0x1

    :try_start_3
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    invoke-static/range {p1 .. p3}, Lcom/jonis/trainer/UdpFrameUnwrapper;->crc8([BII)I

    move-result v11

    if-eq v10, v11, :cond_6

    iget-wide v10, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidCrcs:J

    add-long/2addr v10, v5

    iput-wide v10, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidCrcs:J

    invoke-virtual/range {p0 .. p0}, Lcom/jonis/trainer/UdpFrameUnwrapper;->reportTelemetryIfDue()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_6
    nop

    nop

    if-eqz v9, :cond_7

    :try_start_4
    invoke-static/range {p4 .. p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetreliableOffsets(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)[I

    move-result-object v10

    goto :goto_1

    :cond_7
    invoke-static/range {p4 .. p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetunreliableOffsets(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)[I

    move-result-object v10

    :goto_1
    move-object/from16 v18, v10

    sget-object v10, Lcom/jonis/trainer/UdpFrameUnwrapper$Field;->SEND_OPTION:Lcom/jonis/trainer/UdpFrameUnwrapper$Field;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v18, v10

    invoke-static/range {p4 .. p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetmask(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)I

    move-result v11

    invoke-static {v0, v2, v10, v11}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readByte([BIII)I

    move-result v14

    sget-object v10, Lcom/jonis/trainer/UdpFrameUnwrapper$Field;->TAG:Lcom/jonis/trainer/UdpFrameUnwrapper$Field;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v18, v10

    invoke-static/range {p4 .. p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetmask(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)I

    move-result v11

    invoke-static {v0, v2, v10, v11}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readShort([BIII)I

    move-result v11

    if-eqz v9, :cond_8

    sget-object v8, Lcom/jonis/trainer/UdpFrameUnwrapper$Field;->ORDER_ID:Lcom/jonis/trainer/UdpFrameUnwrapper$Field;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v18, v8

    invoke-static/range {p4 .. p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetmask(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)I

    move-result v10

    invoke-static {v0, v2, v8, v10}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readShort([BIII)I

    move-result v8

    :cond_8
    move v15, v8

    nop

    sget-object v8, Lcom/jonis/trainer/UdpFrameUnwrapper$Field;->FLAGS:Lcom/jonis/trainer/UdpFrameUnwrapper$Field;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v18, v8

    invoke-static/range {p4 .. p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetmask(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)I

    move-result v10

    invoke-static {v0, v2, v8, v10}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readByte([BIII)I

    move-result v8

    sget-object v10, Lcom/jonis/trainer/UdpFrameUnwrapper$Field;->DATA_LENGTH:Lcom/jonis/trainer/UdpFrameUnwrapper$Field;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v18, v10

    invoke-static/range {p4 .. p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetmask(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)I

    move-result v12

    invoke-static {v0, v2, v10, v12}, Lcom/jonis/trainer/UdpFrameUnwrapper;->readShort([BIII)I

    move-result v10

    move v13, v10

    and-int/lit8 v10, v8, 0x1

    if-eqz v10, :cond_9

    iget-wide v4, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->encryptedFrames:J

    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    iput-wide v4, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->encryptedFrames:J

    :cond_9
    and-int/lit8 v4, v8, 0x2

    if-eqz v4, :cond_a

    iget-wide v4, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->compressedFrames:J

    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    iput-wide v4, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->compressedFrames:J

    :cond_a
    sub-int v4, v3, v7

    if-le v13, v4, :cond_b

    iget-wide v5, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidLengths:J

    const-wide/16 v16, 0x1

    add-long v5, v5, v16

    iput-wide v5, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidLengths:J

    invoke-virtual/range {p0 .. p0}, Lcom/jonis/trainer/UdpFrameUnwrapper;->reportTelemetryIfDue()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    const/4 v5, 0x0

    return-object v5

    :cond_b
    add-int v5, v2, v7

    add-int v6, v2, v7

    add-int/2addr v6, v13

    :try_start_5
    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    and-int/lit8 v6, v8, 0x2

    if-eqz v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/jonis/trainer/UdpFrameUnwrapper;->reportTelemetryIfDue()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    const/4 v6, 0x0

    return-object v6

    :cond_c
    and-int/lit8 v6, v8, 0x1

    if-eqz v6, :cond_e

    :try_start_6
    invoke-static/range {p4 .. p4}, Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;->-$$Nest$fgetkey(Lcom/jonis/trainer/UdpFrameUnwrapper$Configuration;)[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jonis/trainer/UdpFrameUnwrapper;->decryptLegacy([B[B)[B

    move-result-object v6

    move-object v5, v6

    if-nez v5, :cond_d

    move v6, v11

    iget-wide v10, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->decryptFailures:J

    const-wide/16 v16, 0x1

    add-long v10, v10, v16

    iput-wide v10, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->decryptFailures:J

    invoke-virtual/range {p0 .. p0}, Lcom/jonis/trainer/UdpFrameUnwrapper;->reportTelemetryIfDue()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    const/4 v10, 0x0

    return-object v10

    :cond_d
    move v6, v11

    goto :goto_2

    :cond_e
    move v6, v11

    :goto_2
    :try_start_7
    iget-object v10, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->verifiedTags:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    const/16 v11, 0x20

    if-lt v10, v11, :cond_f

    iget-object v10, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->verifiedTags:Ljava/util/Map;

    move v11, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_3

    :cond_f
    move v11, v6

    :goto_3
    iget-object v6, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->verifiedTags:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    iget-object v10, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->verifiedTags:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-nez v6, :cond_10

    const-wide/16 v16, 0x1

    goto :goto_4

    :cond_10
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v16, 0x1

    add-long v16, v19, v16

    :goto_4
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/jonis/trainer/UdpFrameUnwrapper;->reportTelemetryIfDue()V

    new-instance v0, Lcom/jonis/trainer/UdpDecodedFrame;

    move-object v10, v0

    move-object v12, v5

    move v6, v13

    move v13, v9

    move/from16 v16, v8

    move/from16 v17, v6

    invoke-direct/range {v10 .. v17}, Lcom/jonis/trainer/UdpDecodedFrame;-><init>(I[BZIIII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_5
    :try_start_8
    iget-wide v4, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidLengths:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/jonis/trainer/UdpFrameUnwrapper;->invalidLengths:J

    invoke-virtual/range {p0 .. p0}, Lcom/jonis/trainer/UdpFrameUnwrapper;->reportTelemetryIfDue()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_6
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0
.end method
