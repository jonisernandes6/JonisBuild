.class public final Lcom/jonis/trainer/RawFrameDecoder$TcpScannerState;
.super Ljava/lang/Object;
.source "RawFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jonis/trainer/RawFrameDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TcpScannerState"
.end annotation


# instance fields
.field public configuredEndpoint:Lcom/jonis/trainer/RawFrameDecoder$EndpointKey;

.field public configuredKey:[B

.field public configuredMask:I

.field public configuredOrder:Ljava/lang/String;

.field public pendingEndpoint:Lcom/jonis/trainer/RawFrameDecoder$EndpointKey;

.field public pendingKey:[B

.field public pendingMask:I

.field public pendingOrder:Ljava/lang/String;

.field public tail:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jonis/trainer/RawFrameDecoder$TcpScannerState;->tail:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/jonis/trainer/RawFrameDecoder$TcpScannerState;->pendingMask:I

    iput v0, p0, Lcom/jonis/trainer/RawFrameDecoder$TcpScannerState;->configuredMask:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jonis/trainer/RawFrameDecoder$TcpScannerState-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/jonis/trainer/RawFrameDecoder$TcpScannerState;-><init>()V

    return-void
.end method
