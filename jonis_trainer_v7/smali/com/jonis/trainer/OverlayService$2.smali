.class public Lcom/jonis/trainer/OverlayService$2;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jonis/trainer/OverlayService;->addSliderRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;IIILcom/jonis/trainer/OverlayService$SliderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/jonis/trainer/OverlayService;

.field public final synthetic val$cb:Lcom/jonis/trainer/OverlayService$SliderCallback;

.field public final synthetic val$min:I

.field public final synthetic val$suffix:Ljava/lang/String;

.field public final synthetic val$valueLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/jonis/trainer/OverlayService;ILandroid/widget/TextView;Ljava/lang/String;Lcom/jonis/trainer/OverlayService$SliderCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/jonis/trainer/OverlayService$2;->this$0:Lcom/jonis/trainer/OverlayService;

    iput p2, p0, Lcom/jonis/trainer/OverlayService$2;->val$min:I

    iput-object p3, p0, Lcom/jonis/trainer/OverlayService$2;->val$valueLabel:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/jonis/trainer/OverlayService$2;->val$suffix:Ljava/lang/String;

    iput-object p5, p0, Lcom/jonis/trainer/OverlayService$2;->val$cb:Lcom/jonis/trainer/OverlayService$SliderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget v0, p0, Lcom/jonis/trainer/OverlayService$2;->val$min:I

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/jonis/trainer/OverlayService$2;->val$valueLabel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jonis/trainer/OverlayService$2;->val$suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/jonis/trainer/OverlayService$2;->val$cb:Lcom/jonis/trainer/OverlayService$SliderCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jonis/trainer/OverlayService$2;->val$cb:Lcom/jonis/trainer/OverlayService$SliderCallback;

    invoke-interface {v1, v0}, Lcom/jonis/trainer/OverlayService$SliderCallback;->onChange(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
