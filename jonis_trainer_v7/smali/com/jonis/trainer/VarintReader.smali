.class public final Lcom/jonis/trainer/VarintReader;
.super Ljava/lang/Object;
.source "VarintReader.java"


# instance fields
.field public final bytes:[B

.field public position:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/jonis/trainer/VarintReader;->bytes:[B

    return-void
.end method

.method public static zigZag(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public hasRemaining()Z
    .locals 2

    iget v0, p0, Lcom/jonis/trainer/VarintReader;->position:I

    iget-object v1, p0, Lcom/jonis/trainer/VarintReader;->bytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readUnsigned()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/jonis/trainer/VarintReader;->position:I

    iget-object v4, p0, Lcom/jonis/trainer/VarintReader;->bytes:[B

    array-length v4, v4

    if-ge v3, v4, :cond_1

    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/jonis/trainer/VarintReader;->bytes:[B

    iget v4, p0, Lcom/jonis/trainer/VarintReader;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/jonis/trainer/VarintReader;->position:I

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
    nop

    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Malformed varint"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
