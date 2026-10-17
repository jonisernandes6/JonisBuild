.class public abstract Lcom/jonis/trainer/SslPinning;
.super Ljava/lang/Object;
.source "SslPinning.java"


# direct methods
.method public static isProxySet()Z
    .locals 4

    :try_start_0
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://whatsapp.com/channel/0029VbD0GMg96H4b6We7P525"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v3, "https.proxyHost"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    return v2

    :cond_1
    :goto_0
    nop

    const/4 v0, 0x0

    return v0
.end method
