.class public final Lcom/lvteam/EspEngine$WorldEntity;
.super Ljava/lang/Object;
.source "EspEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/EspEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WorldEntity"
.end annotation


# instance fields
.field public final health:F

.field public final height:F

.field public final name:Ljava/lang/String;

.field public final previousX:F

.field public final previousY:F

.field public final previousZ:F

.field public final sourceUpdatedAt:J

.field public final updatedAt:J

.field public final velocityX:F

.field public final velocityY:F

.field public final velocityZ:F

.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFFFFJLcom/lvteam/EspEngine$WorldEntity;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/lvteam/EspEngine$WorldEntity;->name:Ljava/lang/String;

    iput p2, p0, Lcom/lvteam/EspEngine$WorldEntity;->x:F

    iput p3, p0, Lcom/lvteam/EspEngine$WorldEntity;->y:F

    iput p4, p0, Lcom/lvteam/EspEngine$WorldEntity;->z:F

    if-nez p9, :cond_2

    move v0, p2

    goto :goto_2

    :cond_2
    iget v0, p9, Lcom/lvteam/EspEngine$WorldEntity;->x:F

    :goto_2
    iput v0, p0, Lcom/lvteam/EspEngine$WorldEntity;->previousX:F

    if-nez p9, :cond_3

    move v0, p3

    goto :goto_3

    :cond_3
    iget v0, p9, Lcom/lvteam/EspEngine$WorldEntity;->y:F

    :goto_3
    iput v0, p0, Lcom/lvteam/EspEngine$WorldEntity;->previousY:F

    if-nez p9, :cond_4

    move v0, p4

    goto :goto_4

    :cond_4
    iget v0, p9, Lcom/lvteam/EspEngine$WorldEntity;->z:F

    :goto_4
    iput v0, p0, Lcom/lvteam/EspEngine$WorldEntity;->previousZ:F

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/lvteam/EspEngine$WorldEntity;->height:F

    iput p6, p0, Lcom/lvteam/EspEngine$WorldEntity;->health:F

    iput-wide p7, p0, Lcom/lvteam/EspEngine$WorldEntity;->updatedAt:J

    iput-wide p7, p0, Lcom/lvteam/EspEngine$WorldEntity;->sourceUpdatedAt:J

    if-eqz p9, :cond_5

    iget-wide v0, p9, Lcom/lvteam/EspEngine$WorldEntity;->sourceUpdatedAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-wide v0, p9, Lcom/lvteam/EspEngine$WorldEntity;->sourceUpdatedAt:J

    sub-long v0, p7, v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget v2, p9, Lcom/lvteam/EspEngine$WorldEntity;->x:F

    sub-float v2, p2, v2

    long-to-float v3, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/lvteam/EspEngine$WorldEntity;->velocityX:F

    iget v2, p9, Lcom/lvteam/EspEngine$WorldEntity;->y:F

    sub-float v2, p3, v2

    long-to-float v3, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/lvteam/EspEngine$WorldEntity;->velocityY:F

    iget v2, p9, Lcom/lvteam/EspEngine$WorldEntity;->z:F

    sub-float v2, p4, v2

    long-to-float v3, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/lvteam/EspEngine$WorldEntity;->velocityZ:F

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/lvteam/EspEngine$WorldEntity;->velocityX:F

    iput v0, p0, Lcom/lvteam/EspEngine$WorldEntity;->velocityY:F

    iput v0, p0, Lcom/lvteam/EspEngine$WorldEntity;->velocityZ:F

    :goto_5
    return-void
.end method
