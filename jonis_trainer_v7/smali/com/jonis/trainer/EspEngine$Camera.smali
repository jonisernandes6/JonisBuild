.class public final Lcom/jonis/trainer/EspEngine$Camera;
.super Ljava/lang/Object;
.source "EspEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jonis/trainer/EspEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Camera"
.end annotation


# instance fields
.field public final forwardX:F

.field public final forwardY:F

.field public final forwardZ:F

.field public final rightX:F

.field public final rightY:F

.field public final rightZ:F

.field public final verticalFov:F

.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method public constructor <init>(FFFFFFF)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jonis/trainer/EspEngine$Camera;->x:F

    iput p2, p0, Lcom/jonis/trainer/EspEngine$Camera;->y:F

    iput p3, p0, Lcom/jonis/trainer/EspEngine$Camera;->z:F

    mul-float v0, p4, p4

    mul-float v1, p5, p5

    add-float/2addr v0, v1

    mul-float v1, p6, p6

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x38d1b717    # 1.0E-4f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float v2, p4, v2

    iput v2, p0, Lcom/jonis/trainer/EspEngine$Camera;->forwardX:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float v2, p5, v2

    iput v2, p0, Lcom/jonis/trainer/EspEngine$Camera;->forwardY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float v2, p6, v2

    iput v2, p0, Lcom/jonis/trainer/EspEngine$Camera;->forwardZ:F

    iget v2, p0, Lcom/jonis/trainer/EspEngine$Camera;->forwardX:F

    iget v3, p0, Lcom/jonis/trainer/EspEngine$Camera;->forwardX:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/jonis/trainer/EspEngine$Camera;->forwardZ:F

    iget v4, p0, Lcom/jonis/trainer/EspEngine$Camera;->forwardZ:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/jonis/trainer/EspEngine$Camera;->forwardZ:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/jonis/trainer/EspEngine$Camera;->rightX:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/jonis/trainer/EspEngine$Camera;->rightY:F

    iget v3, p0, Lcom/jonis/trainer/EspEngine$Camera;->forwardX:F

    neg-float v3, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v3, v1

    iput v3, p0, Lcom/jonis/trainer/EspEngine$Camera;->rightZ:F

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v1, p7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/jonis/trainer/EspEngine$Camera;->verticalFov:F

    return-void
.end method


# virtual methods
.method public distanceTo(FFF)F
    .locals 5

    iget v0, p0, Lcom/jonis/trainer/EspEngine$Camera;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/jonis/trainer/EspEngine$Camera;->y:F

    sub-float v1, p2, v1

    iget v2, p0, Lcom/jonis/trainer/EspEngine$Camera;->z:F

    sub-float v2, p3, v2

    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public project(FFFIIFF)Lcom/jonis/trainer/EspEngine$ScreenPoint;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jonis/trainer/EspEngine$Camera;->x:F

    sub-float v1, p1, v1

    iget v2, v0, Lcom/jonis/trainer/EspEngine$Camera;->y:F

    sub-float v2, p2, v2

    iget v3, v0, Lcom/jonis/trainer/EspEngine$Camera;->z:F

    sub-float v3, p3, v3

    iget v4, v0, Lcom/jonis/trainer/EspEngine$Camera;->forwardX:F

    mul-float/2addr v4, v1

    iget v5, v0, Lcom/jonis/trainer/EspEngine$Camera;->forwardY:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, v0, Lcom/jonis/trainer/EspEngine$Camera;->forwardZ:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const v5, 0x3d4ccccd    # 0.05f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_0

    const/4 v5, 0x0

    return-object v5

    :cond_0
    iget v5, v0, Lcom/jonis/trainer/EspEngine$Camera;->rightX:F

    mul-float/2addr v5, v1

    iget v6, v0, Lcom/jonis/trainer/EspEngine$Camera;->rightY:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iget v6, v0, Lcom/jonis/trainer/EspEngine$Camera;->rightZ:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iget v6, v0, Lcom/jonis/trainer/EspEngine$Camera;->forwardY:F

    iget v7, v0, Lcom/jonis/trainer/EspEngine$Camera;->rightZ:F

    mul-float/2addr v6, v7

    iget v7, v0, Lcom/jonis/trainer/EspEngine$Camera;->forwardZ:F

    iget v8, v0, Lcom/jonis/trainer/EspEngine$Camera;->rightY:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, v0, Lcom/jonis/trainer/EspEngine$Camera;->forwardZ:F

    iget v8, v0, Lcom/jonis/trainer/EspEngine$Camera;->rightX:F

    mul-float/2addr v7, v8

    iget v8, v0, Lcom/jonis/trainer/EspEngine$Camera;->forwardX:F

    iget v9, v0, Lcom/jonis/trainer/EspEngine$Camera;->rightZ:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget v8, v0, Lcom/jonis/trainer/EspEngine$Camera;->forwardX:F

    iget v9, v0, Lcom/jonis/trainer/EspEngine$Camera;->rightY:F

    mul-float/2addr v8, v9

    iget v9, v0, Lcom/jonis/trainer/EspEngine$Camera;->forwardY:F

    iget v10, v0, Lcom/jonis/trainer/EspEngine$Camera;->rightX:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float v9, v1, v6

    mul-float v10, v2, v7

    add-float/2addr v9, v10

    mul-float v10, v3, v8

    add-float/2addr v9, v10

    new-instance v10, Lcom/jonis/trainer/EspEngine$ScreenPoint;

    move/from16 v11, p4

    int-to-float v12, v11

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    mul-float v14, v5, p6

    div-float/2addr v14, v4

    add-float/2addr v12, v14

    move/from16 v14, p5

    int-to-float v15, v14

    div-float/2addr v15, v13

    mul-float v13, v9, p6

    div-float/2addr v13, v4

    sub-float/2addr v15, v13

    invoke-direct {v10, v12, v15}, Lcom/jonis/trainer/EspEngine$ScreenPoint;-><init>(FF)V

    return-object v10
.end method
