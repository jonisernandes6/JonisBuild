.class public final Lcom/jonis/trainer/PacketCaptureService$FlowKey;
.super Ljava/lang/Object;
.source "PacketCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jonis/trainer/PacketCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlowKey"
.end annotation


# instance fields
.field public final destinationAddress:Ljava/net/InetAddress;

.field public final destinationPort:I

.field public final sourceAddress:Ljava/net/InetAddress;

.field public final sourcePort:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->sourceAddress:Ljava/net/InetAddress;

    iput p2, p0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->sourcePort:I

    iput-object p3, p0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->destinationAddress:Ljava/net/InetAddress;

    iput p4, p0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->destinationPort:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    iget v2, p0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->sourcePort:I

    iget v3, v0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->sourcePort:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->destinationPort:I

    iget v3, v0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->destinationPort:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->sourceAddress:Ljava/net/InetAddress;

    iget-object v3, v0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->sourceAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->destinationAddress:Ljava/net/InetAddress;

    iget-object v3, v0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->destinationAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->sourceAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->sourcePort:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->destinationAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->destinationPort:I

    add-int/2addr v1, v2

    return v1
.end method
