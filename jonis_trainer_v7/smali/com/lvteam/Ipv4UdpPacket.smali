.class public final Lcom/lvteam/Ipv4UdpPacket;
.super Ljava/lang/Object;
.source "Ipv4UdpPacket.java"


# instance fields
.field public final destinationAddress:Ljava/net/InetAddress;

.field public final destinationPort:I

.field public final payload:[B

.field public final sourceAddress:Ljava/net/InetAddress;

.field public final sourcePort:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lvteam/Ipv4UdpPacket;->sourceAddress:Ljava/net/InetAddress;

    iput-object p2, p0, Lcom/lvteam/Ipv4UdpPacket;->destinationAddress:Ljava/net/InetAddress;

    iput p3, p0, Lcom/lvteam/Ipv4UdpPacket;->sourcePort:I

    iput p4, p0, Lcom/lvteam/Ipv4UdpPacket;->destinationPort:I

    iput-object p5, p0, Lcom/lvteam/Ipv4UdpPacket;->payload:[B

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

    invoke-static {p0, v0, p1}, Lcom/lvteam/Ipv4UdpPacket;->checksum([BII)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasValidUdpChecksum([BII)Z
    .locals 7

    add-int/lit8 v0, p2, 0x11

    int-to-long v0, v0

    const/16 v2, 0xc

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    invoke-static {p0, v2}, Lcom/lvteam/Ipv4UdpPacket;->unsignedShort([BI)I

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

    const-wide/32 v4, 0xffff

    if-eqz v3, :cond_3

    and-long v3, v0, v4

    ushr-long v5, v0, v2

    add-long v0, v3, v5

    goto :goto_2

    :cond_3
    and-long v2, v0, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method public static parse([BI)Lcom/lvteam/Ipv4UdpPacket;
    .locals 14

    const/4 v0, 0x0

    const/16 v1, 0x14

    if-lt p1, v1, :cond_0

    const/4 v2, 0x0

    aget-byte v3, p0, v2

    const/4 v4, 0x4

    ushr-int/2addr v3, v4

    if-eq v3, v4, :cond_1

    :cond_0
    goto/16 :goto_2

    :cond_1
    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    mul-int/2addr v2, v4

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/lvteam/Ipv4UdpPacket;->unsignedShort([BI)I

    move-result v3

    if-lt v2, v1, :cond_6

    if-gt v2, p1, :cond_6

    add-int/lit8 v4, v2, 0x8

    if-lt v3, v4, :cond_6

    if-gt v3, p1, :cond_6

    const/16 v4, 0x9

    aget-byte v4, p0, v4

    const/16 v5, 0x11

    if-ne v4, v5, :cond_6

    invoke-static {p0, v2}, Lcom/lvteam/Ipv4UdpPacket;->hasValidIpv4Checksum([BI)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x6

    invoke-static {p0, v4}, Lcom/lvteam/Ipv4UdpPacket;->unsignedShort([BI)I

    move-result v4

    and-int/lit16 v5, v4, 0x3fff

    if-eqz v5, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 v5, v2, 0x4

    invoke-static {p0, v5}, Lcom/lvteam/Ipv4UdpPacket;->unsignedShort([BI)I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_5

    sub-int v6, v3, v2

    if-gt v5, v6, :cond_5

    add-int/lit8 v6, v2, 0x6

    invoke-static {p0, v6}, Lcom/lvteam/Ipv4UdpPacket;->unsignedShort([BI)I

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p0, v2, v5}, Lcom/lvteam/Ipv4UdpPacket;->hasValidUdpChecksum([BII)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    const/16 v6, 0xc

    const/16 v7, 0x10

    :try_start_0
    invoke-static {p0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v9

    invoke-static {p0, v7, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v10

    invoke-static {p0, v2}, Lcom/lvteam/Ipv4UdpPacket;->unsignedShort([BI)I

    move-result v11

    add-int/lit8 v1, v2, 0x2

    invoke-static {p0, v1}, Lcom/lvteam/Ipv4UdpPacket;->unsignedShort([BI)I

    move-result v12

    add-int/lit8 v1, v2, 0x8

    add-int v6, v2, v5

    invoke-static {p0, v1, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    new-instance v1, Lcom/lvteam/Ipv4UdpPacket;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/lvteam/Ipv4UdpPacket;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;II[B)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    return-object v0

    :cond_5
    :goto_0
    return-object v0

    :cond_6
    :goto_1
    return-object v0

    :goto_2
    return-object v0
.end method

.method public static replacePayload([BI[B)[B
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x14

    if-lt p1, v1, :cond_0

    const/4 v2, 0x0

    aget-byte v3, p0, v2

    const/4 v4, 0x4

    ushr-int/2addr v3, v4

    if-eq v3, v4, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    mul-int/2addr v3, v4

    if-lt v3, v1, :cond_2

    add-int/lit8 v1, v3, 0x8

    if-le v1, p1, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    add-int/lit8 v0, v3, 0x8

    array-length v1, p2

    add-int/2addr v1, v0

    new-array v4, v1, [B

    invoke-static {p0, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, p2

    invoke-static {p2, v2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x2

    invoke-static {v4, v5, v1}, Lcom/lvteam/Ipv4UdpPacket;->writeShort([BII)V

    add-int/lit8 v5, v3, 0x4

    array-length v6, p2

    add-int/lit8 v6, v6, 0x8

    invoke-static {v4, v5, v6}, Lcom/lvteam/Ipv4UdpPacket;->writeShort([BII)V

    add-int/lit8 v5, v3, 0x6

    invoke-static {v4, v5, v2}, Lcom/lvteam/Ipv4UdpPacket;->writeShort([BII)V

    const/16 v5, 0xa

    invoke-static {v4, v5, v2}, Lcom/lvteam/Ipv4UdpPacket;->writeShort([BII)V

    invoke-static {v4, v2, v3}, Lcom/lvteam/Ipv4UdpPacket;->checksum([BII)I

    move-result v2

    invoke-static {v4, v5, v2}, Lcom/lvteam/Ipv4UdpPacket;->writeShort([BII)V

    return-object v4

    :goto_0
    return-object v0

    :goto_1
    return-object v0
.end method

.method public static response(Ljava/net/InetAddress;ILjava/net/InetAddress;I[BI)[B
    .locals 8

    array-length v0, p4

    const/16 v1, 0x1c

    add-int/2addr v0, v1

    new-array v2, v0, [B

    const/16 v3, 0x45

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v2, v3, v0}, Lcom/lvteam/Ipv4UdpPacket;->writeShort([BII)V

    const/4 v3, 0x4

    invoke-static {v2, v3, p5}, Lcom/lvteam/Ipv4UdpPacket;->writeShort([BII)V

    const/16 v5, 0x40

    const/16 v6, 0x8

    aput-byte v5, v2, v6

    const/16 v5, 0x9

    const/16 v7, 0x11

    aput-byte v7, v2, v5

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    const/16 v7, 0xc

    invoke-static {v5, v4, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    const/16 v7, 0x10

    invoke-static {v5, v4, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x14

    invoke-static {v2, v3, p1}, Lcom/lvteam/Ipv4UdpPacket;->writeShort([BII)V

    const/16 v5, 0x16

    invoke-static {v2, v5, p3}, Lcom/lvteam/Ipv4UdpPacket;->writeShort([BII)V

    array-length v5, p4

    add-int/2addr v5, v6

    const/16 v6, 0x18

    invoke-static {v2, v6, v5}, Lcom/lvteam/Ipv4UdpPacket;->writeShort([BII)V

    array-length v5, p4

    invoke-static {p4, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xa

    invoke-static {v2, v4, v3}, Lcom/lvteam/Ipv4UdpPacket;->checksum([BII)I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/lvteam/Ipv4UdpPacket;->writeShort([BII)V

    return-object v2
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
