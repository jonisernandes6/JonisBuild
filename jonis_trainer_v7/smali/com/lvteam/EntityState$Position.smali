.class public final Lcom/lvteam/EntityState$Position;
.super Ljava/lang/Object;
.source "EntityState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/EntityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Position"
.end annotation


# instance fields
.field public final updatedAt:J

.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method public constructor <init>(FFFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lvteam/EntityState$Position;->x:F

    iput p2, p0, Lcom/lvteam/EntityState$Position;->y:F

    iput p3, p0, Lcom/lvteam/EntityState$Position;->z:F

    iput-wide p4, p0, Lcom/lvteam/EntityState$Position;->updatedAt:J

    return-void
.end method
