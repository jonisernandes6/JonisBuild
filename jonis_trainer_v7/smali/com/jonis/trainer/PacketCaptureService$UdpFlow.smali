.class public final Lcom/jonis/trainer/PacketCaptureService$UdpFlow;
.super Ljava/lang/Object;
.source "PacketCaptureService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jonis/trainer/PacketCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UdpFlow"
.end annotation


# instance fields
.field public final key:Lcom/jonis/trainer/PacketCaptureService$FlowKey;

.field public volatile lastActivityMillis:J

.field public final socket:Ljava/net/DatagramSocket;

.field public final synthetic this$0:Lcom/jonis/trainer/PacketCaptureService;


# direct methods
.method public constructor <init>(Lcom/jonis/trainer/PacketCaptureService;Lcom/jonis/trainer/PacketCaptureService$FlowKey;Ljava/net/DatagramSocket;)V
    .locals 2

    iput-object p1, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->this$0:Lcom/jonis/trainer/PacketCaptureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->key:Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    iput-object p3, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->socket:Ljava/net/DatagramSocket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->lastActivityMillis:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    return-void
.end method

.method public isIdle(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->lastActivityMillis:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final removeAndClose()V
    .locals 3

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->this$0:Lcom/jonis/trainer/PacketCaptureService;

    invoke-static {v0}, Lcom/jonis/trainer/PacketCaptureService;->-$$Nest$fgetflowLock(Lcom/jonis/trainer/PacketCaptureService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->this$0:Lcom/jonis/trainer/PacketCaptureService;

    invoke-static {v1}, Lcom/jonis/trainer/PacketCaptureService;->-$$Nest$fgetflows(Lcom/jonis/trainer/PacketCaptureService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->key:Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->this$0:Lcom/jonis/trainer/PacketCaptureService;

    invoke-static {v1}, Lcom/jonis/trainer/PacketCaptureService;->-$$Nest$fgetflows(Lcom/jonis/trainer/PacketCaptureService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->key:Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 13

    const v0, 0xffff

    new-array v1, v0, [B

    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v1

    invoke-direct {v2, v1, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->this$0:Lcom/jonis/trainer/PacketCaptureService;

    invoke-static {v3}, Lcom/jonis/trainer/PacketCaptureService;->-$$Nest$fgetrelayRunning(Lcom/jonis/trainer/PacketCaptureService;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/net/DatagramPacket;->setLength(I)V

    iget-object v3, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->lastActivityMillis:J

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v5

    array-length v6, v3

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->this$0:Lcom/jonis/trainer/PacketCaptureService;

    invoke-static {v4}, Lcom/jonis/trainer/PacketCaptureService;->-$$Nest$fgetframeDecoder(Lcom/jonis/trainer/PacketCaptureService;)Lcom/jonis/trainer/RawFrameDecoder;

    move-result-object v4

    array-length v5, v3

    iget-object v6, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->key:Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    iget-object v6, v6, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->destinationAddress:Ljava/net/InetAddress;

    iget-object v7, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->key:Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    iget v7, v7, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->destinationPort:I

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/jonis/trainer/RawFrameDecoder;->acceptUdpPayload([BILjava/net/InetAddress;I)V

    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->this$0:Lcom/jonis/trainer/PacketCaptureService;

    invoke-static {v4}, Lcom/jonis/trainer/PacketCaptureService;->-$$Nest$fgetframeDecoder(Lcom/jonis/trainer/PacketCaptureService;)Lcom/jonis/trainer/RawFrameDecoder;

    move-result-object v4

    array-length v5, v3

    iget-object v6, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->key:Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    iget-object v6, v6, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->destinationAddress:Ljava/net/InetAddress;

    iget-object v7, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->key:Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    iget v7, v7, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->destinationPort:I

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/jonis/trainer/RawFrameDecoder;->shiftDownlink([BILjava/net/InetAddress;I)[B

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v4

    nop

    :try_start_2
    const-string v5, "PacketCapture"

    const-string v6, "shift error"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->key:Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    iget-object v7, v4, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->destinationAddress:Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->key:Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    iget v8, v4, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->destinationPort:I

    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->key:Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    iget-object v9, v4, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->sourceAddress:Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->key:Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    iget v10, v4, Lcom/jonis/trainer/PacketCaptureService$FlowKey;->sourcePort:I

    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->this$0:Lcom/jonis/trainer/PacketCaptureService;

    invoke-static {v4}, Lcom/jonis/trainer/PacketCaptureService;->-$$Nest$fgetpacketIdentification(Lcom/jonis/trainer/PacketCaptureService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    and-int v12, v4, v0

    move-object v11, v3

    invoke-static/range {v7 .. v12}, Lcom/jonis/trainer/Ipv4UdpPacket;->response(Ljava/net/InetAddress;ILjava/net/InetAddress;I[BI)[B

    move-result-object v4

    iget-object v5, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->this$0:Lcom/jonis/trainer/PacketCaptureService;

    invoke-static {v5}, Lcom/jonis/trainer/PacketCaptureService;->-$$Nest$fgetoutputLock(Lcom/jonis/trainer/PacketCaptureService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->this$0:Lcom/jonis/trainer/PacketCaptureService;

    invoke-static {v6}, Lcom/jonis/trainer/PacketCaptureService;->-$$Nest$fgetrelayRunning(Lcom/jonis/trainer/PacketCaptureService;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->this$0:Lcom/jonis/trainer/PacketCaptureService;

    invoke-static {v6}, Lcom/jonis/trainer/PacketCaptureService;->-$$Nest$fgettunnelOutput(Lcom/jonis/trainer/PacketCaptureService;)Ljava/io/FileOutputStream;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->this$0:Lcom/jonis/trainer/PacketCaptureService;

    invoke-static {v6}, Lcom/jonis/trainer/PacketCaptureService;->-$$Nest$fgettunnelOutput(Lcom/jonis/trainer/PacketCaptureService;)Ljava/io/FileOutputStream;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_2
    monitor-exit v5

    goto/16 :goto_0

    :goto_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_1
    :goto_4
    invoke-virtual {p0}, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->removeAndClose()V

    goto :goto_6

    :goto_5
    nop

    :try_start_5
    iget-object v3, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->this$0:Lcom/jonis/trainer/PacketCaptureService;

    invoke-static {v3}, Lcom/jonis/trainer/PacketCaptureService;->-$$Nest$fgetrelayRunning(Lcom/jonis/trainer/PacketCaptureService;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PacketCapture"

    const-string v4, "UDP receive failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :goto_6
    return-void

    :goto_7
    invoke-virtual {p0}, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->removeAndClose()V

    throw v0
.end method

.method public send([B)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->socket:Ljava/net/DatagramSocket;

    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p1

    invoke-direct {v1, p1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->lastActivityMillis:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PacketCapture"

    const-string v2, "UDP send failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->removeAndClose()V

    :goto_0
    return-void
.end method
