.class public final Lcom/lvteam/NativeGuard;
.super Ljava/lang/Object;
.source "NativeGuard.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lvguard"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static native check()I
.end method

.method public static describe(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "Root (native)"

    invoke-static {v0, v1}, Lcom/lvteam/NativeGuard;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "Frida (native)"

    invoke-static {v0, v1}, Lcom/lvteam/NativeGuard;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "Xposed (native)"

    invoke-static {v0, v1}, Lcom/lvteam/NativeGuard;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, "Debugger (native)"

    invoke-static {v0, v1}, Lcom/lvteam/NativeGuard;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, "Emulator (native)"

    invoke-static {v0, v1}, Lcom/lvteam/NativeGuard;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    const-string v1, "Memory Tamper"

    invoke-static {v0, v1}, Lcom/lvteam/NativeGuard;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    const-string v1, "Ptrace Debugger"

    invoke-static {v0, v1}, Lcom/lvteam/NativeGuard;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    const-string v1, "Timing Anomaly"

    invoke-static {v0, v1}, Lcom/lvteam/NativeGuard;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_8

    const-string v1, "Library Injection"

    invoke-static {v0, v1}, Lcom/lvteam/NativeGuard;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_0

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static native pulse()I
.end method
