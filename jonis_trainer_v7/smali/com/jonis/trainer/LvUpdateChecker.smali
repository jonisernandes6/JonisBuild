.class public abstract Lcom/jonis/trainer/LvUpdateChecker;
.super Ljava/lang/Object;
.source "LvUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jonis/trainer/LvUpdateChecker$Callback;
    }
.end annotation


# static fields
.field public static final CHECK_URL:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0YoxoJllgPyau1-YCb3SjaQqiEk(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jonis/trainer/LvUpdateChecker;->lambda$showUpdateDialog$3(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HlT-dF1vj0JsWd8jddYXKZ6Wy38(ZLjava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/jonis/trainer/LvUpdateChecker$Callback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jonis/trainer/LvUpdateChecker;->lambda$check$0(ZLjava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/jonis/trainer/LvUpdateChecker$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TPK-eX04JWZ6ta75AdAEAHlE6Fs(Ljava/lang/String;Landroid/app/Activity;Lcom/jonis/trainer/LvUpdateChecker$Callback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jonis/trainer/LvUpdateChecker;->lambda$check$1(Ljava/lang/String;Landroid/app/Activity;Lcom/jonis/trainer/LvUpdateChecker$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zvkfMhKd7ApX5m0Bc0PWXiUb_Cc(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jonis/trainer/LvUpdateChecker;->lambda$showUpdateDialog$2(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jonis/trainer/LvUpdateChecker;->CHECK_URL:Ljava/lang/String;

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
        0x26t
        0x21t
        0x27t
        0x2dt
        0x24t
        0x2ft
        0x79t
        0x35t
        0x35t
        0x2at
        0x62t
        0x2ft
        0x3et
        0x31t
        0x26t
        0x2at
        0x60t
        0x39t
        0x26t
        0x30t
        0x24t
        0x35t
        0x28t
    .end array-data
.end method

.method public static check(Landroid/app/Activity;Lcom/jonis/trainer/LvUpdateChecker$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/jonis/trainer/LvUpdateChecker$Callback;->onResult(Z)V

    return-void
.end method

.method public static getApkSha256(Landroid/app/Activity;)Ljava/lang/String;
    .locals 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2000

    new-array v5, v5, [B

    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v7, v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    invoke-virtual {v3, v5, v1, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    array-length v9, v6

    move v10, v1

    :goto_1
    if-ge v10, v9, :cond_1

    aget-byte v11, v6, v10

    const-string v12, "%02x"

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    new-array v14, v0, [Ljava/lang/Object;

    aput-object v13, v14, v1

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v10, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    nop

    const-string v1, ""

    return-object v1
.end method

.method public static synthetic lambda$check$0(ZLjava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/jonis/trainer/LvUpdateChecker$Callback;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3, p1, p4}, Lcom/jonis/trainer/LvUpdateChecker;->showUpdateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/jonis/trainer/LvUpdateChecker$Callback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcom/jonis/trainer/LvUpdateChecker$Callback;->onResult(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$check$1(Ljava/lang/String;Landroid/app/Activity;Lcom/jonis/trainer/LvUpdateChecker$Callback;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/jonis/trainer/LvUpdateChecker;->CHECK_URL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?hash="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    const-string v6, "GET"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v6, 0xa

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    invoke-static {v6}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xe

    new-array v7, v7, [B

    fill-array-data v7, :array_1

    invoke-static {v7}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-lt v6, v7, :cond_1

    const/16 v7, 0x12c

    if-ge v6, v7, :cond_1

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    if-eqz v9, :cond_0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "update"

    invoke-virtual {v9, v11, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v1, v0

    const-string v0, "downloadUrl"

    const/4 v11, 0x0

    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    const-string v0, "versionName"

    const-string v11, ""

    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :cond_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_1
    move v5, v1

    move-object v6, v2

    move-object v8, v3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, Lcom/jonis/trainer/LvUpdateChecker$$ExternalSyntheticLambda1;

    move-object v4, v10

    move-object v7, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/jonis/trainer/LvUpdateChecker$$ExternalSyntheticLambda1;-><init>(ZLjava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/jonis/trainer/LvUpdateChecker$Callback;)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :array_0
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

    :array_1
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
.end method

.method public static synthetic lambda$showUpdateDialog$2(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic lambda$showUpdateDialog$3(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static showUpdateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/jonis/trainer/LvUpdateChecker$Callback;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Atualiza\u00e7\u00e3o Necess\u00e1ria"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nova vers\u00e3o (v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") dispon\u00edvel.\n\nAtualize para continuar usando."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/jonis/trainer/LvUpdateChecker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/jonis/trainer/LvUpdateChecker$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v2, "Atualizar"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/jonis/trainer/LvUpdateChecker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/jonis/trainer/LvUpdateChecker$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;)V

    const-string v2, "Sair"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
