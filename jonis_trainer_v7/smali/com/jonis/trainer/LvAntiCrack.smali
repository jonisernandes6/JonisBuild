.class public final Lcom/jonis/trainer/LvAntiCrack;
.super Ljava/lang/Object;
.source "LvAntiCrack.java"


# static fields
.field public static final APP_ID:Ljava/lang/String;

.field public static final CRACK_APPS:[[Ljava/lang/String;

.field public static final REPORT_URL:Ljava/lang/String;

.field public static final SECRET:Ljava/lang/String;

.field public static final SU_PATHS:[Ljava/lang/String;


# instance fields
.field public final activity:Landroid/app/Activity;

.field public final chain:Ljava/util/List;

.field public final ctx:Landroid/content/Context;

.field public final detected:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$AMCxcKXTZ7pNseRw5x3C-Mbu3_o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jonis/trainer/LvAntiCrack;->lambda$report$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0x22

    const/16 v1, 0x26

    const/16 v2, 0x24

    const/16 v3, 0x20

    const/16 v4, 0x25

    const/16 v5, 0x36

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    invoke-static {v5}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/jonis/trainer/LvAntiCrack;->REPORT_URL:Ljava/lang/String;

    new-array v5, v3, [B

    fill-array-data v5, :array_1

    invoke-static {v5}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/jonis/trainer/LvAntiCrack;->APP_ID:Ljava/lang/String;

    new-array v5, v3, [B

    fill-array-data v5, :array_2

    invoke-static {v5}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/jonis/trainer/LvAntiCrack;->SECRET:Ljava/lang/String;

    const-string v13, "/su/bin/su"

    const-string v14, "/system/bin/.ext/.su"

    const-string v6, "/system/app/Superuser.apk"

    const-string v7, "/system/xbin/su"

    const-string v8, "/system/bin/su"

    const-string v9, "/sbin/su"

    const-string v10, "/data/local/xbin/su"

    const-string v11, "/data/local/bin/su"

    const-string v12, "/data/local/su"

    filled-new-array/range {v6 .. v14}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/jonis/trainer/LvAntiCrack;->SU_PATHS:[Ljava/lang/String;

    const/16 v5, 0x28

    new-array v5, v5, [[Ljava/lang/String;

    const-string v6, "com.topjohnwu.magisk"

    const-string v7, "Magisk"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "de.robv.android.xposed.installer"

    const-string v7, "Xposed Installer"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "org.meowcat.edxposed.manager"

    const-string v7, "EdXposed"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string v6, "org.lsposed.manager"

    const-string v7, "LSPosed"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const-string v6, "io.github.lsposed.manager"

    const-string v7, "LSPosed"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    const-string v6, "com.chelpus.lackypatch"

    const-string v7, "Lucky Patcher"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    const-string v6, "com.forpda.lp"

    const-string v7, "Lucky Patcher"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    aput-object v6, v5, v7

    const-string v6, "eu.chainfire.supersu"

    const-string v7, "SuperSU"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v5, v7

    const-string v6, "com.noshufou.android.su"

    const-string v7, "Superuser"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    aput-object v6, v5, v7

    const-string v6, "com.koushikdutta.superuser"

    const-string v7, "Superuser"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    aput-object v6, v5, v7

    const-string v6, "com.saurik.substrate"

    const-string v7, "Substrate"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    aput-object v6, v5, v7

    const-string v6, "org.sbtools.gamehack"

    const-string v7, "SB Game Hacker"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb

    aput-object v6, v5, v7

    const-string v6, "com.zune.gamekiller"

    const-string v7, "Game Killer"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xc

    aput-object v6, v5, v7

    const-string v6, "cn.maocai.gamekiller"

    const-string v7, "Game Killer"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xd

    aput-object v6, v5, v7

    const-string v6, "com.gmail.heagoo.apkeditor"

    const-string v7, "APK Editor"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xe

    aput-object v6, v5, v7

    const-string v6, "com.gmail.heagoo.apkeditor.pro"

    const-string v7, "APK Editor Pro"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xf

    aput-object v6, v5, v7

    const-string v6, "com.cih.gamecih"

    const-string v7, "GameCIH"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    aput-object v6, v5, v7

    const-string v6, "com.cih.gamecih2"

    const-string v7, "GameCIH2"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x11

    aput-object v6, v5, v7

    const-string v6, "bin.mt.plus"

    const-string v7, "MT Manager"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x12

    aput-object v6, v5, v7

    const-string v6, "bin.mt.plus.canary"

    const-string v7, "MT Manager"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x13

    aput-object v6, v5, v7

    const-string v6, "com.mix.a"

    const-string v7, "NP Manager"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x14

    aput-object v6, v5, v7

    const-string v6, "com.shizuku.runner.np"

    const-string v7, "NP Manager"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x15

    aput-object v6, v5, v7

    const-string v6, "com.aide.ui"

    const-string v7, "AIDE"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x16

    aput-object v6, v5, v7

    const-string v6, "com.aide.web"

    const-string v7, "AIDE Web"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x17

    aput-object v6, v5, v7

    const-string v6, "com.apktool.apktools"

    const-string v7, "APKTool"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x18

    aput-object v6, v5, v7

    const-string v6, "org.jf.dexlib2"

    const-string v7, "Smali/Baksmali"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x19

    aput-object v6, v5, v7

    const-string v6, "com.abdulfatir.packagedisabler"

    const-string v7, "Package Disabler"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1a

    aput-object v6, v5, v7

    const-string v6, "com.formyhm.hideroot"

    const-string v7, "Hide Root"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1b

    aput-object v6, v5, v7

    const-string v6, "com.devadvance.rootcloak"

    const-string v7, "RootCloak"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1c

    aput-object v6, v5, v7

    const-string v6, "com.devadvance.rootcloakplus"

    const-string v7, "RootCloak+"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1d

    aput-object v6, v5, v7

    const-string v6, "com.zachspong.temprootremovejb"

    const-string v7, "Temp Root"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1e

    aput-object v6, v5, v7

    const-string v6, "com.amphoras.hidemyroot"

    const-string v7, "Hide My Root"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f

    aput-object v6, v5, v7

    const-string v6, "com.amphoras.hidemyrootadfree"

    const-string v7, "Hide My Root"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v3, "com.tycho.app.titaniumbackup"

    const-string v6, "Titanium Backup"

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x21

    aput-object v3, v5, v6

    const-string v3, "com.scottyab.rootbeer.sample"

    const-string v6, "RootBeer"

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    const-string v0, "com.jrummy.root.browserfree"

    const-string v3, "Root Browser"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x23

    aput-object v0, v5, v3

    const-string v0, "com.jrummy.root.browser.pro"

    const-string v3, "Root Browser Pro"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "eu.chainfire.mobileodin.pro"

    const-string v2, "Mobile Odin"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "com.yellowes.su"

    const-string v2, "Parallel Space SU"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v0, "me.weishu.kernelsu"

    const-string v1, "KernelSU"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, v5, v1

    sput-object v5, Lcom/jonis/trainer/LvAntiCrack;->CRACK_APPS:[[Ljava/lang/String;

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
        0x35t
        0x35t
        0x31t
        0x63t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x2dt
        0x38t
        0x3bt
        0x2bt
        0x38t
        0x20t
        0x39t
        0x25t
        0x7at
        0x36t
        0x35t
        0x22t
        0x3et
        0x33t
        0x7bt
        0x24t
        0x31t
        0x24t
        0x63t
        0x3dt
        0x31t
        0x3ct
        0x32t
        0x62t
        0x3et
        0x33t
        0x24t
        0x2at
        0x33t
        0x39t
        0x61t
        0x35t
        0x26t
        0x24t
        0x22t
        0x26t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x28t
        0x67t
        0x62t
        0x72t
        0x24t
        0x7ft
        0x7bt
        0x65t
        0x30t
        0x20t
        0x70t
        0x2ct
        0x75t
        0x6ft
        0x35t
        0x20t
        0x79t
        0x29t
        0x7ft
        0x60t
        0x36t
        0x74t
        0x70t
        0x75t
        0x79t
        0x66t
        0x67t
        0x7ct
        0x70t
        0x74t
        0x7ct
        0x34t
    .end array-data

    :array_2
    .array-data 1
        0x74t
        0x66t
        0x6dt
        0x74t
        0x25t
        0x2ft
        0x2at
        0x30t
        0x67t
        0x72t
        0x77t
        0x7et
        0x78t
        0x33t
        0x67t
        0x76t
        0x79t
        0x2et
        0x2at
        0x33t
        0x35t
        0x7ct
        0x72t
        0x7ct
        0x79t
        0x64t
        0x35t
        0x76t
        0x72t
        0x7dt
        0x78t
        0x30t
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->chain:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    iput-object p1, p0, Lcom/jonis/trainer/LvAntiCrack;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->ctx:Landroid/content/Context;

    return-void
.end method

.method public static joinArrow(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, " > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static joinComma(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$report$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0xe

    const/16 v1, 0xc

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "hwid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "tools"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "android"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdk"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "chain"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "source"

    const-string v4, "mobile-anticrack"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string v3, "screenshot"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    new-instance v3, Ljava/net/URL;

    sget-object v4, Lcom/jonis/trainer/LvAntiCrack;->REPORT_URL:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-array v5, v1, [B

    fill-array-data v5, :array_0

    invoke-static {v5}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    new-array v6, v6, [B

    fill-array-data v6, :array_1

    invoke-static {v6}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xa

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    invoke-static {v5}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/jonis/trainer/LvAntiCrack;->APP_ID:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [B

    fill-array-data v0, :array_5

    invoke-static {v0}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jonis/trainer/LvAntiCrack;->SECRET:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3a98

    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    nop

    return-void

    :array_0
    .array-data 1
        0xft
        0x39t
        0x3at
        0x31t
        0x24t
        0x23t
        0x38t
        0x7bt
        0x0t
        0x3ct
        0x31t
        0x28t
    .end array-data

    :array_1
    .array-data 1
        0x2dt
        0x26t
        0x24t
        0x29t
        0x28t
        0x2et
        0x2dt
        0x22t
        0x3dt
        0x2at
        0x2ft
        0x62t
        0x26t
        0x25t
        0x3bt
        0x2bt
    .end array-data

    :array_2
    .array-data 1
        0x19t
        0x25t
        0x31t
        0x37t
        0x6ct
        0xct
        0x2bt
        0x33t
        0x3at
        0x31t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x61t
        0x17t
        0x3at
        0x21t
        0x33t
        0x22t
        0x25t
        0x32t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x14t
        0x7bt
        0x15t
        0x35t
        0x28t
        0x60t
        0x7t
        0x33t
        0x2dt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x14t
        0x7bt
        0x7t
        0x20t
        0x22t
        0x3ft
        0x29t
        0x22t
        0x79t
        0xet
        0x24t
        0x34t
    .end array-data
.end method


# virtual methods
.method public final captureScreen()[B
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x4b

    invoke-virtual {v1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public check()Z
    .locals 2

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->chain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->chain:Ljava/util/List;

    const-string v1, "AUTH_GATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->chain:Ljava/util/List;

    const-string v1, "ROOT_CHECK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->chain:Ljava/util/List;

    const-string v1, "HOOK_DETECT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jonis/trainer/LvAntiCrack;->scanHooks()V

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->chain:Ljava/util/List;

    const-string v1, "ANTI_DEBUG"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jonis/trainer/LvAntiCrack;->scanDebug()V

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->chain:Ljava/util/List;

    const-string v1, "PACKAGE_SCAN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jonis/trainer/LvAntiCrack;->scanPackages()V

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->chain:Ljava/util/List;

    const-string v1, "EMULATOR_CHECK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jonis/trainer/LvAntiCrack;->scanEmulator()V

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->chain:Ljava/util/List;

    const-string v1, "SIGNATURE_CHECK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jonis/trainer/LvAntiCrack;->scanSignature()V

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->chain:Ljava/util/List;

    const-string v1, "INTEGRITY_CHECK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jonis/trainer/LvAntiCrack;->scanIntegrity()V

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->chain:Ljava/util/List;

    const-string v1, "NATIVE_GUARD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->chain:Ljava/util/List;

    const-string v1, "DEV_OPTIONS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jonis/trainer/LvAntiCrack;->scanDevOptions()V

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->chain:Ljava/util/List;

    const-string v1, "PROXY_CHECK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jonis/trainer/LvAntiCrack;->scanProxy()V

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->chain:Ljava/util/List;

    const-string v1, "SYS_SECURITY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jonis/trainer/LvAntiCrack;->captureScreen()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jonis/trainer/LvAntiCrack;->report([B)V

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final report([B)V
    .locals 12

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    invoke-static {v1}, Lcom/jonis/trainer/LvAntiCrack;->joinComma(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jonis/trainer/LvAntiCrack;->chain:Ljava/util/List;

    invoke-static {v2}, Lcom/jonis/trainer/LvAntiCrack;->joinArrow(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/jonis/trainer/LvAntiCrack$$ExternalSyntheticLambda0;

    move-object v2, v11

    move-object v3, v0

    move-object v4, v1

    move-object v5, v9

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/jonis/trainer/LvAntiCrack$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final scanDebug()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const-string v1, "Debugger"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final scanDevOptions()V
    .locals 0

    return-void
.end method

.method public final scanEmulator()V
    .locals 3

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Emulator"

    nop

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Android SDK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Genymotion"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "goldfish"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "ranchu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "sdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "vbox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final scanHooks()V
    .locals 3

    :try_start_0
    const-string v0, "de.robv.android.xposed.XposedBridge"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const-string v1, "Xposed Framework"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "de.robv.android.xposed.XC_MethodHook"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const-string v1, "Xposed Hook"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :goto_1
    :try_start_2
    new-instance v0, Ljava/net/Socket;

    const-string v1, "127.0.0.1"

    const/16 v2, 0x69a2

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iget-object v1, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const-string v2, "Frida"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    nop

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    const-string v0, "com.saurik.substrate.MS"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const-string v1, "Substrate"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :goto_4
    return-void
.end method

.method public final scanIntegrity()V
    .locals 8

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jonis/trainer/LvAntiCrack;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const-string v2, "Package Renamed"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lcom/jonis/trainer/LvAntiCrack;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    const-string v2, "classes.dex"

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const-string v4, "Missing DEX"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "AndroidManifest.xml"

    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const-string v5, "Missing Manifest"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v4, "META-INF/CERT.SF"

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    const-string v5, "META-INF/CERT.RSA"

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    iget-object v6, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const-string v7, "Stripped Signature"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    nop

    iget-object v2, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const-string v3, "APK Integrity Error"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void

    :array_0
    .array-data 1
        0x2ft
        0x39t
        0x39t
        0x6bt
        0x2dt
        0x3bt
        0x38t
        0x33t
        0x35t
        0x28t
    .end array-data
.end method

.method public final scanPackages()V
    .locals 8

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/jonis/trainer/LvAntiCrack;->CRACK_APPS:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    :try_start_0
    aget-object v6, v5, v3

    invoke-virtual {v0, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    iget-object v6, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gameguardian"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "game_guardian"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    goto :goto_4

    :cond_2
    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_5

    :goto_4
    iget-object v1, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const-string v4, "GameGuardian"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    nop

    :cond_3
    :goto_5
    nop

    return-void
.end method

.method public final scanProxy()V
    .locals 2

    invoke-static {}, Lcom/jonis/trainer/SslPinning;->isProxySet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const-string v1, "HTTP Proxy"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final scanSignature()V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x40

    :try_start_0
    new-array v3, v2, [B

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jonis/trainer/LvAntiCrack;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/jonis/trainer/LvAntiCrack;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-nez v4, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v5

    move v8, v1

    :goto_0
    if-ge v8, v7, :cond_2

    aget-byte v9, v5, v8

    const-string v10, "%02x"

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    new-array v12, v0, [Ljava/lang/Object;

    aput-object v11, v12, v1

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v8, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const-string v1, "Repackaged APK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_3

    :goto_1
    iget-object v0, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const-string v1, "No Signature"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    nop

    iget-object v1, p0, Lcom/jonis/trainer/LvAntiCrack;->detected:Ljava/util/List;

    const-string v2, "Signature Error"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void

    :array_0
    .array-data 1
        0x29t
        0x61t
        0x35t
        0x75t
        0x75t
        0x28t
        0x7ct
        0x32t
        0x62t
        0x21t
        0x23t
        0x75t
        0x7ct
        0x65t
        0x6ct
        0x24t
        0x76t
        0x75t
        0x2dt
        0x32t
        0x65t
        0x26t
        0x25t
        0x75t
        0x2ft
        0x64t
        0x62t
        0x77t
        0x77t
        0x78t
        0x7ct
        0x60t
        0x63t
        0x7dt
        0x77t
        0x2bt
        0x7et
        0x33t
        0x6dt
        0x7dt
        0x20t
        0x79t
        0x75t
        0x64t
        0x62t
        0x74t
        0x25t
        0x29t
        0x2et
        0x65t
        0x62t
        0x77t
        0x74t
        0x75t
        0x74t
        0x6ft
        0x62t
        0x72t
        0x75t
        0x7bt
        0x78t
        0x62t
        0x62t
        0x20t
    .end array-data
.end method
