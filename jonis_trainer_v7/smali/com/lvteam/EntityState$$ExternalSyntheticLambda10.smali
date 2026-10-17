.class public final synthetic Lcom/lvteam/EntityState$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/lvteam/EntityState;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/lvteam/EntityState$Position;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/lvteam/EntityState;ILcom/lvteam/EntityState$Position;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda10;->f$0:Lcom/lvteam/EntityState;

    iput p2, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda10;->f$1:I

    iput-object p3, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda10;->f$2:Lcom/lvteam/EntityState$Position;

    iput-boolean p4, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda10;->f$3:Z

    iput p5, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda10;->f$4:I

    iput p6, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda10;->f$5:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda10;->f$0:Lcom/lvteam/EntityState;

    iget v1, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda10;->f$1:I

    iget-object v2, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda10;->f$2:Lcom/lvteam/EntityState$Position;

    iget-boolean v3, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda10;->f$3:Z

    iget v4, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda10;->f$4:I

    iget v5, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda10;->f$5:I

    move-object v6, p1

    check-cast v6, Ljava/lang/Integer;

    move-object v7, p2

    check-cast v7, Lcom/lvteam/EntityState$Record;

    invoke-static/range {v0 .. v7}, Lcom/lvteam/EntityState;->$r8$lambda$DG_3luMCTUKCQ0KDZ8U49Mo1xA8(Lcom/lvteam/EntityState;ILcom/lvteam/EntityState$Position;ZIILjava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;

    move-result-object p1

    return-object p1
.end method
