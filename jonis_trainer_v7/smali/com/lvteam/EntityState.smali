.class public final Lcom/lvteam/EntityState;
.super Ljava/lang/Object;
.source "EntityState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lvteam/EntityState$Record;,
        Lcom/lvteam/EntityState$Position;
    }
.end annotation


# static fields
.field public static final SHARED:Lcom/lvteam/EntityState;


# instance fields
.field public volatile cameraValid:Z

.field public volatile cameraX:F

.field public volatile cameraY:F

.field public volatile cameraZ:F

.field public final entities:Ljava/util/Map;

.field public final entityToSlot:Ljava/util/Map;

.field public volatile forwardX:F

.field public volatile forwardY:F

.field public volatile forwardZ:F

.field public lastPruneAt:J

.field public lastSweepAt:J

.field public volatile localSlot:I

.field public final names:Ljava/util/Map;

.field public final publishedIds:Ljava/util/HashSet;

.field public final rawSlotPositions:Ljava/util/Map;

.field public final slotTeams:Ljava/util/Map;

.field public final slotToEntity:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$DG_3luMCTUKCQ0KDZ8U49Mo1xA8(Lcom/lvteam/EntityState;ILcom/lvteam/EntityState$Position;ZIILjava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lcom/lvteam/EntityState;->lambda$installRelation$2(ILcom/lvteam/EntityState$Position;ZIILjava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JN_-Z_h_0_Cw6VcqH9uBqTD2SgU(Ljava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;
    .locals 0

    invoke-static {p0, p1}, Lcom/lvteam/EntityState;->lambda$removeName$1(Ljava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Pll8D42Y4NO_YqHk1kjNKlDQYfE(Ljava/lang/String;Ljava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/lvteam/EntityState;->lambda$putName$0(Ljava/lang/String;Ljava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_LRAWWLX8c6jEBk8FdbjstPybbk(FFFJLjava/lang/Integer;Lcom/lvteam/EntityState$Position;)Lcom/lvteam/EntityState$Position;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/lvteam/EntityState;->lambda$updatePosition$3(FFFJLjava/lang/Integer;Lcom/lvteam/EntityState$Position;)Lcom/lvteam/EntityState$Position;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eqe53X0SZGt4QI5s41eCUE03c9k(JLjava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/lvteam/EntityState;->lambda$pruneStalePositions$6(JLjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nlwOZFDv5I2hmKgNmC1wkRmXeDk(FFFJLjava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/lvteam/EntityState;->lambda$updatePosition$4(FFFJLjava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o0o5NyvZl3ThjeCrgowb8bmgQMs(Lcom/lvteam/EntityState;IILjava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lvteam/EntityState;->lambda$setLocalSlot$5(IILjava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lvteam/EntityState;

    invoke-direct {v0}, Lcom/lvteam/EntityState;-><init>()V

    sput-object v0, Lcom/lvteam/EntityState;->SHARED:Lcom/lvteam/EntityState;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lvteam/EntityState;->entities:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lvteam/EntityState;->names:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lvteam/EntityState;->slotToEntity:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lvteam/EntityState;->entityToSlot:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lvteam/EntityState;->slotTeams:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lvteam/EntityState;->rawSlotPositions:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lvteam/EntityState;->publishedIds:Ljava/util/HashSet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/lvteam/EntityState;->localSlot:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lvteam/EntityState;->forwardZ:F

    return-void
.end method

.method public static isPlausibleMove(FFFJFFFJ)Z
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-float v0, p5, p0

    sub-float v2, p6, p1

    sub-float v3, p7, p2

    mul-float v4, v0, v0

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    const-wide/16 v5, 0x1

    sub-long v7, p8, p3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const v7, 0x476a6000    # 60000.0f

    long-to-float v8, v5

    mul-float/2addr v8, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v8, v7

    const v7, 0x459c4000    # 5000.0f

    add-float/2addr v8, v7

    cmpg-float v7, v4, v8

    if-gtz v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$pruneStalePositions$6(JLjava/util/Map$Entry;)Z
    .locals 4

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lvteam/EntityState$Position;

    iget-wide v0, v0, Lcom/lvteam/EntityState$Position;->updatedAt:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$putName$0(Ljava/lang/String;Ljava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;
    .locals 1

    invoke-virtual {p2, p0}, Lcom/lvteam/EntityState$Record;->withName(Ljava/lang/String;)Lcom/lvteam/EntityState$Record;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$removeName$1(Ljava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lvteam/EntityState$Record;->withName(Ljava/lang/String;)Lcom/lvteam/EntityState$Record;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updatePosition$3(FFFJLjava/lang/Integer;Lcom/lvteam/EntityState$Position;)Lcom/lvteam/EntityState$Position;
    .locals 11

    move-object/from16 v0, p6

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/lvteam/EntityState$Position;->x:F

    iget v2, v0, Lcom/lvteam/EntityState$Position;->y:F

    iget v3, v0, Lcom/lvteam/EntityState$Position;->z:F

    iget-wide v4, v0, Lcom/lvteam/EntityState$Position;->updatedAt:J

    move v6, p0

    move v7, p1

    move v8, p2

    move-wide v9, p3

    invoke-static/range {v1 .. v10}, Lcom/lvteam/EntityState;->isPlausibleMove(FFFJFFFJ)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1

    :goto_0
    new-instance v1, Lcom/lvteam/EntityState$Position;

    move-object v2, v1

    move v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/lvteam/EntityState$Position;-><init>(FFFJ)V

    :goto_1
    return-object v1
.end method

.method public static synthetic lambda$updatePosition$4(FFFJLjava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;
    .locals 17

    move-object/from16 v6, p6

    iget v7, v6, Lcom/lvteam/EntityState$Record;->x:F

    iget v8, v6, Lcom/lvteam/EntityState$Record;->y:F

    iget v9, v6, Lcom/lvteam/EntityState$Record;->z:F

    iget-wide v10, v6, Lcom/lvteam/EntityState$Record;->updatedAt:J

    move/from16 v12, p0

    move/from16 v13, p1

    move/from16 v14, p2

    move-wide/from16 v15, p3

    invoke-static/range {v7 .. v16}, Lcom/lvteam/EntityState;->isPlausibleMove(FFFJFFFJ)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p6

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lvteam/EntityState$Record;->withPosition(FFFJ)Lcom/lvteam/EntityState$Record;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0
.end method

.method public static publish(Lcom/lvteam/EspEngine;ILjava/lang/String;FFFFZZJ)Z
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, v0, p9

    const-wide/16 v2, 0x1f40

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    :cond_0
    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_0
    move v9, v0

    goto :goto_1

    :cond_1
    const/high16 v0, 0x43480000    # 200.0f

    div-float v0, p6, v0

    goto :goto_0

    :goto_1
    const v8, 0x44dac000    # 1750.0f

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    invoke-virtual/range {v2 .. v13}, Lcom/lvteam/EspEngine;->updateEntity(ILjava/lang/String;FFFFFZZJ)V

    if-nez p7, :cond_2

    if-nez p8, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static renderId(I)I
    .locals 1

    const/high16 v0, 0x1000000

    or-int/2addr v0, p0

    return v0
.end method

.method public static shared()Lcom/lvteam/EntityState;
    .locals 1

    sget-object v0, Lcom/lvteam/EntityState;->SHARED:Lcom/lvteam/EntityState;

    return-object v0
.end method

.method public static slotOfRenderId(I)I
    .locals 2

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public horizontalForward()[F
    .locals 6

    iget v0, p0, Lcom/lvteam/EntityState;->forwardX:F

    iget v1, p0, Lcom/lvteam/EntityState;->forwardZ:F

    invoke-static {v0}, Lcom/lvteam/EntityState$$ExternalSyntheticBackport4;->m(F)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/lvteam/EntityState$$ExternalSyntheticBackport4;->m(F)Z

    move-result v2

    if-eqz v2, :cond_0

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x3fa99999a0000000L    # 0.05000000074505806

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2

    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public installRelation(III)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v8, p2

    const v0, 0xffffff

    and-int v9, p1, v0

    const/4 v0, 0x1

    if-lt v8, v0, :cond_0

    const/16 v1, 0x7f

    if-gt v8, v1, :cond_0

    if-nez v9, :cond_1

    :cond_0
    goto/16 :goto_2

    :cond_1
    iget-object v1, v7, Lcom/lvteam/EntityState;->slotToEntity:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v9, :cond_2

    iget-object v1, v7, Lcom/lvteam/EntityState;->entityToSlot:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v10, v2}, Lcom/lvteam/EntityState$$ExternalSyntheticApiModelOutline2;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, v7, Lcom/lvteam/EntityState;->entityToSlot:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v8, :cond_3

    iget-object v1, v7, Lcom/lvteam/EntityState;->slotToEntity:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v11, v2}, Lcom/lvteam/EntityState$$ExternalSyntheticApiModelOutline2;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, v7, Lcom/lvteam/EntityState;->slotTeams:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/lvteam/EntityState;->rawSlotPositions:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/lvteam/EntityState$Position;

    iget v1, v7, Lcom/lvteam/EntityState;->localSlot:I

    if-ne v8, v1, :cond_4

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v13, v7, Lcom/lvteam/EntityState;->entities:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Lcom/lvteam/EntityState$$ExternalSyntheticLambda10;

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v9

    move-object v3, v12

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/lvteam/EntityState$$ExternalSyntheticLambda10;-><init>(Lcom/lvteam/EntityState;ILcom/lvteam/EntityState$Position;ZII)V

    invoke-static {v13, v14, v15}, Lcom/lvteam/EntityState$$ExternalSyntheticApiModelOutline1;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void

    :goto_2
    return-void
.end method

.method public final isAlly(ILjava/lang/Integer;)Z
    .locals 2

    iget-object v0, p0, Lcom/lvteam/EntityState;->slotTeams:Ljava/util/Map;

    iget v1, p0, Lcom/lvteam/EntityState;->localSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/lvteam/EntityState;->localSlot:I

    if-eq p1, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final synthetic lambda$installRelation$2(ILcom/lvteam/EntityState$Position;ZIILjava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p7

    if-nez v3, :cond_4

    new-instance v16, Lcom/lvteam/EntityState$Record;

    iget-object v4, v0, Lcom/lvteam/EntityState;->names:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    iget v5, v1, Lcom/lvteam/EntityState$Position;->x:F

    move v7, v5

    :goto_0
    if-nez v1, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    iget v5, v1, Lcom/lvteam/EntityState$Position;->y:F

    move v8, v5

    :goto_1
    if-nez v1, :cond_2

    :goto_2
    move v9, v4

    goto :goto_3

    :cond_2
    iget v4, v1, Lcom/lvteam/EntityState$Position;->z:F

    goto :goto_2

    :goto_3
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/lvteam/EntityState;->isAlly(ILjava/lang/Integer;)Z

    move-result v12

    if-nez v1, :cond_3

    const-wide/16 v4, 0x0

    :goto_4
    move-wide v14, v4

    goto :goto_5

    :cond_3
    iget-wide v4, v1, Lcom/lvteam/EntityState$Position;->updatedAt:J

    goto :goto_4

    :goto_5
    const/high16 v10, 0x7fc00000    # Float.NaN

    move-object/from16 v4, v16

    move/from16 v5, p1

    move/from16 v11, p3

    move/from16 v13, p5

    invoke-direct/range {v4 .. v15}, Lcom/lvteam/EntityState$Record;-><init>(ILjava/lang/String;FFFFZZIJ)V

    move/from16 v7, p3

    goto :goto_6

    :cond_4
    iget-object v4, v0, Lcom/lvteam/EntityState;->names:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/lvteam/EntityState;->isAlly(ILjava/lang/Integer;)Z

    move-result v5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move/from16 v7, p3

    invoke-virtual {v3, v4, v7, v5, v6}, Lcom/lvteam/EntityState$Record;->withMetadata(Ljava/lang/String;ZZLjava/lang/Integer;)Lcom/lvteam/EntityState$Record;

    move-result-object v16

    :goto_6
    return-object v16
.end method

.method public final synthetic lambda$setLocalSlot$5(IILjava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;
    .locals 5

    iget-object v0, p4, Lcom/lvteam/EntityState$Record;->name:Ljava/lang/String;

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/lvteam/EntityState;->slotTeams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, v2}, Lcom/lvteam/EntityState;->isAlly(ILjava/lang/Integer;)Z

    move-result v2

    iget-object v3, p0, Lcom/lvteam/EntityState;->slotTeams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {p4, v0, v1, v2, v3}, Lcom/lvteam/EntityState$Record;->withMetadata(Ljava/lang/String;ZZLjava/lang/Integer;)Lcom/lvteam/EntityState$Record;

    move-result-object v0

    return-object v0
.end method

.method public localSlot()I
    .locals 1

    iget v0, p0, Lcom/lvteam/EntityState;->localSlot:I

    return v0
.end method

.method public final pruneStalePositions()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lvteam/EntityState;->lastPruneAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/lvteam/EntityState;->lastPruneAt:J

    iget-object v2, p0, Lcom/lvteam/EntityState;->rawSlotPositions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/lvteam/EntityState$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0, v1}, Lcom/lvteam/EntityState$$ExternalSyntheticLambda11;-><init>(J)V

    invoke-static {v2, v3}, Lcom/lvteam/EntityState$$ExternalSyntheticApiModelOutline3;->m(Ljava/util/Set;Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public publishTo(Lcom/lvteam/EspEngine;)V
    .locals 26

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/lvteam/EntityState;->pruneStalePositions()V

    iget-boolean v1, v0, Lcom/lvteam/EntityState;->cameraValid:Z

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/lvteam/EspEngine;->clearCamera()V

    return-void

    :cond_0
    iget v3, v0, Lcom/lvteam/EntityState;->cameraX:F

    iget v4, v0, Lcom/lvteam/EntityState;->cameraY:F

    iget v5, v0, Lcom/lvteam/EntityState;->cameraZ:F

    iget v6, v0, Lcom/lvteam/EntityState;->forwardX:F

    iget v7, v0, Lcom/lvteam/EntityState;->forwardY:F

    iget v8, v0, Lcom/lvteam/EntityState;->forwardZ:F

    const/high16 v9, 0x428c0000    # 70.0f

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/lvteam/EspEngine;->updateCamera(FFFFFFF)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/lvteam/EntityState;->lastSweepAt:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x190

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iput-wide v1, v0, Lcom/lvteam/EntityState;->lastSweepAt:J

    iget-object v5, v0, Lcom/lvteam/EntityState;->publishedIds:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    :cond_2
    iget-object v5, v0, Lcom/lvteam/EntityState;->entities:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lvteam/EntityState$Record;

    iget-object v7, v0, Lcom/lvteam/EntityState;->entityToSlot:Ljava/util/Map;

    iget v8, v6, Lcom/lvteam/EntityState$Record;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iget-wide v8, v6, Lcom/lvteam/EntityState$Record;->updatedAt:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    iget v8, v6, Lcom/lvteam/EntityState$Record;->id:I

    :goto_2
    move v10, v8

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/lvteam/EntityState;->renderId(I)I

    move-result v8

    goto :goto_2

    :goto_3
    iget-object v11, v6, Lcom/lvteam/EntityState$Record;->name:Ljava/lang/String;

    iget v12, v6, Lcom/lvteam/EntityState$Record;->x:F

    iget v13, v6, Lcom/lvteam/EntityState$Record;->y:F

    iget v14, v6, Lcom/lvteam/EntityState$Record;->z:F

    iget v15, v6, Lcom/lvteam/EntityState$Record;->health:F

    iget-boolean v8, v6, Lcom/lvteam/EntityState$Record;->local:Z

    iget-boolean v9, v6, Lcom/lvteam/EntityState$Record;->ally:Z

    move-object/from16 v21, v5

    iget-wide v4, v6, Lcom/lvteam/EntityState$Record;->updatedAt:J

    move/from16 v17, v9

    move-object/from16 v9, p1

    move/from16 v16, v8

    move-wide/from16 v18, v4

    invoke-static/range {v9 .. v19}, Lcom/lvteam/EntityState;->publish(Lcom/lvteam/EspEngine;ILjava/lang/String;FFFFZZJ)Z

    move-result v4

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    iget-object v5, v0, Lcom/lvteam/EntityState;->publishedIds:Ljava/util/HashSet;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v5, v21

    goto :goto_1

    :cond_6
    iget v4, v0, Lcom/lvteam/EntityState;->localSlot:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_7

    iget-object v5, v0, Lcom/lvteam/EntityState;->slotTeams:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    sub-long/2addr v6, v8

    iget-object v8, v0, Lcom/lvteam/EntityState;->rawSlotPositions:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v4, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/lvteam/EntityState;->slotTeams:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_5

    :cond_9
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lvteam/EntityState$Position;

    iget-wide v12, v11, Lcom/lvteam/EntityState$Position;->updatedAt:J

    cmp-long v12, v12, v6

    if-gez v12, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v10}, Lcom/lvteam/EntityState;->renderId(I)I

    move-result v12

    iget v15, v11, Lcom/lvteam/EntityState$Position;->x:F

    iget v14, v11, Lcom/lvteam/EntityState$Position;->y:F

    iget v13, v11, Lcom/lvteam/EntityState$Position;->z:F

    const/16 v21, 0x0

    move-wide/from16 v24, v1

    iget-wide v1, v11, Lcom/lvteam/EntityState$Position;->updatedAt:J

    const/16 v16, 0x0

    const/high16 v19, 0x7fc00000    # Float.NaN

    const/16 v20, 0x0

    move/from16 v18, v13

    move-object/from16 v13, p1

    move/from16 v17, v14

    move v14, v12

    move/from16 v22, v15

    move-object/from16 v15, v16

    move/from16 v16, v22

    move-wide/from16 v22, v1

    invoke-static/range {v13 .. v23}, Lcom/lvteam/EntityState;->publish(Lcom/lvteam/EspEngine;ILjava/lang/String;FFFFZZJ)Z

    move-result v1

    if-eqz v3, :cond_b

    if-eqz v1, :cond_b

    iget-object v2, v0, Lcom/lvteam/EntityState;->publishedIds:Ljava/util/HashSet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    move-wide/from16 v1, v24

    goto :goto_5

    :cond_c
    move-wide/from16 v24, v1

    if-eqz v3, :cond_d

    iget-object v1, v0, Lcom/lvteam/EntityState;->publishedIds:Ljava/util/HashSet;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/lvteam/EspEngine;->retainOnly(Ljava/util/Set;)V

    goto :goto_6

    :cond_d
    move-object/from16 v2, p1

    :goto_6
    return-void
.end method

.method public putName(ILjava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const v0, 0xffffff

    and-int/2addr v0, p1

    iget-object v1, p0, Lcom/lvteam/EntityState;->names:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lvteam/EntityState;->entities:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/lvteam/EntityState$$ExternalSyntheticLambda8;

    invoke-direct {v3, p2}, Lcom/lvteam/EntityState$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/lvteam/EntityState$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void

    :goto_0
    return-void
.end method

.method public removeName(I)V
    .locals 4

    const v0, 0xffffff

    and-int/2addr v0, p1

    iget-object v1, p0, Lcom/lvteam/EntityState;->names:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lvteam/EntityState;->entities:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/lvteam/EntityState$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lcom/lvteam/EntityState$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/lvteam/EntityState$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public removeRelation(II)V
    .locals 4

    const v0, 0xffffff

    and-int/2addr v0, p1

    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    const/16 v1, 0x7f

    if-gt p2, v1, :cond_0

    iget-object v1, p0, Lcom/lvteam/EntityState;->slotToEntity:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lvteam/EntityState$$ExternalSyntheticApiModelOutline2;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lvteam/EntityState;->slotTeams:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lvteam/EntityState;->entityToSlot:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lvteam/EntityState$$ExternalSyntheticApiModelOutline2;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/lvteam/EntityState;->entities:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_0
    return-void
.end method

.method public setLocalSlot(I)V
    .locals 7

    iput p1, p0, Lcom/lvteam/EntityState;->localSlot:I

    iget-object v0, p0, Lcom/lvteam/EntityState;->entityToSlot:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/lvteam/EntityState;->entities:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/lvteam/EntityState$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v3, p1}, Lcom/lvteam/EntityState$$ExternalSyntheticLambda5;-><init>(Lcom/lvteam/EntityState;II)V

    invoke-static {v4, v5, v6}, Lcom/lvteam/EntityState$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateCamera(FFFFFF)V
    .locals 3

    mul-float v0, p4, p4

    mul-float v1, p5, p5

    add-float/2addr v0, v1

    mul-float v1, p6, p6

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {p1}, Lcom/lvteam/EntityState$$ExternalSyntheticBackport4;->m(F)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Lcom/lvteam/EntityState$$ExternalSyntheticBackport4;->m(F)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p3}, Lcom/lvteam/EntityState$$ExternalSyntheticBackport4;->m(F)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/lvteam/EntityState$$ExternalSyntheticBackport4;->m(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/lvteam/EntityState;->cameraX:F

    iput p2, p0, Lcom/lvteam/EntityState;->cameraY:F

    iput p3, p0, Lcom/lvteam/EntityState;->cameraZ:F

    iput p4, p0, Lcom/lvteam/EntityState;->forwardX:F

    iput p5, p0, Lcom/lvteam/EntityState;->forwardY:F

    iput p6, p0, Lcom/lvteam/EntityState;->forwardZ:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lvteam/EntityState;->cameraValid:Z

    invoke-static {p4, p6}, Lcom/lvteam/LvTeamShift;->setDir(FF)V

    invoke-static {p4, p5, p6}, Lcom/lvteam/LvTeamShift;->setDir3D(FFF)V

    float-to-double v1, p1

    sput-wide v1, Lcom/lvteam/LvTeamShift;->localX:D

    float-to-double v1, p2

    sput-wide v1, Lcom/lvteam/LvTeamShift;->localY:D

    float-to-double v1, p3

    sput-wide v1, Lcom/lvteam/LvTeamShift;->localZ:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/lvteam/LvTeamShift;->localTs:J

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public updatePosition(IFFF)I
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7f

    if-le v1, v2, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/lvteam/EntityState;->slotToEntity:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    if-eqz v2, :cond_2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/lvteam/EntityState;->entityToSlot:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/lvteam/EntityState;->entities:Ljava/util/Map;

    new-instance v12, Lcom/lvteam/EntityState$$ExternalSyntheticLambda7;

    move-object v4, v12

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/lvteam/EntityState$$ExternalSyntheticLambda7;-><init>(FFFJ)V

    invoke-static {v3, v2, v12}, Lcom/lvteam/EntityState$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    :goto_0
    iget-object v12, v0, Lcom/lvteam/EntityState;->rawSlotPositions:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v14, Lcom/lvteam/EntityState$$ExternalSyntheticLambda6;

    move-object v4, v14

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/lvteam/EntityState$$ExternalSyntheticLambda6;-><init>(FFFJ)V

    invoke-static {v12, v13, v14}, Lcom/lvteam/EntityState$$ExternalSyntheticApiModelOutline1;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return v3

    :goto_1
    return v3
.end method
