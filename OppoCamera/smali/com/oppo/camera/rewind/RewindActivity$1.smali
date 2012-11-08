.class Lcom/oppo/camera/rewind/RewindActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RewindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$1;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 179
    const-string v0, "CAM_ON_BEFOR_HDMI_PLUG_IN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$1;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-static {v0}, Lcom/oppo/camera/utils/Util;->showMhlPlugIn(Landroid/app/Activity;)V

    .line 182
    :cond_0
    return-void
.end method
