.class public final Lcom/lvteam/PacketCaptureService$HeldUdpPacket;
.super Ljava/lang/Object;
.source "PacketCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/PacketCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeldUdpPacket"
.end annotation


# instance fields
.field public final capturedAt:J

.field public final flow:Lcom/lvteam/PacketCaptureService$UdpFlow;

.field public final payload:[B


# direct methods
.method public constructor <init>([BLcom/lvteam/PacketCaptureService$UdpFlow;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lvteam/PacketCaptureService$HeldUdpPacket;->payload:[B

    iput-object p2, p0, Lcom/lvteam/PacketCaptureService$HeldUdpPacket;->flow:Lcom/lvteam/PacketCaptureService$UdpFlow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lvteam/PacketCaptureService$HeldUdpPacket;->capturedAt:J

    return-void
.end method
