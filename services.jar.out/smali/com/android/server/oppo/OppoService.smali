.class public final Lcom/android/server/oppo/OppoService;
.super Landroid/os/IOppoService$Stub;
.source "OppoService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/IOppoService$Stub;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;

    .line 21
    iget-object v0, p0, Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/oppo/OppoService;->initPowerSaveMode(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private initPowerSaveMode(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_method"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/oppo/OppoService;->nativeSetSaveModeState(I)I

    move-result v0

    .line 59
    .local v0, res:I
    const-string v1, "OppoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPowerSaveMode return :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method private native nativeAdjustLCDFrequency(I)I
.end method


# virtual methods
.method public adjustLCDFrequency(I)I
    .locals 4
    .parameter "rate"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/oppo/OppoService;->nativeAdjustLCDFrequency(I)I

    move-result v0

    .line 50
    .local v0, res:I
    const-string v1, "OppoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeAdjustLCDFrequency return :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v0
.end method

.method public getSaveModeState()I
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoService;->nativeGetSaveModeState()I

    move-result v0

    .line 64
    .local v0, res:I
    const-string v1, "OppoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeGetSaveModeState return :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v0
.end method

.method public native nativeGetSaveModeState()I
.end method

.method public native nativeSetSaveModeState(I)I
.end method

.method public setSaveModeState(I)I
    .locals 4
    .parameter "state"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/oppo/OppoService;->nativeSetSaveModeState(I)I

    move-result v0

    .line 70
    .local v0, res:I
    const-string v1, "OppoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeSetSaveModeState return :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v0
.end method
