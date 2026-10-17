.class public final Lcom/lvteam/UdpDecodedFrame;
.super Ljava/lang/Object;
.source "UdpDecodedFrame.java"


# instance fields
.field public final declaredPayloadLength:I

.field public final flags:I

.field public final orderId:I

.field public final payload:[B

.field public final reliable:Z

.field public final sendOption:I

.field public final tag:I


# direct methods
.method public constructor <init>(I[BZIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lvteam/UdpDecodedFrame;->tag:I

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/lvteam/UdpDecodedFrame;->payload:[B

    iput-boolean p3, p0, Lcom/lvteam/UdpDecodedFrame;->reliable:Z

    iput p4, p0, Lcom/lvteam/UdpDecodedFrame;->sendOption:I

    iput p5, p0, Lcom/lvteam/UdpDecodedFrame;->orderId:I

    iput p6, p0, Lcom/lvteam/UdpDecodedFrame;->flags:I

    iput p7, p0, Lcom/lvteam/UdpDecodedFrame;->declaredPayloadLength:I

    return-void
.end method
