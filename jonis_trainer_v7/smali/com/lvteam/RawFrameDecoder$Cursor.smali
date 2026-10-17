.class public final Lcom/lvteam/RawFrameDecoder$Cursor;
.super Ljava/lang/Object;
.source "RawFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/RawFrameDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cursor"
.end annotation


# instance fields
.field public final bytes:[B

.field public position:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->bytes:[B

    return-void
.end method


# virtual methods
.method public readByte()I
    .locals 3

    iget v0, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->position:I

    iget-object v1, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->bytes:[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->bytes:[B

    iget v1, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Truncated byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readString()Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lvteam/VarintReader;->zigZag(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x40

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->position:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->bytes:[B

    array-length v6, v6

    int-to-long v6, v6

    sub-long/2addr v6, v2

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->bytes:[B

    iget v6, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->position:I

    long-to-int v7, v2

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v5, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->position:I

    long-to-int v6, v2

    add-int/2addr v5, v6

    iput v5, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->position:I

    return-object v4

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid string"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public readUnsigned()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    iget v3, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->position:I

    iget-object v4, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->bytes:[B

    array-length v4, v4

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->bytes:[B

    iget v4, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->position:I

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

.method public readZigZag()F
    .locals 2

    invoke-virtual {p0}, Lcom/lvteam/RawFrameDecoder$Cursor;->readUnsigned()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lvteam/VarintReader;->zigZag(J)J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public requireEnd()V
    .locals 2

    iget v0, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->position:I

    iget-object v1, p0, Lcom/lvteam/RawFrameDecoder$Cursor;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trailing data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
