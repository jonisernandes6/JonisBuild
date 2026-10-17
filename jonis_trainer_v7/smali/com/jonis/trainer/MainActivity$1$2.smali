.class public Lcom/jonis/trainer/MainActivity$1$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jonis/trainer/MainActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/jonis/trainer/MainActivity$1;


# direct methods
.method public constructor <init>(Lcom/jonis/trainer/MainActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/jonis/trainer/MainActivity$1$2;->this$1:Lcom/jonis/trainer/MainActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/jonis/trainer/MainActivity$1$2;->this$1:Lcom/jonis/trainer/MainActivity$1;

    iget-object v0, v0, Lcom/jonis/trainer/MainActivity$1;->this$0:Lcom/jonis/trainer/MainActivity;

    iget-object v1, p0, Lcom/jonis/trainer/MainActivity$1$2;->this$1:Lcom/jonis/trainer/MainActivity$1;

    iget-object v1, v1, Lcom/jonis/trainer/MainActivity$1;->val$key:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/jonis/trainer/MainActivity;->-$$Nest$monAuthResult(Lcom/jonis/trainer/MainActivity;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
