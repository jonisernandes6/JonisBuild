.class public final Lcom/jonis/trainer/Ipv4TcpPacket;
.super Ljava/lang/Object;
.source "Ipv4TcpPacket.java"


# instance fields
.field public final acknowledgementNumber:J

.field public final destinationAddress:Ljava/net/InetAddress;

.field public final destinationPort:I

.field public final flags:I

.field public final payload:[B

.field public final sequenceNumber:J

.field public final sourceAddress:Ljava/net/InetAddress;

.field public final sourcePort:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;IIJJI[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jonis/trainer/Ipv4TcpPacket;->sourceAddress:Ljava/net/InetAddress;

    iput-object p2, p0, Lcom/jonis/trainer/Ipv4TcpPacket;->destinationAddress:Ljava/net/InetAddress;

    iput p3, p0, Lcom/jonis/trainer/Ipv4TcpPacket;->sourcePort:I

    iput p4, p0, Lcom/jonis/trainer/Ipv4TcpPacket;->destinationPort:I

    iput-wide p5, p0, Lcom/jonis/trainer/Ipv4TcpPacket;->sequenceNumber:J

    iput-wide p7, p0, Lcom/jonis/trainer/Ipv4TcpPacket;->acknowledgementNumber:J

    iput p9, p0, Lcom/jonis/trainer/Ipv4TcpPacket;->flags:I

    iput-object p10, p0, Lcom/jonis/trainer/Ipv4TcpPacket;->payload:[B

    return-void
.end method

.method public static checksum([BII)I
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    :goto_1
    ushr-int/lit8 v1, v0, 0x10

    const v2, 0xffff

    if-eqz v1, :cond_1

    and-int v1, v0, v2

    ushr-int/lit8 v2, v0, 0x10

    add-int v0, v1, v2

    goto :goto_1

    :cond_1
    not-int v1, v0

    and-int/2addr v1, v2

    return v1
.end method

.method public static hasValidIpv4Checksum([BI)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/jonis/trainer/Ipv4TcpPacket;->checksum([BII)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasValidTcpChecksum([BII)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/jonis/trainer/Ipv4TcpPacket;->tcpChecksum([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parse([BI)Lcom/jonis/trainer/Ipv4TcpPacket;
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    const/16 v0, 0x14

    if-lt v2, v0, :cond_0

    const/4 v4, 0x0

    aget-byte v5, v1, v4

    const/4 v6, 0x4

    ushr-int/2addr v5, v6

    if-eq v5, v6, :cond_1

    :cond_0
    goto/16 :goto_2

    :cond_1
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0xf

    mul-int/2addr v4, v6

    const/4 v5, 0x2

    invoke-static {v1, v5}, Lcom/jonis/trainer/Ipv4TcpPacket;->unsignedShort([BI)I

    move-result v5

    if-lt v4, v0, :cond_6

    if-gt v4, v2, :cond_6

    add-int/lit8 v7, v4, 0x14

    if-lt v5, v7, :cond_6

    if-gt v5, v2, :cond_6

    const/16 v7, 0x9

    aget-byte v7, v1, v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_6

    invoke-static {v1, v4}, Lcom/jonis/trainer/Ipv4TcpPacket;->hasValidIpv4Checksum([BI)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1, v8}, Lcom/jonis/trainer/Ipv4TcpPacket;->unsignedShort([BI)I

    move-result v7

    and-int/lit16 v7, v7, 0x3fff

    if-eqz v7, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v7, v4, 0xc

    aget-byte v7, v1, v7

    ushr-int/2addr v7, v6

    and-int/lit8 v7, v7, 0xf

    mul-int/2addr v7, v6

    sub-int v6, v5, v4

    if-lt v7, v0, :cond_5

    if-gt v7, v6, :cond_5

    invoke-static {v1, v4, v6}, Lcom/jonis/trainer/Ipv4TcpPacket;->hasValidTcpChecksum([BII)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v8, Lcom/jonis/trainer/Ipv4TcpPacket;

    const/16 v9, 0x10

    const/16 v10, 0xc

    invoke-static {v1, v10, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-static {v10}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v10

    invoke-static {v1, v9, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-static {v1, v4}, Lcom/jonis/trainer/Ipv4TcpPacket;->unsignedShort([BI)I

    move-result v12

    add-int/lit8 v0, v4, 0x2

    invoke-static {v1, v0}, Lcom/jonis/trainer/Ipv4TcpPacket;->unsignedShort([BI)I

    move-result v13

    add-int/lit8 v0, v4, 0x4

    invoke-static {v1, v0}, Lcom/jonis/trainer/Ipv4TcpPacket;->unsignedInt([BI)J

    move-result-wide v14

    add-int/lit8 v0, v4, 0x8

    invoke-static {v1, v0}, Lcom/jonis/trainer/Ipv4TcpPacket;->unsignedInt([BI)J

    move-result-wide v16

    add-int/lit8 v0, v4, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v18, v0, 0x3f

    add-int v0, v4, v7

    invoke-static {v1, v0, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v19

    move-object v9, v8

    invoke-direct/range {v9 .. v19}, Lcom/jonis/trainer/Ipv4TcpPacket;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;IIJJI[B)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception v0

    return-object v3

    :cond_5
    :goto_0
    return-object v3

    :cond_6
    :goto_1
    return-object v3

    :goto_2
    return-object v3
.end method

.method public static response(Ljava/net/InetAddress;ILjava/net/InetAddress;IJJI[BI)[B
    .locals 17

    move/from16 v0, p8

    move-object/from16 v1, p9

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/16 v5, 0x14

    add-int/2addr v2, v5

    add-int/lit8 v6, v2, 0x14

    array-length v7, v1

    add-int/2addr v6, v7

    new-array v7, v6, [B

    const/16 v8, 0x45

    aput-byte v8, v7, v3

    const/4 v8, 0x2

    invoke-static {v7, v8, v6}, Lcom/jonis/trainer/Ipv4TcpPacket;->writeShort([BII)V

    move/from16 v9, p10

    invoke-static {v7, v4, v9}, Lcom/jonis/trainer/Ipv4TcpPacket;->writeShort([BII)V

    const/16 v10, 0x40

    const/16 v11, 0x8

    aput-byte v10, v7, v11

    const/16 v10, 0x9

    const/4 v11, 0x6

    aput-byte v11, v7, v10

    invoke-virtual/range {p0 .. p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    const/16 v11, 0xc

    invoke-static {v10, v3, v7, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v3, v7, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v10, 0x14

    move/from16 v11, p1

    invoke-static {v7, v10, v11}, Lcom/jonis/trainer/Ipv4TcpPacket;->writeShort([BII)V

    add-int/lit8 v12, v10, 0x2

    move/from16 v13, p3

    invoke-static {v7, v12, v13}, Lcom/jonis/trainer/Ipv4TcpPacket;->writeShort([BII)V

    add-int/lit8 v12, v10, 0x4

    move-wide/from16 v14, p4

    invoke-static {v7, v12, v14, v15}, Lcom/jonis/trainer/Ipv4TcpPacket;->writeInt([BIJ)V

    add-int/lit8 v12, v10, 0x8

    move/from16 v16, v6

    move-wide/from16 v5, p6

    invoke-static {v7, v12, v5, v6}, Lcom/jonis/trainer/Ipv4TcpPacket;->writeInt([BIJ)V

    add-int/lit8 v12, v10, 0xc

    shl-int/lit8 v3, v2, 0x2

    int-to-byte v3, v3

    aput-byte v3, v7, v12

    add-int/lit8 v3, v10, 0xd

    int-to-byte v12, v0

    aput-byte v12, v7, v3

    add-int/lit8 v3, v10, 0xe

    const v12, 0xffff

    invoke-static {v7, v3, v12}, Lcom/jonis/trainer/Ipv4TcpPacket;->writeShort([BII)V

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    add-int/lit8 v3, v10, 0x14

    aput-byte v8, v7, v3

    add-int/lit8 v3, v10, 0x14

    add-int/lit8 v3, v3, 0x1

    aput-byte v4, v7, v3

    add-int/lit8 v3, v10, 0x14

    add-int/2addr v3, v8

    const/16 v4, 0x4d8

    invoke-static {v7, v3, v4}, Lcom/jonis/trainer/Ipv4TcpPacket;->writeShort([BII)V

    :cond_1
    add-int v3, v10, v2

    array-length v4, v1

    const/4 v8, 0x0

    invoke-static {v1, v8, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0xa

    const/16 v4, 0x14

    invoke-static {v7, v8, v4}, Lcom/jonis/trainer/Ipv4TcpPacket;->checksum([BII)I

    move-result v4

    invoke-static {v7, v3, v4}, Lcom/jonis/trainer/Ipv4TcpPacket;->writeShort([BII)V

    array-length v3, v1

    add-int/2addr v3, v2

    invoke-static {v7, v10, v3}, Lcom/jonis/trainer/Ipv4TcpPacket;->tcpChecksum([BII)I

    move-result v3

    add-int/lit8 v4, v10, 0x10

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v12, v3

    :goto_1
    invoke-static {v7, v4, v12}, Lcom/jonis/trainer/Ipv4TcpPacket;->writeShort([BII)V

    return-object v7
.end method

.method public static tcpChecksum([BII)I
    .locals 7

    add-int/lit8 v0, p2, 0x6

    int-to-long v0, v0

    const/16 v2, 0xc

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    invoke-static {p0, v2}, Lcom/jonis/trainer/Ipv4TcpPacket;->unsignedShort([BI)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_1
    add-int v3, p1, p2

    if-ge v2, v3, :cond_2

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v2, 0x1

    add-int v5, p1, p2

    if-ge v4, v5, :cond_1

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    :cond_1
    int-to-long v4, v3

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    :goto_2
    const/16 v2, 0x10

    ushr-long v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    const-wide/32 v3, 0xffff

    and-long/2addr v3, v0

    ushr-long v5, v0, v2

    add-long v0, v3, v5

    goto :goto_2

    :cond_3
    long-to-int v2, v0

    not-int v2, v2

    const v3, 0xffff

    and-int/2addr v2, v3

    return v2
.end method

.method public static unsignedInt([BI)J
    .locals 6

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
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

.method public static writeInt([BIJ)V
    .locals 3

    const/16 v0, 0x18

    ushr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    long-to-int v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method public static writeShort([BII)V
    .locals 2

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method
