.class public final Lcom/lvteam/RawFrameDecoder$RawCursor;
.super Ljava/lang/Object;
.source "RawFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/RawFrameDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawCursor"
.end annotation


# instance fields
.field public final bytes:[B

.field public final end:I

.field public position:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lvteam/RawFrameDecoder$RawCursor;->bytes:[B

    iput p2, p0, Lcom/lvteam/RawFrameDecoder$RawCursor;->position:I

    iput p3, p0, Lcom/lvteam/RawFrameDecoder$RawCursor;->end:I

    return-void
.end method


# virtual methods
.method public position()I
    .locals 1

    iget v0, p0, Lcom/lvteam/RawFrameDecoder$RawCursor;->position:I

    return v0
.end method

.method public readUnsigned()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    iget v3, p0, Lcom/lvteam/RawFrameDecoder$RawCursor;->position:I

    iget v4, p0, Lcom/lvteam/RawFrameDecoder$RawCursor;->end:I

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/lvteam/RawFrameDecoder$RawCursor;->bytes:[B

    iget v4, p0, Lcom/lvteam/RawFrameDecoder$RawCursor;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/lvteam/RawFrameDecoder$RawCursor;->position:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Truncated varint"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    nop

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed varint"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public skip(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/lvteam/RawFrameDecoder$RawCursor;->position:I

    iget v1, p0, Lcom/lvteam/RawFrameDecoder$RawCursor;->end:I

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/lvteam/RawFrameDecoder$RawCursor;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lvteam/RawFrameDecoder$RawCursor;->position:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Truncated bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
