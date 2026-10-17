.class public final Lcom/lvteam/EntityState$Record;
.super Ljava/lang/Object;
.source "EntityState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/EntityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Record"
.end annotation


# instance fields
.field public final ally:Z

.field public final health:F

.field public final id:I

.field public final local:Z

.field public final name:Ljava/lang/String;

.field public final team:I

.field public final updatedAt:J

.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method public constructor <init>(ILjava/lang/String;FFFFZZIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lvteam/EntityState$Record;->id:I

    iput-object p2, p0, Lcom/lvteam/EntityState$Record;->name:Ljava/lang/String;

    iput p3, p0, Lcom/lvteam/EntityState$Record;->x:F

    iput p4, p0, Lcom/lvteam/EntityState$Record;->y:F

    iput p5, p0, Lcom/lvteam/EntityState$Record;->z:F

    iput p6, p0, Lcom/lvteam/EntityState$Record;->health:F

    iput-boolean p7, p0, Lcom/lvteam/EntityState$Record;->local:Z

    iput-boolean p8, p0, Lcom/lvteam/EntityState$Record;->ally:Z

    iput p9, p0, Lcom/lvteam/EntityState$Record;->team:I

    iput-wide p10, p0, Lcom/lvteam/EntityState$Record;->updatedAt:J

    return-void
.end method


# virtual methods
.method public withMetadata(Ljava/lang/String;ZZLjava/lang/Integer;)Lcom/lvteam/EntityState$Record;
    .locals 14

    move-object v0, p0

    new-instance v13, Lcom/lvteam/EntityState$Record;

    iget v2, v0, Lcom/lvteam/EntityState$Record;->id:I

    if-nez p1, :cond_0

    iget-object v1, v0, Lcom/lvteam/EntityState$Record;->name:Ljava/lang/String;

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    iget v4, v0, Lcom/lvteam/EntityState$Record;->x:F

    iget v5, v0, Lcom/lvteam/EntityState$Record;->y:F

    iget v6, v0, Lcom/lvteam/EntityState$Record;->z:F

    iget v7, v0, Lcom/lvteam/EntityState$Record;->health:F

    if-nez p4, :cond_1

    iget v1, v0, Lcom/lvteam/EntityState$Record;->team:I

    :goto_1
    move v10, v1

    goto :goto_2

    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :goto_2
    iget-wide v11, v0, Lcom/lvteam/EntityState$Record;->updatedAt:J

    move-object v1, v13

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v1 .. v12}, Lcom/lvteam/EntityState$Record;-><init>(ILjava/lang/String;FFFFZZIJ)V

    return-object v13
.end method

.method public withName(Ljava/lang/String;)Lcom/lvteam/EntityState$Record;
    .locals 13

    new-instance v12, Lcom/lvteam/EntityState$Record;

    iget v1, p0, Lcom/lvteam/EntityState$Record;->id:I

    iget v3, p0, Lcom/lvteam/EntityState$Record;->x:F

    iget v4, p0, Lcom/lvteam/EntityState$Record;->y:F

    iget v5, p0, Lcom/lvteam/EntityState$Record;->z:F

    iget v6, p0, Lcom/lvteam/EntityState$Record;->health:F

    iget-boolean v7, p0, Lcom/lvteam/EntityState$Record;->local:Z

    iget-boolean v8, p0, Lcom/lvteam/EntityState$Record;->ally:Z

    iget v9, p0, Lcom/lvteam/EntityState$Record;->team:I

    iget-wide v10, p0, Lcom/lvteam/EntityState$Record;->updatedAt:J

    move-object v0, v12

    move-object v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/lvteam/EntityState$Record;-><init>(ILjava/lang/String;FFFFZZIJ)V

    return-object v12
.end method

.method public withPosition(FFFJ)Lcom/lvteam/EntityState$Record;
    .locals 14

    move-object v0, p0

    new-instance v13, Lcom/lvteam/EntityState$Record;

    iget v2, v0, Lcom/lvteam/EntityState$Record;->id:I

    iget-object v3, v0, Lcom/lvteam/EntityState$Record;->name:Ljava/lang/String;

    iget v7, v0, Lcom/lvteam/EntityState$Record;->health:F

    iget-boolean v8, v0, Lcom/lvteam/EntityState$Record;->local:Z

    iget-boolean v9, v0, Lcom/lvteam/EntityState$Record;->ally:Z

    iget v10, v0, Lcom/lvteam/EntityState$Record;->team:I

    move-object v1, v13

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-wide/from16 v11, p4

    invoke-direct/range {v1 .. v12}, Lcom/lvteam/EntityState$Record;-><init>(ILjava/lang/String;FFFFZZIJ)V

    return-object v13
.end method
