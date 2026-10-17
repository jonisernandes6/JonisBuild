.class public Lcom/lvteam/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lvteam/MainActivity;->onAuthResult(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/lvteam/MainActivity;


# direct methods
.method public constructor <init>(Lcom/lvteam/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lvteam/MainActivity$2;->this$0:Lcom/lvteam/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/lvteam/MainActivity$2;->this$0:Lcom/lvteam/MainActivity;

    invoke-static {v0}, Lcom/lvteam/MainActivity;->-$$Nest$mstartSession(Lcom/lvteam/MainActivity;)V

    return-void
.end method
