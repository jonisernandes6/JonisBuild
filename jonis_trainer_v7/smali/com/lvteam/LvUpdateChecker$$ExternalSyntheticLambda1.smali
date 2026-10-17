.class public final synthetic Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/lvteam/LvUpdateChecker$Callback;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/lvteam/LvUpdateChecker$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda1;->f$2:Landroid/app/Activity;

    iput-object p4, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda1;->f$4:Lcom/lvteam/LvUpdateChecker$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-boolean v0, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda1;->f$0:Z

    iget-object v1, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda1;->f$2:Landroid/app/Activity;

    iget-object v3, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda1;->f$4:Lcom/lvteam/LvUpdateChecker$Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lvteam/LvUpdateChecker;->$r8$lambda$HlT-dF1vj0JsWd8jddYXKZ6Wy38(ZLjava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/lvteam/LvUpdateChecker$Callback;)V

    return-void
.end method
