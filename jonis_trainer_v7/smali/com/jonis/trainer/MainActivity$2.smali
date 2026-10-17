.class public Lcom/jonis/trainer/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jonis/trainer/MainActivity;->onAuthResult(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/jonis/trainer/MainActivity;


# direct methods
.method public constructor <init>(Lcom/jonis/trainer/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jonis/trainer/MainActivity$2;->this$0:Lcom/jonis/trainer/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/jonis/trainer/MainActivity$2;->this$0:Lcom/jonis/trainer/MainActivity;

    invoke-static {v0}, Lcom/jonis/trainer/MainActivity;->-$$Nest$mstartSession(Lcom/jonis/trainer/MainActivity;)V

    return-void
.end method
