.class public final synthetic Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/lvteam/LvUpdateChecker$Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lcom/lvteam/LvUpdateChecker$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda0;->f$2:Lcom/lvteam/LvUpdateChecker$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/lvteam/LvUpdateChecker$$ExternalSyntheticLambda0;->f$2:Lcom/lvteam/LvUpdateChecker$Callback;

    invoke-static {v0, v1, v2}, Lcom/lvteam/LvUpdateChecker;->$r8$lambda$TPK-eX04JWZ6ta75AdAEAHlE6Fs(Ljava/lang/String;Landroid/app/Activity;Lcom/lvteam/LvUpdateChecker$Callback;)V

    return-void
.end method
