.class Lcom/oppo/camera/utils/ScreenOffUtil$ScreenOffBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenOffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/utils/ScreenOffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOffBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/utils/ScreenOffUtil;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/utils/ScreenOffUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oppo/camera/utils/ScreenOffUtil$ScreenOffBroadcastReceiver;->this$0:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/utils/ScreenOffUtil;Lcom/oppo/camera/utils/ScreenOffUtil$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/oppo/camera/utils/ScreenOffUtil$ScreenOffBroadcastReceiver;-><init>(Lcom/oppo/camera/utils/ScreenOffUtil;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/utils/ScreenOffUtil$ScreenOffBroadcastReceiver;->this$0:Lcom/oppo/camera/utils/ScreenOffUtil;

    #getter for: Lcom/oppo/camera/utils/ScreenOffUtil;->mOff:Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;
    invoke-static {v1}, Lcom/oppo/camera/utils/ScreenOffUtil;->access$100(Lcom/oppo/camera/utils/ScreenOffUtil;)Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/oppo/camera/utils/ScreenOffUtil$ScreenOffBroadcastReceiver;->this$0:Lcom/oppo/camera/utils/ScreenOffUtil;

    #getter for: Lcom/oppo/camera/utils/ScreenOffUtil;->mOff:Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;
    invoke-static {v1}, Lcom/oppo/camera/utils/ScreenOffUtil;->access$100(Lcom/oppo/camera/utils/ScreenOffUtil;)Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;->onScreenOff()V

    .line 50
    :cond_0
    return-void
.end method
