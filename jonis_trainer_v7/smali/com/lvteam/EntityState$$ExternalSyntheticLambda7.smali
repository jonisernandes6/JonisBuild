.class public final synthetic Lcom/lvteam/EntityState$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(FFFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda7;->f$0:F

    iput p2, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda7;->f$1:F

    iput p3, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda7;->f$2:F

    iput-wide p4, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda7;->f$3:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda7;->f$0:F

    iget v1, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda7;->f$1:F

    iget v2, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda7;->f$2:F

    iget-wide v3, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda7;->f$3:J

    move-object v5, p1

    check-cast v5, Ljava/lang/Integer;

    move-object v6, p2

    check-cast v6, Lcom/lvteam/EntityState$Record;

    invoke-static/range {v0 .. v6}, Lcom/lvteam/EntityState;->$r8$lambda$nlwOZFDv5I2hmKgNmC1wkRmXeDk(FFFJLjava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;

    move-result-object p1

    return-object p1
.end method
