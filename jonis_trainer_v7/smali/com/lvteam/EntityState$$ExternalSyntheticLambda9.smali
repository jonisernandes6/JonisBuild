.class public final synthetic Lcom/lvteam/EntityState$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/lvteam/EntityState$Record;

    invoke-static {p1, p2}, Lcom/lvteam/EntityState;->$r8$lambda$JN_-Z_h_0_Cw6VcqH9uBqTD2SgU(Ljava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;

    move-result-object p1

    return-object p1
.end method
