.class public final synthetic Lcom/lvteam/MainActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/lvteam/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/lvteam/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lvteam/MainActivity$$ExternalSyntheticLambda3;->f$0:Lcom/lvteam/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/lvteam/MainActivity$$ExternalSyntheticLambda3;->f$0:Lcom/lvteam/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
