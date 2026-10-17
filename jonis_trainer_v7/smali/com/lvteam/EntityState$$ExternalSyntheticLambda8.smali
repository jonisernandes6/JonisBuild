.class public final synthetic Lcom/lvteam/EntityState$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lvteam/EntityState$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/lvteam/EntityState$Record;

    invoke-static {v0, p1, p2}, Lcom/lvteam/EntityState;->$r8$lambda$Pll8D42Y4NO_YqHk1kjNKlDQYfE(Ljava/lang/String;Ljava/lang/Integer;Lcom/lvteam/EntityState$Record;)Lcom/lvteam/EntityState$Record;

    move-result-object p1

    return-object p1
.end method
