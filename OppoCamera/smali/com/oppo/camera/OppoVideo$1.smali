.class Lcom/oppo/camera/OppoVideo$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoVideo;


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$1;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x5

    const/4 v6, -0x1

    const/4 v8, 0x1

    .line 254
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    const-string v4, "level"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 256
    .local v0, level:I
    const-string v4, "status"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 257
    .local v2, status:I
    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$1;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecording:Z
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$200(Lcom/oppo/camera/OppoVideo;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ge v0, v7, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    .line 258
    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$1;->this$0:Lcom/oppo/camera/OppoVideo;

    const v5, 0x7f0a002d

    #calls: Lcom/oppo/camera/OppoVideo;->showHintView(I)V
    invoke-static {v4, v5}, Lcom/oppo/camera/OppoVideo;->access$300(Lcom/oppo/camera/OppoVideo;I)V

    .line 259
    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$1;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->onStopVideoRecording()Z
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$400(Lcom/oppo/camera/OppoVideo;)Z

    .line 285
    .end local v0           #level:I
    .end local v2           #status:I
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CAM_ON_BEFOR_HDMI_PLUG_IN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 262
    const-string v4, "OppoVideo"

    const-string v5, "ACTION_MHL_PLUG !"

    invoke-static {v4, v5, v8}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$1;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecording:Z
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$200(Lcom/oppo/camera/OppoVideo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 264
    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$1;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-static {v4}, Lcom/oppo/camera/utils/Util;->showMhlPlugIn(Landroid/app/Activity;)V

    goto :goto_0

    .line 266
    :cond_2
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 267
    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, phoneState:Ljava/lang/String;
    const-string v4, "OppoVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_PHONE_STATE_CHANGED =  phoneState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Lcom/oppo/camera/utils/LogUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 269
    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$1;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$600(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/setting/NewVideoSettingMenu;

    move-result-object v5

    const-string v6, "key_video_record"

    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$1;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecordMode:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$500(Lcom/oppo/camera/OppoVideo;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "on"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "video_record_on"

    :goto_1
    invoke-virtual {v5, v6, v4}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$1;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$600(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/setting/NewVideoSettingMenu;

    move-result-object v4

    const-string v5, "key_video_record"

    invoke-virtual {v4, v5, v8}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setEnable(Ljava/lang/String;Z)V

    .line 272
    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$1;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$600(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/setting/NewVideoSettingMenu;

    move-result-object v4

    const-string v5, "key_video_record"

    const/16 v6, 0xff

    invoke-virtual {v4, v5, v6}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setAlpha(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 270
    :cond_3
    const-string v4, "video_record_off"

    goto :goto_1

    .line 274
    .end local v1           #phoneState:Ljava/lang/String;
    :cond_4
    const-string v4, "android.intent.action.ACTION_USB_SELECED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    const-string v4, "UsbSelectedType"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 276
    .local v3, usbType:I
    if-ne v3, v8, :cond_0

    .line 277
    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$1;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecording:Z
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$200(Lcom/oppo/camera/OppoVideo;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 278
    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$1;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->onStopVideoRecording()Z
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$400(Lcom/oppo/camera/OppoVideo;)Z

    goto/16 :goto_0

    .line 280
    :cond_5
    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$1;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->disableUI()V
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$700(Lcom/oppo/camera/OppoVideo;)V

    .line 281
    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$1;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$800(Lcom/oppo/camera/OppoVideo;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
