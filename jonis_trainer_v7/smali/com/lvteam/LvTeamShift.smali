.class public abstract Lcom/lvteam/LvTeamShift;
.super Ljava/lang/Object;
.source "LvTeamShift.java"


# static fields
.field public static final LOCK:Ljava/lang/Object;

.field public static volatile aimX:F

.field public static volatile aimY:F

.field public static volatile aimZ:F

.field public static volatile depthMm:I

.field public static volatile dir:[F

.field public static volatile firePulseUntil:J

.field public static volatile firing:Z

.field public static freezeActive:Z

.field public static volatile freezeFireOn:Z

.field public static volatile freezeScopOn:Z

.field public static volatile haveDownAnchor:Z

.field public static final held:Ljava/util/HashMap;

.field public static volatile heldUplink:[J

.field public static volatile ignoredSlots:[Z

.field public static volatile lastDir:[F

.field public static lastDownY:J

.field public static final live:Ljava/util/HashMap;

.field public static volatile localFreezeOn:Z

.field public static volatile localHold:Z

.field public static volatile localShortId:I

.field public static volatile localTs:J

.field public static volatile localX:D

.field public static volatile localY:D

.field public static volatile localZ:D

.field public static volatile magnetFireTs:J

.field public static volatile magnetFiring:Z

.field public static volatile magnetOn:Z

.field public static volatile magnetScopeTs:J

.field public static volatile magnetScoping:Z

.field public static volatile pinnedLocal:[J

.field public static volatile scopePulseUntil:J

.field public static volatile scoping:Z

.field public static volatile tatuOn:Z

.field public static volatile teleportBaseState:I

.field public static volatile teleportSpeed:I

.field public static volatile uplinkSidTs:J

.field public static volatile wallDistanceMm:I

.field public static volatile wallEngaged:Z

.field public static volatile wallLockedX:F

.field public static volatile wallLockedZ:F

.field public static volatile wallOffsetMm:D

.field public static volatile wallPassOn:Z

.field public static volatile wallReleaseFromMm:D

.field public static volatile wallReleasing:Z

.field public static volatile wallStartedAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lvteam/LvTeamShift;->magnetOn:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    sput-object v3, Lcom/lvteam/LvTeamShift;->dir:[F

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    sput-object v2, Lcom/lvteam/LvTeamShift;->lastDir:[F

    sput v1, Lcom/lvteam/LvTeamShift;->aimZ:F

    sput-boolean v0, Lcom/lvteam/LvTeamShift;->localFreezeOn:Z

    sput-boolean v0, Lcom/lvteam/LvTeamShift;->tatuOn:Z

    sput-boolean v0, Lcom/lvteam/LvTeamShift;->freezeFireOn:Z

    sput-boolean v0, Lcom/lvteam/LvTeamShift;->freezeScopOn:Z

    sput v0, Lcom/lvteam/LvTeamShift;->teleportBaseState:I

    const/4 v1, 0x3

    sput v1, Lcom/lvteam/LvTeamShift;->teleportSpeed:I

    sput-boolean v0, Lcom/lvteam/LvTeamShift;->wallPassOn:Z

    const/16 v0, 0x3e8

    sput v0, Lcom/lvteam/LvTeamShift;->wallDistanceMm:I

    sput v0, Lcom/lvteam/LvTeamShift;->depthMm:I

    const/4 v0, -0x1

    sput v0, Lcom/lvteam/LvTeamShift;->localShortId:I

    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lcom/lvteam/LvTeamShift;->ignoredSlots:[Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lvteam/LvTeamShift;->LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lvteam/LvTeamShift;->live:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lvteam/LvTeamShift;->held:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static enc(J)J
    .locals 4

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static enemyFreezeActive()Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-boolean v2, Lcom/lvteam/LvTeamShift;->freezeFireOn:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/lvteam/LvTeamShift;->firing:Z

    if-nez v2, :cond_0

    sget-wide v4, Lcom/lvteam/LvTeamShift;->firePulseUntil:J

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    :cond_0
    return v3

    :cond_1
    sget-boolean v2, Lcom/lvteam/LvTeamShift;->freezeScopOn:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/lvteam/LvTeamShift;->scoping:Z

    if-nez v2, :cond_2

    sget-wide v4, Lcom/lvteam/LvTeamShift;->scopePulseUntil:J

    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public static getTeleportSpeed()I
    .locals 1

    sget v0, Lcom/lvteam/LvTeamShift;->teleportSpeed:I

    return v0
.end method

.method public static heldPose(IZ)[J
    .locals 3

    sget v0, Lcom/lvteam/LvTeamShift;->localShortId:I

    const/4 v1, 0x0

    if-ne p0, v0, :cond_1

    sget-boolean v2, Lcom/lvteam/LvTeamShift;->localFreezeOn:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/lvteam/LvTeamShift;->held:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    :cond_0
    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/lvteam/LvTeamShift;->held:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    :cond_2
    return-object v1
.end method

.method public static isAnyActive()Z
    .locals 1

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->magnetOn:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->localFreezeOn:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->tatuOn:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->freezeFireOn:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->freezeScopOn:Z

    if-nez v0, :cond_0

    sget v0, Lcom/lvteam/LvTeamShift;->teleportBaseState:I

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->wallPassOn:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->wallReleasing:Z

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isUplinkActive()Z
    .locals 1

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->localFreezeOn:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->tatuOn:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->wallPassOn:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->wallReleasing:Z

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static latchLocal()V
    .locals 4

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->localFreezeOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lvteam/LvTeamShift;->localHold:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/lvteam/LvTeamShift;->pinnedLocal:[J

    return-void

    :cond_0
    sget v0, Lcom/lvteam/LvTeamShift;->localShortId:I

    if-gez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v1, Lcom/lvteam/LvTeamShift;->localHold:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/lvteam/LvTeamShift;->pinnedLocal:[J

    if-eqz v1, :cond_2

    sget-object v1, Lcom/lvteam/LvTeamShift;->held:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/lvteam/LvTeamShift;->pinnedLocal:[J

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    sget-object v1, Lcom/lvteam/LvTeamShift;->live:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    if-eqz v1, :cond_3

    sget-object v2, Lcom/lvteam/LvTeamShift;->held:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v1, Lcom/lvteam/LvTeamShift;->pinnedLocal:[J

    const/4 v2, 0x1

    sput-boolean v2, Lcom/lvteam/LvTeamShift;->localHold:Z

    :cond_3
    return-void
.end method

.method public static lowerY(J)J
    .locals 9

    invoke-static {}, Lcom/lvteam/LvTeamShift;->tatuActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lvteam/LvTeamShift;->haveDownAnchor:Z

    return-wide p0

    :cond_0
    invoke-static {p0, p1}, Lcom/lvteam/LvTeamShift;->zz(J)J

    move-result-wide v0

    sget v2, Lcom/lvteam/LvTeamShift;->depthMm:I

    sget-boolean v3, Lcom/lvteam/LvTeamShift;->haveDownAnchor:Z

    if-eqz v3, :cond_2

    sget-wide v3, Lcom/lvteam/LvTeamShift;->lastDownY:J

    sub-long v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x1c2

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    sget-wide v3, Lcom/lvteam/LvTeamShift;->lastDownY:J

    invoke-static {v3, v4}, Lcom/lvteam/LvTeamShift;->enc(J)J

    move-result-wide v3

    return-wide v3

    :cond_1
    sget-wide v3, Lcom/lvteam/LvTeamShift;->lastDownY:J

    int-to-long v7, v2

    add-long/2addr v3, v7

    sub-long v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    sget-wide v3, Lcom/lvteam/LvTeamShift;->lastDownY:J

    invoke-static {v3, v4}, Lcom/lvteam/LvTeamShift;->enc(J)J

    move-result-wide v3

    return-wide v3

    :cond_2
    int-to-long v3, v2

    sub-long v3, v0, v3

    sput-wide v3, Lcom/lvteam/LvTeamShift;->lastDownY:J

    const/4 v3, 0x1

    sput-boolean v3, Lcom/lvteam/LvTeamShift;->haveDownAnchor:Z

    sget-wide v3, Lcom/lvteam/LvTeamShift;->lastDownY:J

    invoke-static {v3, v4}, Lcom/lvteam/LvTeamShift;->enc(J)J

    move-result-wide v3

    return-wide v3
.end method

.method public static magnetActive()Z
    .locals 8

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->magnetOn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->magnetFiring:Z

    const-wide/16 v4, 0x1388

    if-eqz v0, :cond_1

    sget-wide v6, Lcom/lvteam/LvTeamShift;->magnetFireTs:J

    sub-long v6, v2, v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_1

    sput-boolean v1, Lcom/lvteam/LvTeamShift;->magnetFiring:Z

    :cond_1
    sget-boolean v0, Lcom/lvteam/LvTeamShift;->magnetScoping:Z

    if-eqz v0, :cond_2

    sget-wide v6, Lcom/lvteam/LvTeamShift;->magnetScopeTs:J

    sub-long v6, v2, v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_2

    sput-boolean v1, Lcom/lvteam/LvTeamShift;->magnetScoping:Z

    :cond_2
    sget-boolean v0, Lcom/lvteam/LvTeamShift;->magnetFiring:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->magnetScoping:Z

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static observeCommand(I)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sput-boolean v5, Lcom/lvteam/LvTeamShift;->scoping:Z

    sput-wide v3, Lcom/lvteam/LvTeamShift;->scopePulseUntil:J

    sput-boolean v5, Lcom/lvteam/LvTeamShift;->magnetScoping:Z

    goto :goto_0

    :sswitch_1
    sput-boolean v2, Lcom/lvteam/LvTeamShift;->scoping:Z

    const-wide/16 v3, 0x708

    add-long/2addr v3, v0

    sput-wide v3, Lcom/lvteam/LvTeamShift;->scopePulseUntil:J

    sput-boolean v2, Lcom/lvteam/LvTeamShift;->magnetScoping:Z

    sput-wide v0, Lcom/lvteam/LvTeamShift;->magnetScopeTs:J

    goto :goto_0

    :sswitch_2
    sput-boolean v5, Lcom/lvteam/LvTeamShift;->firing:Z

    sput-wide v3, Lcom/lvteam/LvTeamShift;->firePulseUntil:J

    sput-boolean v5, Lcom/lvteam/LvTeamShift;->magnetFiring:Z

    goto :goto_0

    :sswitch_3
    sput-boolean v2, Lcom/lvteam/LvTeamShift;->firing:Z

    const-wide/16 v3, 0x2bc

    add-long/2addr v3, v0

    sput-wide v3, Lcom/lvteam/LvTeamShift;->firePulseUntil:J

    sput-boolean v2, Lcom/lvteam/LvTeamShift;->magnetFiring:Z

    sput-wide v0, Lcom/lvteam/LvTeamShift;->magnetFireTs:J

    goto :goto_0

    :sswitch_4
    sput-boolean v5, Lcom/lvteam/LvTeamShift;->firing:Z

    sput-boolean v5, Lcom/lvteam/LvTeamShift;->scoping:Z

    sput-wide v3, Lcom/lvteam/LvTeamShift;->firePulseUntil:J

    sput-wide v3, Lcom/lvteam/LvTeamShift;->scopePulseUntil:J

    sput-boolean v5, Lcom/lvteam/LvTeamShift;->magnetFiring:Z

    sput-boolean v5, Lcom/lvteam/LvTeamShift;->magnetScoping:Z

    nop

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_4
        0x68 -> :sswitch_3
        0x69 -> :sswitch_2
        0x89 -> :sswitch_1
        0x8a -> :sswitch_0
    .end sparse-switch
.end method

.method public static readVarint([BI)[J
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    array-length v2, p0

    if-lt p1, v2, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p0

    if-ge p1, v5, :cond_3

    const/16 v5, 0x3f

    if-gt v4, v5, :cond_3

    add-int/lit8 v5, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    and-int/lit8 v6, p1, 0x7f

    int-to-long v6, v6

    shl-long/2addr v6, v4

    or-long/2addr v2, v6

    const/16 v6, 0x80

    if-ge p1, v6, :cond_2

    int-to-long v6, v5

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v8, 0x0

    aput-wide v2, v1, v8

    aput-wide v6, v1, v0

    return-object v1

    :cond_2
    nop

    add-int/lit8 v4, v4, 0x7

    move p1, v5

    goto :goto_0

    :cond_3
    return-object v1

    :goto_1
    return-object v1
.end method

.method public static recordPose(IJJJIZ)[J
    .locals 17

    move/from16 v0, p0

    const/4 v1, 0x3

    new-array v2, v1, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    const/4 v4, 0x1

    aput-wide p3, v2, v4

    const/4 v5, 0x2

    aput-wide p5, v2, v5

    sget-object v6, Lcom/lvteam/LvTeamShift;->live:Ljava/util/HashMap;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v6, p8

    invoke-static {v0, v6}, Lcom/lvteam/LvTeamShift;->heldPose(IZ)[J

    move-result-object v7

    invoke-static/range {p0 .. p6}, Lcom/lvteam/LvTeamShift;->shift(IJJJ)[J

    move-result-object v8

    if-eqz v8, :cond_0

    move-object v9, v8

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_1

    move-object v9, v7

    goto :goto_0

    :cond_1
    move-object v9, v2

    :goto_0
    sget v10, Lcom/lvteam/LvTeamShift;->localShortId:I

    sget-boolean v11, Lcom/lvteam/LvTeamShift;->tatuOn:Z

    if-eqz v11, :cond_2

    if-ltz v10, :cond_2

    if-ne v0, v10, :cond_2

    aget-wide v11, v9, v4

    invoke-static {v11, v12}, Lcom/lvteam/LvTeamShift;->lowerY(J)J

    move-result-wide v11

    aget-wide v13, v9, v4

    cmp-long v13, v11, v13

    if-eqz v13, :cond_2

    aget-wide v13, v9, v3

    aget-wide v15, v9, v5

    new-array v1, v1, [J

    aput-wide v13, v1, v3

    aput-wide v11, v1, v4

    aput-wide v15, v1, v5

    move-object v9, v1

    :cond_2
    aget-wide v11, v9, v3

    cmp-long v1, v11, p1

    if-nez v1, :cond_3

    aget-wide v3, v9, v4

    cmp-long v1, v3, p3

    if-nez v1, :cond_3

    aget-wide v3, v9, v5

    cmp-long v1, v3, p5

    if-nez v1, :cond_3

    const/4 v1, 0x0

    return-object v1

    :cond_3
    return-object v9
.end method

.method public static rewriteBatch([BZ)[B
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lvteam/LvTeamShift;->readVarint([BI)[J

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x1

    aget-wide v5, v2, v4

    long-to-int v5, v5

    invoke-static {v0, v5}, Lcom/lvteam/LvTeamShift;->readVarint([BI)[J

    move-result-object v5

    if-nez v5, :cond_1

    return-object v3

    :cond_1
    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/lvteam/LvTeamShift;->zz(J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_d

    const-wide/16 v10, 0x80

    cmp-long v10, v6, v10

    if-lez v10, :cond_2

    move-object v9, v2

    move-object v8, v5

    move-wide/from16 v25, v6

    goto/16 :goto_4

    :cond_2
    aget-wide v10, v5, v4

    long-to-int v10, v10

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    array-length v12, v0

    add-int/lit8 v12, v12, 0x20

    invoke-direct {v11, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v11, v0, v1, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    int-to-long v14, v13

    cmp-long v14, v14, v6

    if-gez v14, :cond_a

    array-length v14, v0

    if-lt v10, v14, :cond_3

    return-object v3

    :cond_3
    aget-byte v14, v0, v10

    and-int/lit16 v14, v14, 0xff

    move v15, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x6

    new-array v9, v8, [[J

    const/16 v16, 0x0

    move/from16 v1, v16

    :goto_1
    if-ge v1, v8, :cond_5

    invoke-static {v0, v10}, Lcom/lvteam/LvTeamShift;->readVarint([BI)[J

    move-result-object v16

    aput-object v16, v9, v1

    aget-object v16, v9, v1

    if-nez v16, :cond_4

    return-object v3

    :cond_4
    aget-object v16, v9, v1

    move-object/from16 v24, v9

    aget-wide v8, v16, v4

    long-to-int v10, v8

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v9, v24

    const/4 v8, 0x6

    goto :goto_1

    :cond_5
    move-object/from16 v24, v9

    const/4 v1, 0x2

    aget-object v8, v24, v1

    move-object v9, v2

    aget-wide v1, v8, v4

    long-to-int v1, v1

    add-int/lit8 v2, v10, 0x5

    array-length v8, v0

    if-le v2, v8, :cond_6

    return-object v3

    :cond_6
    add-int/lit8 v2, v10, 0x5

    invoke-static {v0, v2}, Lcom/lvteam/LvTeamShift;->readVarint([BI)[J

    move-result-object v2

    if-nez v2, :cond_7

    return-object v3

    :cond_7
    move-object v8, v5

    move-wide/from16 v25, v6

    aget-wide v5, v2, v4

    long-to-int v5, v5

    add-int/2addr v5, v4

    array-length v6, v0

    if-le v5, v6, :cond_8

    array-length v5, v0

    :cond_8
    const/4 v6, 0x0

    aget-object v7, v24, v6

    aget-wide v16, v7, v6

    aget-object v7, v24, v4

    aget-wide v18, v7, v6

    const/4 v7, 0x2

    aget-object v20, v24, v7

    aget-wide v21, v20, v6

    move v6, v15

    move v15, v14

    move-wide/from16 v20, v21

    move/from16 v22, v1

    move/from16 v23, p1

    invoke-static/range {v15 .. v23}, Lcom/lvteam/LvTeamShift;->recordPose(IJJJIZ)[J

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v11, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v15, 0x0

    aget-wide v3, v7, v15

    invoke-static {v11, v3, v4}, Lcom/lvteam/LvTeamShift;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    move v4, v1

    move-object/from16 v18, v2

    const/4 v3, 0x1

    aget-wide v1, v7, v3

    invoke-static {v11, v1, v2}, Lcom/lvteam/LvTeamShift;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    const/4 v1, 0x2

    aget-wide v1, v7, v1

    invoke-static {v11, v1, v2}, Lcom/lvteam/LvTeamShift;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    const-wide/16 v1, 0x0

    invoke-static {v11, v1, v2}, Lcom/lvteam/LvTeamShift;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    invoke-static {v11, v1, v2}, Lcom/lvteam/LvTeamShift;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    invoke-static {v11, v1, v2}, Lcom/lvteam/LvTeamShift;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    const/4 v3, 0x5

    aget-object v3, v24, v3

    const/16 v17, 0x1

    aget-wide v1, v3, v17

    long-to-int v1, v1

    sub-int v2, v5, v1

    invoke-virtual {v11, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    nop

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v18, v2

    move/from16 v17, v4

    const/4 v15, 0x0

    move v4, v1

    sub-int v1, v5, v6

    invoke-virtual {v11, v0, v6, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_2
    move v10, v5

    add-int/lit8 v13, v13, 0x1

    move-object v5, v8

    move-object v2, v9

    move v1, v15

    move/from16 v4, v17

    move-wide/from16 v6, v25

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    goto/16 :goto_0

    :cond_a
    move-object v9, v2

    move-object v8, v5

    move-wide/from16 v25, v6

    array-length v1, v0

    if-ge v10, v1, :cond_b

    array-length v1, v0

    sub-int/2addr v1, v10

    invoke-virtual {v11, v0, v10, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_b
    if-lez v12, :cond_c

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    :goto_3
    return-object v3

    :cond_d
    move-object v9, v2

    move-object v8, v5

    move-wide/from16 v25, v6

    :goto_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public static rewriteSingle([BZ)[B
    .locals 19

    move-object/from16 v0, p0

    array-length v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return-object v3

    :cond_0
    const/4 v1, 0x2

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x3

    invoke-static {v0, v4}, Lcom/lvteam/LvTeamShift;->readVarint([BI)[J

    move-result-object v13

    if-nez v13, :cond_1

    return-object v3

    :cond_1
    const/4 v14, 0x1

    aget-wide v5, v13, v14

    long-to-int v4, v5

    invoke-static {v0, v4}, Lcom/lvteam/LvTeamShift;->readVarint([BI)[J

    move-result-object v15

    if-nez v15, :cond_2

    return-object v3

    :cond_2
    aget-wide v5, v15, v14

    long-to-int v12, v5

    invoke-static {v0, v12}, Lcom/lvteam/LvTeamShift;->readVarint([BI)[J

    move-result-object v16

    if-nez v16, :cond_3

    return-object v3

    :cond_3
    aget-wide v4, v16, v14

    long-to-int v11, v4

    const/4 v9, 0x0

    aget-wide v5, v13, v9

    aget-wide v7, v15, v9

    aget-wide v17, v16, v9

    move v4, v2

    move v1, v9

    move-wide/from16 v9, v17

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v12, p1

    invoke-static/range {v4 .. v12}, Lcom/lvteam/LvTeamShift;->recordPose(IJJJIZ)[J

    move-result-object v4

    if-nez v4, :cond_4

    return-object v3

    :cond_4
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v5, v0

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v3, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v5, 0x3

    invoke-virtual {v3, v0, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    aget-wide v6, v4, v1

    invoke-static {v3, v6, v7}, Lcom/lvteam/LvTeamShift;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    aget-wide v6, v4, v14

    invoke-static {v3, v6, v7}, Lcom/lvteam/LvTeamShift;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    const/4 v1, 0x2

    aget-wide v6, v4, v1

    invoke-static {v3, v6, v7}, Lcom/lvteam/LvTeamShift;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    move/from16 v1, v17

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_6

    invoke-static {v0, v1}, Lcom/lvteam/LvTeamShift;->readVarint([BI)[J

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v8, 0x0

    invoke-static {v3, v8, v9}, Lcom/lvteam/LvTeamShift;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    aget-wide v8, v7, v14

    long-to-int v1, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    array-length v5, v0

    sub-int/2addr v5, v1

    invoke-virtual {v3, v0, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method public static setDir(FF)V
    .locals 6

    float-to-double v0, p0

    float-to-double v2, p0

    mul-double/2addr v0, v2

    float-to-double v2, p1

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    float-to-double v2, p0

    div-double/2addr v2, v0

    double-to-float v2, v2

    float-to-double v3, p1

    div-double/2addr v3, v0

    double-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v2, 0x1

    aput v3, v4, v2

    sput-object v4, Lcom/lvteam/LvTeamShift;->dir:[F

    return-void
.end method

.method public static setDir3D(FFF)V
    .locals 6

    float-to-double v0, p0

    float-to-double v2, p0

    mul-double/2addr v0, v2

    float-to-double v2, p1

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    float-to-double v2, p2

    float-to-double v4, p2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    float-to-double v2, p0

    div-double/2addr v2, v0

    double-to-float v2, v2

    sput v2, Lcom/lvteam/LvTeamShift;->aimX:F

    float-to-double v2, p1

    div-double/2addr v2, v0

    double-to-float v2, v2

    sput v2, Lcom/lvteam/LvTeamShift;->aimY:F

    float-to-double v2, p2

    div-double/2addr v2, v0

    double-to-float v2, v2

    sput v2, Lcom/lvteam/LvTeamShift;->aimZ:F

    return-void
.end method

.method public static setFreezeFire(Z)V
    .locals 0

    sput-boolean p0, Lcom/lvteam/LvTeamShift;->freezeFireOn:Z

    return-void
.end method

.method public static setFreezeScop(Z)V
    .locals 0

    sput-boolean p0, Lcom/lvteam/LvTeamShift;->freezeScopOn:Z

    return-void
.end method

.method public static setIgnoredSlots(Ljava/util/Collection;)V
    .locals 5

    const/16 v0, 0x100

    new-array v0, v0, [Z

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    array-length v4, v0

    if-ge v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    :cond_0
    goto :goto_0

    :cond_1
    sput-object v0, Lcom/lvteam/LvTeamShift;->ignoredSlots:[Z

    return-void
.end method

.method public static setLocalFreeze(Z)V
    .locals 2

    sput-boolean p0, Lcom/lvteam/LvTeamShift;->localFreezeOn:Z

    if-nez p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/lvteam/LvTeamShift;->heldUplink:[J

    const/4 v1, 0x0

    sput-boolean v1, Lcom/lvteam/LvTeamShift;->localHold:Z

    sput-object v0, Lcom/lvteam/LvTeamShift;->pinnedLocal:[J

    :cond_0
    return-void
.end method

.method public static setTatu(Z)V
    .locals 1

    sput-boolean p0, Lcom/lvteam/LvTeamShift;->tatuOn:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lvteam/LvTeamShift;->haveDownAnchor:Z

    return-void
.end method

.method public static setTeleportBase(Z)V
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/lvteam/LvTeamShift;->teleportBaseState:I

    :cond_0
    return-void
.end method

.method public static setTeleportSpeed(I)V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/lvteam/LvTeamShift;->teleportSpeed:I

    return-void
.end method

.method public static setWallPass(Z)V
    .locals 6

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lvteam/LvTeamShift;->wallEngaged:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/lvteam/LvTeamShift;->wallStartedAt:J

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_0

    sput-wide v2, Lcom/lvteam/LvTeamShift;->wallOffsetMm:D

    sput-boolean v0, Lcom/lvteam/LvTeamShift;->wallReleasing:Z

    sput-boolean v1, Lcom/lvteam/LvTeamShift;->wallPassOn:Z

    return-void

    :cond_0
    sput-boolean v0, Lcom/lvteam/LvTeamShift;->wallPassOn:Z

    sget-wide v4, Lcom/lvteam/LvTeamShift;->wallOffsetMm:D

    cmpl-double v4, v4, v2

    if-lez v4, :cond_1

    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/lvteam/LvTeamShift;->wallReleasing:Z

    sget-wide v0, Lcom/lvteam/LvTeamShift;->wallOffsetMm:D

    sput-wide v0, Lcom/lvteam/LvTeamShift;->wallReleaseFromMm:D

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->wallReleasing:Z

    if-nez v0, :cond_2

    sput-wide v2, Lcom/lvteam/LvTeamShift;->wallOffsetMm:D

    :cond_2
    return-void
.end method

.method public static shift(IJJJ)[J
    .locals 47

    move/from16 v0, p0

    invoke-static {}, Lcom/lvteam/LvTeamShift;->magnetActive()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget v1, Lcom/lvteam/LvTeamShift;->localShortId:I

    if-ltz v1, :cond_1

    if-ne v0, v1, :cond_1

    return-object v2

    :cond_1
    sget-object v3, Lcom/lvteam/LvTeamShift;->ignoredSlots:[Z

    if-ltz v0, :cond_2

    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-boolean v4, v3, v0

    if-eqz v4, :cond_2

    return-object v2

    :cond_2
    sget-wide v4, Lcom/lvteam/LvTeamShift;->localTs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    return-object v2

    :cond_3
    invoke-static/range {p3 .. p4}, Lcom/lvteam/LvTeamShift;->zz(J)J

    move-result-wide v4

    const-wide/16 v6, 0x294

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Lcom/lvteam/LvTeamShift;->enc(J)J

    move-result-wide v6

    sget-wide v8, Lcom/lvteam/LvTeamShift;->localX:D

    sget-wide v10, Lcom/lvteam/LvTeamShift;->localZ:D

    sget v12, Lcom/lvteam/LvTeamShift;->aimX:F

    sget v13, Lcom/lvteam/LvTeamShift;->aimZ:F

    float-to-double v14, v12

    move-object/from16 v17, v3

    float-to-double v2, v12

    mul-double/2addr v14, v2

    float-to-double v2, v13

    move/from16 v18, v1

    float-to-double v0, v13

    mul-double/2addr v2, v0

    add-double/2addr v14, v2

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v14, v0

    if-gez v0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-static/range {p1 .. p2}, Lcom/lvteam/LvTeamShift;->zz(J)J

    move-result-wide v0

    invoke-static/range {p5 .. p6}, Lcom/lvteam/LvTeamShift;->zz(J)J

    move-result-wide v2

    move-wide/from16 v19, v4

    long-to-double v4, v0

    sub-double/2addr v4, v8

    move-wide/from16 v21, v6

    long-to-double v6, v2

    sub-double/2addr v6, v10

    mul-double v23, v4, v4

    mul-double v25, v6, v6

    add-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v23

    const-wide v25, 0x407f400000000000L    # 500.0

    cmpg-double v25, v23, v25

    if-gez v25, :cond_5

    const/16 v16, 0x0

    return-object v16

    :cond_5
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v27, v4

    float-to-double v4, v12

    div-double v4, v4, v25

    move-wide/from16 v29, v6

    float-to-double v6, v13

    div-double v6, v6, v25

    mul-double v31, v4, v23

    add-double v31, v8, v31

    mul-double v33, v6, v23

    add-double v33, v10, v33

    move-wide/from16 v35, v4

    long-to-double v4, v0

    sub-double v4, v31, v4

    move-wide/from16 v37, v6

    long-to-double v6, v2

    sub-double v6, v33, v6

    mul-double v39, v4, v4

    mul-double v41, v6, v6

    add-double v39, v39, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v39

    const-wide v41, 0x40bf400000000000L    # 8000.0

    cmpl-double v16, v39, v41

    if-lez v16, :cond_6

    div-double v41, v41, v39

    move-wide/from16 v43, v8

    long-to-double v8, v0

    mul-double v45, v4, v41

    add-double v31, v8, v45

    long-to-double v8, v2

    mul-double v45, v6, v41

    add-double v33, v8, v45

    goto :goto_0

    :cond_6
    move-wide/from16 v43, v8

    :goto_0
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/lvteam/LvTeamShift;->enc(J)J

    move-result-wide v8

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->round(D)J

    move-result-wide v41

    invoke-static/range {v41 .. v42}, Lcom/lvteam/LvTeamShift;->enc(J)J

    move-result-wide v41

    move-wide/from16 v45, v0

    const/4 v0, 0x3

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide v8, v0, v1

    const/4 v1, 0x1

    aput-wide v21, v0, v1

    const/4 v1, 0x2

    aput-wide v41, v0, v1

    return-object v0
.end method

.method public static tatuActive()Z
    .locals 8

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->tatuOn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->firing:Z

    const-wide/16 v4, 0x7d0

    if-eqz v0, :cond_1

    sget-wide v6, Lcom/lvteam/LvTeamShift;->firePulseUntil:J

    sub-long v6, v2, v6

    cmp-long v0, v6, v4

    if-ltz v0, :cond_1

    sput-boolean v1, Lcom/lvteam/LvTeamShift;->firing:Z

    :cond_1
    sget-boolean v0, Lcom/lvteam/LvTeamShift;->scoping:Z

    if-eqz v0, :cond_2

    sget-wide v6, Lcom/lvteam/LvTeamShift;->scopePulseUntil:J

    sub-long v6, v2, v6

    cmp-long v0, v6, v4

    if-ltz v0, :cond_2

    sput-boolean v1, Lcom/lvteam/LvTeamShift;->scoping:Z

    :cond_2
    sget-boolean v0, Lcom/lvteam/LvTeamShift;->firing:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/lvteam/LvTeamShift;->scoping:Z

    if-nez v0, :cond_3

    sget-wide v4, Lcom/lvteam/LvTeamShift;->firePulseUntil:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    sget-wide v4, Lcom/lvteam/LvTeamShift;->scopePulseUntil:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static toggleTeleportBase()V
    .locals 2

    sget v0, Lcom/lvteam/LvTeamShift;->teleportBaseState:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sput v1, Lcom/lvteam/LvTeamShift;->teleportBaseState:I

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v1, 0x2

    sput v1, Lcom/lvteam/LvTeamShift;->teleportBaseState:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    sput v1, Lcom/lvteam/LvTeamShift;->teleportBaseState:I

    :goto_0
    return-void
.end method

.method public static transformDown([B)[B
    .locals 4

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    :cond_0
    goto :goto_2

    :cond_1
    sget-object v0, Lcom/lvteam/LvTeamShift;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/lvteam/LvTeamShift;->enemyFreezeActive()Z

    move-result v1

    sget-boolean v2, Lcom/lvteam/LvTeamShift;->freezeActive:Z

    if-eq v1, v2, :cond_2

    sput-boolean v1, Lcom/lvteam/LvTeamShift;->freezeActive:Z

    sget-object v2, Lcom/lvteam/LvTeamShift;->held:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    if-eqz v1, :cond_3

    sget-object v2, Lcom/lvteam/LvTeamShift;->live:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/lvteam/LvTeamShift;->held:Ljava/util/HashMap;

    sget-object v3, Lcom/lvteam/LvTeamShift;->live:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    sget-object v2, Lcom/lvteam/LvTeamShift;->held:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/lvteam/LvTeamShift;->live:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/lvteam/LvTeamShift;->held:Ljava/util/HashMap;

    sget-object v3, Lcom/lvteam/LvTeamShift;->live:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/lvteam/LvTeamShift;->latchLocal()V

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-static {p0, v1}, Lcom/lvteam/LvTeamShift;->rewriteSingle([BZ)[B

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_4
    invoke-static {p0, v1}, Lcom/lvteam/LvTeamShift;->rewriteBatch([BZ)[B

    move-result-object v2

    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static transformUp([B)[B
    .locals 24

    move-object/from16 v1, p0

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    array-length v6, v1

    if-ge v6, v4, :cond_1

    :cond_0
    goto/16 :goto_4

    :cond_1
    invoke-static {v1, v3}, Lcom/lvteam/LvTeamShift;->readVarint([BI)[J

    move-result-object v6

    if-nez v6, :cond_2

    return-object v5

    :cond_2
    aget-wide v7, v6, v2

    long-to-int v7, v7

    invoke-static {v1, v7}, Lcom/lvteam/LvTeamShift;->readVarint([BI)[J

    move-result-object v7

    if-nez v7, :cond_3

    return-object v5

    :cond_3
    aget-wide v8, v7, v2

    long-to-int v8, v8

    invoke-static {v1, v8}, Lcom/lvteam/LvTeamShift;->readVarint([BI)[J

    move-result-object v8

    if-nez v8, :cond_4

    return-object v5

    :cond_4
    aget-wide v9, v8, v2

    long-to-int v9, v9

    invoke-static {v1, v9}, Lcom/lvteam/LvTeamShift;->readVarint([BI)[J

    move-result-object v9

    if-nez v9, :cond_5

    return-object v5

    :cond_5
    aget-wide v10, v6, v3

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    if-lez v10, :cond_6

    const/16 v11, 0x81

    if-ge v10, v11, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sput-wide v11, Lcom/lvteam/LvTeamShift;->uplinkSidTs:J

    sput v10, Lcom/lvteam/LvTeamShift;->localShortId:I

    :cond_6
    aget-wide v11, v7, v3

    aget-wide v13, v8, v3

    aget-wide v15, v9, v3

    sget-object v17, Lcom/lvteam/LvTeamShift;->LOCK:Ljava/lang/Object;

    monitor-enter v17

    :try_start_0
    sget-boolean v18, Lcom/lvteam/LvTeamShift;->localFreezeOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v18, :cond_8

    :try_start_1
    sget-object v18, Lcom/lvteam/LvTeamShift;->heldUplink:[J

    if-nez v18, :cond_7

    aget-wide v18, v7, v3

    aget-wide v20, v8, v3

    aget-wide v22, v9, v3

    new-array v4, v4, [J

    aput-wide v18, v4, v3

    aput-wide v20, v4, v2

    aput-wide v22, v4, v0

    sput-object v4, Lcom/lvteam/LvTeamShift;->heldUplink:[J

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v6

    goto/16 :goto_3

    :cond_7
    :goto_0
    sget-object v4, Lcom/lvteam/LvTeamShift;->heldUplink:[J

    aget-wide v18, v4, v3

    move-wide/from16 v11, v18

    sget-object v4, Lcom/lvteam/LvTeamShift;->heldUplink:[J

    aget-wide v18, v4, v2

    move-wide/from16 v13, v18

    sget-object v4, Lcom/lvteam/LvTeamShift;->heldUplink:[J

    aget-wide v18, v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide/from16 v15, v18

    move-object v4, v6

    move-wide v5, v15

    goto :goto_1

    :cond_8
    :try_start_2
    sput-object v5, Lcom/lvteam/LvTeamShift;->heldUplink:[J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v6

    move-wide v5, v15

    :goto_1
    :try_start_3
    invoke-static {v13, v14}, Lcom/lvteam/LvTeamShift;->lowerY(J)J

    move-result-wide v15

    move-wide v13, v15

    invoke-static {v11, v12, v5, v6}, Lcom/lvteam/LvTeamShift;->wallPush(JJ)[J

    move-result-object v15

    if-eqz v15, :cond_9

    aget-wide v18, v15, v3

    move-wide/from16 v11, v18

    aget-wide v18, v15, v2

    move-wide/from16 v5, v18

    goto :goto_2

    :catchall_1
    move-exception v0

    move-wide v15, v5

    goto :goto_3

    :cond_9
    :goto_2
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    aget-wide v15, v7, v3

    cmp-long v15, v11, v15

    if-nez v15, :cond_a

    aget-wide v15, v8, v3

    cmp-long v15, v13, v15

    if-nez v15, :cond_a

    aget-wide v15, v9, v3

    cmp-long v15, v5, v15

    if-nez v15, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v15, v1

    add-int/lit8 v15, v15, 0x10

    invoke-direct {v0, v15}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    aget-wide v2, v4, v3

    invoke-static {v0, v2, v3}, Lcom/lvteam/LvTeamShift;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    invoke-static {v0, v11, v12}, Lcom/lvteam/LvTeamShift;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    invoke-static {v0, v13, v14}, Lcom/lvteam/LvTeamShift;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    invoke-static {v0, v5, v6}, Lcom/lvteam/LvTeamShift;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    const/4 v2, 0x1

    aget-wide v2, v9, v2

    long-to-int v2, v2

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    :catchall_2
    move-exception v0

    move-object v4, v6

    :goto_3
    :try_start_4
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3

    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static wallPush(JJ)[J
    .locals 18

    const/4 v0, 0x1

    sget-boolean v1, Lcom/lvteam/LvTeamShift;->wallPassOn:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/lvteam/LvTeamShift;->wallReleasing:Z

    if-nez v1, :cond_0

    sput-wide v4, Lcom/lvteam/LvTeamShift;->wallOffsetMm:D

    sput-boolean v3, Lcom/lvteam/LvTeamShift;->wallEngaged:Z

    return-object v2

    :cond_0
    sget-boolean v1, Lcom/lvteam/LvTeamShift;->wallEngaged:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/lvteam/LvTeamShift;->wallReleasing:Z

    if-eqz v1, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    sget-object v1, Lcom/lvteam/LvTeamShift;->dir:[F

    aget v6, v1, v3

    aget v7, v1, v0

    goto :goto_1

    :goto_0
    sget v6, Lcom/lvteam/LvTeamShift;->wallLockedX:F

    sget v7, Lcom/lvteam/LvTeamShift;->wallLockedZ:F

    :goto_1
    float-to-double v8, v6

    float-to-double v10, v6

    mul-double/2addr v8, v10

    float-to-double v10, v7

    float-to-double v12, v7

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpg-double v1, v8, v10

    if-gez v1, :cond_3

    return-object v2

    :cond_3
    float-to-double v10, v6

    div-double/2addr v10, v8

    double-to-float v1, v10

    float-to-double v10, v7

    div-double/2addr v10, v8

    double-to-float v6, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sget-wide v12, Lcom/lvteam/LvTeamShift;->wallStartedAt:J

    sub-long/2addr v10, v12

    long-to-double v10, v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double/2addr v10, v12

    sget-boolean v7, Lcom/lvteam/LvTeamShift;->wallReleasing:Z

    if-eqz v7, :cond_4

    sget-wide v12, Lcom/lvteam/LvTeamShift;->wallReleaseFromMm:D

    sub-double/2addr v12, v10

    cmpg-double v7, v12, v4

    if-gtz v7, :cond_6

    sput-boolean v3, Lcom/lvteam/LvTeamShift;->wallReleasing:Z

    sput-wide v4, Lcom/lvteam/LvTeamShift;->wallOffsetMm:D

    return-object v2

    :cond_4
    move-wide v12, v10

    sget v2, Lcom/lvteam/LvTeamShift;->wallDistanceMm:I

    int-to-double v4, v2

    cmpl-double v2, v12, v4

    if-ltz v2, :cond_5

    sget v2, Lcom/lvteam/LvTeamShift;->wallDistanceMm:I

    int-to-double v12, v2

    sget-boolean v2, Lcom/lvteam/LvTeamShift;->wallEngaged:Z

    if-nez v2, :cond_6

    sput v1, Lcom/lvteam/LvTeamShift;->wallLockedX:F

    sput v6, Lcom/lvteam/LvTeamShift;->wallLockedZ:F

    sput-boolean v0, Lcom/lvteam/LvTeamShift;->wallEngaged:Z

    invoke-static {}, Lcom/lvteam/LvShiftOverlay;->refreshWall()V

    goto :goto_2

    :cond_5
    sput v1, Lcom/lvteam/LvTeamShift;->wallLockedX:F

    sput v6, Lcom/lvteam/LvTeamShift;->wallLockedZ:F

    :cond_6
    :goto_2
    sput-wide v12, Lcom/lvteam/LvTeamShift;->wallOffsetMm:D

    invoke-static/range {p0 .. p1}, Lcom/lvteam/LvTeamShift;->zz(J)J

    move-result-wide v4

    float-to-double v14, v1

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    add-long/2addr v4, v14

    invoke-static/range {p2 .. p3}, Lcom/lvteam/LvTeamShift;->zz(J)J

    move-result-wide v14

    move v7, v1

    float-to-double v0, v6

    mul-double/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    add-long/2addr v14, v0

    invoke-static {v4, v5}, Lcom/lvteam/LvTeamShift;->enc(J)J

    move-result-wide v0

    invoke-static {v14, v15}, Lcom/lvteam/LvTeamShift;->enc(J)J

    move-result-wide v16

    const/4 v2, 0x2

    new-array v2, v2, [J

    aput-wide v0, v2, v3

    const/4 v0, 0x1

    aput-wide v16, v2, v0

    return-object v2
.end method

.method public static writeVarint(Ljava/io/ByteArrayOutputStream;J)V
    .locals 4

    nop

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public static zz(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method
