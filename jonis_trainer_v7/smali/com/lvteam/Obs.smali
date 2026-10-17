.class public abstract Lcom/lvteam/Obs;
.super Ljava/lang/Object;
.source "Obs.java"


# static fields
.field public static final K:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lvteam/Obs;->K:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ct
        0x56t
        0x54t
        0x45t
        0x41t
        0x4dt
    .end array-data
.end method

.method public static d([B)Ljava/lang/String;
    .locals 5

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    sget-object v3, Lcom/lvteam/Obs;->K:[B

    sget-object v4, Lcom/lvteam/Obs;->K:[B

    array-length v4, v4

    rem-int v4, v1, v4

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method
