.class public final Lcom/lvteam/EspEngine$ScreenPoint;
.super Ljava/lang/Object;
.source "EspEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/EspEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenPoint"
.end annotation


# instance fields
.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lvteam/EspEngine$ScreenPoint;->x:F

    iput p2, p0, Lcom/lvteam/EspEngine$ScreenPoint;->y:F

    return-void
.end method
