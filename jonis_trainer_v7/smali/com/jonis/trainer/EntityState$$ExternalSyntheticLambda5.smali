.class public final synthetic Lcom/jonis/trainer/EntityState$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/jonis/trainer/EntityState;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/jonis/trainer/EntityState;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jonis/trainer/EntityState$$ExternalSyntheticLambda5;->f$0:Lcom/jonis/trainer/EntityState;

    iput p2, p0, Lcom/jonis/trainer/EntityState$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Lcom/jonis/trainer/EntityState$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/jonis/trainer/EntityState$$ExternalSyntheticLambda5;->f$0:Lcom/jonis/trainer/EntityState;

    iget v1, p0, Lcom/jonis/trainer/EntityState$$ExternalSyntheticLambda5;->f$1:I

    iget v2, p0, Lcom/jonis/trainer/EntityState$$ExternalSyntheticLambda5;->f$2:I

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/jonis/trainer/EntityState$Record;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/jonis/trainer/EntityState;->$r8$lambda$o0o5NyvZl3ThjeCrgowb8bmgQMs(Lcom/jonis/trainer/EntityState;IILjava/lang/Integer;Lcom/jonis/trainer/EntityState$Record;)Lcom/jonis/trainer/EntityState$Record;

    move-result-object p1

    return-object p1
.end method
