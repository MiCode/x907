.class Lcom/oppo/camera/OppoCamera$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$1;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 301
    const-string v1, "CAM_ON_BEFOR_HDMI_PLUG_IN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$1;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$300(Lcom/oppo/camera/OppoCamera;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$1;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-static {v1}, Lcom/oppo/camera/utils/Util;->showMhlPlugIn(Landroid/app/Activity;)V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 304
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$1;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$400(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/utils/PlayEffectSound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/utils/PlayEffectSound;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 305
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$1;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$500(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/setting/NewCameraSettingMenu;

    move-result-object v1

    const-string v2, "key_camera_sound"

    const-string v3, "camera_sound_off"

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$1;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$500(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/setting/NewCameraSettingMenu;

    move-result-object v1

    const-string v2, "key_camera_sound"

    invoke-virtual {v1, v2, v4}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setEnable(Ljava/lang/String;Z)V

    .line 307
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$1;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$500(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/setting/NewCameraSettingMenu;

    move-result-object v1

    const-string v2, "key_camera_sound"

    const/16 v3, 0x96

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setAlpha(Ljava/lang/String;I)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$1;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$500(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/setting/NewCameraSettingMenu;

    move-result-object v1

    const-string v2, "key_camera_sound"

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setEnable(Ljava/lang/String;Z)V

    .line 310
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$1;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$500(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/setting/NewCameraSettingMenu;

    move-result-object v1

    const-string v2, "key_camera_sound"

    const/16 v3, 0xff

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setAlpha(Ljava/lang/String;I)V

    .line 311
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$1;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mShutterSound:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$600(Lcom/oppo/camera/OppoCamera;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$1;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$500(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/setting/NewCameraSettingMenu;

    move-result-object v1

    const-string v2, "key_camera_sound"

    const-string v3, "camera_sound_off"

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$1;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$500(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/setting/NewCameraSettingMenu;

    move-result-object v1

    const-string v2, "key_camera_sound"

    const-string v3, "camera_sound_on"

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 318
    :cond_4
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, phoneState:Ljava/lang/String;
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const-string v1, "OppoCamera"

    const-string v2, "Ring call!"

    invoke-static {v1, v2, v4}, Lcom/oppo/camera/utils/LogUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 322
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$1;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mIsPhoneCall:Z
    invoke-static {v1, v3}, Lcom/oppo/camera/OppoCamera;->access$702(Lcom/oppo/camera/OppoCamera;Z)Z

    goto/16 :goto_0
.end method
