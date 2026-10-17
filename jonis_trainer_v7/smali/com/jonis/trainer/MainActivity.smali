.class public Lcom/jonis/trainer/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final API_URL:Ljava/lang/String;

.field private static final APP_ID:Ljava/lang/String;

.field static final PREFS:Ljava/lang/String; = "lv_auth"

.field private static final SECRET_KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MainActivity"

.field private static final TH_ACCENT:I = -0xff1a01

.field private static final TH_BG:I = -0xf5f1e6

.field private static final TH_BORDER:I = -0xcfc9c3

.field private static final TH_CARD:I = -0xe9e4de

.field private static final TH_INPUT_BG:I = -0xf2eee9

.field private static final TH_TEXT:I = -0xf0f01

.field private static final TH_TEXT_DIM:I = -0x777756

.field private static final VPN_PERMISSION_REQUEST:I = 0x7


# instance fields
.field private btnLogin:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private inputKey:Landroid/widget/EditText;

.field private prefs:Landroid/content/SharedPreferences;

.field private sharedForAccess:Z

.field private txtStatus:Landroid/widget/TextView;

.field private waitingForOverlayPermission:Z


# direct methods
.method public static synthetic $r8$lambda$N1foJ3QXexTDPncU2foyX0jpR04(Lcom/jonis/trainer/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/jonis/trainer/MainActivity;->launchGame()V

    return-void
.end method

.method public static synthetic $r8$lambda$_F6VHCIXfIgYA6obA4zNrqoX1Fw(Lcom/jonis/trainer/MainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jonis/trainer/MainActivity;->lambda$onCreate$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$bZOMgTmQzBRPmHGtpBVG0fjpmoM(Lcom/jonis/trainer/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jonis/trainer/MainActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgethandler(Lcom/jonis/trainer/MainActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/jonis/trainer/MainActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDeviceHwid(Lcom/jonis/trainer/MainActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/jonis/trainer/MainActivity;->getDeviceHwid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monAuthResult(Lcom/jonis/trainer/MainActivity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/jonis/trainer/MainActivity;->onAuthResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartSession(Lcom/jonis/trainer/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/jonis/trainer/MainActivity;->startSession()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetAPI_URL()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jonis/trainer/MainActivity;->API_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetAPP_ID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jonis/trainer/MainActivity;->APP_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetSECRET_KEY()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jonis/trainer/MainActivity;->SECRET_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smreadAll(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/jonis/trainer/MainActivity;->readAll(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x39

    const/16 v1, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jonis/trainer/MainActivity;->API_URL:Ljava/lang/String;

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jonis/trainer/MainActivity;->APP_ID:Ljava/lang/String;

    const/16 v1, 0x20

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jonis/trainer/MainActivity;->SECRET_KEY:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x24t
        0x22t
        0x20t
        0x35t
        0x32t
        0x77t
        0x63t
        0x79t
        0x31t
        0x33t
        0x34t
        0x2et
        0x23t
        0x24t
        0x31t
        0x68t
        0x72t
        0x7et
        0x25t
        0x3bt
        0x39t
        0x36t
        0x22t
        0x39t
        0x62t
        0x3bt
        0x35t
        0x2bt
        0x34t
        0x3et
        0x62t
        0x25t
        0x24t
        0x24t
        0x22t
        0x28t
        0x63t
        0x37t
        0x24t
        0x2ct
        0x6et
        0x3bt
        0x7dt
        0x79t
        0x35t
        0x30t
        0x35t
        0x25t
        0x63t
        0x20t
        0x35t
        0x29t
        0x28t
        0x29t
        0x2dt
        0x22t
        0x31t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2dt
        0x26t
        0x24t
        0x1at
        0x75t
        0x29t
        0xbt
        0xft
        0x60t
        0x3t
        0x73t
        0x27t
        0x34t
        0x22t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6ct
        0x76t
        0x74t
        0x65t
        0x61t
        0x6dt
        0x6ct
        0x76t
        0x74t
        0x65t
        0x61t
        0x6dt
        0x6ct
        0x76t
        0x74t
        0x65t
        0x61t
        0x6dt
        0x6ct
        0x76t
        0x74t
        0x65t
        0x61t
        0x6dt
        0x6ct
        0x76t
        0x74t
        0x65t
        0x61t
        0x6dt
        0x6ct
        0x76t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addGetKeyButton(Landroid/widget/LinearLayout;)V
    .locals 8

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/jonis/trainer/ObfStrings;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0xff1a01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lcom/jonis/trainer/GetKeyClick;

    invoke-direct {v1, p0}, Lcom/jonis/trainer/GetKeyClick;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x2c

    invoke-direct {p0, v3}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private daysUntil(Ljava/lang/String;)I
    .locals 6

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long v4, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v4, v4

    return v4

    :cond_1
    nop

    :goto_1
    nop

    const/4 v0, 0x0

    return v0
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

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private extractDays(Ljava/lang/String;)I
    .locals 7

    const-string v0, ""

    const-string v1, "keyExpiresAt"

    const-string v2, "data"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/jonis/trainer/MainActivity;->findDays(Lorg/json/JSONObject;)I

    move-result v4

    if-ltz v4, :cond_0

    return v4

    :cond_0
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/jonis/trainer/MainActivity;->findDays(Lorg/json/JSONObject;)I

    move-result v5

    move v4, v5

    if-ltz v4, :cond_1

    return v4

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v5}, Lcom/jonis/trainer/MainActivity;->daysUntil(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_3
    nop

    :goto_0
    nop

    const/4 v0, 0x0

    return v0
.end method

.method private extractExpiry(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "data"

    const-string v1, ""

    const-string v2, "keyExpiresAt"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    nop

    const/4 v0, 0x0

    return-object v0
.end method

.method private findDays(Lorg/json/JSONObject;)I
    .locals 7

    const-string v5, "dias"

    const-string v6, "diasRestantes"

    const-string v0, "days"

    const-string v1, "daysRemaining"

    const-string v2, "days_remaining"

    const-string v3, "remainingDays"

    const-string v4, "remaining_days"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private getDeviceHwid()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/jonis/trainer/MainActivity;->inputKey:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, -0xbbbc

    const-string v2, "Insira uma chave!"

    invoke-direct {p0, v1, v2}, Lcom/jonis/trainer/MainActivity;->showStatus(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    const-string v2, "VERIFICANDO..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, -0x44cd

    const-string v2, "Validando chave..."

    invoke-direct {p0, v1, v2}, Lcom/jonis/trainer/MainActivity;->showStatus(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/jonis/trainer/MainActivity;->validateKey(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Z)V
    .locals 5

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/jonis/trainer/LvAntiCrack;

    invoke-direct {v0, p0}, Lcom/jonis/trainer/LvAntiCrack;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/jonis/trainer/LvAntiCrack;->check()Z

    move-result v1

    const/4 v1, 0x1

    if-nez v1, :cond_1

    const v1, -0xbbbc

    const-string v2, "Sessao encerrada."

    invoke-direct {p0, v1, v2}, Lcom/jonis/trainer/MainActivity;->showStatus(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/jonis/trainer/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/jonis/trainer/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/jonis/trainer/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/jonis/trainer/MainActivity;)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    const-string v2, "LOGIN"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/jonis/trainer/MainActivity;->txtStatus:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    new-instance v2, Lcom/jonis/trainer/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/jonis/trainer/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/jonis/trainer/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/jonis/trainer/MainActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    const-string v3, "VERIFICANDO..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, -0x44cd

    const-string v3, "Validando chave salva..."

    invoke-direct {p0, v2, v3}, Lcom/jonis/trainer/MainActivity;->showStatus(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/jonis/trainer/MainActivity;->validateKey(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private launchGame()V
    .locals 4

    const-string v0, "Opening target game"

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.dts.freefireth"

    const-string v3, "com.dts.freefireth.FFMainActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Target game activity not found"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private onAuthResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    const/16 v0, 0xc8

    const-string v1, "LOGIN"

    const/4 v2, 0x1

    const v3, -0xbbbc

    if-lt p2, v0, :cond_2

    const/16 v0, 0x12c

    if-ge p2, v0, :cond_2

    invoke-direct {p0, p3}, Lcom/jonis/trainer/MainActivity;->extractDays(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p3}, Lcom/jonis/trainer/MainActivity;->extractExpiry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/jonis/trainer/LvSession;->get()Lcom/jonis/trainer/LvSession;

    move-result-object v5

    invoke-virtual {v5, p1, v0, p3}, Lcom/jonis/trainer/LvSession;->activate(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/jonis/trainer/LvSession;->get()Lcom/jonis/trainer/LvSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jonis/trainer/LvSession;->isActive()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "Erro de sessao. Tente novamente."

    invoke-direct {p0, v3, v1}, Lcom/jonis/trainer/MainActivity;->showStatus(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jonis/trainer/MainActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "days"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz v4, :cond_1

    move-object v2, v4

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    const-string v3, "expires"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jonis/trainer/ObfStrings;->successMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, -0xff1a01

    invoke-direct {p0, v3, v2}, Lcom/jonis/trainer/MainActivity;->showStatus(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/jonis/trainer/MainActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/jonis/trainer/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/jonis/trainer/MainActivity$2;-><init>(Lcom/jonis/trainer/MainActivity;)V

    const-wide/16 v5, 0x320

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const-string v0, "Erro de conexao. Verifique sua internet."

    invoke-direct {p0, v3, v0}, Lcom/jonis/trainer/MainActivity;->showStatus(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p3}, Lcom/jonis/trainer/MainActivity;->parseError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/jonis/trainer/MainActivity;->showStatus(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method private parseError(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "message"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    const-string v0, "invalid_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jonis/trainer/ObfStrings;->invalidMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "key_expired"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Chave expirada!"

    return-object v0

    :cond_2
    const-string v0, "key_banned"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Chave banida!"

    return-object v0

    :cond_3
    const-string v0, "key_paused"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Chave pausada!"

    return-object v0

    :cond_4
    const-string v0, "app_paused"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Aplicativo pausado!"

    return-object v0

    :cond_5
    const-string v0, "app_mismatch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "App incompativel!"

    return-object v0

    :cond_6
    const-string v0, "device_locked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Dispositivo bloqueado!"

    return-object v0

    :cond_7
    const-string v0, "device_mismatch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Dispositivo diferente!"

    return-object v0

    :cond_8
    const-string v0, "hwid_mismatch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "HWID diferente!"

    return-object v0

    :cond_9
    const-string v0, "device_required"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Dispositivo obrigatorio!"

    return-object v0

    :cond_a
    const-string v0, "device_banned"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Dispositivo banido!"

    return-object v0

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_c

    return-object v2

    :cond_c
    :goto_1
    nop

    const-string v0, "Erro na validacao (HTTP)"

    return-object v0
.end method

.method private static readAll(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private requestShare()V
    .locals 4

    const v0, -0xe77c01

    const-string v1, "https://whatsapp.com/channel/0029VbD0GMg96H4b6We7P525"

    invoke-direct {p0, v0, v1}, Lcom/jonis/trainer/MainActivity;->showStatus(ILjava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    const-string v2, "https://whatsapp.com/channel/0029VbD0GMg96H4b6We7P525"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Compartir para desbloquear"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private requestVpn()V
    .locals 2

    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jonis/trainer/MainActivity;->startCaptureAndOverlay()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private showStatus(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/jonis/trainer/MainActivity;->txtStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/jonis/trainer/MainActivity;->txtStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/jonis/trainer/MainActivity;->txtStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startCaptureAndOverlay()V
    .locals 6

    invoke-static {}, Lcom/jonis/trainer/LvSession;->get()Lcom/jonis/trainer/LvSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jonis/trainer/LvSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, -0xbbbc

    const-string v1, "Sessao invalida. Reinicie o app."

    invoke-direct {p0, v0, v1}, Lcom/jonis/trainer/MainActivity;->showStatus(ILjava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "MainActivity"

    const-string v1, "Starting full IPv4 capture and overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jonis/trainer/PacketCaptureService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.lvteam.action.ENABLE_FULL_IPV4_ROUTE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jonis/trainer/OverlayService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    invoke-static {p0, v1}, Lcom/jonis/trainer/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/jonis/trainer/MainActivity;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/jonis/trainer/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/jonis/trainer/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/jonis/trainer/MainActivity;)V

    const-wide/16 v4, 0x2ee

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startSession()V
    .locals 3

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jonis/trainer/MainActivity;->requestVpn()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jonis/trainer/MainActivity;->waitingForOverlayPermission:Z

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

.method private validateKey(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/jonis/trainer/ObfStrings;->password()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jonis/trainer/MainActivity;->sharedForAccess:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jonis/trainer/MainActivity;->requestShare()V

    return-void

    :cond_0
    invoke-static {}, Lcom/jonis/trainer/ObfStrings;->success()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-direct {p0, p1, v1, v0}, Lcom/jonis/trainer/MainActivity;->onAuthResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/jonis/trainer/ObfStrings;->invalidJson()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x191

    invoke-direct {p0, p1, v1, v0}, Lcom/jonis/trainer/MainActivity;->onAuthResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jonis/trainer/MainActivity;->sharedForAccess:Z

    iget-object v0, p0, Lcom/jonis/trainer/MainActivity;->inputKey:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jonis/trainer/MainActivity;->validateKey(Ljava/lang/String;)V

    return-void

    :cond_0
    const v0, -0xbbbc

    const-string v1, "Debes compartir la APK para desbloquearla"

    invoke-direct {p0, v0, v1}, Lcom/jonis/trainer/MainActivity;->showStatus(ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/jonis/trainer/MainActivity;->startCaptureAndOverlay()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/jonis/trainer/MainActivity;->handler:Landroid/os/Handler;

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, -0xf5f1e6

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x18

    invoke-direct {v0, v4}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v4

    const/16 v5, 0x1c

    invoke-direct {v0, v5}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v5

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x11

    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "D\u00d3MI HACK "

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x2

    const/high16 v14, 0x42400000    # 48.0f

    invoke-virtual {v15, v2, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, " TEAM"

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, -0xff1a01

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v2, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v13, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "Game Enhancement Tool"

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, -0x777756

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v14, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v11, 0x4

    invoke-direct {v0, v11}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v11

    iput v11, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v11, 0x20

    invoke-direct {v0, v11}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v11

    iput v11, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v7, v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v2, -0xe9e4de

    invoke-virtual {v11, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {v0, v1}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v2

    const v8, -0xcfc9c3

    invoke-virtual {v11, v2, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "Chave de Acesso"

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    move/from16 v20, v4

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v8, 0x2

    invoke-virtual {v1, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xa

    invoke-direct {v0, v8}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v8

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object/from16 v22, v1

    const v1, -0xf2eee9

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0xc

    move-object/from16 v23, v4

    invoke-direct {v0, v1}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v1

    const v4, -0xcfc9c3

    invoke-virtual {v8, v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/jonis/trainer/MainActivity;->inputKey:Landroid/widget/EditText;

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->inputKey:Landroid/widget/EditText;

    const-string v4, "Insira sua Key"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->inputKey:Landroid/widget/EditText;

    const v4, -0xb4aa9d

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->inputKey:Landroid/widget/EditText;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->inputKey:Landroid/widget/EditText;

    const/high16 v4, 0x41700000    # 15.0f

    move/from16 v21, v5

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->inputKey:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->inputKey:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->inputKey:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->inputKey:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x32

    invoke-direct {v0, v4}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v5

    const/4 v4, -0x1

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v4, v0, Lcom/jonis/trainer/MainActivity;->inputKey:Landroid/widget/EditText;

    invoke-virtual {v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object/from16 v24, v1

    const/16 v5, 0xc

    invoke-direct {v0, v5}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v1, -0xff1a01

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    const-string v5, "LOGIN"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    const v5, -0xf5f1e6

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    move-object/from16 v16, v8

    const/4 v8, 0x2

    invoke-virtual {v1, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x32

    invoke-direct {v0, v5}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v5

    const/4 v8, -0x1

    invoke-direct {v1, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, v0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {v0, v2}, Lcom/jonis/trainer/MainActivity;->addGetKeyButton(Landroid/widget/LinearLayout;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/jonis/trainer/MainActivity;->txtStatus:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/jonis/trainer/MainActivity;->txtStatus:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lcom/jonis/trainer/MainActivity;->txtStatus:Landroid/widget/TextView;

    const/high16 v8, 0x41500000    # 13.0f

    move-object/from16 v18, v1

    const/4 v1, 0x2

    invoke-virtual {v5, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->txtStatus:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v8, -0x2

    invoke-direct {v1, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    invoke-direct {v0, v5}, Lcom/jonis/trainer/MainActivity;->dp(I)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v5, v0, Lcom/jonis/trainer/MainActivity;->txtStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "v25.0"

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, -0x777756

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41400000    # 12.0f

    move-object/from16 v17, v1

    const/4 v1, 0x2

    invoke-virtual {v5, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x51

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v6, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const-string v8, "lv_auth"

    move-object/from16 v19, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, v0, Lcom/jonis/trainer/MainActivity;->prefs:Landroid/content/SharedPreferences;

    iget-object v8, v0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, v0, Lcom/jonis/trainer/MainActivity;->btnLogin:Landroid/widget/TextView;

    const-string v8, "VERIFICANDO..."

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, -0x44cd

    const-string v8, "Iniciando..."

    invoke-direct {v0, v1, v8}, Lcom/jonis/trainer/MainActivity;->showStatus(ILjava/lang/String;)V

    new-instance v1, Lcom/jonis/trainer/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/jonis/trainer/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/jonis/trainer/MainActivity;)V

    invoke-static {v0, v1}, Lcom/jonis/trainer/LvUpdateChecker;->check(Landroid/app/Activity;Lcom/jonis/trainer/LvUpdateChecker$Callback;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/jonis/trainer/MainActivity;->waitingForOverlayPermission:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jonis/trainer/MainActivity;->requestVpn()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jonis/trainer/MainActivity;->waitingForOverlayPermission:Z

    return-void
.end method
