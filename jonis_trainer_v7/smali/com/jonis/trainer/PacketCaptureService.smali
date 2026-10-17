.class public final Lcom/jonis/trainer/PacketCaptureService;
.super Landroid/net/VpnService;
.source "PacketCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jonis/trainer/PacketCaptureService$FlowKey;,
        Lcom/jonis/trainer/PacketCaptureService$UdpFlow;,
        Lcom/jonis/trainer/PacketCaptureService$HeldUdpPacket;,
        Lcom/jonis/trainer/PacketCaptureService$TcpFlow;
    }
.end annotation


# static fields
.field public static final ACTION_ENABLE_FULL_IPV4_ROUTE:Ljava/lang/String; = "com.lvteam.action.ENABLE_FULL_IPV4_ROUTE"

.field private static final FULL_ROUTE_STARTUP_TIMEOUT_MS:J = 0x2710L

.field private static final MAX_PACKET_SIZE:I = 0xffff

.field private static final MAX_TCP_FLOWS:I = 0x80

.field private static final MAX_UDP_FLOWS:I = 0x80

.field private static final TAG:Ljava/lang/String; = "PacketCapture"

.field private static final TARGET_PACKAGE:Ljava/lang/String; = "com.dts.freefireth"

.field private static final TCP_CLOSING_TIMEOUT_MS:I = 0x2710

.field private static final TCP_CONNECT_TIMEOUT_MS:I = 0x2710

.field private static final TCP_IDLE_TIMEOUT_MS:I = 0x493e0

.field private static final TCP_PENDING_DATA_LIMIT:I = 0x40000

.field private static final TCP_SEGMENT_SIZE:I = 0x4b0

.field private static final TCP_WARNING_INTERVAL_MS:J = 0x7530L

.field private static final TP_MAX_HELD:I = 0x1388

.field private static final UDP_IDLE_TIMEOUT_MS:I = 0x7530

.field private static final VPN_MTU:I = 0x500


# instance fields
.field private final flowLock:Ljava/lang/Object;

.field private final flows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jonis/trainer/PacketCaptureService$FlowKey;",
            "Lcom/jonis/trainer/PacketCaptureService$UdpFlow;",
            ">;"
        }
    .end annotation
.end field

.field private final frameDecoder:Lcom/jonis/trainer/RawFrameDecoder;

.field private fullRouteStartupPending:Z

.field private final heldUplinkPackets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jonis/trainer/PacketCaptureService$HeldUdpPacket;",
            ">;"
        }
    .end annotation
.end field

.field private volatile inputRelayInitialized:Z

.field private lastTcpWarningAtMillis:J

.field private final outputLock:Ljava/lang/Object;

.field private volatile outputRelayInitialized:Z

.field private final packetIdentification:Ljava/util/concurrent/atomic/AtomicInteger;

.field private relayExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile relayReaderStarted:Z

.field private volatile relayRunning:Z

.field private final startupWatchdog:Ljava/util/concurrent/ScheduledExecutorService;

.field private startupWatchdogFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final tcpFlows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jonis/trainer/PacketCaptureService$FlowKey;",
            "Lcom/jonis/trainer/PacketCaptureService$TcpFlow;",
            ">;"
        }
    .end annotation
.end field

.field private final tcpWarningLock:Ljava/lang/Object;

.field private volatile tpReplayStarted:Z

.field private tunnel:Landroid/os/ParcelFileDescriptor;

.field private tunnelInput:Ljava/io/FileInputStream;

.field private tunnelOutput:Ljava/io/FileOutputStream;


# direct methods
.method public static synthetic $r8$lambda$22ZcykSK9DJLQn173viR22GNXTo(Lcom/jonis/trainer/PacketCaptureService;)V
    .locals 0

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->failFullRouteStartup()V

    return-void
.end method

.method public static synthetic $r8$lambda$HrnKpG2dgcejA_VppD3GfqPgr78(Lcom/jonis/trainer/PacketCaptureService;)V
    .locals 0

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->enableFullIpv4Route()V

    return-void
.end method

.method public static synthetic $r8$lambda$TVOEat4rXvq7N5QXSBw-WpMqDDM(Lcom/jonis/trainer/PacketCaptureService;)V
    .locals 0

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->readTunPackets()V

    return-void
.end method

.method public static synthetic $r8$lambda$s7mnC69PDBLVEpj5a3nPDzwkOeM(Lcom/jonis/trainer/PacketCaptureService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jonis/trainer/PacketCaptureService;->lambda$startTpReplay$0(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetflowLock(Lcom/jonis/trainer/PacketCaptureService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/jonis/trainer/PacketCaptureService;->flowLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetflows(Lcom/jonis/trainer/PacketCaptureService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/jonis/trainer/PacketCaptureService;->flows:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetframeDecoder(Lcom/jonis/trainer/PacketCaptureService;)Lcom/jonis/trainer/RawFrameDecoder;
    .locals 0

    iget-object p0, p0, Lcom/jonis/trainer/PacketCaptureService;->frameDecoder:Lcom/jonis/trainer/RawFrameDecoder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetoutputLock(Lcom/jonis/trainer/PacketCaptureService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/jonis/trainer/PacketCaptureService;->outputLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetpacketIdentification(Lcom/jonis/trainer/PacketCaptureService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/jonis/trainer/PacketCaptureService;->packetIdentification:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetrelayRunning(Lcom/jonis/trainer/PacketCaptureService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/jonis/trainer/PacketCaptureService;->relayRunning:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetstartupWatchdog(Lcom/jonis/trainer/PacketCaptureService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/jonis/trainer/PacketCaptureService;->startupWatchdog:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgettcpFlows(Lcom/jonis/trainer/PacketCaptureService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/jonis/trainer/PacketCaptureService;->tcpFlows:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgettunnelOutput(Lcom/jonis/trainer/PacketCaptureService;)Ljava/io/FileOutputStream;
    .locals 0

    iget-object p0, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnelOutput:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smcloseQuietly(Ljava/io/Closeable;)V
    .locals 0

    invoke-static {p0}, Lcom/jonis/trainer/PacketCaptureService;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smincrement(JI)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jonis/trainer/PacketCaptureService;->increment(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smisAfter(JJ)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jonis/trainer/PacketCaptureService;->isAfter(JJ)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->startupWatchdog:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->flowLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->outputLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->tcpWarningLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->flows:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->tcpFlows:Ljava/util/Map;

    new-instance v0, Lcom/jonis/trainer/RawFrameDecoder;

    invoke-static {}, Lcom/jonis/trainer/EntityState;->shared()Lcom/jonis/trainer/EntityState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jonis/trainer/RawFrameDecoder;-><init>(Lcom/jonis/trainer/EntityState;)V

    iput-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->frameDecoder:Lcom/jonis/trainer/RawFrameDecoder;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->packetIdentification:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->heldUplinkPackets:Ljava/util/ArrayList;

    return-void
.end method

.method private areGenericRelaysInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->relayRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->inputRelayInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->outputRelayInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private declared-synchronized closeTunnel()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->fullRouteStartupPending:Z

    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->startupWatchdogFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->startupWatchdogFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v2, p0, Lcom/jonis/trainer/PacketCaptureService;->startupWatchdogFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->relayRunning:Z

    iput-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->inputRelayInitialized:Z

    iput-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->outputRelayInitialized:Z

    iput-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->relayReaderStarted:Z

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->flowLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->flows:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;

    invoke-virtual {v3}, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->close()V

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_4

    :cond_1
    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->flows:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->tcpFlows:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;

    invoke-virtual {v3}, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;->close()V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->tcpFlows:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->relayExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->relayExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v2, p0, Lcom/jonis/trainer/PacketCaptureService;->relayExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_3
    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnelInput:Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/jonis/trainer/PacketCaptureService;->closeQuietly(Ljava/io/Closeable;)V

    iput-object v2, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnelInput:Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->outputLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnelOutput:Ljava/io/FileOutputStream;

    invoke-static {v1}, Lcom/jonis/trainer/PacketCaptureService;->closeQuietly(Ljava/io/Closeable;)V

    iput-object v2, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnelOutput:Ljava/io/FileOutputStream;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnel:Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnel:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_3
    :try_start_6
    iput-object v2, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnel:Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_4
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1

    :goto_5
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method private declared-synchronized completeFullRouteStartup()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->fullRouteStartupPending:Z

    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->startupWatchdogFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->startupWatchdogFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->startupWatchdogFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private enableFullIpv4Route()V
    .locals 6

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->areGenericRelaysInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnel:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->establishRouteFreeVpn()V

    :cond_0
    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->areGenericRelaysInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PacketCapture"

    const-string v1, "Full-route startup waiting for generic relays"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->startupWatchdog:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/jonis/trainer/PacketCaptureService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/jonis/trainer/PacketCaptureService$$ExternalSyntheticLambda0;-><init>(Lcom/jonis/trainer/PacketCaptureService;)V

    const-wide/16 v2, 0x96

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->closeTunnel()V

    :try_start_0
    new-instance v0, Landroid/net/VpnService$Builder;

    invoke-direct {v0, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    const-string v1, "HANZX TEAM full IPv1 routing test"

    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v0

    const-string v1, "10.17.0.2"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    move-result-object v0

    const-string v1, "0.0.0.0"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->allowFamily(I)Landroid/net/VpnService$Builder;

    move-result-object v0

    const-string v1, "com.dts.freefireth"

    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-nez v0, :cond_2

    const-string v1, "PacketCapture"

    const-string v2, "Full-route VPN establishment failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->closeTunnel()V

    return-void

    :cond_2
    iput-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnel:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->startRelay()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "PacketCapture"

    const-string v2, "Full-route relay initialization failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->closeTunnel()V

    return-void

    :cond_3
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/jonis/trainer/PacketCaptureService;->fullRouteStartupPending:Z

    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->startupWatchdog:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/jonis/trainer/PacketCaptureService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/jonis/trainer/PacketCaptureService$$ExternalSyntheticLambda1;-><init>(Lcom/jonis/trainer/PacketCaptureService;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2710

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->startupWatchdogFuture:Ljava/util/concurrent/ScheduledFuture;

    iget-boolean v1, p0, Lcom/jonis/trainer/PacketCaptureService;->relayReaderStarted:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->completeFullRouteStartup()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_4
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "PacketCapture"

    const-string v2, "Full IPv4 routing test started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    const-string v1, "PacketCapture"

    const-string v2, "Full-route VPN establishment failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->closeTunnel()V

    return-void
.end method

.method private establishRouteFreeVpn()V
    .locals 3

    new-instance v0, Landroid/net/VpnService$Builder;

    invoke-direct {v0, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    const-string v1, "HANZX TEAM capture"

    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v0

    const-string v1, "10.17.0.2"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnel:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnel:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const-string v0, "VPN establishment failed"

    goto :goto_0

    :cond_0
    const-string v0, "VPN interface established"

    :goto_0
    const-string v1, "PacketCapture"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnel:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->startRelay()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->closeTunnel()V

    :cond_1
    return-void
.end method

.method private evictOldestTcpFlowLocked()Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->tcpFlows:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;->-$$Nest$fgetlastActivityMillis(Lcom/jonis/trainer/PacketCaptureService$TcpFlow;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;->-$$Nest$fgetlastActivityMillis(Lcom/jonis/trainer/PacketCaptureService$TcpFlow;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    :cond_0
    move-object v0, v2

    :cond_1
    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    return v1

    :cond_3
    invoke-virtual {v0}, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;->resetAndClose()V

    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->tcpFlows:Ljava/util/Map;

    invoke-static {v0}, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;->-$$Nest$fgetkey(Lcom/jonis/trainer/PacketCaptureService$TcpFlow;)Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->tcpFlows:Ljava/util/Map;

    invoke-static {v0}, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;->-$$Nest$fgetkey(Lcom/jonis/trainer/PacketCaptureService$TcpFlow;)Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "TCP flow limit reached; evicted oldest TCP flow"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/jonis/trainer/PacketCaptureService;->warnTcp(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v1, 0x1

    return v1
.end method

.method private evictTcpFlowsLocked()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jonis/trainer/PacketCaptureService;->tcpFlows:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;

    invoke-virtual {v3, v0, v1}, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;->isIdle(J)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;->resetAndClose()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private evictUdpFlowsLocked()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jonis/trainer/PacketCaptureService;->flows:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;

    invoke-virtual {v3, v0, v1}, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->isIdle(J)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->close()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized failFullRouteStartup()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->fullRouteStartupPending:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->relayReaderStarted:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->areGenericRelaysInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "PacketCapture"

    const-string v1, "Full-route startup timed out; tearing down VPN"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->closeTunnel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private forward(Lcom/jonis/trainer/Ipv4TcpPacket;)V
    .locals 12

    new-instance v0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    iget-object v1, p1, Lcom/jonis/trainer/Ipv4TcpPacket;->sourceAddress:Ljava/net/InetAddress;

    iget v2, p1, Lcom/jonis/trainer/Ipv4TcpPacket;->sourcePort:I

    iget-object v3, p1, Lcom/jonis/trainer/Ipv4TcpPacket;->destinationAddress:Ljava/net/InetAddress;

    iget v4, p1, Lcom/jonis/trainer/Ipv4TcpPacket;->destinationPort:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jonis/trainer/PacketCaptureService$FlowKey;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jonis/trainer/PacketCaptureService;->flowLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService;->tcpFlows:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;

    move-object v1, v4

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService;->tcpFlows:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto/16 :goto_6

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    iget v4, p1, Lcom/jonis/trainer/Ipv4TcpPacket;->flags:I

    and-int/lit8 v4, v4, 0x12

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    monitor-exit v3

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->evictTcpFlowsLocked()V

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->evictUdpFlowsLocked()V

    iget-boolean v4, p0, Lcom/jonis/trainer/PacketCaptureService;->relayRunning:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService;->relayExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v4, :cond_3

    :cond_2
    goto/16 :goto_4

    :cond_3
    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService;->tcpFlows:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/16 v5, 0x80

    const/4 v6, 0x0

    if-lt v4, v5, :cond_4

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->evictOldestTcpFlowLocked()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "TCP flow limit reached"

    invoke-direct {p0, v4, v6}, Lcom/jonis/trainer/PacketCaptureService;->warnTcp(Ljava/lang/String;Ljava/lang/Exception;)V

    monitor-exit v3

    return-void

    :cond_4
    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService;->tcpFlows:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lt v4, v5, :cond_5

    const-string v4, "TCP flow limit reached"

    invoke-direct {p0, v4, v6}, Lcom/jonis/trainer/PacketCaptureService;->warnTcp(Ljava/lang/String;Ljava/lang/Exception;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_5
    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    move-object v4, v5

    invoke-virtual {p0, v4}, Landroid/net/VpnService;->protect(Ljava/net/Socket;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "TCP socket uses app VPN exclusion fallback"

    invoke-direct {p0, v5, v6}, Lcom/jonis/trainer/PacketCaptureService;->warnTcp(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_2

    :cond_6
    :goto_1
    new-instance v11, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;

    iget-wide v9, p1, Lcom/jonis/trainer/Ipv4TcpPacket;->sequenceNumber:J

    move-object v5, v11

    move-object v6, p0

    move-object v7, v0

    move-object v8, v4

    invoke-direct/range {v5 .. v10}, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;-><init>(Lcom/jonis/trainer/PacketCaptureService;Lcom/jonis/trainer/PacketCaptureService$FlowKey;Ljava/net/Socket;J)V

    move-object v1, v11

    iget-object v5, p0, Lcom/jonis/trainer/PacketCaptureService;->tcpFlows:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;->-$$Nest$memitSynAck(Lcom/jonis/trainer/PacketCaptureService$TcpFlow;)V

    iget-object v5, p0, Lcom/jonis/trainer/PacketCaptureService;->relayExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_5

    :goto_2
    nop

    if-eqz v1, :cond_7

    :try_start_2
    invoke-static {v1}, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;->-$$Nest$mremoveAndClose(Lcom/jonis/trainer/PacketCaptureService$TcpFlow;)V

    goto :goto_3

    :cond_7
    invoke-static {v4}, Lcom/jonis/trainer/PacketCaptureService;->closeQuietly(Ljava/io/Closeable;)V

    :goto_3
    const-string v6, "Could not create TCP flow"

    invoke-direct {p0, v6, v5}, Lcom/jonis/trainer/PacketCaptureService;->warnTcp(Ljava/lang/String;Ljava/lang/Exception;)V

    monitor-exit v3

    return-void

    :goto_4
    monitor-exit v3

    return-void

    :cond_8
    :goto_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_9

    return-void

    :cond_9
    invoke-virtual {v1, p1}, Lcom/jonis/trainer/PacketCaptureService$TcpFlow;->handle(Lcom/jonis/trainer/Ipv4TcpPacket;)V

    return-void

    :goto_6
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method private forward(Lcom/jonis/trainer/Ipv4UdpPacket;)V
    .locals 8

    new-instance v0, Lcom/jonis/trainer/PacketCaptureService$FlowKey;

    iget-object v1, p1, Lcom/jonis/trainer/Ipv4UdpPacket;->sourceAddress:Ljava/net/InetAddress;

    iget v2, p1, Lcom/jonis/trainer/Ipv4UdpPacket;->sourcePort:I

    iget-object v3, p1, Lcom/jonis/trainer/Ipv4UdpPacket;->destinationAddress:Ljava/net/InetAddress;

    iget v4, p1, Lcom/jonis/trainer/Ipv4UdpPacket;->destinationPort:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jonis/trainer/PacketCaptureService$FlowKey;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->flowLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/jonis/trainer/PacketCaptureService;->relayRunning:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jonis/trainer/PacketCaptureService;->relayExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_1

    :cond_0
    goto/16 :goto_7

    :cond_1
    iget-object v2, p0, Lcom/jonis/trainer/PacketCaptureService;->flows:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->evictUdpFlowsLocked()V

    iget-object v3, p0, Lcom/jonis/trainer/PacketCaptureService;->flows:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0x80

    if-lt v3, v4, :cond_2

    const-string v3, "PacketCapture"

    const-string v4, "UDP flow limit reached"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    goto/16 :goto_8

    :cond_2
    :try_start_1
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V

    invoke-virtual {p0, v3}, Landroid/net/VpnService;->protect(Ljava/net/DatagramSocket;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "PacketCapture"

    const-string v5, "UDP socket uses app VPN exclusion fallback"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v4, p1, Lcom/jonis/trainer/Ipv4UdpPacket;->destinationAddress:Ljava/net/InetAddress;

    iget v5, p1, Lcom/jonis/trainer/Ipv4UdpPacket;->destinationPort:I

    invoke-virtual {v3, v4, v5}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    new-instance v4, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;

    invoke-direct {v4, p0, v0, v3}, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;-><init>(Lcom/jonis/trainer/PacketCaptureService;Lcom/jonis/trainer/PacketCaptureService$FlowKey;Ljava/net/DatagramSocket;)V

    move-object v2, v4

    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService;->flows:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService;->relayExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    nop

    :try_start_2
    const-string v4, "PacketCapture"

    const-string v5, "Could not create UDP flow"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v1

    return-void

    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget v1, Lcom/jonis/trainer/LvTeamShift;->teleportBaseState:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_5

    iget-boolean v3, p0, Lcom/jonis/trainer/PacketCaptureService;->tpReplayStarted:Z

    if-nez v3, :cond_5

    iput-boolean v4, p0, Lcom/jonis/trainer/PacketCaptureService;->tpReplayStarted:Z

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->startTpReplay()V

    :cond_5
    if-nez v1, :cond_6

    iget-boolean v3, p0, Lcom/jonis/trainer/PacketCaptureService;->tpReplayStarted:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/jonis/trainer/PacketCaptureService;->tpReplayStarted:Z

    iget-object v3, p0, Lcom/jonis/trainer/PacketCaptureService;->heldUplinkPackets:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    iget-object v5, p0, Lcom/jonis/trainer/PacketCaptureService;->heldUplinkPackets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    monitor-exit v3

    goto :goto_3

    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :cond_6
    :goto_3
    if-eqz v1, :cond_9

    iget-object v3, p1, Lcom/jonis/trainer/Ipv4UdpPacket;->payload:[B

    array-length v3, v3

    const/16 v5, 0x28

    if-lt v3, v5, :cond_9

    iget-object v3, p0, Lcom/jonis/trainer/PacketCaptureService;->frameDecoder:Lcom/jonis/trainer/RawFrameDecoder;

    iget-object v5, p1, Lcom/jonis/trainer/Ipv4UdpPacket;->destinationAddress:Ljava/net/InetAddress;

    iget v6, p1, Lcom/jonis/trainer/Ipv4UdpPacket;->destinationPort:I

    invoke-virtual {v3, v5, v6}, Lcom/jonis/trainer/RawFrameDecoder;->isGameEndpoint(Ljava/net/InetAddress;I)Z

    move-result v3

    if-eqz v3, :cond_9

    if-ne v1, v4, :cond_8

    iget-object v3, p0, Lcom/jonis/trainer/PacketCaptureService;->heldUplinkPackets:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_4
    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService;->heldUplinkPackets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x1388

    if-ge v4, v5, :cond_7

    iget-object v4, p0, Lcom/jonis/trainer/PacketCaptureService;->heldUplinkPackets:Ljava/util/ArrayList;

    new-instance v5, Lcom/jonis/trainer/PacketCaptureService$HeldUdpPacket;

    iget-object v6, p1, Lcom/jonis/trainer/Ipv4UdpPacket;->payload:[B

    invoke-direct {v5, v6, v2}, Lcom/jonis/trainer/PacketCaptureService$HeldUdpPacket;-><init>([BLcom/jonis/trainer/PacketCaptureService$UdpFlow;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_2
    move-exception v4

    goto :goto_5

    :cond_7
    :goto_4
    monitor-exit v3

    goto :goto_6

    :goto_5
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4

    :cond_8
    :goto_6
    return-void

    :cond_9
    iget-object v3, p0, Lcom/jonis/trainer/PacketCaptureService;->frameDecoder:Lcom/jonis/trainer/RawFrameDecoder;

    iget-object v4, p1, Lcom/jonis/trainer/Ipv4UdpPacket;->payload:[B

    iget-object v5, p1, Lcom/jonis/trainer/Ipv4UdpPacket;->payload:[B

    array-length v5, v5

    iget-object v6, p1, Lcom/jonis/trainer/Ipv4UdpPacket;->destinationAddress:Ljava/net/InetAddress;

    iget v7, p1, Lcom/jonis/trainer/Ipv4UdpPacket;->destinationPort:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/jonis/trainer/RawFrameDecoder;->shiftUplink([BILjava/net/InetAddress;I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->send([B)V

    return-void

    :goto_7
    :try_start_5
    monitor-exit v1

    return-void

    :goto_8
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2
.end method

.method private static increment(JI)J
    .locals 4

    int-to-long v0, p2

    add-long/2addr v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static isAfter(JJ)Z
    .locals 4

    sub-long v0, p0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide v2, 0x80000000L

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private synthetic lambda$startTpReplay$0(Ljava/util/List;)V
    .locals 14

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jonis/trainer/PacketCaptureService$HeldUdpPacket;

    iget-wide v1, v1, Lcom/jonis/trainer/PacketCaptureService$HeldUdpPacket;->capturedAt:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/jonis/trainer/LvTeamShift;->getTeleportSpeed()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jonis/trainer/PacketCaptureService$HeldUdpPacket;

    sget v8, Lcom/jonis/trainer/LvTeamShift;->teleportBaseState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    iget-wide v8, v7, Lcom/jonis/trainer/PacketCaptureService$HeldUdpPacket;->capturedAt:J

    sub-long/2addr v8, v1

    long-to-float v8, v8

    div-float/2addr v8, v5

    float-to-long v8, v8

    add-long/2addr v8, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v10, v8, v10

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_1

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v12, v7, Lcom/jonis/trainer/PacketCaptureService$HeldUdpPacket;->flow:Lcom/jonis/trainer/PacketCaptureService$UdpFlow;

    iget-object v13, v7, Lcom/jonis/trainer/PacketCaptureService$HeldUdpPacket;->payload:[B

    invoke-virtual {v12, v13}, Lcom/jonis/trainer/PacketCaptureService$UdpFlow;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :goto_2
    nop

    :cond_2
    :goto_3
    sput v0, Lcom/jonis/trainer/LvTeamShift;->teleportBaseState:I

    iput-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->tpReplayStarted:Z

    invoke-static {}, Lcom/jonis/trainer/LvShiftOverlay;->refreshTpBase()V

    return-void
.end method

.method private readTunPackets()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->relayReaderStarted:Z

    iget-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->fullRouteStartupPending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->completeFullRouteStartup()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v0, 0xffff

    new-array v0, v0, [B

    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/jonis/trainer/PacketCaptureService;->relayRunning:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnelInput:Ljava/io/FileInputStream;

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/jonis/trainer/LvSession;->get()Lcom/jonis/trainer/LvSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jonis/trainer/LvSession;->isActive()Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/jonis/trainer/PacketCaptureService;->frameDecoder:Lcom/jonis/trainer/RawFrameDecoder;

    invoke-virtual {v2, v0, v1}, Lcom/jonis/trainer/RawFrameDecoder;->accept([BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "PacketCapture"

    const-string v4, "accept error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-static {v0, v1}, Lcom/jonis/trainer/Ipv4UdpPacket;->parse([BI)Lcom/jonis/trainer/Ipv4UdpPacket;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v2}, Lcom/jonis/trainer/PacketCaptureService;->forward(Lcom/jonis/trainer/Ipv4UdpPacket;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_3
    invoke-static {v0, v1}, Lcom/jonis/trainer/Ipv4TcpPacket;->parse([BI)Lcom/jonis/trainer/Ipv4TcpPacket;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v3}, Lcom/jonis/trainer/PacketCaptureService;->forward(Lcom/jonis/trainer/Ipv4TcpPacket;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    goto :goto_1

    :cond_5
    goto :goto_4

    :goto_3
    nop

    iget-boolean v2, p0, Lcom/jonis/trainer/PacketCaptureService;->relayRunning:Z

    if-eqz v2, :cond_6

    const-string v2, "PacketCapture"

    const-string v3, "TUN input stopped"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_4
    return-void

    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private declared-synchronized startRelay()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->relayRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnel:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnel:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnelInput:Ljava/io/FileInputStream;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jonis/trainer/PacketCaptureService;->inputRelayInitialized:Z

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnel:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnelOutput:Ljava/io/FileOutputStream;

    iput-boolean v1, p0, Lcom/jonis/trainer/PacketCaptureService;->outputRelayInitialized:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/jonis/trainer/PacketCaptureService;->relayExecutor:Ljava/util/concurrent/ExecutorService;

    iput-boolean v1, p0, Lcom/jonis/trainer/PacketCaptureService;->relayRunning:Z

    iput-boolean v0, p0, Lcom/jonis/trainer/PacketCaptureService;->relayReaderStarted:Z

    iget-object v2, p0, Lcom/jonis/trainer/PacketCaptureService;->relayExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/jonis/trainer/PacketCaptureService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/jonis/trainer/PacketCaptureService$$ExternalSyntheticLambda3;-><init>(Lcom/jonis/trainer/PacketCaptureService;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    nop

    :try_start_2
    const-string v2, "PacketCapture"

    const-string v3, "Could not initialize generic relays"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->areGenericRelaysInitialized()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private startTpReplay()V
    .locals 4

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->heldUplinkPackets:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService;->heldUplinkPackets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sput v2, Lcom/jonis/trainer/LvTeamShift;->teleportBaseState:I

    iput-boolean v2, p0, Lcom/jonis/trainer/PacketCaptureService;->tpReplayStarted:Z

    invoke-static {}, Lcom/jonis/trainer/LvShiftOverlay;->refreshTpBase()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jonis/trainer/PacketCaptureService;->heldUplinkPackets:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/jonis/trainer/PacketCaptureService;->heldUplinkPackets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->relayExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->relayExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/jonis/trainer/PacketCaptureService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lcom/jonis/trainer/PacketCaptureService$$ExternalSyntheticLambda2;-><init>(Lcom/jonis/trainer/PacketCaptureService;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    sput v2, Lcom/jonis/trainer/LvTeamShift;->teleportBaseState:I

    iput-boolean v2, p0, Lcom/jonis/trainer/PacketCaptureService;->tpReplayStarted:Z

    invoke-static {}, Lcom/jonis/trainer/LvShiftOverlay;->refreshTpBase()V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private warnTcp(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jonis/trainer/PacketCaptureService;->tcpWarningLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v3, p0, Lcom/jonis/trainer/PacketCaptureService;->lastTcpWarningAtMillis:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_0
    iput-wide v0, p0, Lcom/jonis/trainer/PacketCaptureService;->lastTcpWarningAtMillis:J

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    const-string v2, "PacketCapture"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "PacketCapture"

    invoke-static {v2, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-super {p0, p1}, Landroid/net/VpnService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->closeTunnel()V

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->startupWatchdog:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-super {p0}, Landroid/net/VpnService;->onDestroy()V

    return-void
.end method

.method public onRevoke()V
    .locals 2

    const-string v0, "PacketCapture"

    const-string v1, "VPN consent revoked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->closeTunnel()V

    invoke-super {p0}, Landroid/net/VpnService;->onRevoke()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "com.lvteam.action.ENABLE_FULL_IPV4_ROUTE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->enableFullIpv4Route()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService;->tunnel:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->establishRouteFreeVpn()V

    :cond_1
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Lcom/jonis/trainer/PacketCaptureService;->closeTunnel()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jonis/trainer/OverlayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    invoke-super {p0, p1}, Landroid/net/VpnService;->onTaskRemoved(Landroid/content/Intent;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
