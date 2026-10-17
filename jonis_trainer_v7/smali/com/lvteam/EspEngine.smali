.class public final Lcom/lvteam/EspEngine;
.super Ljava/lang/Object;
.source "EspEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lvteam/EspEngine$Camera;,
        Lcom/lvteam/EspEngine$WorldEntity;,
        Lcom/lvteam/EspEngine$ScreenPoint;
    }
.end annotation


# instance fields
.field public volatile camera:Lcom/lvteam/EspEngine$Camera;

.field public final entities:Ljava/util/concurrent/ConcurrentHashMap;

.field public lastProjectionReportAt:J


# direct methods
.method public static synthetic $r8$lambda$IJyx8Ld8JeHLSZxY-ah2ky6ZkrU(JLjava/lang/String;FFFFFLjava/lang/Integer;Lcom/lvteam/EspEngine$WorldEntity;)Lcom/lvteam/EspEngine$WorldEntity;
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/lvteam/EspEngine;->lambda$updateEntity$0(JLjava/lang/String;FFFFFLjava/lang/Integer;Lcom/lvteam/EspEngine$WorldEntity;)Lcom/lvteam/EspEngine$WorldEntity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$alW9ZeXJdl64mycoNSS_jRLppKk(Lcom/lvteam/EspOverlayView$Entity;)D
    .locals 2

    invoke-static {p0}, Lcom/lvteam/EspEngine;->lambda$project$1(Lcom/lvteam/EspOverlayView$Entity;)D

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lvteam/EspEngine;->entities:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic lambda$project$1(Lcom/lvteam/EspOverlayView$Entity;)D
    .locals 2

    iget v0, p0, Lcom/lvteam/EspOverlayView$Entity;->distanceMeters:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public static synthetic lambda$updateEntity$0(JLjava/lang/String;FFFFFLjava/lang/Integer;Lcom/lvteam/EspEngine$WorldEntity;)Lcom/lvteam/EspEngine$WorldEntity;
    .locals 12

    move-object/from16 v10, p9

    if-eqz v10, :cond_0

    iget-wide v0, v10, Lcom/lvteam/EspEngine$WorldEntity;->sourceUpdatedAt:J

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    move-object v11, v10

    goto :goto_0

    :cond_0
    new-instance v11, Lcom/lvteam/EspEngine$WorldEntity;

    move-object v0, v11

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-wide v7, p0

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/lvteam/EspEngine$WorldEntity;-><init>(Ljava/lang/String;FFFFFJLcom/lvteam/EspEngine$WorldEntity;)V

    :goto_0
    return-object v11
.end method


# virtual methods
.method public clearCamera()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lvteam/EspEngine;->camera:Lcom/lvteam/EspEngine$Camera;

    return-void
.end method

.method public project(II)Ljava/util/Collection;
    .locals 40

    move-object/from16 v0, p0

    move/from16 v9, p1

    move/from16 v10, p2

    iget-object v11, v0, Lcom/lvteam/EspEngine;->camera:Lcom/lvteam/EspEngine$Camera;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v1

    if-eqz v11, :cond_f

    if-lez v9, :cond_f

    if-gtz v10, :cond_0

    move-object v4, v12

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x1f40

    sub-long v13, v1, v3

    int-to-float v1, v9

    int-to-float v2, v10

    div-float v15, v1, v2

    int-to-double v1, v10

    iget v3, v11, Lcom/lvteam/EspEngine$Camera;->verticalFov:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v3, v3, v16

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v8, v1

    iget-object v1, v0, Lcom/lvteam/EspEngine;->entities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ljava/util/Map$Entry;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/lvteam/EspEngine$WorldEntity;

    iget-wide v1, v7, Lcom/lvteam/EspEngine$WorldEntity;->updatedAt:J

    cmp-long v1, v1, v13

    if-ltz v1, :cond_c

    iget v1, v7, Lcom/lvteam/EspEngine$WorldEntity;->health:F

    const/16 v19, 0x0

    cmpl-float v1, v1, v19

    if-nez v1, :cond_1

    move-object v0, v7

    move/from16 v26, v8

    move-object v4, v12

    move-wide/from16 v23, v13

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v7, Lcom/lvteam/EspEngine$WorldEntity;->updatedAt:J

    sub-long/2addr v1, v3

    long-to-float v6, v1

    const/high16 v1, 0x437a0000    # 250.0f

    div-float v2, v6, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v4, v2, v2

    mul-float v5, v2, v16

    const/high16 v20, 0x40400000    # 3.0f

    sub-float v5, v20, v5

    mul-float v21, v4, v5

    iget v2, v7, Lcom/lvteam/EspEngine$WorldEntity;->previousX:F

    iget v4, v7, Lcom/lvteam/EspEngine$WorldEntity;->x:F

    iget v5, v7, Lcom/lvteam/EspEngine$WorldEntity;->previousX:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v21

    add-float/2addr v2, v4

    iget v4, v7, Lcom/lvteam/EspEngine$WorldEntity;->previousY:F

    iget v5, v7, Lcom/lvteam/EspEngine$WorldEntity;->y:F

    iget v1, v7, Lcom/lvteam/EspEngine$WorldEntity;->previousY:F

    sub-float/2addr v5, v1

    mul-float v5, v5, v21

    add-float/2addr v4, v5

    iget v1, v7, Lcom/lvteam/EspEngine$WorldEntity;->previousZ:F

    iget v5, v7, Lcom/lvteam/EspEngine$WorldEntity;->z:F

    iget v3, v7, Lcom/lvteam/EspEngine$WorldEntity;->previousZ:F

    sub-float/2addr v5, v3

    mul-float v5, v5, v21

    add-float/2addr v1, v5

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v5, v21, v3

    if-ltz v5, :cond_2

    const v5, 0x44098000    # 550.0f

    cmpg-float v5, v6, v5

    if-gez v5, :cond_2

    const/high16 v5, 0x437a0000    # 250.0f

    sub-float v5, v6, v5

    const/high16 v22, 0x43960000    # 300.0f

    div-float v22, v5, v22

    sub-float v3, v3, v22

    move/from16 v22, v6

    iget v6, v7, Lcom/lvteam/EspEngine$WorldEntity;->velocityX:F

    mul-float/2addr v6, v5

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    iget v6, v7, Lcom/lvteam/EspEngine$WorldEntity;->velocityY:F

    mul-float/2addr v6, v5

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    iget v6, v7, Lcom/lvteam/EspEngine$WorldEntity;->velocityZ:F

    mul-float/2addr v6, v5

    mul-float/2addr v6, v3

    add-float/2addr v1, v6

    move v6, v1

    move v5, v2

    goto :goto_1

    :cond_2
    move/from16 v22, v6

    move v6, v1

    move v5, v2

    :goto_1
    const/high16 v1, 0x43480000    # 200.0f

    add-float v3, v4, v1

    move-object v1, v11

    move v2, v5

    move-wide/from16 v23, v13

    move v13, v4

    move v4, v6

    move v14, v5

    move/from16 v5, p1

    move/from16 v25, v6

    move/from16 v6, p2

    move-object v0, v7

    move v7, v8

    move/from16 v26, v8

    move v8, v15

    invoke-virtual/range {v1 .. v8}, Lcom/lvteam/EspEngine$Camera;->project(FFFIIFF)Lcom/lvteam/EspEngine$ScreenPoint;

    move-result-object v8

    iget v1, v0, Lcom/lvteam/EspEngine$WorldEntity;->height:F

    sub-float v3, v13, v1

    move-object v1, v11

    move v2, v14

    move/from16 v4, v25

    move/from16 v7, v26

    move-object/from16 v27, v12

    move-object v12, v8

    move v8, v15

    invoke-virtual/range {v1 .. v8}, Lcom/lvteam/EspEngine$Camera;->project(FFFIIFF)Lcom/lvteam/EspEngine$ScreenPoint;

    move-result-object v8

    if-eqz v8, :cond_b

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    move-wide/from16 v13, v23

    move/from16 v8, v26

    move-object/from16 v12, v27

    goto/16 :goto_0

    :cond_3
    iget v1, v8, Lcom/lvteam/EspEngine$ScreenPoint;->y:F

    iget v2, v12, Lcom/lvteam/EspEngine$ScreenPoint;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v37

    cmpg-float v1, v37, v20

    if-ltz v1, :cond_a

    int-to-float v1, v10

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    cmpl-float v1, v37, v1

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    move-wide/from16 v13, v23

    move/from16 v8, v26

    move-object/from16 v12, v27

    goto/16 :goto_0

    :cond_4
    const v1, 0x3ed70a3d    # 0.42f

    mul-float v20, v37, v1

    move/from16 v7, v25

    invoke-virtual {v11, v14, v13, v7}, Lcom/lvteam/EspEngine$Camera;->distanceTo(FFF)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v25, v1, v2

    const/high16 v1, 0x43200000    # 160.0f

    cmpl-float v1, v25, v1

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    move-wide/from16 v13, v23

    move/from16 v8, v26

    move-object/from16 v12, v27

    goto/16 :goto_0

    :cond_5
    const/high16 v1, 0x42c80000    # 100.0f

    add-float v4, v13, v1

    iget v1, v0, Lcom/lvteam/EspEngine$WorldEntity;->height:F

    div-float v1, v1, v16

    sub-float v3, v4, v1

    move-object v1, v11

    move v2, v14

    move v4, v7

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v38, v7

    move/from16 v7, v26

    move/from16 v39, v13

    move-object v13, v8

    move v8, v15

    invoke-virtual/range {v1 .. v8}, Lcom/lvteam/EspEngine$Camera;->project(FFFIIFF)Lcom/lvteam/EspEngine$ScreenPoint;

    move-result-object v1

    if-eqz v1, :cond_6

    iget v2, v1, Lcom/lvteam/EspEngine$ScreenPoint;->x:F

    goto :goto_2

    :cond_6
    iget v2, v13, Lcom/lvteam/EspEngine$ScreenPoint;->x:F

    iget v3, v12, Lcom/lvteam/EspEngine$ScreenPoint;->x:F

    add-float/2addr v2, v3

    div-float v2, v2, v16

    :goto_2
    div-float v3, v20, v16

    add-float/2addr v3, v2

    cmpg-float v3, v3, v19

    if-ltz v3, :cond_9

    div-float v3, v20, v16

    sub-float v3, v2, v3

    int-to-float v4, v9

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_9

    iget v3, v13, Lcom/lvteam/EspEngine$ScreenPoint;->y:F

    iget v4, v12, Lcom/lvteam/EspEngine$ScreenPoint;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    cmpg-float v3, v3, v19

    if-ltz v3, :cond_8

    iget v3, v13, Lcom/lvteam/EspEngine$ScreenPoint;->y:F

    iget v4, v12, Lcom/lvteam/EspEngine$ScreenPoint;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v4, v10

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    move-object/from16 v0, p0

    move-wide/from16 v13, v23

    move/from16 v8, v26

    move-object/from16 v12, v27

    goto/16 :goto_0

    :cond_7
    new-instance v3, Lcom/lvteam/EspOverlayView$Entity;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v29

    iget-object v4, v0, Lcom/lvteam/EspEngine$WorldEntity;->name:Ljava/lang/String;

    div-float v5, v20, v16

    sub-float v31, v2, v5

    iget v5, v13, Lcom/lvteam/EspEngine$ScreenPoint;->y:F

    iget v6, v12, Lcom/lvteam/EspEngine$ScreenPoint;->y:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v32

    iget v5, v0, Lcom/lvteam/EspEngine$WorldEntity;->health:F

    move-object/from16 v28, v3

    move-object/from16 v30, v4

    move/from16 v33, v20

    move/from16 v34, v37

    move/from16 v35, v5

    move/from16 v36, v25

    invoke-direct/range {v28 .. v36}, Lcom/lvteam/EspOverlayView$Entity;-><init>(ILjava/lang/String;FFFFFF)V

    move-object/from16 v4, v27

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object v12, v4

    move-wide/from16 v13, v23

    move/from16 v8, v26

    goto/16 :goto_0

    :cond_8
    move-object/from16 v4, v27

    move-object/from16 v0, p0

    move-object v12, v4

    move-wide/from16 v13, v23

    move/from16 v8, v26

    goto/16 :goto_0

    :cond_9
    move-object/from16 v4, v27

    move-object/from16 v0, p0

    move-object v12, v4

    move-wide/from16 v13, v23

    move/from16 v8, v26

    goto/16 :goto_0

    :cond_a
    move/from16 v39, v13

    move/from16 v38, v25

    move-object/from16 v4, v27

    move-object v13, v8

    move-object/from16 v0, p0

    move-object v12, v4

    move-wide/from16 v13, v23

    move/from16 v8, v26

    goto/16 :goto_0

    :cond_b
    move/from16 v39, v13

    move/from16 v38, v25

    move-object/from16 v4, v27

    move-object v13, v8

    move-object/from16 v0, p0

    move-object v12, v4

    move-wide/from16 v13, v23

    move/from16 v8, v26

    goto/16 :goto_0

    :cond_c
    move-object v0, v7

    move/from16 v26, v8

    move-object v4, v12

    move-wide/from16 v23, v13

    :goto_3
    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lvteam/EspEngine;->entities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v12, v4

    move-wide/from16 v13, v23

    move/from16 v8, v26

    goto/16 :goto_0

    :cond_d
    move/from16 v26, v8

    move-object v4, v12

    move-wide/from16 v23, v13

    invoke-virtual {v0, v11, v4, v9, v10}, Lcom/lvteam/EspEngine;->reportProjection(Lcom/lvteam/EspEngine$Camera;Ljava/util/Collection;II)V

    new-instance v1, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1}, Lcom/lvteam/EspEngine$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/lvteam/EspEngine$$ExternalSyntheticApiModelOutline1;->m(Ljava/util/ArrayList;Ljava/util/Comparator;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v4, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    :cond_e
    return-object v4

    :cond_f
    move-object v4, v12

    :goto_4
    return-object v4
.end method

.method public final reportProjection(Lcom/lvteam/EspEngine$Camera;Ljava/util/Collection;II)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lvteam/EspEngine;->lastProjectionReportAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/lvteam/EspEngine;->lastProjectionReportAt:J

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const-string v3, "EspEngine"

    const-string v4, "x"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "projection visible=0 screen="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lvteam/EspOverlayView$Entity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "projection visible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " screen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " camera="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/lvteam/EspEngine$Camera;->x:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/lvteam/EspEngine$Camera;->y:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/lvteam/EspEngine$Camera;->z:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " box="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/lvteam/EspOverlayView$Entity;->left:F

    iget v8, v2, Lcom/lvteam/EspOverlayView$Entity;->width:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/lvteam/EspOverlayView$Entity;->top:F

    iget v7, v2, Lcom/lvteam/EspOverlayView$Entity;->height:F

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/lvteam/EspOverlayView$Entity;->width:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/lvteam/EspOverlayView$Entity;->height:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " distance="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/lvteam/EspOverlayView$Entity;->distanceMeters:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public retainOnly(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lcom/lvteam/EspEngine;->entities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public updateCamera(FFFFFFF)V
    .locals 9

    new-instance v8, Lcom/lvteam/EspEngine$Camera;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/lvteam/EspEngine$Camera;-><init>(FFFFFFF)V

    move-object v0, p0

    iput-object v8, v0, Lcom/lvteam/EspEngine;->camera:Lcom/lvteam/EspEngine$Camera;

    return-void
.end method

.method public updateEntity(ILjava/lang/String;FFFFFZZJ)V
    .locals 13

    move-object v0, p0

    if-nez p8, :cond_0

    if-eqz p9, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/lvteam/EspEngine;->entities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v12, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;

    move-object v3, v12

    move-wide/from16 v4, p10

    move-object v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;-><init>(JLjava/lang/String;FFFFF)V

    invoke-static {v1, v2, v12}, Lcom/lvteam/EspEngine$$ExternalSyntheticApiModelOutline2;->m(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void

    :goto_0
    iget-object v1, v0, Lcom/lvteam/EspEngine;->entities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
