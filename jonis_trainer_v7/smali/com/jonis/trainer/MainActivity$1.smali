.class public Lcom/jonis/trainer/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jonis/trainer/MainActivity;->validateKey(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/jonis/trainer/MainActivity;

.field public final synthetic val$key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jonis/trainer/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jonis/trainer/MainActivity$1;->this$0:Lcom/jonis/trainer/MainActivity;

    iput-object p2, p0, Lcom/jonis/trainer/MainActivity$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/16 v0, 0xc

    const-string v1, "UTF-8"

    :try_start_0
    iget-object v2, p0, Lcom/jonis/trainer/MainActivity$1;->this$0:Lcom/jonis/trainer/MainActivity;

    invoke-static {v2}, Lcom/jonis/trainer/MainActivity;->-$$Nest$mgetDeviceHwid(Lcom/jonis/trainer/MainActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "appId"

    invoke-static {}, Lcom/jonis/trainer/MainActivity;->-$$Nest$sfgetAPP_ID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "key"

    iget-object v5, p0, Lcom/jonis/trainer/MainActivity$1;->val$key:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "hwid"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/net/URL;

    invoke-static {}, Lcom/jonis/trainer/MainActivity;->-$$Nest$sfgetAPI_URL()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-array v7, v0, [B

    fill-array-data v7, :array_0

    invoke-static {v7}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    new-array v8, v8, [B

    fill-array-data v8, :array_1

    invoke-static {v8}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xa

    new-array v7, v7, [B

    fill-array-data v7, :array_2

    invoke-static {v7}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x12

    new-array v8, v8, [B

    fill-array-data v8, :array_3

    invoke-static {v8}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x9

    new-array v7, v7, [B

    fill-array-data v7, :array_4

    invoke-static {v7}, Lcom/jonis/trainer/Obs;->d([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/jonis/trainer/MainActivity;->-$$Nest$sfgetAPP_ID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3a98

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v7, 0xc8

    if-lt v1, v7, :cond_0

    const/16 v7, 0x12c

    if-ge v1, v7, :cond_0

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    :goto_0
    nop

    invoke-static {v7}, Lcom/jonis/trainer/MainActivity;->-$$Nest$smreadAll(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v9, p0, Lcom/jonis/trainer/MainActivity$1;->this$0:Lcom/jonis/trainer/MainActivity;

    invoke-static {v9}, Lcom/jonis/trainer/MainActivity;->-$$Nest$fgethandler(Lcom/jonis/trainer/MainActivity;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/jonis/trainer/MainActivity$1$1;

    invoke-direct {v10, p0, v1, v8}, Lcom/jonis/trainer/MainActivity$1$1;-><init>(Lcom/jonis/trainer/MainActivity$1;ILjava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_2

    :goto_1
    nop

    iget-object v1, p0, Lcom/jonis/trainer/MainActivity$1;->this$0:Lcom/jonis/trainer/MainActivity;

    invoke-static {v1}, Lcom/jonis/trainer/MainActivity;->-$$Nest$fgethandler(Lcom/jonis/trainer/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/jonis/trainer/MainActivity$1$2;

    invoke-direct {v2, p0}, Lcom/jonis/trainer/MainActivity$1$2;-><init>(Lcom/jonis/trainer/MainActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void

    nop

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
        0x7bt
        0x74t
        0x6ft
        0x7dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x14t
        0x7bt
        0x15t
        0x15t
        0x8t
        0x60t
        0x7t
        0x33t
        0x2dt
    .end array-data

    nop

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
