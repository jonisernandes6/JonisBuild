.class public Lcom/jonis/trainer/OverlayActivity;
.super Landroid/app/Activity;
.source "OverlayActivity.java"


# instance fields
.field public fullRouteRequested:Z

.field public waitingForOverlayPermission:Z


# direct methods
.method public static synthetic $r8$lambda$9_gk6EPANkPLefDBdndsD2KzrYw(Lcom/jonis/trainer/OverlayActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jonis/trainer/OverlayActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cFfdGpLm8VN-umqHVOkBSzB0750(Lcom/jonis/trainer/OverlayActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jonis/trainer/OverlayActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zTACaNqWkgoNLfhsdAiXtNRD920(Lcom/jonis/trainer/OverlayActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jonis/trainer/OverlayActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final buttonBackground()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/jonis/trainer/OverlayActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public final dp(I)I
    .locals 2

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public final synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/jonis/trainer/OverlayActivity;->requestOverlay()V

    return-void
.end method

.method public final synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jonis/trainer/OverlayActivity;->requestVpn(Z)V

    return-void
.end method

.method public final synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jonis/trainer/OverlayActivity;->requestVpn(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/jonis/trainer/OverlayActivity;->startCaptureService()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v1, 0x1c

    invoke-virtual {p0, v1}, Lcom/jonis/trainer/OverlayActivity;->dp(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/jonis/trainer/OverlayActivity;->dp(I)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/jonis/trainer/OverlayActivity;->dp(I)I

    move-result v4

    invoke-virtual {p0, v1}, Lcom/jonis/trainer/OverlayActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/jonis/trainer/R$string;->action_open_overlay:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-virtual {p0}, Lcom/jonis/trainer/OverlayActivity;->buttonBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lcom/jonis/trainer/OverlayActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/jonis/trainer/OverlayActivity$$ExternalSyntheticLambda1;-><init>(Lcom/jonis/trainer/OverlayActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x34

    invoke-virtual {p0, v6}, Lcom/jonis/trainer/OverlayActivity;->dp(I)I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {v5, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v7, "Ativar captura"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-virtual {p0}, Lcom/jonis/trainer/OverlayActivity;->buttonBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Lcom/jonis/trainer/OverlayActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/jonis/trainer/OverlayActivity$$ExternalSyntheticLambda2;-><init>(Lcom/jonis/trainer/OverlayActivity;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/jonis/trainer/OverlayActivity;->dp(I)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xc

    invoke-virtual {p0, v9}, Lcom/jonis/trainer/OverlayActivity;->dp(I)I

    move-result v10

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v11, "Testar roteamento IPv4 completo"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-virtual {p0}, Lcom/jonis/trainer/OverlayActivity;->buttonBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/jonis/trainer/OverlayActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/jonis/trainer/OverlayActivity$$ExternalSyntheticLambda3;-><init>(Lcom/jonis/trainer/OverlayActivity;)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/jonis/trainer/OverlayActivity;->dp(I)I

    move-result v3

    invoke-direct {v1, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9}, Lcom/jonis/trainer/OverlayActivity;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/jonis/trainer/OverlayActivity;->waitingForOverlayPermission:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jonis/trainer/OverlayActivity;->startOverlayService()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jonis/trainer/OverlayActivity;->waitingForOverlayPermission:Z

    return-void
.end method

.method public final requestOverlay()V
    .locals 3

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jonis/trainer/OverlayActivity;->startOverlayService()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jonis/trainer/OverlayActivity;->waitingForOverlayPermission:Z

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final requestVpn(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/jonis/trainer/OverlayActivity;->fullRouteRequested:Z

    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jonis/trainer/OverlayActivity;->startCaptureService()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public final startCaptureService()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jonis/trainer/PacketCaptureService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v1, p0, Lcom/jonis/trainer/OverlayActivity;->fullRouteRequested:Z

    if-eqz v1, :cond_0

    const-string v1, "com.lvteam.action.ENABLE_FULL_IPV4_ROUTE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jonis/trainer/OverlayActivity;->fullRouteRequested:Z

    return-void
.end method

.method public final startOverlayService()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jonis/trainer/OverlayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-static {p0, v0}, Lcom/jonis/trainer/OverlayActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/jonis/trainer/OverlayActivity;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method
