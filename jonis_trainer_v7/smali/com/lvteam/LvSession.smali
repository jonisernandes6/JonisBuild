.class public final Lcom/lvteam/LvSession;
.super Ljava/lang/Object;
.source "LvSession.java"


# static fields
.field public static final INSTANCE:Lcom/lvteam/LvSession;


# instance fields
.field public volatile activationTime:J

.field public volatile authDays:I

.field public volatile authTimestamp:J

.field public volatile authToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lvteam/LvSession;

    invoke-direct {v0}, Lcom/lvteam/LvSession;-><init>()V

    sput-object v0, Lcom/lvteam/LvSession;->INSTANCE:Lcom/lvteam/LvSession;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/lvteam/LvSession;
    .locals 1

    sget-object v0, Lcom/lvteam/LvSession;->INSTANCE:Lcom/lvteam/LvSession;

    return-object v0
.end method


# virtual methods
.method public activate(Ljava/lang/String;ILjava/lang/String;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "UTF-8"

    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v2

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_0

    aget-byte v7, v2, v6

    const-string v8, "%02x"

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v9, v10, v1

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lvteam/LvSession;->authToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lvteam/LvSession;->authTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lvteam/LvSession;->activationTime:J

    iput p2, p0, Lcom/lvteam/LvSession;->authDays:I

    return-void

    :goto_1
    nop

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lvteam/LvSession;->authToken:Ljava/lang/String;

    return-void
.end method

.method public invalidate()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lvteam/LvSession;->authToken:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lvteam/LvSession;->authTimestamp:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/lvteam/LvSession;->authDays:I

    return-void
.end method

.method public isActive()Z
    .locals 8

    iget-object v0, p0, Lcom/lvteam/LvSession;->authToken:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lvteam/LvSession;->authTimestamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2932e00

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/lvteam/LvSession;->invalidate()V

    return v1

    :cond_1
    iget v0, p0, Lcom/lvteam/LvSession;->authDays:I

    if-lez v0, :cond_2

    iget-wide v2, p0, Lcom/lvteam/LvSession;->activationTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lvteam/LvSession;->activationTime:J

    sub-long/2addr v2, v4

    iget v0, p0, Lcom/lvteam/LvSession;->authDays:I

    int-to-long v4, v0

    const-wide/16 v6, 0x18

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/lvteam/LvSession;->invalidate()V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
