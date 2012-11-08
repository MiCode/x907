.class public Lcom/oppo/camera/utils/ScreenOffUtil;
.super Ljava/lang/Object;
.source "ScreenOffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/utils/ScreenOffUtil$1;,
        Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;,
        Lcom/oppo/camera/utils/ScreenOffUtil$ScreenOffBroadcastReceiver;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/oppo/camera/utils/ScreenOffUtil;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOff:Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/oppo/camera/utils/ScreenOffUtil;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 12
    iput-object v0, p0, Lcom/oppo/camera/utils/ScreenOffUtil;->mOff:Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;

    .line 20
    iput-object p1, p0, Lcom/oppo/camera/utils/ScreenOffUtil;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/camera/utils/ScreenOffUtil;)Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/oppo/camera/utils/ScreenOffUtil;->mOff:Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;

    return-object v0
.end method

.method public static instance(Landroid/content/Context;)Lcom/oppo/camera/utils/ScreenOffUtil;
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    new-instance v0, Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-direct {v0, p0}, Lcom/oppo/camera/utils/ScreenOffUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oppo/camera/utils/ScreenOffUtil;->mInstance:Lcom/oppo/camera/utils/ScreenOffUtil;

    .line 16
    sget-object v0, Lcom/oppo/camera/utils/ScreenOffUtil;->mInstance:Lcom/oppo/camera/utils/ScreenOffUtil;

    return-object v0
.end method


# virtual methods
.method public registerScreenOffReceiver()V
    .locals 3

    .prologue
    .line 28
    iget-object v1, p0, Lcom/oppo/camera/utils/ScreenOffUtil;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, screenOffIntentFilter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/oppo/camera/utils/ScreenOffUtil$ScreenOffBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/utils/ScreenOffUtil$ScreenOffBroadcastReceiver;-><init>(Lcom/oppo/camera/utils/ScreenOffUtil;Lcom/oppo/camera/utils/ScreenOffUtil$1;)V

    iput-object v1, p0, Lcom/oppo/camera/utils/ScreenOffUtil;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    iget-object v1, p0, Lcom/oppo/camera/utils/ScreenOffUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/camera/utils/ScreenOffUtil;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    .end local v0           #screenOffIntentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setOnScreenOffListener(Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;)V
    .locals 0
    .parameter "off"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/oppo/camera/utils/ScreenOffUtil;->mOff:Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;

    .line 25
    return-void
.end method

.method public unRegisterScreenOffReceiver()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/camera/utils/ScreenOffUtil;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/oppo/camera/utils/ScreenOffUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/camera/utils/ScreenOffUtil;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/utils/ScreenOffUtil;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    :cond_0
    return-void
.end method
