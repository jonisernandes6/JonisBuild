.class public final Lcom/lvteam/PacketCaptureService$TcpFlow;
.super Ljava/lang/Object;
.source "PacketCaptureService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/PacketCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TcpFlow"
.end annotation


# instance fields
.field public clientFinReceived:Z

.field public clientNextSequence:J

.field public volatile closed:Z

.field public closingFuture:Ljava/util/concurrent/ScheduledFuture;

.field public connected:Z

.field public handshakeAcknowledged:Z

.field public final initialClientSequence:J

.field public final initialServerSequence:J

.field public final key:Lcom/lvteam/PacketCaptureService$FlowKey;

.field public volatile lastActivityMillis:J

.field public final pendingPayload:Ljava/util/ArrayDeque;

.field public pendingPayloadBytes:I

.field public remoteFinSent:Z

.field public serverNextSequence:J

.field public final socket:Ljava/net/Socket;

.field public synAckSent:Z

.field public final synthetic this$0:Lcom/lvteam/PacketCaptureService;


# direct methods
.method public static synthetic $r8$lambda$4t-jINYqvDL3FQY8N1o0okRsSF8(Lcom/lvteam/PacketCaptureService$TcpFlow;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->lambda$emitRemoteFin$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$bf1912WEVFogDhVOFZ0IRmgG2n8(Lcom/lvteam/PacketCaptureService$TcpFlow;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->lambda$removeAndClose$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetkey(Lcom/lvteam/PacketCaptureService$TcpFlow;)Lcom/lvteam/PacketCaptureService$FlowKey;
    .locals 0

    iget-object p0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->key:Lcom/lvteam/PacketCaptureService$FlowKey;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetlastActivityMillis(Lcom/lvteam/PacketCaptureService$TcpFlow;)J
    .locals 2

    iget-wide v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->lastActivityMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$memitSynAck(Lcom/lvteam/PacketCaptureService$TcpFlow;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emitSynAck()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveAndClose(Lcom/lvteam/PacketCaptureService$TcpFlow;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    return-void
.end method

.method public constructor <init>(Lcom/lvteam/PacketCaptureService;Lcom/lvteam/PacketCaptureService$FlowKey;Ljava/net/Socket;J)V
    .locals 4

    iput-object p1, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->pendingPayload:Ljava/util/ArrayDeque;

    iput-object p2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->key:Lcom/lvteam/PacketCaptureService$FlowKey;

    iput-object p3, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->socket:Ljava/net/Socket;

    iput-wide p4, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->initialClientSequence:J

    const/4 p1, 0x1

    invoke-static {p4, p5, p1}, Lcom/lvteam/PacketCaptureService;->-$$Nest$smincrement(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->clientNextSequence:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->serverNextSequence:J

    iget-wide v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->serverNextSequence:J

    iput-wide v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->initialServerSequence:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->lastActivityMillis:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->closed:Z

    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->closingFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->closingFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/lvteam/PacketCaptureService;->-$$Nest$smcloseQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public final emit(I[B)V
    .locals 6

    iget-wide v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->serverNextSequence:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/lvteam/PacketCaptureService$TcpFlow;->writeResponse(JI[B)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    and-int/lit8 v2, p1, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-wide v4, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->serverNextSequence:J

    invoke-static {v4, v5, v3}, Lcom/lvteam/PacketCaptureService;->-$$Nest$smincrement(JI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->serverNextSequence:J

    :cond_1
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    iget-wide v4, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->serverNextSequence:J

    invoke-static {v4, v5, v3}, Lcom/lvteam/PacketCaptureService;->-$$Nest$smincrement(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->serverNextSequence:J

    :cond_2
    iget-wide v2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->serverNextSequence:J

    array-length v4, p2

    invoke-static {v2, v3, v4}, Lcom/lvteam/PacketCaptureService;->-$$Nest$smincrement(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->serverNextSequence:J

    return-void
.end method

.method public final emitRemoteFin()V
    .locals 5

    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->remoteFinSent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emit(I[B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->remoteFinSent:Z

    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v0}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgetstartupWatchdog(Lcom/lvteam/PacketCaptureService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/lvteam/PacketCaptureService$TcpFlow$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/lvteam/PacketCaptureService$TcpFlow$$ExternalSyntheticLambda1;-><init>(Lcom/lvteam/PacketCaptureService$TcpFlow;)V

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->closingFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final emitReset()V
    .locals 5

    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->synAckSent:Z

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-eqz v0, :cond_0

    new-array v0, v1, [B

    invoke-virtual {p0, v2, v0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emit(I[B)V

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    new-array v0, v1, [B

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->writeResponse(JI[B)Z

    :goto_0
    return-void
.end method

.method public final emitSynAck()V
    .locals 4

    iget-wide v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->initialServerSequence:J

    const/4 v2, 0x0

    new-array v2, v2, [B

    const/16 v3, 0x12

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/lvteam/PacketCaptureService$TcpFlow;->writeResponse(JI[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->synAckSent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->synAckSent:Z

    iget-wide v1, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->serverNextSequence:J

    invoke-static {v1, v2, v0}, Lcom/lvteam/PacketCaptureService;->-$$Nest$smincrement(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->serverNextSequence:J

    :cond_0
    return-void
.end method

.method public final flushPendingData()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->pendingPayload:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->pendingPayload:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    iput v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->pendingPayloadBytes:I

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :goto_1
    nop

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emitReset()V

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    return v0
.end method

.method public handle(Lcom/lvteam/Ipv4TcpPacket;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->closed:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->lastActivityMillis:J

    iget v0, p1, Lcom/lvteam/Ipv4TcpPacket;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    monitor-exit p0

    return-void

    :cond_1
    iget v0, p1, Lcom/lvteam/Ipv4TcpPacket;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lcom/lvteam/Ipv4TcpPacket;->sequenceNumber:J

    iget-wide v2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->initialClientSequence:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emitSynAck()V

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    iget v0, p1, Lcom/lvteam/Ipv4TcpPacket;->flags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    iget-wide v2, p1, Lcom/lvteam/Ipv4TcpPacket;->acknowledgementNumber:J

    iget-wide v4, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->serverNextSequence:J

    invoke-static {v2, v3, v4, v5}, Lcom/lvteam/PacketCaptureService;->-$$Nest$smisAfter(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->handshakeAcknowledged:Z

    const/4 v2, 0x1

    if-nez v0, :cond_7

    iget-wide v3, p1, Lcom/lvteam/Ipv4TcpPacket;->acknowledgementNumber:J

    iget-wide v5, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->serverNextSequence:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_5

    iget-wide v3, p1, Lcom/lvteam/Ipv4TcpPacket;->sequenceNumber:J

    iget-wide v5, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->clientNextSequence:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    :cond_5
    goto :goto_0

    :cond_6
    iput-boolean v2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->handshakeAcknowledged:Z

    goto :goto_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->remoteFinSent:Z

    if-eqz v0, :cond_8

    iget-wide v3, p1, Lcom/lvteam/Ipv4TcpPacket;->acknowledgementNumber:J

    iget-wide v5, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->serverNextSequence:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    monitor-exit p0

    return-void

    :cond_8
    iget-wide v3, p1, Lcom/lvteam/Ipv4TcpPacket;->sequenceNumber:J

    iget-wide v5, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->clientNextSequence:J

    cmp-long v0, v3, v5

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    new-array v0, v3, [B

    invoke-virtual {p0, v1, v0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emit(I[B)V

    monitor-exit p0

    return-void

    :cond_9
    iget-object v0, p1, Lcom/lvteam/Ipv4TcpPacket;->payload:[B

    array-length v0, v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v0}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgetframeDecoder(Lcom/lvteam/PacketCaptureService;)Lcom/lvteam/RawFrameDecoder;

    move-result-object v0

    iget-object v4, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->key:Lcom/lvteam/PacketCaptureService$FlowKey;

    iget-object v5, p1, Lcom/lvteam/Ipv4TcpPacket;->payload:[B

    iget-object v6, p1, Lcom/lvteam/Ipv4TcpPacket;->payload:[B

    array-length v6, v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/lvteam/RawFrameDecoder;->acceptTcpPayload(Lcom/lvteam/PacketCaptureService$FlowKey;[BI)V

    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->clientFinReceived:Z

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/lvteam/Ipv4TcpPacket;->payload:[B

    invoke-virtual {p0, v0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->queueOrWrite([B)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    goto :goto_2

    :cond_b
    iget-wide v4, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->clientNextSequence:J

    iget-object v0, p1, Lcom/lvteam/Ipv4TcpPacket;->payload:[B

    array-length v0, v0

    invoke-static {v4, v5, v0}, Lcom/lvteam/PacketCaptureService;->-$$Nest$smincrement(JI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->clientNextSequence:J

    goto :goto_3

    :goto_2
    monitor-exit p0

    return-void

    :cond_c
    :goto_3
    iget v0, p1, Lcom/lvteam/Ipv4TcpPacket;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->clientFinReceived:Z

    if-nez v0, :cond_d

    iput-boolean v2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->clientFinReceived:Z

    iget-wide v4, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->clientNextSequence:J

    invoke-static {v4, v5, v2}, Lcom/lvteam/PacketCaptureService;->-$$Nest$smincrement(JI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->clientNextSequence:J

    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->connected:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->shutdownOutput()Z

    move-result v0

    if-nez v0, :cond_d

    monitor-exit p0

    return-void

    :cond_d
    iget-object v0, p1, Lcom/lvteam/Ipv4TcpPacket;->payload:[B

    array-length v0, v0

    if-gtz v0, :cond_e

    iget v0, p1, Lcom/lvteam/Ipv4TcpPacket;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_f

    :cond_e
    new-array v0, v3, [B

    invoke-virtual {p0, v1, v0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emit(I[B)V

    :cond_f
    monitor-exit p0

    return-void

    :cond_10
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->closed:Z

    return v0
.end method

.method public isIdle(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->lastActivityMillis:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final synthetic lambda$emitRemoteFin$1()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->remoteFinSent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->closed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic lambda$removeAndClose$0()V
    .locals 3

    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v0}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgetflowLock(Lcom/lvteam/PacketCaptureService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v1}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgettcpFlows(Lcom/lvteam/PacketCaptureService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->key:Lcom/lvteam/PacketCaptureService$FlowKey;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v1}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgettcpFlows(Lcom/lvteam/PacketCaptureService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->key:Lcom/lvteam/PacketCaptureService$FlowKey;

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

.method public final queueOrWrite([B)Z
    .locals 4

    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->connected:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emitReset()V

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    return v1

    :cond_0
    iget v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->pendingPayloadBytes:I

    array-length v3, p1

    add-int/2addr v0, v3

    const/high16 v3, 0x40000

    if-le v0, v3, :cond_1

    const-string v0, "PacketCapture"

    const-string v2, "TCP pending data queue overflow"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emitReset()V

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->pendingPayload:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->pendingPayloadBytes:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->pendingPayloadBytes:I

    return v2
.end method

.method public final removeAndClose()V
    .locals 2

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->close()V

    :try_start_0
    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v0}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgetstartupWatchdog(Lcom/lvteam/PacketCaptureService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/lvteam/PacketCaptureService$TcpFlow$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/lvteam/PacketCaptureService$TcpFlow$$ExternalSyntheticLambda0;-><init>(Lcom/lvteam/PacketCaptureService$TcpFlow;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public resetAndClose()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emitReset()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->close()V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->key:Lcom/lvteam/PacketCaptureService$FlowKey;

    iget-object v2, v2, Lcom/lvteam/PacketCaptureService$FlowKey;->destinationAddress:Ljava/net/InetAddress;

    iget-object v3, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->key:Lcom/lvteam/PacketCaptureService$FlowKey;

    iget v3, v3, Lcom/lvteam/PacketCaptureService$FlowKey;->destinationPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    nop

    :try_start_1
    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->socket:Ljava/net/Socket;

    const v1, 0x493e0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->socket:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    monitor-enter p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v0}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgetrelayRunning(Lcom/lvteam/PacketCaptureService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->closed:Z

    if-eqz v0, :cond_1

    :cond_0
    goto/16 :goto_f

    :cond_1
    iput-boolean v1, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->connected:Z

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->flushPendingData()Z

    move-result v0

    if-nez v0, :cond_3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->remoteFinSent:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    goto/16 :goto_12

    :cond_3
    :try_start_4
    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->clientFinReceived:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->shutdownOutput()Z

    move-result v0

    if-nez v0, :cond_5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-enter p0

    :try_start_5
    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->remoteFinSent:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_5
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x4b0

    new-array v1, v1, [B

    :goto_4
    iget-object v2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v2}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgetrelayRunning(Lcom/lvteam/PacketCaptureService;)Z

    move-result v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v2, :cond_a

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    nop

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    goto :goto_9

    :cond_6
    :try_start_9
    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-enter p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    iget-object v4, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->lastActivityMillis:J

    iget-object v4, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v4}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgetframeDecoder(Lcom/lvteam/PacketCaptureService;)Lcom/lvteam/RawFrameDecoder;

    move-result-object v4

    iget-object v5, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->key:Lcom/lvteam/PacketCaptureService$FlowKey;

    array-length v6, v3

    invoke-virtual {v4, v5, v3, v6}, Lcom/lvteam/RawFrameDecoder;->acceptTcpPayload(Lcom/lvteam/PacketCaptureService$FlowKey;[BI)V

    const/16 v4, 0x10

    invoke-virtual {p0, v4, v3}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emit(I[B)V

    goto :goto_5

    :catchall_3
    move-exception v4

    goto :goto_6

    :cond_7
    :goto_5
    monitor-exit p0

    goto :goto_4

    :goto_6
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v4

    :catchall_4
    move-exception v0

    goto/16 :goto_19

    :catch_0
    move-exception v0

    goto :goto_13

    :catch_1
    move-exception v0

    goto :goto_13

    :catch_2
    move-exception v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/lvteam/PacketCaptureService$TcpFlow;->isIdle(J)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emitReset()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    monitor-enter p0

    :try_start_c
    iget-boolean v3, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->remoteFinSent:Z

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    goto :goto_7

    :catchall_5
    move-exception v3

    goto :goto_8

    :cond_8
    :goto_7
    monitor-exit p0

    return-void

    :goto_8
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v3

    :cond_9
    goto :goto_4

    :cond_a
    :goto_9
    :try_start_d
    monitor-enter p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    iget-object v2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v2}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgetrelayRunning(Lcom/lvteam/PacketCaptureService;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->closed:Z

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emitRemoteFin()V

    goto :goto_a

    :catchall_6
    move-exception v2

    goto :goto_e

    :cond_b
    :goto_a
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    monitor-enter p0

    :try_start_f
    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->remoteFinSent:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    goto :goto_b

    :catchall_7
    move-exception v0

    goto :goto_d

    :cond_c
    :goto_b
    monitor-exit p0

    :goto_c
    goto :goto_16

    :goto_d
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw v0

    :goto_e
    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    throw v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :goto_f
    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    monitor-enter p0

    :try_start_13
    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->remoteFinSent:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    goto :goto_10

    :catchall_8
    move-exception v0

    goto :goto_11

    :cond_d
    :goto_10
    monitor-exit p0

    return-void

    :goto_11
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v0

    :goto_12
    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :goto_13
    nop

    :try_start_16
    monitor-enter p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    iget-object v1, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v1}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgetrelayRunning(Lcom/lvteam/PacketCaptureService;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emitReset()V

    goto :goto_14

    :catchall_9
    move-exception v1

    goto :goto_18

    :cond_e
    :goto_14
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    monitor-enter p0

    :try_start_18
    iget-boolean v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->remoteFinSent:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    goto :goto_15

    :catchall_a
    move-exception v0

    goto :goto_17

    :cond_f
    :goto_15
    monitor-exit p0

    goto :goto_c

    :goto_16
    return-void

    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    throw v0

    :goto_18
    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    :try_start_1a
    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    :goto_19
    monitor-enter p0

    :try_start_1b
    iget-boolean v1, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->remoteFinSent:Z

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    goto :goto_1a

    :catchall_b
    move-exception v0

    goto :goto_1b

    :cond_10
    :goto_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    throw v0

    :goto_1b
    :try_start_1c
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    throw v0

    :catch_3
    move-exception v0

    goto :goto_1c

    :catch_4
    move-exception v0

    :goto_1c
    monitor-enter p0

    :try_start_1d
    iget-object v1, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v1}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgetrelayRunning(Lcom/lvteam/PacketCaptureService;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "PacketCapture"

    const-string v2, "TCP upstream connect failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emitReset()V

    goto :goto_1d

    :catchall_c
    move-exception v1

    goto :goto_1e

    :cond_11
    :goto_1d
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    return-void

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    throw v1
.end method

.method public final shutdownOutput()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/lvteam/PacketCaptureService$TcpFlow;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->emitReset()V

    invoke-virtual {p0}, Lcom/lvteam/PacketCaptureService$TcpFlow;->removeAndClose()V

    const/4 v1, 0x0

    return v1
.end method

.method public final writeResponse(JI[B)Z
    .locals 13

    move-object v1, p0

    iget-object v0, v1, Lcom/lvteam/PacketCaptureService$TcpFlow;->key:Lcom/lvteam/PacketCaptureService$FlowKey;

    iget-object v2, v0, Lcom/lvteam/PacketCaptureService$FlowKey;->destinationAddress:Ljava/net/InetAddress;

    iget-object v0, v1, Lcom/lvteam/PacketCaptureService$TcpFlow;->key:Lcom/lvteam/PacketCaptureService$FlowKey;

    iget v3, v0, Lcom/lvteam/PacketCaptureService$FlowKey;->destinationPort:I

    iget-object v0, v1, Lcom/lvteam/PacketCaptureService$TcpFlow;->key:Lcom/lvteam/PacketCaptureService$FlowKey;

    iget-object v4, v0, Lcom/lvteam/PacketCaptureService$FlowKey;->sourceAddress:Ljava/net/InetAddress;

    iget-object v0, v1, Lcom/lvteam/PacketCaptureService$TcpFlow;->key:Lcom/lvteam/PacketCaptureService$FlowKey;

    iget v5, v0, Lcom/lvteam/PacketCaptureService$FlowKey;->sourcePort:I

    iget-wide v8, v1, Lcom/lvteam/PacketCaptureService$TcpFlow;->clientNextSequence:J

    iget-object v0, v1, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v0}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgetpacketIdentification(Lcom/lvteam/PacketCaptureService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const v6, 0xffff

    and-int v12, v0, v6

    move-wide v6, p1

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v2 .. v12}, Lcom/lvteam/Ipv4TcpPacket;->response(Ljava/net/InetAddress;ILjava/net/InetAddress;IJJI[BI)[B

    move-result-object v2

    iget-object v0, v1, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v0}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgetoutputLock(Lcom/lvteam/PacketCaptureService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v0}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgetrelayRunning(Lcom/lvteam/PacketCaptureService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v0}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgettunnelOutput(Lcom/lvteam/PacketCaptureService;)Ljava/io/FileOutputStream;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/lvteam/PacketCaptureService$TcpFlow;->this$0:Lcom/lvteam/PacketCaptureService;

    invoke-static {v0}, Lcom/lvteam/PacketCaptureService;->-$$Nest$fgettunnelOutput(Lcom/lvteam/PacketCaptureService;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    monitor-exit v3

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :goto_0
    monitor-exit v3

    return v4

    :goto_1
    nop

    monitor-exit v3

    return v4

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
