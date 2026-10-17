.class public final synthetic Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:F


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;FFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;->f$0:J

    iput-object p3, p0, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput p4, p0, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;->f$2:F

    iput p5, p0, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;->f$3:F

    iput p6, p0, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;->f$4:F

    iput p7, p0, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;->f$5:F

    iput p8, p0, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;->f$6:F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-wide v0, p0, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;->f$0:J

    iget-object v2, p0, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget v3, p0, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;->f$2:F

    iget v4, p0, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;->f$3:F

    iget v5, p0, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;->f$4:F

    iget v6, p0, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;->f$5:F

    iget v7, p0, Lcom/lvteam/EspEngine$$ExternalSyntheticLambda4;->f$6:F

    move-object v8, p1

    check-cast v8, Ljava/lang/Integer;

    move-object v9, p2

    check-cast v9, Lcom/lvteam/EspEngine$WorldEntity;

    invoke-static/range {v0 .. v9}, Lcom/lvteam/EspEngine;->$r8$lambda$IJyx8Ld8JeHLSZxY-ah2ky6ZkrU(JLjava/lang/String;FFFFFLjava/lang/Integer;Lcom/lvteam/EspEngine$WorldEntity;)Lcom/lvteam/EspEngine$WorldEntity;

    move-result-object p1

    return-object p1
.end method
