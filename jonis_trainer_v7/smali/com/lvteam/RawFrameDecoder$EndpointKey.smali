.class public final Lcom/lvteam/RawFrameDecoder$EndpointKey;
.super Ljava/lang/Object;
.source "RawFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/RawFrameDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EndpointKey"
.end annotation


# instance fields
.field public final address:Ljava/net/InetAddress;

.field public final port:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lvteam/RawFrameDecoder$EndpointKey;->address:Ljava/net/InetAddress;

    iput p2, p0, Lcom/lvteam/RawFrameDecoder$EndpointKey;->port:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/lvteam/RawFrameDecoder$EndpointKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/lvteam/RawFrameDecoder$EndpointKey;

    iget v2, p0, Lcom/lvteam/RawFrameDecoder$EndpointKey;->port:I

    iget v3, v0, Lcom/lvteam/RawFrameDecoder$EndpointKey;->port:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/lvteam/RawFrameDecoder$EndpointKey;->address:Ljava/net/InetAddress;

    iget-object v3, v0, Lcom/lvteam/RawFrameDecoder$EndpointKey;->address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/lvteam/RawFrameDecoder$EndpointKey;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/lvteam/RawFrameDecoder$EndpointKey;->port:I

    add-int/2addr v0, v1

    return v0
.end method
