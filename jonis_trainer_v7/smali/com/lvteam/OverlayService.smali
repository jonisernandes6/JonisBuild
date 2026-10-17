.class public Lcom/lvteam/OverlayService;
.super Landroid/app/Service;
.source "OverlayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lvteam/OverlayService$DraggableLayout;,
        Lcom/lvteam/OverlayService$DropdownCallback;,
        Lcom/lvteam/OverlayService$ToggleCallback;,
        Lcom/lvteam/OverlayService$SliderCallback;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "lv_team_overlay"

.field private static final EL_BOX:I = 0x0

.field private static final EL_DIST:I = 0x3

.field private static final EL_FOV:I = 0x4

.field private static final EL_LINE:I = 0x1

.field private static final EL_NAME:I = 0x2

.field private static final TAB_AIM:I = 0x0

.field private static final TAB_COUNT:I = 0x5

.field private static final TAB_EXPLOIT:I = 0x3

.field private static final TAB_ICONS:[Ljava/lang/String;

.field private static final TAB_NAMES:[Ljava/lang/String;

.field private static final TAB_PLAYERS:I = 0x2

.field private static final TAB_SETTINGS:I = 0x4

.field private static final TAB_VIEWS:I = 0x1

.field private static final TH_ACCENT:I = -0xd6490a

.field private static final TH_BG:I = -0xff2eee9

.field private static final TH_BORDER:I = -0xcbc3b6

.field private static final TH_CHECK_OFF:I = -0xf1ebe4

.field private static final TH_CONTENT:I = -0xeee7e0

.field private static final TH_DIVIDER:I = -0xe3dcd2

.field private static final TH_HEADER:I = -0xe9e4de

.field private static final TH_RED:I = -0x1ac6cb

.field private static final TH_SIDEBAR:I = -0xf2eee9

.field private static final TH_SIDEBAR_ACTIVE:I = -0xe9ddcc

.field private static final TH_SURFACE:I = -0xe3dccd

.field private static final TH_TEXT:I = -0x19120d

.field private static final TH_TEXT_DIM:I = -0x827a70

.field private static final TH_TOGGLE_OFF:I = -0xe1dacb

.field private static final TH_TOGGLE_ON:I = -0xde690d


# instance fields
.field private activeTab:I

.field private appIcon:Landroid/widget/ImageView;

.field private bodyContainer:Landroid/widget/LinearLayout;

.field private boxEnabled:Z

.field private boxOverlay:Lcom/lvteam/EspOverlayView;

.field private circleOverlay:Landroid/view/View;

.field private circleParams:Landroid/view/WindowManager$LayoutParams;

.field private final colors:[I

.field private drawDistance:Z

.field private drawLine:Z

.field private drawName:Z

.field private final elementColor:[I

.field private enemyCounterEnabled:Z

.field private enemyCounterOverlay:Landroid/widget/LinearLayout;

.field private enemyValue:Landroid/widget/TextView;

.field private final entityState:Lcom/lvteam/EntityState;

.field private espEnabled:Z

.field private final espEngine:Lcom/lvteam/EspEngine;

.field private final espFrame:Landroid/view/Choreographer$FrameCallback;

.field private espMasterBox:Landroid/widget/FrameLayout;

.field private fovPercent:I

.field private headerContainer:Landroid/widget/LinearLayout;

.field private final ignoredIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field private volatile lastProjected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lvteam/EspOverlayView$Entity;",
            ">;"
        }
    .end annotation
.end field

.field private maxDistanceM:I

.field private minimized:Z

.field private overlay:Landroid/view/View;

.field private overlayBackground:Landroid/graphics/drawable/GradientDrawable;

.field private overlayParams:Landroid/view/WindowManager$LayoutParams;

.field private playerEmptyLabel:Landroid/widget/TextView;

.field private playerListContainer:Landroid/widget/LinearLayout;

.field private playerUpdateHandler:Landroid/os/Handler;

.field private sessionCheckHandler:Landroid/os/Handler;

.field private final sidebarAccents:[Landroid/view/View;

.field private final sidebarIcons:[Landroid/widget/TextView;

.field private final sidebarItems:[Landroid/widget/LinearLayout;

.field private final sidebarLabels:[Landroid/widget/TextView;

.field private final tabPanels:[Landroid/widget/LinearLayout;

.field private teamTitleOverlay:Landroid/widget/TextView;

.field private thicknessIndex:I

.field private thicknessLabel:Landroid/widget/TextView;

.field private final thicknesses:[F

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$0w30vPqE3YhQSjDgnIvD4sSemQ8(Lcom/lvteam/OverlayService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->lambda$showOverlay$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3FRDUcnLKTbKj9J3n4-TI11Sw1A(Lcom/lvteam/OverlayService;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lvteam/OverlayService;->lambda$refreshPlayerList$25(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7O9oNG1XykC8PUdYtUouXRt6gDY(Lcom/lvteam/OverlayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->lambda$buildViewsTab$9(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ahi-I5U-sh-dpbl7_DvQ6eLO68k(Lcom/lvteam/OverlayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->setCircleEnabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$C4OQEI9KowuFLzeEX6wfPlaQEwo(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/lvteam/OverlayService;->lambda$addSliderRow$21(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$E6VikiRSOlkXreFuPOwPRwqmgW4(Lcom/lvteam/OverlayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->lambda$buildViewsTab$11(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$GiljZffzQoL1sBXoP_kMGk5Vs70([Ljava/lang/String;Landroid/widget/TextView;Lcom/lvteam/OverlayService$DropdownCallback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/lvteam/OverlayService;->lambda$addDropdownRow$20([Ljava/lang/String;Landroid/widget/TextView;Lcom/lvteam/OverlayService$DropdownCallback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IfVShZ9NK7cs7Qe6Gd1jYn8txNc(Lcom/lvteam/OverlayService;Lcom/lvteam/OverlayService$ToggleCallback;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lvteam/OverlayService;->lambda$addFeatureToggle$16(Lcom/lvteam/OverlayService$ToggleCallback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KSNblP8sT7lmyB19nMtzPePrL00(Lcom/lvteam/OverlayService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->lambda$buildThicknessPicker$23(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LBC2mY49Td03HsopEY-9QYWjSLA(Lcom/lvteam/OverlayService;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lvteam/OverlayService;->lambda$addShiftToggle$19(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QL9A76WAuuB3Wnf3FXYGeJUDZuc(Lcom/lvteam/OverlayService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->lambda$buildThicknessPicker$22(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SGuFj4_Kf5ymqwSefcak0ISSaAk(Lcom/lvteam/OverlayService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->lambda$buildViewsTab$12(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tpmj64-R8qKJ3g4lHDrs2E_d0rk(Z)V
    .locals 0

    invoke-static {p0}, Lcom/lvteam/OverlayService;->lambda$buildAimTab$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TyS14aa87qU2_QsJ_o3fPoV5a4k()V
    .locals 0

    invoke-static {}, Lcom/lvteam/OverlayService;->lambda$killApp$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$YGaolynwQit2uwJWQV-IF5f5dDs(Lcom/lvteam/OverlayService;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lvteam/OverlayService;->lambda$refreshPlayerList$24(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bniRpGPsQNHd4jDzwpEnJ-IWq5U(Lcom/lvteam/OverlayService;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lvteam/OverlayService;->lambda$buildSidebar$2(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i1q6eDqqHgNvDGQYtNCfZstmK_8(Lcom/lvteam/OverlayService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->lambda$buildPlayersTab$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$koJTyZo30Lx5F9RxP2fgdQT12FQ(Lcom/lvteam/OverlayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->lambda$buildViewsTab$7(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kuVJC3WS1dRic_oU3zwwzQtxenA(Lcom/lvteam/OverlayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->lambda$buildViewsTab$13(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$mx-g_u6T1stoRigZCyuat24fnnw(Lcom/lvteam/OverlayService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->lambda$buildAimTab$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q9g9grDYPtTiFTxv0SptkmTRkkM(Lcom/lvteam/OverlayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->lambda$buildViewsTab$10(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$qAF-veioSt0oAHDPitobc7pX1nc(Lcom/lvteam/OverlayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->lambda$buildViewsTab$8(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$qxCh6ru9daFvwVSYicb8UEl4UlU(Lcom/lvteam/OverlayService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->lambda$buildHeader$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s1bJGMdopGfHHR09io1fN343nbU(Lcom/lvteam/OverlayService;ILandroid/graphics/drawable/GradientDrawable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lvteam/OverlayService;->lambda$makeSwatch$18(ILandroid/graphics/drawable/GradientDrawable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wJITroAQzTkx94Sv22nkttrJ2zE(Lcom/lvteam/OverlayService;Lcom/lvteam/OverlayService$ToggleCallback;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lvteam/OverlayService;->lambda$addEspToggle$17(Lcom/lvteam/OverlayService$ToggleCallback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x2ZAIY11ukwafi8lmj5m_xsIR60(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/lvteam/OverlayService;->lambda$buildTabPanel$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$y5HNrKHSSx-A2loHszI5-YuI-74(Lcom/lvteam/OverlayService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->lambda$buildSettingsTab$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y92_gy5ujw6L8oH20DEUMhzGKVQ(Z)V
    .locals 0

    invoke-static {p0}, Lcom/lvteam/OverlayService;->lambda$buildAimTab$5(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetactiveTab(Lcom/lvteam/OverlayService;)I
    .locals 0

    iget p0, p0, Lcom/lvteam/OverlayService;->activeTab:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetboxOverlay(Lcom/lvteam/OverlayService;)Lcom/lvteam/EspOverlayView;
    .locals 0

    iget-object p0, p0, Lcom/lvteam/OverlayService;->boxOverlay:Lcom/lvteam/EspOverlayView;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetentityState(Lcom/lvteam/OverlayService;)Lcom/lvteam/EntityState;
    .locals 0

    iget-object p0, p0, Lcom/lvteam/OverlayService;->entityState:Lcom/lvteam/EntityState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetespEngine(Lcom/lvteam/OverlayService;)Lcom/lvteam/EspEngine;
    .locals 0

    iget-object p0, p0, Lcom/lvteam/OverlayService;->espEngine:Lcom/lvteam/EspEngine;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetignoredIds(Lcom/lvteam/OverlayService;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/lvteam/OverlayService;->ignoredIds:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetinitialTouchX(Lcom/lvteam/OverlayService;)F
    .locals 0

    iget p0, p0, Lcom/lvteam/OverlayService;->initialTouchX:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetinitialTouchY(Lcom/lvteam/OverlayService;)F
    .locals 0

    iget p0, p0, Lcom/lvteam/OverlayService;->initialTouchY:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetinitialX(Lcom/lvteam/OverlayService;)I
    .locals 0

    iget p0, p0, Lcom/lvteam/OverlayService;->initialX:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetinitialY(Lcom/lvteam/OverlayService;)I
    .locals 0

    iget p0, p0, Lcom/lvteam/OverlayService;->initialY:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetminimized(Lcom/lvteam/OverlayService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lvteam/OverlayService;->minimized:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetoverlayParams(Lcom/lvteam/OverlayService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/lvteam/OverlayService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetplayerUpdateHandler(Lcom/lvteam/OverlayService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/lvteam/OverlayService;->playerUpdateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsessionCheckHandler(Lcom/lvteam/OverlayService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/lvteam/OverlayService;->sessionCheckHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetwindowManager(Lcom/lvteam/OverlayService;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/lvteam/OverlayService;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputinitialTouchX(Lcom/lvteam/OverlayService;F)V
    .locals 0

    iput p1, p0, Lcom/lvteam/OverlayService;->initialTouchX:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputinitialTouchY(Lcom/lvteam/OverlayService;F)V
    .locals 0

    iput p1, p0, Lcom/lvteam/OverlayService;->initialTouchY:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputinitialX(Lcom/lvteam/OverlayService;I)V
    .locals 0

    iput p1, p0, Lcom/lvteam/OverlayService;->initialX:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputinitialY(Lcom/lvteam/OverlayService;I)V
    .locals 0

    iput p1, p0, Lcom/lvteam/OverlayService;->initialY:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputlastProjected(Lcom/lvteam/OverlayService;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/lvteam/OverlayService;->lastProjected:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdp(Lcom/lvteam/OverlayService;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mkillApp(Lcom/lvteam/OverlayService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->killApp(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrefreshPlayerList(Lcom/lvteam/OverlayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->refreshPlayerList()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateEnemyCounter(Lcom/lvteam/OverlayService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->updateEnemyCounter(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const-string v0, "\u26a1"

    const-string v1, "\u2699"

    const-string v2, "\u25c9"

    const-string v3, "\u2630"

    filled-new-array {v2, v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lvteam/OverlayService;->TAB_ICONS:[Ljava/lang/String;

    const-string v0, "Exploit"

    const-string v1, "Settings"

    const-string v2, "Aim"

    const-string v3, "Views"

    const-string v4, "Players"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lvteam/OverlayService;->TAB_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lvteam/OverlayService;->tabPanels:[Landroid/widget/LinearLayout;

    new-array v1, v0, [Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lvteam/OverlayService;->sidebarItems:[Landroid/widget/LinearLayout;

    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lvteam/OverlayService;->sidebarIcons:[Landroid/widget/TextView;

    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lvteam/OverlayService;->sidebarLabels:[Landroid/widget/TextView;

    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Lcom/lvteam/OverlayService;->sidebarAccents:[Landroid/view/View;

    const/4 v1, 0x0

    iput v1, p0, Lcom/lvteam/OverlayService;->activeTab:I

    new-instance v1, Lcom/lvteam/EspEngine;

    invoke-direct {v1}, Lcom/lvteam/EspEngine;-><init>()V

    iput-object v1, p0, Lcom/lvteam/OverlayService;->espEngine:Lcom/lvteam/EspEngine;

    invoke-static {}, Lcom/lvteam/EntityState;->shared()Lcom/lvteam/EntityState;

    move-result-object v1

    iput-object v1, p0, Lcom/lvteam/OverlayService;->entityState:Lcom/lvteam/EntityState;

    const/16 v1, 0x6e

    iput v1, p0, Lcom/lvteam/OverlayService;->fovPercent:I

    const/16 v1, 0xa0

    iput v1, p0, Lcom/lvteam/OverlayService;->maxDistanceM:I

    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/lvteam/OverlayService;->elementColor:[I

    iput v0, p0, Lcom/lvteam/OverlayService;->thicknessIndex:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lvteam/OverlayService;->colors:[I

    const/16 v0, 0xb

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/lvteam/OverlayService;->thicknesses:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lvteam/OverlayService;->lastProjected:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lvteam/OverlayService;->ignoredIds:Ljava/util/Set;

    new-instance v0, Lcom/lvteam/OverlayService$1;

    invoke-direct {v0, p0}, Lcom/lvteam/OverlayService$1;-><init>(Lcom/lvteam/OverlayService;)V

    iput-object v0, p0, Lcom/lvteam/OverlayService;->espFrame:Landroid/view/Choreographer$FrameCallback;

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
        -0x100
        -0xff01
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
        0x3fb33333    # 1.4f
        0x3fc00000    # 1.5f
    .end array-data
.end method

.method private addDropdownRow(Landroid/widget/LinearLayout;Ljava/lang/String;[Ljava/lang/String;ILcom/lvteam/OverlayService$DropdownCallback;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/lvteam/OverlayService;->newRow(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  \u25bc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0x19120d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v2, "sans-serif-medium"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    invoke-virtual {v1, v4, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v3, -0xe3dccd

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    const v4, -0xcbc3b6

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda22;

    invoke-direct {v3, p3, v1, p5}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda22;-><init>([Ljava/lang/String;Landroid/widget/TextView;Lcom/lvteam/OverlayService$DropdownCallback;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->addRowLine(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private addEspToggle(Landroid/widget/LinearLayout;Ljava/lang/String;ILcom/lvteam/OverlayService$ToggleCallback;)Landroid/widget/FrameLayout;
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/lvteam/OverlayService;->newRow(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/lvteam/OverlayService;->makeSwatch(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->swatchParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->makeCheckbox()Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0, p4}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda27;-><init>(Lcom/lvteam/OverlayService;Lcom/lvteam/OverlayService$ToggleCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x1a

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->addRowLine(Landroid/widget/LinearLayout;)V

    return-object v1
.end method

.method private addFeatureToggle(Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/lvteam/OverlayService$ToggleCallback;)Landroid/widget/FrameLayout;
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/lvteam/OverlayService;->newRow(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->makeCheckbox()Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p3}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda18;-><init>(Lcom/lvteam/OverlayService;Lcom/lvteam/OverlayService$ToggleCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x1a

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->addRowLine(Landroid/widget/LinearLayout;)V

    return-object v1
.end method

.method private addInfoRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0x827a70

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x26

    invoke-direct {p0, v5}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, -0x19120d

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v2, "sans-serif-medium"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x800015

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v5}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    const/4 v6, -0x2

    invoke-direct {v2, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v5}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->addRowLine(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private addRowLine(Landroid/widget/LinearLayout;)V
    .locals 5

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, -0xe3dcd2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addSectionLabel(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 9

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    const/16 v4, 0xe

    invoke-direct {p0, v4}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v3, -0xe3dcd2

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, -0x827a70

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v6, 0x3e3851ec    # 0.18f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v6

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    invoke-virtual {v4, v6, v7, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v5}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v5

    invoke-direct {v3, v7, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addShiftToggle(Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/lvteam/OverlayService;->newRow(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->makeCheckbox()Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p3}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda14;-><init>(Lcom/lvteam/OverlayService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x1a

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->addRowLine(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private addSliderRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;IIILcom/lvteam/OverlayService$SliderCallback;)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p6

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    const/16 v0, 0x10

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {v6, v0}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-direct {v6, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    const/16 v2, 0xe

    invoke-direct {v6, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v1, v2, v10}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v11, v0

    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, -0x19120d

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x1a

    invoke-direct {v6, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v10, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v13, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v14, p3

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, -0xd6490a

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x800015

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    const/4 v3, -0x2

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v13, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x22

    invoke-direct {v6, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    const/4 v15, -0x1

    invoke-direct {v1, v15, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/SeekBar;

    invoke-direct {v1, v6}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    move-object v5, v1

    sub-int v1, p5, p4

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    sub-int v1, v8, p4

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    const v0, -0xe1dacb

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    new-instance v0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Lcom/lvteam/OverlayService$2;

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object v3, v13

    move-object v10, v4

    move-object/from16 v4, p3

    move-object v15, v5

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/lvteam/OverlayService$2;-><init>(Lcom/lvteam/OverlayService;ILandroid/widget/TextView;Ljava/lang/String;Lcom/lvteam/OverlayService$SliderCallback;)V

    invoke-virtual {v15, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x1c

    invoke-direct {v6, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-direct {v6, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    invoke-direct {v6, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    const/4 v3, 0x6

    invoke-direct {v6, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p1}, Lcom/lvteam/OverlayService;->addRowLine(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private appVersionName()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "-"

    return-object v1
.end method

.method private applyCheckboxStyle(Landroid/widget/FrameLayout;Z)V
    .locals 3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const v2, -0xde690d

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    const v2, -0xb03c09

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_0
    const v2, -0xf1ebe4

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    const v2, -0xcbc3b6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    const v2, 0xffffff

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private buildAimTab(Landroid/widget/LinearLayout;)V
    .locals 11

    const-string v0, "Enable Aim"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/lvteam/OverlayService;->addShiftToggle(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    const-string v0, "Magnetic"

    const-string v1, "Silent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "Metodo Aim"

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/lvteam/OverlayService;->addDropdownRow(Landroid/widget/LinearLayout;Ljava/lang/String;[Ljava/lang/String;ILcom/lvteam/OverlayService$DropdownCallback;)V

    new-instance v0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "Freeze Scop"

    invoke-direct {p0, p1, v1, v0}, Lcom/lvteam/OverlayService;->addFeatureToggle(Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/lvteam/OverlayService$ToggleCallback;)Landroid/widget/FrameLayout;

    new-instance v0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "Freeze Fire"

    invoke-direct {p0, p1, v1, v0}, Lcom/lvteam/OverlayService;->addFeatureToggle(Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/lvteam/OverlayService$ToggleCallback;)Landroid/widget/FrameLayout;

    new-instance v0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda7;-><init>(Lcom/lvteam/OverlayService;)V

    const-string v1, "Enable Fov"

    const/4 v2, 0x4

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/lvteam/OverlayService;->addEspToggle(Landroid/widget/LinearLayout;Ljava/lang/String;ILcom/lvteam/OverlayService$ToggleCallback;)Landroid/widget/FrameLayout;

    iget v9, p0, Lcom/lvteam/OverlayService;->fovPercent:I

    new-instance v10, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda8;

    invoke-direct {v10, p0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda8;-><init>(Lcom/lvteam/OverlayService;)V

    const-string v5, "Changed Fov"

    const-string v6, "%"

    const/16 v7, 0x32

    const/16 v8, 0xc8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/lvteam/OverlayService;->addSliderRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;IIILcom/lvteam/OverlayService$SliderCallback;)V

    new-instance v0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "Aim Line"

    invoke-direct {p0, p1, v1, v0}, Lcom/lvteam/OverlayService;->addFeatureToggle(Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/lvteam/OverlayService$ToggleCallback;)Landroid/widget/FrameLayout;

    new-instance v0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "Ignore Derrubados"

    invoke-direct {p0, p1, v1, v0}, Lcom/lvteam/OverlayService;->addFeatureToggle(Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/lvteam/OverlayService$ToggleCallback;)Landroid/widget/FrameLayout;

    return-void
.end method

.method private buildExploitTab(Landroid/widget/LinearLayout;)V
    .locals 10

    const-string v0, "Ghost Hacker"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lvteam/OverlayService;->addShiftToggle(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    const-string v0, "Teleporte"

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/lvteam/OverlayService;->addShiftToggle(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    nop

    invoke-static {}, Lcom/lvteam/LvTeamShift;->getTeleportSpeed()I

    move-result v8

    new-instance v9, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda24;

    invoke-direct {v9}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda24;-><init>()V

    const-string v4, "Velocidade TP"

    const-string v5, "x"

    const/4 v6, 0x1

    const/16 v7, 0xa

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/lvteam/OverlayService;->addSliderRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;IIILcom/lvteam/OverlayService$SliderCallback;)V

    const-string v0, "Under Player"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/lvteam/OverlayService;->addShiftToggle(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    return-void
.end method

.method private buildHeader()Landroid/widget/LinearLayout;
    .locals 13

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v2, -0xe9e4de

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-direct {p0, v5}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v5

    const/16 v6, 0xa

    invoke-direct {p0, v6}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v6

    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "D\u00d3MI HACK "

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0xd6490a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const v7, 0x3d4ccccd    # 0.05f

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const-string v8, "sans-serif-medium"

    invoke-static {v8, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v11, "TEAM"

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, -0x19120d

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setLetterSpacing(F)V

    invoke-static {v8, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct {v7, v11, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "\u2500"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, -0x827a70

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x11

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v8, 0x7

    invoke-direct {p0, v8}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v8, -0xe3dccd

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    const v8, -0xcbc3b6

    invoke-virtual {v6, v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda21;-><init>(Lcom/lvteam/OverlayService;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x1e

    invoke-direct {p0, v8}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v10

    invoke-direct {p0, v8}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v8

    invoke-direct {v1, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    filled-new-array {v11, v5, v5, v11}, [I

    move-result-object v5

    invoke-direct {v8, v10, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v5, v8

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v10

    const/4 v12, -0x1

    invoke-direct {v8, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v10

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    invoke-virtual {v8, v10, v11, v3, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private buildPlayersTab(Landroid/widget/LinearLayout;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {v0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {v0, v5}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v6

    const/16 v7, 0xe

    invoke-direct {v0, v7}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v8

    invoke-direct {v0, v5}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v5

    invoke-virtual {v2, v4, v6, v8, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "Players Detectados"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0xd6490a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v6, "sans-serif-medium"

    const/4 v8, 0x1

    invoke-static {v6, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-direct {v6, v10, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v9, "LIMPAR"

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, -0x827a70

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x41200000    # 10.0f

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v13, 0x11

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v14, 0xa

    invoke-direct {v0, v14}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v15

    invoke-direct {v0, v14}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v14

    invoke-virtual {v6, v15, v10, v14, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v14, 0x6

    invoke-direct {v0, v14}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v10, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v15, -0xe3dccd

    invoke-virtual {v10, v15}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {v0, v8}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v15

    const v8, -0xcbc3b6

    invoke-virtual {v10, v15, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda19;

    invoke-direct {v8, v0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda19;-><init>(Lcom/lvteam/OverlayService;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x18

    invoke-direct {v0, v15}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v15

    invoke-direct {v8, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p1}, Lcom/lvteam/OverlayService;->addRowLine(Landroid/widget/LinearLayout;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v15, "Toque num player para o ESP e o Magnet ignorarem ele"

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-direct {v0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    invoke-direct {v0, v14}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v12

    invoke-direct {v0, v7}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v15

    invoke-direct {v0, v14}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v14

    invoke-virtual {v8, v3, v12, v15, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/lvteam/OverlayService;->playerEmptyLabel:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/lvteam/OverlayService;->playerEmptyLabel:Landroid/widget/TextView;

    const-string v12, "Nenhum player detectado"

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/lvteam/OverlayService;->playerEmptyLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/lvteam/OverlayService;->playerEmptyLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, v0, Lcom/lvteam/OverlayService;->playerEmptyLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Lcom/lvteam/OverlayService;->playerEmptyLabel:Landroid/widget/TextView;

    invoke-direct {v0, v7}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v5

    const/16 v9, 0x32

    invoke-direct {v0, v9}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v12

    invoke-direct {v0, v7}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v7

    invoke-direct {v0, v9}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v9

    invoke-virtual {v3, v5, v12, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, v0, Lcom/lvteam/OverlayService;->playerEmptyLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/lvteam/OverlayService;->playerListContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/lvteam/OverlayService;->playerListContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, v0, Lcom/lvteam/OverlayService;->playerListContainer:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v5, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private buildSettingsTab(Landroid/widget/LinearLayout;)V
    .locals 9

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "Informa\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0xd6490a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v1, "sans-serif-medium"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    const/16 v5, 0xe

    invoke-direct {p0, v5}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v5

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->addRowLine(Landroid/widget/LinearLayout;)V

    const-string v2, "Vers\u00e3o"

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->appVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/lvteam/OverlayService;->addInfoRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Dispositivo"

    invoke-direct {p0, p1, v3, v2}, Lcom/lvteam/OverlayService;->addInfoRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {p0, p1, v3, v2}, Lcom/lvteam/OverlayService;->addInfoRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x18

    invoke-direct {p0, v4}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "EXIT"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v6, -0x1ac6cb

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v6, 0x9

    invoke-direct {p0, v6}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v6, 0xc

    invoke-direct {p0, v6}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v7

    invoke-direct {p0, v6}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v7, v8, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v6, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda23;

    invoke-direct {v6, p0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda23;-><init>(Lcom/lvteam/OverlayService;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v5, v6

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v6

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    invoke-virtual {v5, v6, v8, v1, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private buildSidebar()Landroid/widget/LinearLayout;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v3, -0xf2eee9

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v3, 0x8

    invoke-direct {v0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    invoke-direct {v0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    move v6, v3

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v10, 0xa

    invoke-direct {v0, v10}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v12, 0x2

    invoke-direct {v0, v12}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, 0x3

    invoke-direct {v0, v13}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v14

    const/16 v15, 0x14

    invoke-direct {v0, v15}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v13

    invoke-direct {v12, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v13, 0x4

    invoke-direct {v0, v13}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v13

    const/4 v14, 0x7

    invoke-direct {v0, v14}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    invoke-virtual {v12, v13, v5, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v13, Lcom/lvteam/OverlayService;->TAB_ICONS:[Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v13, 0x41500000    # 13.0f

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v15}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v14

    invoke-direct {v0, v15}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v15

    invoke-direct {v5, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v14, Lcom/lvteam/OverlayService;->TAB_NAMES:[Ljava/lang/String;

    aget-object v14, v14, v3

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v13, "sans-serif-medium"

    invoke-static {v13, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v8, 0x7

    invoke-direct {v0, v8}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v8

    const/4 v13, 0x0

    invoke-virtual {v5, v8, v13, v13, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, -0x1

    invoke-direct {v8, v13, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda4;

    invoke-direct {v8, v0, v6}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda4;-><init>(Lcom/lvteam/OverlayService;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x30

    invoke-direct {v0, v14}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v14

    invoke-direct {v8, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v14, 0x5

    invoke-direct {v0, v14}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v15

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v13

    invoke-direct {v0, v14}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v14

    invoke-direct {v0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    invoke-virtual {v8, v15, v13, v14, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/lvteam/OverlayService;->sidebarItems:[Landroid/widget/LinearLayout;

    aput-object v7, v2, v3

    iget-object v2, v0, Lcom/lvteam/OverlayService;->sidebarIcons:[Landroid/widget/TextView;

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/lvteam/OverlayService;->sidebarLabels:[Landroid/widget/TextView;

    aput-object v5, v2, v3

    iget-object v2, v0, Lcom/lvteam/OverlayService;->sidebarAccents:[Landroid/view/View;

    aput-object v10, v2, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_0
    nop

    return-object v1
.end method

.method private buildTabPanel(I)Landroid/widget/LinearLayout;
    .locals 6

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    new-instance v2, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->buildSettingsTab(Landroid/widget/LinearLayout;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->buildExploitTab(Landroid/widget/LinearLayout;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->buildPlayersTab(Landroid/widget/LinearLayout;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->buildViewsTab(Landroid/widget/LinearLayout;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->buildAimTab(Landroid/widget/LinearLayout;)V

    :goto_0
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildThicknessPicker(Landroid/widget/LinearLayout;)V
    .locals 8

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const-string v1, "\u25c2"

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->styledArrow(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda11;-><init>(Lcom/lvteam/OverlayService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x20

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lvteam/OverlayService;->thicknessLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lvteam/OverlayService;->thicknessLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lvteam/OverlayService;->thicknesses:[F

    iget v5, p0, Lcom/lvteam/OverlayService;->thicknessIndex:I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/lvteam/OverlayService;->thicknessLabel:Landroid/widget/TextView;

    const v4, -0x19120d

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/lvteam/OverlayService;->thicknessLabel:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/lvteam/OverlayService;->thicknessLabel:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/lvteam/OverlayService;->thicknessLabel:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/lvteam/OverlayService;->thicknessLabel:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "\u25b8"

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->styledArrow(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda12;-><init>(Lcom/lvteam/OverlayService;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v5

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    invoke-direct {v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private buildViewsTab(Landroid/widget/LinearLayout;)V
    .locals 11

    new-instance v0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda28;-><init>(Lcom/lvteam/OverlayService;)V

    const-string v1, "Enable Esp"

    invoke-direct {p0, p1, v1, v0}, Lcom/lvteam/OverlayService;->addFeatureToggle(Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/lvteam/OverlayService$ToggleCallback;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/lvteam/OverlayService;->espMasterBox:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda29;-><init>(Lcom/lvteam/OverlayService;)V

    const-string v1, "Esp Line"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/lvteam/OverlayService;->addEspToggle(Landroid/widget/LinearLayout;Ljava/lang/String;ILcom/lvteam/OverlayService$ToggleCallback;)Landroid/widget/FrameLayout;

    new-instance v0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda30;-><init>(Lcom/lvteam/OverlayService;)V

    const-string v1, "Esp Box"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/lvteam/OverlayService;->addEspToggle(Landroid/widget/LinearLayout;Ljava/lang/String;ILcom/lvteam/OverlayService$ToggleCallback;)Landroid/widget/FrameLayout;

    new-instance v0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda31;-><init>(Lcom/lvteam/OverlayService;)V

    const-string v1, "Esp Name"

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/lvteam/OverlayService;->addEspToggle(Landroid/widget/LinearLayout;Ljava/lang/String;ILcom/lvteam/OverlayService$ToggleCallback;)Landroid/widget/FrameLayout;

    new-instance v0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda32;-><init>(Lcom/lvteam/OverlayService;)V

    const-string v1, "Esp Distance"

    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/lvteam/OverlayService;->addEspToggle(Landroid/widget/LinearLayout;Ljava/lang/String;ILcom/lvteam/OverlayService$ToggleCallback;)Landroid/widget/FrameLayout;

    iget v9, p0, Lcom/lvteam/OverlayService;->maxDistanceM:I

    new-instance v10, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda33;

    invoke-direct {v10, p0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda33;-><init>(Lcom/lvteam/OverlayService;)V

    const-string v5, "Max Distance"

    const-string v6, "m"

    const/16 v7, 0xa

    const/16 v8, 0xc8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/lvteam/OverlayService;->addSliderRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;IIILcom/lvteam/OverlayService$SliderCallback;)V

    const-string v0, "Corner"

    const-string v1, "Full"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "Box Style"

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/lvteam/OverlayService;->addDropdownRow(Landroid/widget/LinearLayout;Ljava/lang/String;[Ljava/lang/String;ILcom/lvteam/OverlayService$DropdownCallback;)V

    new-instance v0, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda34;-><init>(Lcom/lvteam/OverlayService;)V

    const-string v1, "Enemy Count"

    invoke-direct {p0, p1, v1, v0}, Lcom/lvteam/OverlayService;->addFeatureToggle(Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/lvteam/OverlayService$ToggleCallback;)Landroid/widget/FrameLayout;

    const-string v0, "ESPESSURA"

    invoke-direct {p0, p1, v0}, Lcom/lvteam/OverlayService;->addSectionLabel(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->buildThicknessPicker(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private changeThickness(I)V
    .locals 4

    iget v0, p0, Lcom/lvteam/OverlayService;->thicknessIndex:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/lvteam/OverlayService;->thicknesses:[F

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/lvteam/OverlayService;->thicknessIndex:I

    iget-object v1, p0, Lcom/lvteam/OverlayService;->thicknessLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lvteam/OverlayService;->thicknesses:[F

    iget v3, p0, Lcom/lvteam/OverlayService;->thicknessIndex:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->circleOverlay:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lvteam/OverlayService;->circleOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->circleBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-direct {p0}, Lcom/lvteam/OverlayService;->updateBoxStyle()V

    return-void

    :goto_0
    return-void
.end method

.method private circleBackground()Landroid/graphics/drawable/GradientDrawable;
    .locals 5

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->thicknesses:[F

    iget v2, p0, Lcom/lvteam/OverlayService;->thicknessIndex:I

    aget v1, v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/lvteam/OverlayService;->colors:[I

    iget-object v3, p0, Lcom/lvteam/OverlayService;->elementColor:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method private dp(I)I
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

.method private enableEspMaster()V
    .locals 3

    iget-boolean v0, p0, Lcom/lvteam/OverlayService;->espEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lvteam/OverlayService;->espEnabled:Z

    iget-object v1, p0, Lcom/lvteam/OverlayService;->espMasterBox:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/lvteam/OverlayService;->espMasterBox:Landroid/widget/FrameLayout;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->espMasterBox:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1, v0}, Lcom/lvteam/OverlayService;->applyCheckboxStyle(Landroid/widget/FrameLayout;Z)V

    return-void
.end method

.method private highlightTab(I)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/lvteam/OverlayService;->sidebarIcons:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    const v5, -0x827a70

    const v6, -0xd6490a

    if-eqz v3, :cond_1

    move v7, v6

    goto :goto_2

    :cond_1
    move v7, v5

    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/lvteam/OverlayService;->sidebarLabels:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/lvteam/OverlayService;->sidebarItems:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_3

    const v5, -0xe9ddcc

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    if-eqz v3, :cond_5

    const v5, 0x662196f3

    goto :goto_5

    :cond_5
    move v5, v2

    :goto_5
    invoke-virtual {v4, v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->sidebarAccents:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_6

    move v2, v6

    :cond_6
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    nop

    return-void
.end method

.method private initShiftOverlayIfNeeded()V
    .locals 1

    sget-object v0, Lcom/lvteam/LvShiftOverlay;->ctx:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/lvteam/LvShiftOverlay;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private killApp(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda26;

    invoke-direct {v1}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda26;-><init>()V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static synthetic lambda$addDropdownRow$20([Ljava/lang/String;Landroid/widget/TextView;Lcom/lvteam/OverlayService$DropdownCallback;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  \u25bc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Lcom/lvteam/OverlayService$DropdownCallback;->onSelect(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$addEspToggle$17(Lcom/lvteam/OverlayService$ToggleCallback;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/lvteam/LvSession;->get()Lcom/lvteam/LvSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lvteam/LvSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, p2

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-direct {p0, v1, v0}, Lcom/lvteam/OverlayService;->applyCheckboxStyle(Landroid/widget/FrameLayout;Z)V

    invoke-interface {p1, v0}, Lcom/lvteam/OverlayService$ToggleCallback;->onToggle(Z)V

    return-void
.end method

.method private synthetic lambda$addFeatureToggle$16(Lcom/lvteam/OverlayService$ToggleCallback;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/lvteam/LvSession;->get()Lcom/lvteam/LvSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lvteam/LvSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, p2

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-direct {p0, v1, v0}, Lcom/lvteam/OverlayService;->applyCheckboxStyle(Landroid/widget/FrameLayout;Z)V

    invoke-interface {p1, v0}, Lcom/lvteam/OverlayService$ToggleCallback;->onToggle(Z)V

    return-void
.end method

.method private synthetic lambda$addShiftToggle$19(ILandroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/lvteam/LvSession;->get()Lcom/lvteam/LvSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lvteam/LvSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, p2

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-direct {p0, v1, v0}, Lcom/lvteam/OverlayService;->applyCheckboxStyle(Landroid/widget/FrameLayout;Z)V

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->initShiftOverlayIfNeeded()V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/lvteam/LvShiftOverlay;->setWallVisible(Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/lvteam/LvShiftOverlay;->setTpBaseVisible(Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/lvteam/LvShiftOverlay;->setTatuVisible(Z)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0}, Lcom/lvteam/LvShiftOverlay;->setGhostVisible(Z)V

    goto :goto_0

    :pswitch_4
    invoke-static {v0}, Lcom/lvteam/LvShiftOverlay;->setMagnetVisible(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$addSliderRow$21(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$buildAimTab$4(I)V
    .locals 0

    iput p1, p0, Lcom/lvteam/OverlayService;->fovPercent:I

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->updateCircleSize()V

    return-void
.end method

.method private static synthetic lambda$buildAimTab$5(Z)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$buildAimTab$6(Z)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$buildHeader$1(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lvteam/OverlayService;->setMinimized(Z)V

    return-void
.end method

.method private synthetic lambda$buildPlayersTab$14(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/lvteam/OverlayService;->ignoredIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->syncIgnoredSlots()V

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->refreshPlayerList()V

    return-void
.end method

.method private synthetic lambda$buildSettingsTab$15(Landroid/view/View;)V
    .locals 1

    const-string v0, "Saindo..."

    invoke-direct {p0, v0}, Lcom/lvteam/OverlayService;->killApp(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$buildSidebar$2(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->switchTab(I)V

    return-void
.end method

.method private static synthetic lambda$buildTabPanel$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$buildThicknessPicker$22(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lvteam/OverlayService;->changeThickness(I)V

    return-void
.end method

.method private synthetic lambda$buildThicknessPicker$23(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lvteam/OverlayService;->changeThickness(I)V

    return-void
.end method

.method private synthetic lambda$buildViewsTab$10(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lvteam/OverlayService;->drawName:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->enableEspMaster()V

    :cond_0
    invoke-direct {p0}, Lcom/lvteam/OverlayService;->updateEspOverlay()V

    return-void
.end method

.method private synthetic lambda$buildViewsTab$11(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lvteam/OverlayService;->drawDistance:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->enableEspMaster()V

    :cond_0
    invoke-direct {p0}, Lcom/lvteam/OverlayService;->updateEspOverlay()V

    return-void
.end method

.method private synthetic lambda$buildViewsTab$12(I)V
    .locals 0

    iput p1, p0, Lcom/lvteam/OverlayService;->maxDistanceM:I

    return-void
.end method

.method private synthetic lambda$buildViewsTab$13(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lvteam/OverlayService;->enemyCounterEnabled:Z

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->updateEspOverlay()V

    return-void
.end method

.method private synthetic lambda$buildViewsTab$7(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lvteam/OverlayService;->espEnabled:Z

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->updateEspOverlay()V

    return-void
.end method

.method private synthetic lambda$buildViewsTab$8(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lvteam/OverlayService;->drawLine:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->enableEspMaster()V

    :cond_0
    invoke-direct {p0}, Lcom/lvteam/OverlayService;->updateEspOverlay()V

    return-void
.end method

.method private synthetic lambda$buildViewsTab$9(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lvteam/OverlayService;->boxEnabled:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->enableEspMaster()V

    :cond_0
    invoke-direct {p0}, Lcom/lvteam/OverlayService;->updateEspOverlay()V

    return-void
.end method

.method private static synthetic lambda$killApp$26()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private synthetic lambda$makeSwatch$18(ILandroid/graphics/drawable/GradientDrawable;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/lvteam/OverlayService;->elementColor:[I

    iget-object v1, p0, Lcom/lvteam/OverlayService;->elementColor:[I

    aget v1, v1, p1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/lvteam/OverlayService;->colors:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    aput v1, v0, p1

    iget-object v0, p0, Lcom/lvteam/OverlayService;->colors:[I

    iget-object v1, p0, Lcom/lvteam/OverlayService;->elementColor:[I

    aget v1, v1, p1

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/lvteam/OverlayService;->circleOverlay:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lvteam/OverlayService;->circleOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->circleBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/lvteam/OverlayService;->updateBoxStyle()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$refreshPlayerList$24(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->toggleIgnored(I)V

    return-void
.end method

.method private synthetic lambda$refreshPlayerList$25(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->toggleIgnored(I)V

    return-void
.end method

.method private synthetic lambda$showOverlay$0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lvteam/OverlayService;->setMinimized(Z)V

    return-void
.end method

.method private makeCheckbox()Landroid/widget/FrameLayout;
    .locals 4

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\u2713"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v2}, Lcom/lvteam/OverlayService;->applyCheckboxStyle(Landroid/widget/FrameLayout;Z)V

    return-object v0
.end method

.method private makeSwatch(I)Landroid/view/View;
    .locals 4

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v2, p0, Lcom/lvteam/OverlayService;->colors:[I

    iget-object v3, p0, Lcom/lvteam/OverlayService;->elementColor:[I

    aget v3, v3, p1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    const v3, -0xcbc3b6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, p1, v1}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda20;-><init>(Lcom/lvteam/OverlayService;ILandroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private menuHeight()I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x15e

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    const/16 v2, 0x104

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    const/16 v3, 0x24

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private menuWidth()I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x14a

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    const/16 v2, 0x122

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    const/16 v3, 0x24

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private newRow(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 7

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0x19120d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x2e

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private refreshPlayerList()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lvteam/OverlayService;->playerListContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/lvteam/OverlayService;->lastProjected:Ljava/util/List;

    iget-object v2, v0, Lcom/lvteam/OverlayService;->playerListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    goto/16 :goto_5

    :cond_2
    iget-object v3, v0, Lcom/lvteam/OverlayService;->playerEmptyLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/lvteam/OverlayService;->playerEmptyLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lvteam/EspOverlayView$Entity;

    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x14

    if-le v3, v6, :cond_4

    goto/16 :goto_4

    :cond_4
    iget v6, v5, Lcom/lvteam/EspOverlayView$Entity;->id:I

    iget-object v7, v0, Lcom/lvteam/OverlayService;->ignoredIds:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {v0, v9}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v9

    const/16 v10, 0xe

    invoke-direct {v0, v10}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v10

    invoke-virtual {v8, v9, v2, v10, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v9, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda15;

    invoke-direct {v9, v0, v6}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda15;-><init>(Lcom/lvteam/OverlayService;I)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v10, v5, Lcom/lvteam/EspOverlayView$Entity;->name:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, v5, Lcom/lvteam/EspOverlayView$Entity;->name:Ljava/lang/String;

    goto :goto_1

    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Enemy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, -0x827a70

    if-eqz v7, :cond_6

    move v11, v10

    goto :goto_2

    :cond_6
    const v11, -0x19120d

    :goto_2
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v11, 0x41400000    # 12.0f

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x26

    invoke-direct {v0, v13}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v12, v2, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v5, Lcom/lvteam/EspOverlayView$Entity;->distanceMeters:F

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "m"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    const v10, -0xd6490a

    :goto_3
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v10, 0x800015

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x2a

    invoke-direct {v0, v11}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v11

    invoke-direct {v0, v13}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v14

    invoke-direct {v10, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xc

    invoke-direct {v0, v11}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v11

    invoke-virtual {v10, v2, v2, v11, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v8, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lcom/lvteam/OverlayService;->makeCheckbox()Landroid/widget/FrameLayout;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-direct {v0, v11, v7}, Lcom/lvteam/OverlayService;->applyCheckboxStyle(Landroid/widget/FrameLayout;Z)V

    new-instance v14, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda16;

    invoke-direct {v14, v0, v6}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda16;-><init>(Lcom/lvteam/OverlayService;I)V

    invoke-virtual {v11, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x16

    invoke-direct {v0, v15}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    invoke-direct {v0, v15}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v15

    invoke-direct {v14, v2, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/lvteam/OverlayService;->playerListContainer:Landroid/widget/LinearLayout;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v13}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v13

    const/4 v15, -0x1

    invoke-direct {v14, v15, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/lvteam/OverlayService;->playerListContainer:Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Lcom/lvteam/OverlayService;->addRowLine(Landroid/widget/LinearLayout;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    :goto_4
    return-void

    :goto_5
    iget-object v2, v0, Lcom/lvteam/OverlayService;->playerEmptyLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/lvteam/OverlayService;->playerEmptyLabel:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private removeBox()V
    .locals 2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/lvteam/OverlayService;->espFrame:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v0, p0, Lcom/lvteam/OverlayService;->boxOverlay:Lcom/lvteam/EspOverlayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lvteam/OverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lvteam/OverlayService;->boxOverlay:Lcom/lvteam/EspOverlayView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lvteam/OverlayService;->boxOverlay:Lcom/lvteam/EspOverlayView;

    :cond_0
    return-void
.end method

.method private removeCircle()V
    .locals 2

    iget-object v0, p0, Lcom/lvteam/OverlayService;->circleOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lvteam/OverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lvteam/OverlayService;->circleOverlay:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lvteam/OverlayService;->circleOverlay:Landroid/view/View;

    iput-object v0, p0, Lcom/lvteam/OverlayService;->circleParams:Landroid/view/WindowManager$LayoutParams;

    :cond_0
    return-void
.end method

.method private removeEnemyCounter()V
    .locals 2

    iget-object v0, p0, Lcom/lvteam/OverlayService;->enemyCounterOverlay:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lvteam/OverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lvteam/OverlayService;->enemyCounterOverlay:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lvteam/OverlayService;->enemyCounterOverlay:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lvteam/OverlayService;->enemyValue:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method private removeTeamTitle()V
    .locals 2

    iget-object v0, p0, Lcom/lvteam/OverlayService;->teamTitleOverlay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lvteam/OverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lvteam/OverlayService;->teamTitleOverlay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lvteam/OverlayService;->teamTitleOverlay:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method private setCircleEnabled(Z)V
    .locals 8

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/lvteam/OverlayService;->circleOverlay:Landroid/view/View;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lvteam/OverlayService;->circleOverlay:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f010000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/lvteam/OverlayService;->circleOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->circleBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v0

    iget v1, p0, Lcom/lvteam/OverlayService;->fovPercent:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f6

    move v4, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d2

    move v4, v1

    :goto_0
    nop

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x318

    const/4 v6, -0x3

    move-object v1, v7

    move v2, v0

    move v3, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v7, p0, Lcom/lvteam/OverlayService;->circleParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/lvteam/OverlayService;->circleParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/lvteam/OverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/lvteam/OverlayService;->circleOverlay:Landroid/view/View;

    iget-object v3, p0, Lcom/lvteam/OverlayService;->circleParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    goto :goto_1

    :cond_2
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->removeCircle()V

    :goto_1
    return-void
.end method

.method private setEnemyCounterEnabled(Z)V
    .locals 9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lvteam/OverlayService;->boxOverlay:Lcom/lvteam/EspOverlayView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/lvteam/OverlayService;->enemyCounterOverlay:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lvteam/OverlayService;->enemyCounterOverlay:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/lvteam/OverlayService;->enemyCounterOverlay:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/lvteam/OverlayService;->enemyCounterOverlay:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v3, -0x55efefd8

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    const v4, 0x4000e5ff

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->enemyCounterOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->enemyCounterOverlay:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v6

    invoke-direct {p0, v3}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    invoke-direct {p0, v5}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v5

    invoke-virtual {v1, v4, v6, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lvteam/OverlayService;->enemyValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lvteam/OverlayService;->enemyValue:Landroid/widget/TextView;

    const-string v3, "Enemy 0"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->enemyValue:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->enemyValue:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->enemyValue:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->enemyValue:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->enemyCounterOverlay:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lvteam/OverlayService;->enemyValue:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x16

    invoke-direct {p0, v4}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    const/16 v1, 0x7f6

    move v6, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d2

    move v6, v1

    :goto_0
    nop

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v5

    const/16 v7, 0x318

    const/4 v8, -0x3

    const/4 v4, -0x2

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v2, 0x31

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/lvteam/OverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/lvteam/OverlayService;->enemyCounterOverlay:Landroid/widget/LinearLayout;

    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    goto :goto_1

    :cond_3
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->removeEnemyCounter()V

    :goto_1
    return-void
.end method

.method private setMinimized(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/lvteam/OverlayService;->minimized:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/lvteam/OverlayService;->overlay:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->overlay:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/lvteam/OverlayService;->overlayBackground:Landroid/graphics/drawable/GradientDrawable;

    const v2, -0xff2eee9

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->overlayBackground:Landroid/graphics/drawable/GradientDrawable;

    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->overlayBackground:Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    const v4, -0xcbc3b6

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->overlay:Landroid/view/View;

    iget-object v3, p0, Lcom/lvteam/OverlayService;->overlayBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->overlay:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    :goto_0
    iget-object v1, p0, Lcom/lvteam/OverlayService;->headerContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->bodyContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->appIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lvteam/OverlayService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x38

    if-eqz p1, :cond_4

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    goto :goto_4

    :cond_4
    invoke-direct {p0}, Lcom/lvteam/OverlayService;->menuWidth()I

    move-result v2

    :goto_4
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/lvteam/OverlayService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_5

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    goto :goto_5

    :cond_5
    invoke-direct {p0}, Lcom/lvteam/OverlayService;->menuHeight()I

    move-result v1

    :goto_5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/lvteam/OverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lvteam/OverlayService;->overlay:Landroid/view/View;

    iget-object v2, p0, Lcom/lvteam/OverlayService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showOverlay()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/lvteam/OverlayService;->overlay:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/lvteam/OverlayService;->windowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/lvteam/OverlayService$DraggableLayout;

    invoke-direct {v0, p0, p0}, Lcom/lvteam/OverlayService$DraggableLayout;-><init>(Lcom/lvteam/OverlayService;Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lcom/lvteam/OverlayService;->overlayBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/lvteam/OverlayService;->overlayBackground:Landroid/graphics/drawable/GradientDrawable;

    const v2, -0xff2eee9

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->overlayBackground:Landroid/graphics/drawable/GradientDrawable;

    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->overlayBackground:Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    const v4, -0xcbc3b6

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->overlayBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->buildHeader()Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/lvteam/OverlayService;->headerContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lvteam/OverlayService;->headerContainer:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lvteam/OverlayService;->bodyContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lvteam/OverlayService;->bodyContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->buildSidebar()Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v6, p0, Lcom/lvteam/OverlayService;->bodyContainer:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x62

    invoke-direct {p0, v9}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v9

    invoke-direct {v8, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/lvteam/OverlayService;->bodyContainer:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    invoke-direct {v8, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v4, -0xeee7e0

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v4, 0x0

    :goto_0
    const/4 v8, 0x5

    const/16 v9, 0x8

    if-ge v4, v8, :cond_2

    iget-object v8, p0, Lcom/lvteam/OverlayService;->tabPanels:[Landroid/widget/LinearLayout;

    invoke-direct {p0, v4}, Lcom/lvteam/OverlayService;->buildTabPanel(I)Landroid/widget/LinearLayout;

    move-result-object v10

    aput-object v10, v8, v4

    iget-object v8, p0, Lcom/lvteam/OverlayService;->tabPanels:[Landroid/widget/LinearLayout;

    aget-object v8, v8, v4

    iget v10, p0, Lcom/lvteam/OverlayService;->activeTab:I

    if-ne v4, v10, :cond_1

    move v9, v5

    :cond_1
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/lvteam/OverlayService;->tabPanels:[Landroid/widget/LinearLayout;

    aget-object v8, v8, v4

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    nop

    iget-object v4, p0, Lcom/lvteam/OverlayService;->bodyContainer:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v5, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/lvteam/OverlayService;->bodyContainer:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v7, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lvteam/OverlayService;->appIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lvteam/OverlayService;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/lvteam/OverlayService;->appIcon:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, p0, Lcom/lvteam/OverlayService;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/lvteam/OverlayService;->appIcon:Landroid/widget/ImageView;

    new-instance v8, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda17;

    invoke-direct {v8, p0}, Lcom/lvteam/OverlayService$$ExternalSyntheticLambda17;-><init>(Lcom/lvteam/OverlayService;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/lvteam/OverlayService;->appIcon:Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v7, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/lvteam/OverlayService;->overlay:Landroid/view/View;

    iget v4, p0, Lcom/lvteam/OverlayService;->activeTab:I

    invoke-direct {p0, v4}, Lcom/lvteam/OverlayService;->highlightTab(I)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_3

    const/16 v4, 0x7f6

    move v10, v4

    goto :goto_1

    :cond_3
    const/16 v4, 0x7d2

    move v10, v4

    :goto_1
    nop

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->menuWidth()I

    move-result v8

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->menuHeight()I

    move-result v9

    const/16 v11, 0x8

    const/4 v12, -0x3

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v4, p0, Lcom/lvteam/OverlayService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/lvteam/OverlayService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    const v5, 0x800033

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/lvteam/OverlayService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/lvteam/OverlayService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x28

    invoke-direct {p0, v5}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/lvteam/OverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/lvteam/OverlayService;->overlay:Landroid/view/View;

    iget-object v7, p0, Lcom/lvteam/OverlayService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v7}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showTeamTitle()V
    .locals 8

    iget-object v0, p0, Lcom/lvteam/OverlayService;->teamTitleOverlay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lvteam/OverlayService;->teamTitleOverlay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lvteam/OverlayService;->teamTitleOverlay:Landroid/widget/TextView;

    sget v2, Lcom/lvteam/R$string;->title_lv_team:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->teamTitleOverlay:Landroid/widget/TextView;

    const v2, -0x44ff1a01

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->teamTitleOverlay:Landroid/widget/TextView;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->teamTitleOverlay:Landroid/widget/TextView;

    const-string v2, "sans-serif-medium"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->teamTitleOverlay:Landroid/widget/TextView;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->teamTitleOverlay:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->teamTitleOverlay:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->teamTitleOverlay:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    const/16 v1, 0x7f6

    move v5, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d2

    move v5, v1

    :goto_0
    nop

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x8c

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v3

    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v4

    const/16 v6, 0x318

    const/4 v7, -0x3

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v2, 0x31

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/lvteam/OverlayService;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private startAsForegroundService()V
    .locals 3

    const-string v0, "HANZX TEAM overlay"

    const/4 v1, 0x2

    const-string v2, "lv_team_overlay"

    invoke-static {v2, v0, v1}, Lcom/lvteam/OverlayService$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-static {v1, v0}, Lcom/lvteam/OverlayService$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    invoke-static {p0, v2}, Lcom/lvteam/OverlayService$$ExternalSyntheticApiModelOutline3;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x1080057

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "D\u00d3MI HACK OFC "

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "Overlay ativo"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private startPlayerListUpdater()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lvteam/OverlayService;->playerUpdateHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/lvteam/OverlayService;->playerUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lvteam/OverlayService$3;

    invoke-direct {v1, p0}, Lcom/lvteam/OverlayService$3;-><init>(Lcom/lvteam/OverlayService;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startSessionCheck()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lvteam/OverlayService;->sessionCheckHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/lvteam/OverlayService;->sessionCheckHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lvteam/OverlayService$4;

    invoke-direct {v1, p0}, Lcom/lvteam/OverlayService$4;-><init>(Lcom/lvteam/OverlayService;)V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private styledArrow(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0xd6490a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v2, -0xe3dccd

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    const v3, -0xcbc3b6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private swatchParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private switchTab(I)V
    .locals 2

    iget v0, p0, Lcom/lvteam/OverlayService;->activeTab:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lvteam/OverlayService;->tabPanels:[Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/lvteam/OverlayService;->activeTab:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput p1, p0, Lcom/lvteam/OverlayService;->activeTab:I

    iget-object v0, p0, Lcom/lvteam/OverlayService;->tabPanels:[Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/lvteam/OverlayService;->activeTab:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/lvteam/OverlayService;->highlightTab(I)V

    return-void
.end method

.method private syncIgnoredSlots()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lvteam/OverlayService;->ignoredIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->ignoredIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/lvteam/EntityState;->slotOfRenderId(I)I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/lvteam/LvTeamShift;->setIgnoredSlots(Ljava/util/Collection;)V

    return-void
.end method

.method private toggleIgnored(I)V
    .locals 2

    iget-object v0, p0, Lcom/lvteam/OverlayService;->ignoredIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lvteam/OverlayService;->ignoredIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/lvteam/OverlayService;->syncIgnoredSlots()V

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->refreshPlayerList()V

    return-void
.end method

.method private updateBoxOptions()V
    .locals 7

    iget-object v0, p0, Lcom/lvteam/OverlayService;->boxOverlay:Lcom/lvteam/EspOverlayView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lvteam/OverlayService;->boxOverlay:Lcom/lvteam/EspOverlayView;

    iget-boolean v1, p0, Lcom/lvteam/OverlayService;->espEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lvteam/OverlayService;->boxEnabled:Z

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-boolean v4, p0, Lcom/lvteam/OverlayService;->espEnabled:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/lvteam/OverlayService;->drawLine:Z

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-boolean v5, p0, Lcom/lvteam/OverlayService;->espEnabled:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/lvteam/OverlayService;->drawDistance:Z

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    iget-boolean v6, p0, Lcom/lvteam/OverlayService;->espEnabled:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/lvteam/OverlayService;->drawName:Z

    if-eqz v6, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/lvteam/EspOverlayView;->setDrawOptions(ZZZZ)V

    :cond_4
    return-void
.end method

.method private updateBoxStyle()V
    .locals 7

    iget-object v0, p0, Lcom/lvteam/OverlayService;->boxOverlay:Lcom/lvteam/EspOverlayView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lvteam/OverlayService;->boxOverlay:Lcom/lvteam/EspOverlayView;

    iget-object v1, p0, Lcom/lvteam/OverlayService;->colors:[I

    iget-object v2, p0, Lcom/lvteam/OverlayService;->elementColor:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    aget v1, v1, v2

    iget-object v2, p0, Lcom/lvteam/OverlayService;->colors:[I

    iget-object v3, p0, Lcom/lvteam/OverlayService;->elementColor:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aget v2, v2, v3

    iget-object v3, p0, Lcom/lvteam/OverlayService;->colors:[I

    iget-object v4, p0, Lcom/lvteam/OverlayService;->elementColor:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/lvteam/OverlayService;->colors:[I

    iget-object v5, p0, Lcom/lvteam/OverlayService;->elementColor:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lvteam/EspOverlayView;->setColors(IIII)V

    iget-object v0, p0, Lcom/lvteam/OverlayService;->boxOverlay:Lcom/lvteam/EspOverlayView;

    iget-object v1, p0, Lcom/lvteam/OverlayService;->thicknesses:[F

    iget v2, p0, Lcom/lvteam/OverlayService;->thicknessIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lvteam/EspOverlayView;->setThickness(F)V

    return-void
.end method

.method private updateCircleSize()V
    .locals 4

    iget-object v0, p0, Lcom/lvteam/OverlayService;->circleOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lvteam/OverlayService;->circleParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lcom/lvteam/OverlayService;->dp(I)I

    move-result v0

    iget v1, p0, Lcom/lvteam/OverlayService;->fovPercent:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/lvteam/OverlayService;->circleParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/lvteam/OverlayService;->circleParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/lvteam/OverlayService;->circleOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->circleBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/lvteam/OverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/lvteam/OverlayService;->circleOverlay:Landroid/view/View;

    iget-object v3, p0, Lcom/lvteam/OverlayService;->circleParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateEnemyCounter(I)V
    .locals 3

    iget-object v0, p0, Lcom/lvteam/OverlayService;->enemyValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lvteam/OverlayService;->enemyValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enemy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateEspOverlay()V
    .locals 9

    iget-boolean v0, p0, Lcom/lvteam/OverlayService;->espEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lvteam/OverlayService;->enemyCounterEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/lvteam/OverlayService;->boxOverlay:Lcom/lvteam/EspOverlayView;

    if-nez v2, :cond_5

    new-instance v2, Lcom/lvteam/EspOverlayView;

    invoke-direct {v2, p0}, Lcom/lvteam/EspOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lvteam/OverlayService;->boxOverlay:Lcom/lvteam/EspOverlayView;

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->updateBoxStyle()V

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->updateBoxOptions()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    const/16 v2, 0x7f6

    move v6, v2

    goto :goto_2

    :cond_2
    const/16 v2, 0x7d2

    move v6, v2

    :goto_2
    nop

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x318

    const/4 v8, -0x3

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_3

    invoke-static {v2, v1}, Lcom/lvteam/OverlayService$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_3
    iget-object v3, p0, Lcom/lvteam/OverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/lvteam/OverlayService;->boxOverlay:Lcom/lvteam/EspOverlayView;

    invoke-interface {v3, v4, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    iget-object v4, p0, Lcom/lvteam/OverlayService;->espFrame:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v3, v4}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_4
    goto :goto_3

    :cond_5
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->removeBox()V

    :goto_3
    invoke-direct {p0}, Lcom/lvteam/OverlayService;->updateBoxOptions()V

    iget-boolean v2, p0, Lcom/lvteam/OverlayService;->enemyCounterEnabled:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, v1}, Lcom/lvteam/OverlayService;->setEnemyCounterEnabled(Z)V

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/lvteam/OverlayService;->removeEnemyCounter()V

    :goto_4
    return-void
.end method


# virtual methods
.method public entityState()Lcom/lvteam/EntityState;
    .locals 1

    iget-object v0, p0, Lcom/lvteam/OverlayService;->entityState:Lcom/lvteam/EntityState;

    return-object v0
.end method

.method public espEngine()Lcom/lvteam/EspEngine;
    .locals 1

    iget-object v0, p0, Lcom/lvteam/OverlayService;->espEngine:Lcom/lvteam/EspEngine;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/lvteam/OverlayService;->sessionCheckHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lvteam/OverlayService;->sessionCheckHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/lvteam/OverlayService;->sessionCheckHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/lvteam/OverlayService;->playerUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lvteam/OverlayService;->playerUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/lvteam/OverlayService;->playerUpdateHandler:Landroid/os/Handler;

    :cond_1
    invoke-direct {p0}, Lcom/lvteam/OverlayService;->removeCircle()V

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->removeBox()V

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->removeEnemyCounter()V

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->removeTeamTitle()V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    invoke-static {v0}, Lcom/lvteam/LvShiftOverlay;->hideBtn(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lvteam/OverlayService;->overlay:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lvteam/OverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/lvteam/OverlayService;->overlay:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/lvteam/OverlayService;->overlay:Landroid/view/View;

    :cond_3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-static {}, Lcom/lvteam/LvSession;->get()Lcom/lvteam/LvSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lvteam/LvSession;->isActive()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/lvteam/OverlayService;->startAsForegroundService()V

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->showOverlay()V

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->showTeamTitle()V

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->startSessionCheck()V

    invoke-direct {p0}, Lcom/lvteam/OverlayService;->startPlayerListUpdater()V

    return v1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
