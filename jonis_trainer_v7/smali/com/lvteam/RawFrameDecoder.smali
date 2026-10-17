.class public final Lcom/lvteam/RawFrameDecoder;
.super Ljava/lang/Object;
.source "RawFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lvteam/RawFrameDecoder$EndpointKey;,
        Lcom/lvteam/RawFrameDecoder$TcpScannerState;,
        Lcom/lvteam/RawFrameDecoder$RawCursor;,
        Lcom/lvteam/RawFrameDecoder$Cursor;
    }
.end annotation


# instance fields
.field public final endpointConfigurations:Ljava/util/Map;

.field public volatile lastLearnedConfig:Lcom/lvteam/UdpFrameUnwrapper$Configuration;

.field public lastShiftReportAt:J

.field public rawPositionsAccepted:J

.field public rawPositionsMalformed:J

.field public rawTelemetryAt:J

.field public shiftApplied:J

.field public shiftLocalPreserved:J

.field public shiftRejected:J

.field public shiftTargets:J

.field public final state:Lcom/lvteam/EntityState;

.field public final tcpScannerStates:Ljava/util/Map;

.field public final unwrapper:Lcom/lvteam/UdpFrameUnwrapper;


# direct methods
.method public constructor <init>(Lcom/lvteam/EntityState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lvteam/UdpFrameUnwrapper;

    invoke-direct {v0}, Lcom/lvteam/UdpFrameUnwrapper;-><init>()V

    iput-object v0, p0, Lcom/lvteam/RawFrameDecoder;->unwrapper:Lcom/lvteam/UdpFrameUnwrapper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lvteam/RawFrameDecoder;->tcpScannerStates:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lvteam/RawFrameDecoder;->endpointConfigurations:Ljava/util/Map;

    iput-object p1, p0, Lcom/lvteam/RawFrameDecoder;->state:Lcom/lvteam/EntityState;

    return-void
.end method

.method public static contains([Lcom/lvteam/UdpFrameUnwrapper$Field;I)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static endpoint([BII)Lcom/lvteam/RawFrameDecoder$EndpointKey;
    .locals 5

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    :try_start_0
    new-instance v2, Lcom/lvteam/RawFrameDecoder$EndpointKey;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/lvteam/RawFrameDecoder$EndpointKey;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public static hex(B)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x30

    return v1

    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x46

    if-gt v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v1, v1, 0xa

    return v1

    :cond_1
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    const/16 v1, 0x66

    if-gt v0, v1, :cond_2

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v1, v1, 0xa

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public static hexByte(BB)I
    .locals 3

    invoke-static {p0}, Lcom/lvteam/RawFrameDecoder;->hex(B)I

    move-result v0

    invoke-static {p1}, Lcom/lvteam/RawFrameDecoder;->hex(B)I

    move-result v1

    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    shl-int/lit8 v2, v0, 0x4

    or-int/2addr v2, v1

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    return v2
.end method

.method public static hexBytes([BII)[B
    .locals 4

    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    aget-byte v2, p0, v2

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    invoke-static {v2, v3}, Lcom/lvteam/RawFrameDecoder;->hexByte(BB)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    return-object v0
.end method

.method public static isHex([BII)Z
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/lvteam/RawFrameDecoder;->hex(B)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isIpv4Port([BII)Z
    .locals 12

    add-int v0, p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x3

    if-ge v5, v0, :cond_7

    aget-byte v8, p0, v5

    const/16 v9, 0xff

    and-int/2addr v8, v9

    const/16 v10, 0x30

    if-lt v8, v10, :cond_4

    const/16 v11, 0x39

    if-gt v8, v11, :cond_4

    mul-int/lit8 v11, v1, 0xa

    add-int/2addr v11, v8

    sub-int/2addr v11, v10

    add-int/lit8 v2, v2, 0x1

    if-eqz v4, :cond_0

    const/4 v7, 0x5

    :cond_0
    if-gt v2, v7, :cond_2

    if-eqz v4, :cond_1

    const v9, 0xffff

    :cond_1
    if-le v11, v9, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    move v1, v11

    goto :goto_2

    :goto_1
    return v6

    :cond_4
    if-nez v4, :cond_5

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_5

    if-lez v2, :cond_5

    add-int/lit8 v3, v3, 0x1

    if-gt v3, v7, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_6

    if-ne v3, v7, :cond_6

    if-lez v2, :cond_6

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return v6

    :cond_7
    nop

    if-eqz v4, :cond_8

    if-ne v3, v7, :cond_8

    if-lez v2, :cond_8

    const/4 v6, 0x1

    :cond_8
    return v6
.end method

.method public static isSaneCoordinate(F)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x49742400    # 1000000.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static readVarint([BI)[J
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    array-length v2, p0

    if-lt p1, v2, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x40

    if-ge v4, v5, :cond_4

    array-length v5, p0

    if-ne p1, v5, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v5, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    and-int/lit8 v6, p1, 0x7f

    int-to-long v6, v6

    shl-long/2addr v6, v4

    or-long/2addr v2, v6

    and-int/lit16 v6, p1, 0x80

    if-nez v6, :cond_3

    int-to-long v6, v5

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v8, 0x0

    aput-wide v2, v1, v8

    aput-wide v6, v1, v0

    return-object v1

    :cond_3
    add-int/lit8 v4, v4, 0x7

    move p1, v5

    goto :goto_0

    :cond_4
    nop

    return-object v1

    :goto_1
    return-object v1
.end method

.method public static slice([BII)[B
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static unsignedShort([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static writeVarint(Ljava/io/ByteArrayOutputStream;J)V
    .locals 4

    nop

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public static zigZagEncode(J)J
    .locals 4

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public accept([BI)V
    .locals 4

    if-eqz p1, :cond_0

    const/16 v0, 0x14

    if-lt p2, v0, :cond_0

    array-length v1, p1

    if-le p2, v1, :cond_1

    :cond_0
    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    mul-int/2addr v2, v3

    aget-byte v1, p1, v1

    ushr-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    if-lt v2, v0, :cond_2

    add-int/lit8 v0, v2, 0x8

    if-lt p2, v0, :cond_2

    const/16 v0, 0x9

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, 0x4

    invoke-static {p1, v0}, Lcom/lvteam/RawFrameDecoder;->unsignedShort([BI)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    add-int v1, v2, v0

    if-le v1, p2, :cond_5

    :cond_4
    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/lvteam/RawFrameDecoder;->lastLearnedConfig:Lcom/lvteam/UdpFrameUnwrapper$Configuration;

    if-nez v1, :cond_6

    return-void

    :cond_6
    add-int/lit8 v1, v2, 0x8

    add-int/lit8 v3, v0, -0x8

    invoke-virtual {p0, p1, v1, v3}, Lcom/lvteam/RawFrameDecoder;->decodeCamera([BII)V

    invoke-virtual {p0, p1, v2, v0}, Lcom/lvteam/RawFrameDecoder;->observeLocalSlot([BII)V

    return-void

    :goto_0
    return-void

    :goto_1
    return-void

    :goto_2
    return-void
.end method

.method public declared-synchronized acceptTcpPayload(Lcom/lvteam/PacketCaptureService$FlowKey;[BI)V
    .locals 11

    monitor-enter p0

    if-eqz p2, :cond_f

    if-ltz p3, :cond_f

    :try_start_0
    array-length v0, p2

    if-le p3, v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v0, p0, Lcom/lvteam/RawFrameDecoder;->tcpScannerStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lvteam/RawFrameDecoder$TcpScannerState;

    if-nez v0, :cond_1

    new-instance v1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/lvteam/RawFrameDecoder$TcpScannerState;-><init>(Lcom/lvteam/RawFrameDecoder$TcpScannerState-IA;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/lvteam/RawFrameDecoder;->tcpScannerStates:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->tail:[B

    array-length v1, v1

    add-int/2addr v1, p3

    new-array v1, v1, [B

    iget-object v2, v0, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->tail:[B

    iget-object v3, v0, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->tail:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->tail:[B

    array-length v2, v2

    invoke-static {p2, v4, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_e

    add-int/lit8 v3, v2, 0x8

    array-length v5, v1

    if-gt v3, v5, :cond_7

    aget-byte v3, v1, v2

    const/16 v5, -0x2e

    if-ne v3, v5, :cond_7

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v1, v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v1, v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_7

    new-array v3, v5, [Lcom/lvteam/UdpFrameUnwrapper$Field;

    const/4 v6, 0x0

    :goto_2
    array-length v7, v3

    if-ge v6, v7, :cond_4

    add-int/lit8 v7, v2, 0x3

    add-int/2addr v7, v6

    aget-byte v7, v1, v7

    add-int/lit8 v7, v7, -0x30

    if-ltz v7, :cond_2

    array-length v8, v3

    if-ge v7, v8, :cond_2

    invoke-static {v3, v7}, Lcom/lvteam/RawFrameDecoder;->contains([Lcom/lvteam/UdpFrameUnwrapper$Field;I)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/lvteam/UdpFrameUnwrapper$Field;->values()[Lcom/lvteam/UdpFrameUnwrapper$Field;

    move-result-object v8

    aget-object v8, v8, v7

    aput-object v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const/4 v6, 0x1

    array-length v7, v3

    move v8, v4

    :goto_4
    if-ge v8, v7, :cond_6

    aget-object v9, v3, v8

    if-eqz v9, :cond_5

    const/4 v10, 0x1

    goto :goto_5

    :cond_5
    move v10, v4

    :goto_5
    and-int/2addr v6, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    if-eqz v6, :cond_7

    new-instance v7, Ljava/lang/String;

    add-int/lit8 v8, v2, 0x3

    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v7, v1, v8, v5, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v7, v0, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingOrder:Ljava/lang/String;

    :cond_7
    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x22

    array-length v5, v1

    if-le v3, v5, :cond_8

    goto :goto_6

    :cond_8
    aget-byte v3, v1, v2

    const/16 v5, 0x12

    if-eq v3, v5, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    const/16 v6, 0x9

    if-lt v3, v6, :cond_d

    const/16 v6, 0x18

    if-gt v3, v6, :cond_d

    add-int/lit8 v6, v5, 0x22

    array-length v7, v1

    if-gt v6, v7, :cond_d

    aget-byte v6, v1, v5

    const/16 v7, 0x1a

    if-ne v6, v7, :cond_d

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v1, v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_d

    add-int/lit8 v6, v2, 0x2

    invoke-static {v1, v6, v3}, Lcom/lvteam/RawFrameDecoder;->isIpv4Port([BII)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, v1, v6

    add-int/lit8 v8, v5, 0x3

    aget-byte v8, v1, v8

    invoke-static {v6, v8}, Lcom/lvteam/RawFrameDecoder;->hexByte(BB)I

    move-result v6

    if-ltz v6, :cond_b

    add-int/lit8 v8, v5, 0x2

    invoke-static {v1, v8, v7}, Lcom/lvteam/RawFrameDecoder;->isHex([BII)Z

    move-result v7

    if-nez v7, :cond_c

    :cond_b
    goto :goto_6

    :cond_c
    iput v6, v0, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingMask:I

    add-int/lit8 v7, v5, 0x2

    const/16 v8, 0x10

    invoke-static {v1, v7, v8}, Lcom/lvteam/RawFrameDecoder;->hexBytes([BII)[B

    move-result-object v7

    iput-object v7, v0, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingKey:[B

    add-int/lit8 v7, v2, 0x2

    invoke-static {v1, v7, v3}, Lcom/lvteam/RawFrameDecoder;->endpoint([BII)Lcom/lvteam/RawFrameDecoder$EndpointKey;

    move-result-object v7

    iput-object v7, v0, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingEndpoint:Lcom/lvteam/RawFrameDecoder$EndpointKey;

    :cond_d
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_e
    nop

    invoke-virtual {p0, v0}, Lcom/lvteam/RawFrameDecoder;->configurePending(Lcom/lvteam/RawFrameDecoder$TcpScannerState;)V

    array-length v2, v1

    const/16 v3, 0x40

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, v1

    sub-int/2addr v3, v2

    array-length v4, v1

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    iput-object v3, v0, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->tail:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_f
    :goto_8
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized acceptUdpPayload([BILjava/net/InetAddress;I)V
    .locals 11

    monitor-enter p0

    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    :try_start_0
    array-length v0, p1

    if-le p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/lvteam/RawFrameDecoder;->endpointConfigurations:Ljava/util/Map;

    new-instance v1, Lcom/lvteam/RawFrameDecoder$EndpointKey;

    invoke-direct {v1, p3, p4}, Lcom/lvteam/RawFrameDecoder$EndpointKey;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lvteam/UdpFrameUnwrapper$Configuration;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/lvteam/RawFrameDecoder;->lastLearnedConfig:Lcom/lvteam/UdpFrameUnwrapper$Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1, p2}, Lcom/lvteam/RawFrameDecoder;->decodeCamera([BII)V

    iget-object v2, p0, Lcom/lvteam/RawFrameDecoder;->unwrapper:Lcom/lvteam/UdpFrameUnwrapper;

    invoke-virtual {v2}, Lcom/lvteam/UdpFrameUnwrapper;->recordDatagramOffered()V

    if-eqz v0, :cond_2

    const/16 v2, 0x14

    if-lt p2, v2, :cond_2

    const/16 v2, 0x400

    if-gt p2, v2, :cond_2

    invoke-virtual {p0, p1, v1, p2}, Lcom/lvteam/RawFrameDecoder;->decodeRawPositions([BII)V

    :cond_2
    iget-object v2, p0, Lcom/lvteam/RawFrameDecoder;->unwrapper:Lcom/lvteam/UdpFrameUnwrapper;

    invoke-virtual {v2, p1, v1, p2, v0}, Lcom/lvteam/UdpFrameUnwrapper;->unwrap([BIILcom/lvteam/UdpFrameUnwrapper$Configuration;)Lcom/lvteam/UdpDecodedFrame;

    move-result-object v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Lcom/lvteam/Ipv4UdpPacket;->parse([BI)Lcom/lvteam/Ipv4UdpPacket;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/lvteam/RawFrameDecoder;->unwrapper:Lcom/lvteam/UdpFrameUnwrapper;

    iget-object v5, v3, Lcom/lvteam/Ipv4UdpPacket;->payload:[B

    iget-object v6, v3, Lcom/lvteam/Ipv4UdpPacket;->payload:[B

    array-length v6, v6

    iget-object v7, p0, Lcom/lvteam/RawFrameDecoder;->endpointConfigurations:Ljava/util/Map;

    new-instance v8, Lcom/lvteam/RawFrameDecoder$EndpointKey;

    iget-object v9, v3, Lcom/lvteam/Ipv4UdpPacket;->destinationAddress:Ljava/net/InetAddress;

    iget v10, v3, Lcom/lvteam/Ipv4UdpPacket;->destinationPort:I

    invoke-direct {v8, v9, v10}, Lcom/lvteam/RawFrameDecoder$EndpointKey;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lvteam/UdpFrameUnwrapper$Configuration;

    invoke-virtual {v4, v5, v1, v6, v7}, Lcom/lvteam/UdpFrameUnwrapper;->unwrap([BIILcom/lvteam/UdpFrameUnwrapper$Configuration;)Lcom/lvteam/UdpDecodedFrame;

    move-result-object v1

    move-object v2, v1

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/lvteam/RawFrameDecoder;->decodeVerified(Lcom/lvteam/UdpDecodedFrame;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_5
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public final configurePending(Lcom/lvteam/RawFrameDecoder$TcpScannerState;)V
    .locals 4

    iget v0, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingMask:I

    if-ltz v0, :cond_0

    iget-object v0, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingKey:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingOrder:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingEndpoint:Lcom/lvteam/RawFrameDecoder$EndpointKey;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lvteam/UdpFrameUnwrapper$Field;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    invoke-static {}, Lcom/lvteam/UdpFrameUnwrapper$Field;->values()[Lcom/lvteam/UdpFrameUnwrapper$Field;

    move-result-object v2

    iget-object v3, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingOrder:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    iget v1, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingMask:I

    iget-object v2, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingKey:[B

    invoke-static {v1, v2, v0}, Lcom/lvteam/UdpFrameUnwrapper;->configuration(I[B[Lcom/lvteam/UdpFrameUnwrapper$Field;)Lcom/lvteam/UdpFrameUnwrapper$Configuration;

    move-result-object v1

    iget v2, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingMask:I

    iget v3, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->configuredMask:I

    nop

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingKey:[B

    iget-object v3, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->configuredKey:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    nop

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingOrder:Ljava/lang/String;

    iget-object v3, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->configuredOrder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingEndpoint:Lcom/lvteam/RawFrameDecoder$EndpointKey;

    iget-object v3, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->configuredEndpoint:Lcom/lvteam/RawFrameDecoder$EndpointKey;

    invoke-virtual {v2, v3}, Lcom/lvteam/RawFrameDecoder$EndpointKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget v2, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingMask:I

    iput v2, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->configuredMask:I

    iget-object v2, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingKey:[B

    iget-object v3, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingKey:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->configuredKey:[B

    iget-object v2, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingOrder:Ljava/lang/String;

    iput-object v2, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->configuredOrder:Ljava/lang/String;

    iget-object v2, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingEndpoint:Lcom/lvteam/RawFrameDecoder$EndpointKey;

    iput-object v2, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->configuredEndpoint:Lcom/lvteam/RawFrameDecoder$EndpointKey;

    const-string v2, "RawFrameDecoder"

    const-string v3, "UDP frame configuration verified"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/lvteam/RawFrameDecoder;->endpointConfigurations:Ljava/util/Map;

    iget-object v3, p1, Lcom/lvteam/RawFrameDecoder$TcpScannerState;->pendingEndpoint:Lcom/lvteam/RawFrameDecoder$EndpointKey;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/lvteam/RawFrameDecoder;->lastLearnedConfig:Lcom/lvteam/UdpFrameUnwrapper$Configuration;

    return-void

    :goto_1
    return-void
.end method

.method public final decodeCamera([BII)V
    .locals 12

    const/16 v0, 0x20

    if-lt p3, v0, :cond_0

    const/16 v0, 0x60

    if-gt p3, v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    :cond_0
    goto/16 :goto_3

    :cond_1
    add-int/lit8 v0, p2, 0x9

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, p2, 0xa

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, p2, 0x8

    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    :cond_2
    goto/16 :goto_2

    :cond_3
    new-instance v0, Lcom/lvteam/VarintReader;

    add-int/lit8 v1, p2, 0x8

    add-int/lit8 v2, p3, -0x8

    invoke-static {p1, v1, v2}, Lcom/lvteam/RawFrameDecoder;->slice([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lvteam/VarintReader;-><init>([B)V

    :try_start_0
    invoke-virtual {v0}, Lcom/lvteam/VarintReader;->readUnsigned()J

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/lvteam/VarintReader;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/lvteam/VarintReader;->readUnsigned()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v2, :cond_5

    return-void

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/lvteam/VarintReader;->zigZag(J)J

    move-result-wide v2

    long-to-float v2, v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/lvteam/VarintReader;->zigZag(J)J

    move-result-wide v3

    long-to-float v3, v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/lvteam/VarintReader;->zigZag(J)J

    move-result-wide v4

    long-to-float v11, v4

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    iget-object v4, p0, Lcom/lvteam/RawFrameDecoder;->state:Lcom/lvteam/EntityState;

    move v5, v2

    move v6, v3

    move v7, v11

    invoke-virtual/range {v4 .. v10}, Lcom/lvteam/EntityState;->updateCamera(FFFFFF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_1
    return-void

    :goto_2
    return-void

    :goto_3
    return-void
.end method

.method public final decodePositions(Lcom/lvteam/RawFrameDecoder$Cursor;)V
    .locals 12

    :try_start_0
    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lvteam/VarintReader;->zigZag(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    const-wide/16 v4, 0x80

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    long-to-int v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->readByte()I

    move-result v6

    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->readZigZag()F

    move-result v7

    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->readZigZag()F

    move-result v8

    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->readZigZag()F

    move-result v9

    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x5

    nop

    if-ge v10, v11, :cond_0

    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->readByte()I

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->readByte()I

    iget-object v10, p0, Lcom/lvteam/RawFrameDecoder;->state:Lcom/lvteam/EntityState;

    invoke-virtual {v10, v6, v7, v8, v9}, Lcom/lvteam/EntityState;->updatePosition(IFFF)I

    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    nop

    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->requireEnd()V

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid position count"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void
.end method

.method public final decodeRawPositions([BII)V
    .locals 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/lvteam/RawFrameDecoder;->decodeRawPrimary([BII)Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/lvteam/RawFrameDecoder;->rawPositionsAccepted:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/lvteam/RawFrameDecoder;->rawPositionsAccepted:J

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/lvteam/RawFrameDecoder;->rawPositionsMalformed:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/lvteam/RawFrameDecoder;->rawPositionsMalformed:J

    :goto_0
    invoke-virtual {p0}, Lcom/lvteam/RawFrameDecoder;->reportRawTelemetryIfDue()V

    return-void
.end method

.method public final decodeRawPrimary([BII)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    add-int v4, p2, v3

    add-int/lit8 v0, p2, 0x8

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    return v5

    :cond_0
    add-int/lit8 v0, p2, 0x9

    aget-byte v0, v2, v0

    and-int/lit16 v6, v0, 0xff

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_1

    return v5

    :cond_1
    div-int/lit8 v7, v6, 0x2

    const/4 v0, 0x1

    if-lt v7, v0, :cond_f

    const/16 v8, 0x40

    if-gt v7, v8, :cond_f

    mul-int/lit8 v9, v7, 0x10

    add-int/lit8 v9, v9, 0xa

    if-ge v3, v9, :cond_2

    move-object v9, v1

    move v2, v5

    move/from16 v16, v6

    move v1, v7

    goto/16 :goto_b

    :cond_2
    :try_start_0
    new-instance v9, Lcom/lvteam/RawFrameDecoder$RawCursor;

    add-int/lit8 v10, p2, 0x8

    invoke-direct {v9, v2, v10, v4}, Lcom/lvteam/RawFrameDecoder$RawCursor;-><init>([BII)V

    new-array v10, v7, [I

    new-array v11, v7, [F

    new-array v12, v7, [F

    new-array v13, v7, [F

    invoke-virtual {v9}, Lcom/lvteam/RawFrameDecoder$RawCursor;->readUnsigned()J

    invoke-virtual {v9}, Lcom/lvteam/RawFrameDecoder$RawCursor;->readUnsigned()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x3

    if-ge v14, v7, :cond_b

    move/from16 v16, v6

    :try_start_1
    invoke-virtual {v9}, Lcom/lvteam/RawFrameDecoder$RawCursor;->readUnsigned()J

    move-result-wide v5

    long-to-int v5, v5

    if-lt v5, v0, :cond_a

    if-le v5, v8, :cond_3

    move-object/from16 v20, v9

    move-object v9, v1

    move v1, v7

    move-object/from16 v7, v20

    goto/16 :goto_7

    :cond_3
    invoke-virtual {v9}, Lcom/lvteam/RawFrameDecoder$RawCursor;->readUnsigned()J

    move-result-wide v17
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-static/range {v17 .. v18}, Lcom/lvteam/VarintReader;->zigZag(J)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {v9}, Lcom/lvteam/RawFrameDecoder$RawCursor;->readUnsigned()J

    move-result-wide v17
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v7

    :try_start_3
    invoke-static/range {v17 .. v18}, Lcom/lvteam/VarintReader;->zigZag(J)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-virtual {v9}, Lcom/lvteam/RawFrameDecoder$RawCursor;->readUnsigned()J

    move-result-wide v17

    move-object/from16 v19, v9

    invoke-static/range {v17 .. v18}, Lcom/lvteam/VarintReader;->zigZag(J)J

    move-result-wide v8

    long-to-float v8, v8

    invoke-static {v0}, Lcom/lvteam/RawFrameDecoder;->isSaneCoordinate(F)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v6}, Lcom/lvteam/RawFrameDecoder;->isSaneCoordinate(F)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v8}, Lcom/lvteam/RawFrameDecoder;->isSaneCoordinate(F)Z

    move-result v9
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v9, :cond_4

    move-object/from16 v9, p0

    move-object/from16 v7, v19

    goto :goto_5

    :cond_4
    move-object/from16 v9, p0

    :try_start_4
    iget-object v7, v9, Lcom/lvteam/RawFrameDecoder;->state:Lcom/lvteam/EntityState;

    invoke-virtual {v7}, Lcom/lvteam/EntityState;->localSlot()I

    move-result v7

    if-ne v5, v7, :cond_6

    const/4 v7, 0x0

    :goto_1
    const/16 v15, 0x10

    if-ge v7, v15, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/lvteam/RawFrameDecoder$RawCursor;->readUnsigned()J

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_5
    move-object/from16 v7, v19

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_2
    nop

    if-ge v7, v15, :cond_7

    invoke-virtual/range {v19 .. v19}, Lcom/lvteam/RawFrameDecoder$RawCursor;->readUnsigned()J

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v7, v19

    invoke-virtual {v7, v15}, Lcom/lvteam/RawFrameDecoder$RawCursor;->skip(I)V

    const/4 v15, 0x0

    :goto_3
    const/4 v2, 0x4

    if-ge v15, v2, :cond_8

    invoke-virtual {v7}, Lcom/lvteam/RawFrameDecoder$RawCursor;->readUnsigned()J

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    goto :goto_3

    :cond_8
    :goto_4
    aput v5, v10, v14

    aput v0, v11, v14

    aput v6, v12, v14

    aput v8, v13, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p1

    move/from16 v6, v16

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/16 v8, 0x40

    move-object/from16 v20, v7

    move v7, v1

    move-object v1, v9

    move-object/from16 v9, v20

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v9, p0

    goto :goto_a

    :cond_9
    move-object/from16 v9, p0

    move-object/from16 v7, v19

    :goto_5
    const/4 v2, 0x0

    return v2

    :catch_2
    move-exception v0

    move-object/from16 v9, p0

    :goto_6
    move v1, v7

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v9, v1

    goto :goto_6

    :cond_a
    move-object/from16 v20, v9

    move-object v9, v1

    move v1, v7

    move-object/from16 v7, v20

    :goto_7
    const/4 v2, 0x0

    return v2

    :cond_b
    move/from16 v16, v6

    move-object/from16 v20, v9

    move-object v9, v1

    move v1, v7

    move-object/from16 v7, v20

    invoke-virtual {v7}, Lcom/lvteam/RawFrameDecoder$RawCursor;->position()I

    move-result v0

    sub-int v0, v4, v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_c

    if-le v0, v15, :cond_d

    :cond_c
    goto :goto_9

    :cond_d
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_e

    iget-object v5, v9, Lcom/lvteam/RawFrameDecoder;->state:Lcom/lvteam/EntityState;

    aget v8, v10, v2

    aget v14, v11, v2

    aget v15, v12, v2

    aget v6, v13, v2

    invoke-virtual {v5, v8, v14, v15, v6}, Lcom/lvteam/EntityState;->updatePosition(IFFF)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_e
    nop

    const/4 v2, 0x1

    return v2

    :goto_9
    const/4 v2, 0x0

    return v2

    :catch_4
    move-exception v0

    move-object v9, v1

    move/from16 v16, v6

    move v1, v7

    :goto_a
    nop

    const/4 v2, 0x0

    return v2

    :cond_f
    move-object v9, v1

    move v2, v5

    move/from16 v16, v6

    move v1, v7

    :goto_b
    return v2
.end method

.method public final decodeRelation(Lcom/lvteam/RawFrameDecoder$Cursor;Z)V
    .locals 10

    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    move-result-wide v2

    long-to-int v2, v2

    long-to-int v3, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    ushr-long v4, v0, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    if-nez v4, :cond_0

    const/16 v5, 0x10

    ushr-long v8, v0, v5

    and-long v5, v8, v6

    long-to-int v4, v5

    :cond_0
    if-nez v4, :cond_1

    const/16 v5, 0x18

    ushr-long v5, v0, v5

    long-to-int v4, v5

    :cond_1
    if-eqz p2, :cond_2

    iget-object v5, p0, Lcom/lvteam/RawFrameDecoder;->state:Lcom/lvteam/EntityState;

    invoke-virtual {v5, v2, v3, v4}, Lcom/lvteam/EntityState;->installRelation(III)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/lvteam/RawFrameDecoder;->state:Lcom/lvteam/EntityState;

    invoke-virtual {v5, v2, v3}, Lcom/lvteam/EntityState;->removeRelation(II)V

    :goto_0
    return-void
.end method

.method public final decodeVerified(Lcom/lvteam/UdpDecodedFrame;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/lvteam/RawFrameDecoder$Cursor;

    iget-object v1, p1, Lcom/lvteam/UdpDecodedFrame;->payload:[B

    invoke-direct {v0, v1}, Lcom/lvteam/RawFrameDecoder$Cursor;-><init>([B)V

    iget v1, p1, Lcom/lvteam/UdpDecodedFrame;->tag:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/lvteam/RawFrameDecoder;->decodePositions(Lcom/lvteam/RawFrameDecoder$Cursor;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lvteam/RawFrameDecoder;->decodeRelation(Lcom/lvteam/RawFrameDecoder$Cursor;Z)V

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lvteam/RawFrameDecoder;->decodeRelation(Lcom/lvteam/RawFrameDecoder$Cursor;Z)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    iget-object v1, p0, Lcom/lvteam/RawFrameDecoder;->state:Lcom/lvteam/EntityState;

    invoke-virtual {v0}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0}, Lcom/lvteam/RawFrameDecoder$Cursor;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lvteam/EntityState;->putName(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/lvteam/RawFrameDecoder;->state:Lcom/lvteam/EntityState;

    invoke-virtual {v0}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/lvteam/EntityState;->removeName(I)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {v0}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    invoke-virtual {v0}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    iget-object v1, p0, Lcom/lvteam/RawFrameDecoder;->state:Lcom/lvteam/EntityState;

    invoke-virtual {v0}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0}, Lcom/lvteam/RawFrameDecoder$Cursor;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lvteam/EntityState;->putName(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_0
    nop

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_5
        0x66 -> :sswitch_4
        0x6b -> :sswitch_3
        0x7d -> :sswitch_2
        0x7e -> :sswitch_1
        0x8b -> :sswitch_3
        0x7d2 -> :sswitch_0
    .end sparse-switch
.end method

.method public isGameEndpoint(Ljava/net/InetAddress;I)Z
    .locals 2

    iget-object v0, p0, Lcom/lvteam/RawFrameDecoder;->endpointConfigurations:Ljava/util/Map;

    new-instance v1, Lcom/lvteam/RawFrameDecoder$EndpointKey;

    invoke-direct {v1, p1, p2}, Lcom/lvteam/RawFrameDecoder$EndpointKey;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final latestConfiguration()Lcom/lvteam/UdpFrameUnwrapper$Configuration;
    .locals 1

    iget-object v0, p0, Lcom/lvteam/RawFrameDecoder;->lastLearnedConfig:Lcom/lvteam/UdpFrameUnwrapper$Configuration;

    return-object v0
.end method

.method public final observeLocalSlot([BII)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    const/16 v0, 0x10

    const/16 v3, 0x14

    :try_start_0
    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    add-int/lit8 v3, p2, 0x2

    invoke-static {v2, v3}, Lcom/lvteam/RawFrameDecoder;->unsignedShort([BI)I

    move-result v3

    iget-object v4, v1, Lcom/lvteam/RawFrameDecoder;->endpointConfigurations:Ljava/util/Map;

    new-instance v5, Lcom/lvteam/RawFrameDecoder$EndpointKey;

    invoke-direct {v5, v0, v3}, Lcom/lvteam/RawFrameDecoder$EndpointKey;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lvteam/UdpFrameUnwrapper$Configuration;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/lvteam/RawFrameDecoder;->latestConfiguration()Lcom/lvteam/UdpFrameUnwrapper$Configuration;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v5, p2, 0x8

    add-int/lit8 v6, p3, -0x8

    iget-object v7, v1, Lcom/lvteam/RawFrameDecoder;->unwrapper:Lcom/lvteam/UdpFrameUnwrapper;

    invoke-virtual {v7, v2, v5, v6, v4}, Lcom/lvteam/UdpFrameUnwrapper;->peekTag([BIILcom/lvteam/UdpFrameUnwrapper$Configuration;)I

    move-result v7

    if-ltz v7, :cond_2

    invoke-static {v7}, Lcom/lvteam/LvTeamShift;->observeCommand(I)V

    :cond_2
    iget-object v8, v1, Lcom/lvteam/RawFrameDecoder;->unwrapper:Lcom/lvteam/UdpFrameUnwrapper;

    invoke-virtual {v8, v2, v5, v6, v4}, Lcom/lvteam/UdpFrameUnwrapper;->unwrap([BIILcom/lvteam/UdpFrameUnwrapper$Configuration;)Lcom/lvteam/UdpDecodedFrame;

    move-result-object v8

    if-nez v8, :cond_3

    return-void

    :cond_3
    iget v9, v8, Lcom/lvteam/UdpDecodedFrame;->tag:I

    const/16 v10, 0x7d1

    if-eq v9, v10, :cond_4

    return-void

    :cond_4
    iget-object v9, v8, Lcom/lvteam/UdpDecodedFrame;->payload:[B

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/lvteam/RawFrameDecoder;->readVarint([BI)[J

    move-result-object v9

    if-eqz v9, :cond_5

    aget-wide v11, v9, v10

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_5

    aget-wide v11, v9, v10

    const-wide/16 v13, 0x7f

    cmp-long v11, v11, v13

    if-gtz v11, :cond_5

    iget-object v11, v1, Lcom/lvteam/RawFrameDecoder;->state:Lcom/lvteam/EntityState;

    aget-wide v12, v9, v10

    long-to-int v10, v12

    invoke-virtual {v11, v10}, Lcom/lvteam/EntityState;->setLocalSlot(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    nop

    :goto_1
    return-void
.end method

.method public final reportRawTelemetryIfDue()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lvteam/RawFrameDecoder;->rawTelemetryAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw positions accepted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/lvteam/RawFrameDecoder;->rawPositionsAccepted:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " malformed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/lvteam/RawFrameDecoder;->rawPositionsMalformed:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RawFrameDecoder"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lvteam/RawFrameDecoder;->rawPositionsAccepted:J

    iput-wide v2, p0, Lcom/lvteam/RawFrameDecoder;->rawPositionsMalformed:J

    iput-wide v0, p0, Lcom/lvteam/RawFrameDecoder;->rawTelemetryAt:J

    return-void
.end method

.method public final reportShiftTelemetry(Z)V
    .locals 6

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lcom/lvteam/RawFrameDecoder;->shiftApplied:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/lvteam/RawFrameDecoder;->shiftApplied:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/lvteam/RawFrameDecoder;->shiftRejected:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/lvteam/RawFrameDecoder;->shiftRejected:J

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lvteam/RawFrameDecoder;->lastShiftReportAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iput-wide v0, p0, Lcom/lvteam/RawFrameDecoder;->lastShiftReportAt:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lateral shift packets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/lvteam/RawFrameDecoder;->shiftApplied:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " targets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/lvteam/RawFrameDecoder;->shiftTargets:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " localPreserved="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/lvteam/RawFrameDecoder;->shiftLocalPreserved:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " rejected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/lvteam/RawFrameDecoder;->shiftRejected:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RawFrameDecoder"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lvteam/RawFrameDecoder;->shiftApplied:J

    iput-wide v2, p0, Lcom/lvteam/RawFrameDecoder;->shiftRejected:J

    iput-wide v2, p0, Lcom/lvteam/RawFrameDecoder;->shiftTargets:J

    iput-wide v2, p0, Lcom/lvteam/RawFrameDecoder;->shiftLocalPreserved:J

    :cond_1
    return-void
.end method

.method public final rewriteShiftBatch([B)[B
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/lvteam/RawFrameDecoder;->state:Lcom/lvteam/EntityState;

    invoke-virtual {v0}, Lcom/lvteam/EntityState;->horizontalForward()[F

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    const/4 v0, 0x1

    aget v5, v3, v0

    neg-float v5, v5

    const/4 v6, 0x0

    aget v7, v3, v6

    mul-float v8, v5, v5

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v8}, Lcom/lvteam/EntityState$$ExternalSyntheticBackport4;->m(F)Z

    move-result v9

    if-eqz v9, :cond_17

    const v9, 0x3d4ccccd    # 0.05f

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_1

    move-object/from16 v29, v3

    move/from16 v17, v5

    move/from16 v22, v7

    move/from16 v26, v8

    move-object v3, v1

    goto/16 :goto_9

    :cond_1
    invoke-static {}, Lcom/lvteam/LateralShift;->direction()Lcom/lvteam/LateralShift$Direction;

    move-result-object v9

    sget-object v10, Lcom/lvteam/LateralShift$Direction;->RIGHT:Lcom/lvteam/LateralShift$Direction;

    if-eq v9, v10, :cond_3

    invoke-static {}, Lcom/lvteam/LateralShift;->direction()Lcom/lvteam/LateralShift$Direction;

    move-result-object v9

    sget-object v10, Lcom/lvteam/LateralShift$Direction;->FREE:Lcom/lvteam/LateralShift$Direction;

    if-ne v9, v10, :cond_2

    goto :goto_0

    :cond_2
    const v9, 0x459c4000    # 5000.0f

    goto :goto_1

    :cond_3
    :goto_0
    const v9, -0x3a63c000    # -5000.0f

    :goto_1
    nop

    div-float v10, v5, v8

    mul-float/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-long v10, v10

    div-float v12, v7, v8

    mul-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-long v12, v12

    const-wide/16 v14, 0x0

    cmp-long v16, v10, v14

    if-nez v16, :cond_4

    cmp-long v16, v12, v14

    if-nez v16, :cond_4

    return-object v4

    :cond_4
    invoke-static {v2, v6}, Lcom/lvteam/RawFrameDecoder;->readVarint([BI)[J

    move-result-object v16

    if-nez v16, :cond_5

    return-object v4

    :cond_5
    aget-wide v14, v16, v0

    long-to-int v14, v14

    invoke-static {v2, v14}, Lcom/lvteam/RawFrameDecoder;->readVarint([BI)[J

    move-result-object v14

    if-nez v14, :cond_6

    return-object v4

    :cond_6
    aget-wide v19, v14, v6

    invoke-static/range {v19 .. v20}, Lcom/lvteam/VarintReader;->zigZag(J)J

    move-result-wide v19

    const-wide/16 v17, 0x0

    cmp-long v15, v19, v17

    if-ltz v15, :cond_16

    const-wide/16 v17, 0x80

    cmp-long v15, v19, v17

    if-lez v15, :cond_7

    move-object/from16 v29, v3

    move/from16 v17, v5

    move/from16 v22, v7

    move/from16 v26, v8

    move/from16 v33, v9

    move-object/from16 v28, v14

    move-object v3, v1

    goto/16 :goto_8

    :cond_7
    move/from16 v17, v5

    aget-wide v4, v14, v0

    long-to-int v4, v4

    iget-object v5, v1, Lcom/lvteam/RawFrameDecoder;->state:Lcom/lvteam/EntityState;

    invoke-virtual {v5}, Lcom/lvteam/EntityState;->localSlot()I

    move-result v5

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    new-instance v15, Ljava/io/ByteArrayOutputStream;

    array-length v0, v2

    add-int/lit8 v0, v0, 0x40

    invoke-direct {v15, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v15, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x0

    move/from16 v25, v21

    move/from16 v6, v22

    move/from16 v39, v4

    move v4, v0

    move/from16 v0, v39

    :goto_2
    move/from16 v22, v7

    move/from16 v26, v8

    int-to-long v7, v4

    cmp-long v7, v7, v19

    if-gez v7, :cond_12

    array-length v7, v2

    if-lt v0, v7, :cond_8

    const/4 v7, 0x0

    return-object v7

    :cond_8
    move-object v7, v15

    aget-byte v8, v2, v0

    and-int/lit16 v8, v8, 0xff

    move/from16 v23, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v0}, Lcom/lvteam/RawFrameDecoder;->readVarint([BI)[J

    move-result-object v27

    if-nez v27, :cond_9

    const/4 v15, 0x0

    return-object v15

    :cond_9
    const/4 v15, 0x0

    move/from16 v28, v0

    const/16 v24, 0x1

    aget-wide v0, v27, v24

    long-to-int v0, v0

    invoke-static {v2, v0}, Lcom/lvteam/RawFrameDecoder;->readVarint([BI)[J

    move-result-object v1

    if-nez v1, :cond_a

    return-object v15

    :cond_a
    move-object/from16 v29, v3

    move/from16 v30, v4

    aget-wide v3, v1, v24

    long-to-int v0, v3

    invoke-static {v2, v0}, Lcom/lvteam/RawFrameDecoder;->readVarint([BI)[J

    move-result-object v3

    if-nez v3, :cond_b

    return-object v15

    :cond_b
    move-object v4, v14

    aget-wide v14, v3, v24

    long-to-int v14, v14

    move v0, v14

    const/4 v15, 0x0

    :goto_3
    move-object/from16 v28, v4

    const/4 v4, 0x3

    if-ge v15, v4, :cond_d

    invoke-static {v2, v0}, Lcom/lvteam/RawFrameDecoder;->readVarint([BI)[J

    move-result-object v4

    if-nez v4, :cond_c

    const/16 v21, 0x0

    return-object v21

    :cond_c
    move/from16 v31, v15

    move/from16 v32, v14

    const/16 v24, 0x1

    aget-wide v14, v4, v24

    long-to-int v0, v14

    add-int/lit8 v15, v31, 0x1

    move-object/from16 v4, v28

    move/from16 v14, v32

    goto :goto_3

    :cond_d
    move/from16 v32, v14

    move/from16 v31, v15

    array-length v4, v2

    add-int/lit8 v4, v4, -0x5

    if-le v0, v4, :cond_e

    const/4 v4, 0x0

    return-object v4

    :cond_e
    add-int/lit8 v0, v0, 0x5

    invoke-static {v2, v0}, Lcom/lvteam/RawFrameDecoder;->readVarint([BI)[J

    move-result-object v4

    if-eqz v4, :cond_11

    const/4 v14, 0x1

    aget-wide v33, v4, v14

    array-length v15, v2

    int-to-long v14, v15

    cmp-long v14, v33, v14

    if-ltz v14, :cond_f

    move/from16 v24, v0

    move-object v15, v1

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move/from16 v34, v8

    move/from16 v33, v9

    move/from16 v14, v23

    move/from16 v1, v25

    move/from16 v9, v32

    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_f
    move/from16 v24, v0

    move-object v15, v1

    const/4 v14, 0x1

    aget-wide v0, v4, v14

    long-to-int v0, v0

    add-int/lit8 v1, v0, 0x1

    if-lt v5, v14, :cond_10

    if-ne v8, v5, :cond_10

    move/from16 v14, v23

    sub-int v0, v1, v14

    invoke-virtual {v7, v2, v14, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v23, v1

    move/from16 v33, v9

    const/4 v8, 0x0

    goto :goto_4

    :cond_10
    move/from16 v14, v23

    const/4 v0, 0x0

    :try_start_0
    aget-wide v33, v27, v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_4

    move/from16 v23, v1

    :try_start_1
    invoke-static/range {v33 .. v34}, Lcom/lvteam/VarintReader;->zigZag(J)J

    move-result-wide v0

    invoke-static {v0, v1, v10, v11}, Lcom/lvteam/RawFrameDecoder$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    const/16 v21, 0x0

    aget-wide v33, v3, v21
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    :try_start_2
    invoke-static/range {v33 .. v34}, Lcom/lvteam/VarintReader;->zigZag(J)J

    move-result-wide v3

    invoke-static {v3, v4, v12, v13}, Lcom/lvteam/RawFrameDecoder$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v34, v8

    move/from16 v33, v9

    :try_start_3
    invoke-static {v0, v1}, Lcom/lvteam/RawFrameDecoder;->zigZagEncode(J)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/lvteam/RawFrameDecoder;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    move-wide/from16 v37, v0

    const/4 v8, 0x0

    aget-wide v0, v15, v8

    invoke-static {v7, v0, v1}, Lcom/lvteam/RawFrameDecoder;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    invoke-static {v3, v4}, Lcom/lvteam/RawFrameDecoder;->zigZagEncode(J)J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lcom/lvteam/RawFrameDecoder;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V
    :try_end_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_1

    sub-int v1, v23, v32

    move/from16 v9, v32

    :try_start_4
    invoke-virtual {v7, v2, v9, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v0, 0x1

    nop

    move/from16 v1, v25

    add-int/lit8 v25, v1, 0x1

    move/from16 v18, v0

    :goto_4
    add-int/lit8 v4, v30, 0x1

    move-object/from16 v1, p0

    move-object v15, v7

    move/from16 v7, v22

    move/from16 v0, v23

    move/from16 v8, v26

    move-object/from16 v14, v28

    move-object/from16 v3, v29

    move/from16 v9, v33

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move/from16 v1, v25

    goto :goto_5

    :catch_1
    move-exception v0

    move/from16 v1, v25

    move/from16 v9, v32

    goto :goto_5

    :catch_2
    move-exception v0

    move/from16 v34, v8

    move/from16 v33, v9

    move/from16 v1, v25

    move/from16 v9, v32

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move/from16 v34, v8

    move/from16 v33, v9

    move/from16 v1, v25

    move/from16 v9, v32

    goto :goto_5

    :catch_4
    move-exception v0

    move/from16 v23, v1

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move/from16 v34, v8

    move/from16 v33, v9

    move/from16 v1, v25

    move/from16 v9, v32

    :goto_5
    const/4 v3, 0x0

    return-object v3

    :cond_11
    move/from16 v24, v0

    move-object v15, v1

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move/from16 v34, v8

    move/from16 v33, v9

    move/from16 v14, v23

    move/from16 v1, v25

    move/from16 v9, v32

    const/4 v3, 0x0

    :goto_6
    return-object v3

    :cond_12
    move-object/from16 v29, v3

    move/from16 v30, v4

    move/from16 v33, v9

    move-object/from16 v28, v14

    move-object v7, v15

    move/from16 v1, v25

    invoke-static {v2, v0}, Lcom/lvteam/RawFrameDecoder;->readVarint([BI)[J

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 v4, 0x1

    aget-wide v8, v3, v4

    array-length v4, v2

    move-object v14, v3

    int-to-long v3, v4

    cmp-long v3, v8, v3

    if-eqz v3, :cond_13

    move-object/from16 v3, p0

    move/from16 v21, v5

    goto :goto_7

    :cond_13
    if-nez v18, :cond_14

    const/4 v3, 0x0

    return-object v3

    :cond_14
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {v7, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move-object/from16 v3, p0

    iget-wide v8, v3, Lcom/lvteam/RawFrameDecoder;->shiftTargets:J

    move/from16 v21, v5

    int-to-long v4, v1

    add-long/2addr v8, v4

    iput-wide v8, v3, Lcom/lvteam/RawFrameDecoder;->shiftTargets:J

    iget-wide v4, v3, Lcom/lvteam/RawFrameDecoder;->shiftLocalPreserved:J

    int-to-long v8, v6

    add-long/2addr v4, v8

    iput-wide v4, v3, Lcom/lvteam/RawFrameDecoder;->shiftLocalPreserved:J

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    :cond_15
    move-object v14, v3

    move/from16 v21, v5

    move-object/from16 v3, p0

    :goto_7
    const/4 v4, 0x0

    return-object v4

    :cond_16
    move-object/from16 v29, v3

    move/from16 v17, v5

    move/from16 v22, v7

    move/from16 v26, v8

    move/from16 v33, v9

    move-object/from16 v28, v14

    move-object v3, v1

    :goto_8
    return-object v4

    :cond_17
    move-object/from16 v29, v3

    move/from16 v17, v5

    move/from16 v22, v7

    move/from16 v26, v8

    move-object v3, v1

    :goto_9
    return-object v4
.end method

.method public declared-synchronized shiftDownlink([BILjava/net/InetAddress;I)[B
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/lvteam/LateralShift;->direction()Lcom/lvteam/LateralShift$Direction;

    move-result-object v0

    sget-object v5, Lcom/lvteam/LateralShift$Direction;->NONE:Lcom/lvteam/LateralShift$Direction;

    if-eq v0, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-static {}, Lcom/lvteam/LvTeamShift;->isAnyActive()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-nez v5, :cond_1

    monitor-exit p0

    return-object v2

    :cond_1
    if-eqz v2, :cond_10

    if-ltz v3, :cond_10

    :try_start_1
    array-length v7, v2

    if-le v3, v7, :cond_2

    move-object/from16 v9, p3

    move/from16 v10, p4

    goto/16 :goto_4

    :cond_2
    iget-object v7, v1, Lcom/lvteam/RawFrameDecoder;->endpointConfigurations:Ljava/util/Map;

    new-instance v8, Lcom/lvteam/RawFrameDecoder$EndpointKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v9, p3

    move/from16 v10, p4

    :try_start_2
    invoke-direct {v8, v9, v10}, Lcom/lvteam/RawFrameDecoder$EndpointKey;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lvteam/UdpFrameUnwrapper$Configuration;

    if-nez v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/lvteam/RawFrameDecoder;->latestConfiguration()Lcom/lvteam/UdpFrameUnwrapper$Configuration;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v8

    if-nez v7, :cond_3

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    :try_start_3
    iget-object v8, v1, Lcom/lvteam/RawFrameDecoder;->unwrapper:Lcom/lvteam/UdpFrameUnwrapper;

    invoke-virtual {v8, v2, v4, v3, v7}, Lcom/lvteam/UdpFrameUnwrapper;->unwrap([BIILcom/lvteam/UdpFrameUnwrapper$Configuration;)Lcom/lvteam/UdpDecodedFrame;

    move-result-object v8

    move-object/from16 v11, p1

    const/4 v12, 0x0

    move/from16 v13, p2

    if-nez v8, :cond_7

    invoke-static/range {p1 .. p2}, Lcom/lvteam/Ipv4UdpPacket;->parse([BI)Lcom/lvteam/Ipv4UdpPacket;

    move-result-object v14

    if-eqz v14, :cond_6

    iget-object v15, v1, Lcom/lvteam/RawFrameDecoder;->endpointConfigurations:Ljava/util/Map;

    new-instance v6, Lcom/lvteam/RawFrameDecoder$EndpointKey;

    iget-object v4, v14, Lcom/lvteam/Ipv4UdpPacket;->destinationAddress:Ljava/net/InetAddress;

    move-object/from16 v16, v7

    iget v7, v14, Lcom/lvteam/Ipv4UdpPacket;->destinationPort:I

    invoke-direct {v6, v4, v7}, Lcom/lvteam/RawFrameDecoder$EndpointKey;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lvteam/UdpFrameUnwrapper$Configuration;

    if-nez v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/lvteam/RawFrameDecoder;->latestConfiguration()Lcom/lvteam/UdpFrameUnwrapper$Configuration;

    move-result-object v6

    move-object v4, v6

    :cond_4
    iget-object v6, v1, Lcom/lvteam/RawFrameDecoder;->unwrapper:Lcom/lvteam/UdpFrameUnwrapper;

    iget-object v7, v14, Lcom/lvteam/Ipv4UdpPacket;->payload:[B

    iget-object v15, v14, Lcom/lvteam/Ipv4UdpPacket;->payload:[B

    array-length v15, v15

    move-object/from16 v17, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v15, v4}, Lcom/lvteam/UdpFrameUnwrapper;->unwrap([BIILcom/lvteam/UdpFrameUnwrapper$Configuration;)Lcom/lvteam/UdpDecodedFrame;

    move-result-object v6

    move-object v8, v6

    if-eqz v8, :cond_5

    move-object v7, v4

    iget-object v6, v14, Lcom/lvteam/Ipv4UdpPacket;->payload:[B

    move-object v11, v6

    const/4 v12, 0x0

    iget-object v6, v14, Lcom/lvteam/Ipv4UdpPacket;->payload:[B

    array-length v6, v6

    move v13, v6

    goto :goto_2

    :cond_5
    move-object/from16 v7, v16

    goto :goto_2

    :cond_6
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    goto :goto_1

    :cond_7
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    :goto_1
    move-object/from16 v7, v16

    move-object/from16 v8, v17

    :goto_2
    if-eqz v8, :cond_f

    iget v4, v8, Lcom/lvteam/UdpDecodedFrame;->tag:I

    const/16 v6, 0x7d1

    if-eq v4, v6, :cond_8

    iget v4, v8, Lcom/lvteam/UdpDecodedFrame;->tag:I

    const/16 v6, 0x7d2

    if-eq v4, v6, :cond_8

    iget v4, v8, Lcom/lvteam/UdpDecodedFrame;->tag:I

    const/16 v6, 0x7dc

    if-ne v4, v6, :cond_f

    :cond_8
    iget v4, v8, Lcom/lvteam/UdpDecodedFrame;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    iget-object v4, v8, Lcom/lvteam/UdpDecodedFrame;->payload:[B

    const/4 v6, 0x0

    if-eqz v5, :cond_a

    invoke-static {v4}, Lcom/lvteam/LvTeamShift;->transformDown([B)[B

    move-result-object v14

    if-eqz v14, :cond_a

    move-object v4, v14

    const/4 v6, 0x1

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v1, v4}, Lcom/lvteam/RawFrameDecoder;->rewriteShiftBatch([B)[B

    move-result-object v14

    if-eqz v14, :cond_b

    move-object v4, v14

    const/4 v6, 0x1

    :cond_b
    if-nez v6, :cond_c

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/lvteam/RawFrameDecoder;->reportShiftTelemetry(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_c
    :try_start_4
    iget-object v14, v1, Lcom/lvteam/RawFrameDecoder;->unwrapper:Lcom/lvteam/UdpFrameUnwrapper;

    move-object/from16 v16, v14

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v4

    invoke-virtual/range {v16 .. v22}, Lcom/lvteam/UdpFrameUnwrapper;->rebuild([BIILcom/lvteam/UdpFrameUnwrapper$Configuration;Lcom/lvteam/UdpDecodedFrame;[B)[B

    move-result-object v14

    if-nez v14, :cond_d

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/lvteam/RawFrameDecoder;->reportShiftTelemetry(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_d
    if-eq v11, v2, :cond_e

    :try_start_5
    invoke-static {v2, v3, v14}, Lcom/lvteam/Ipv4UdpPacket;->replacePayload([BI[B)[B

    move-result-object v15

    move-object v14, v15

    if-nez v14, :cond_e

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/lvteam/RawFrameDecoder;->reportShiftTelemetry(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_e
    const/4 v15, 0x1

    :try_start_6
    invoke-virtual {v1, v15}, Lcom/lvteam/RawFrameDecoder;->reportShiftTelemetry(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v14

    :cond_f
    :goto_3
    monitor-exit p0

    return-object v2

    :catch_1
    move-exception v0

    move-object/from16 v9, p3

    move/from16 v10, p4

    goto :goto_5

    :cond_10
    move-object/from16 v9, p3

    move/from16 v10, p4

    :goto_4
    monitor-exit p0

    return-object v2

    :goto_5
    nop

    const/4 v4, 0x0

    :try_start_7
    invoke-virtual {v1, v4}, Lcom/lvteam/RawFrameDecoder;->reportShiftTelemetry(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_6
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public declared-synchronized shiftUplink([BILjava/net/InetAddress;I)[B
    .locals 11

    monitor-enter p0

    if-eqz p1, :cond_a

    if-ltz p2, :cond_a

    :try_start_0
    array-length v0, p1

    if-le p2, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/lvteam/RawFrameDecoder;->endpointConfigurations:Ljava/util/Map;

    new-instance v1, Lcom/lvteam/RawFrameDecoder$EndpointKey;

    invoke-direct {v1, p3, p4}, Lcom/lvteam/RawFrameDecoder$EndpointKey;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lvteam/UdpFrameUnwrapper$Configuration;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lvteam/RawFrameDecoder;->unwrapper:Lcom/lvteam/UdpFrameUnwrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/lvteam/UdpFrameUnwrapper;->peekTag([BIILcom/lvteam/UdpFrameUnwrapper$Configuration;)I

    move-result v1

    move v8, v1

    if-ltz v8, :cond_2

    invoke-static {v8}, Lcom/lvteam/LvTeamShift;->observeCommand(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/lvteam/RawFrameDecoder;->unwrapper:Lcom/lvteam/UdpFrameUnwrapper;

    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/lvteam/UdpFrameUnwrapper;->unwrap([BIILcom/lvteam/UdpFrameUnwrapper$Configuration;)Lcom/lvteam/UdpDecodedFrame;

    move-result-object v1

    move-object v9, v1

    const/16 v1, 0x7d1

    if-eqz v9, :cond_3

    iget v3, v9, Lcom/lvteam/UdpDecodedFrame;->tag:I

    if-ne v3, v1, :cond_3

    iget-object v3, v9, Lcom/lvteam/UdpDecodedFrame;->payload:[B

    invoke-static {v3, v2}, Lcom/lvteam/RawFrameDecoder;->readVarint([BI)[J

    move-result-object v3

    if-eqz v3, :cond_3

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x7f

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    iget-object v4, p0, Lcom/lvteam/RawFrameDecoder;->state:Lcom/lvteam/EntityState;

    aget-wide v5, v3, v2

    long-to-int v2, v5

    invoke-virtual {v4, v2}, Lcom/lvteam/EntityState;->setLocalSlot(I)V

    :cond_3
    invoke-static {}, Lcom/lvteam/LvTeamShift;->isUplinkActive()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_4

    monitor-exit p0

    return-object p1

    :cond_4
    if-eqz v9, :cond_5

    :try_start_2
    iget v2, v9, Lcom/lvteam/UdpDecodedFrame;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    :cond_5
    goto :goto_2

    :cond_6
    iget v2, v9, Lcom/lvteam/UdpDecodedFrame;->tag:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v2, v1, :cond_7

    monitor-exit p0

    return-object p1

    :cond_7
    :try_start_3
    iget-object v1, v9, Lcom/lvteam/UdpDecodedFrame;->payload:[B

    invoke-static {v1}, Lcom/lvteam/LvTeamShift;->transformUp([B)[B

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v10, v1

    if-nez v10, :cond_8

    monitor-exit p0

    return-object p1

    :cond_8
    :try_start_4
    iget-object v1, p0, Lcom/lvteam/RawFrameDecoder;->unwrapper:Lcom/lvteam/UdpFrameUnwrapper;

    const/4 v3, 0x0

    move-object v2, p1

    move v4, p2

    move-object v5, v0

    move-object v6, v9

    move-object v7, v10

    invoke-virtual/range {v1 .. v7}, Lcom/lvteam/UdpFrameUnwrapper;->rebuild([BIILcom/lvteam/UdpFrameUnwrapper$Configuration;Lcom/lvteam/UdpDecodedFrame;[B)[B

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_9

    move-object v2, v1

    goto :goto_1

    :cond_9
    move-object v2, p1

    :goto_1
    monitor-exit p0

    return-object v2

    :goto_2
    monitor-exit p0

    return-object p1

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :goto_4
    nop

    monitor-exit p0

    return-object p1

    :cond_a
    :goto_5
    monitor-exit p0

    return-object p1
.end method
