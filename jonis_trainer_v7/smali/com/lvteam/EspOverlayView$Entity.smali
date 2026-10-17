.class public final Lcom/lvteam/EspOverlayView$Entity;
.super Ljava/lang/Object;
.source "EspOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lvteam/EspOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entity"
.end annotation


# instance fields
.field public final distanceMeters:F

.field public final health:F

.field public final height:F

.field public final id:I

.field public final left:F

.field public final name:Ljava/lang/String;

.field public final top:F

.field public final width:F


# direct methods
.method public constructor <init>(ILjava/lang/String;FFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lvteam/EspOverlayView$Entity;->id:I

    iput-object p2, p0, Lcom/lvteam/EspOverlayView$Entity;->name:Ljava/lang/String;

    iput p3, p0, Lcom/lvteam/EspOverlayView$Entity;->left:F

    iput p4, p0, Lcom/lvteam/EspOverlayView$Entity;->top:F

    iput p5, p0, Lcom/lvteam/EspOverlayView$Entity;->width:F

    iput p6, p0, Lcom/lvteam/EspOverlayView$Entity;->height:F

    iput p7, p0, Lcom/lvteam/EspOverlayView$Entity;->health:F

    iput p8, p0, Lcom/lvteam/EspOverlayView$Entity;->distanceMeters:F

    return-void
.end method
