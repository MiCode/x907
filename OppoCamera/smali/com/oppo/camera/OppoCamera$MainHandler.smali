.class Lcom/oppo/camera/OppoCamera$MainHandler;
.super Landroid/os/Handler;
.source "OppoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/OppoCamera;Lcom/oppo/camera/OppoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1718
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera$MainHandler;-><init>(Lcom/oppo/camera/OppoCamera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1722
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1785
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1724
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-virtual {v0}, Lcom/oppo/camera/OppoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1725
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-virtual {v0}, Lcom/oppo/camera/OppoCamera;->finish()V

    goto :goto_0

    .line 1728
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->enableUI()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$1700(Lcom/oppo/camera/OppoCamera;)V

    goto :goto_0

    .line 1731
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->turnOnContiniousAF()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$6000(Lcom/oppo/camera/OppoCamera;)V

    goto :goto_0

    .line 1734
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->handleTakePictureTimeout()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$6100(Lcom/oppo/camera/OppoCamera;)V

    goto :goto_0

    .line 1737
    :pswitch_5
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$500(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/setting/NewCameraSettingMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setCameraState(I)V

    goto :goto_0

    .line 1740
    :pswitch_6
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mIsExitable:Z
    invoke-static {v1, v0}, Lcom/oppo/camera/OppoCamera;->access$6202(Lcom/oppo/camera/OppoCamera;Z)Z

    goto :goto_0

    .line 1743
    :pswitch_7
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->restartPreview()Z
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$6300(Lcom/oppo/camera/OppoCamera;)Z

    goto :goto_0

    .line 1746
    :pswitch_8
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v1, v1, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-eqz v1, :cond_1

    .line 1747
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v1, v1, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->startAnimation()V

    .line 1748
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mAnimationIsActive:Z
    invoke-static {v1, v0}, Lcom/oppo/camera/OppoCamera;->access$2502(Lcom/oppo/camera/OppoCamera;Z)Z

    goto :goto_0

    .line 1750
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->enableUI()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$1700(Lcom/oppo/camera/OppoCamera;)V

    goto :goto_0

    .line 1759
    :pswitch_9
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v0, v0, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v0, v0, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    goto :goto_0

    .line 1764
    :pswitch_a
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mClickBackCount:I
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoCamera;->access$6402(Lcom/oppo/camera/OppoCamera;I)I

    goto :goto_0

    .line 1767
    :pswitch_b
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$6500(Lcom/oppo/camera/OppoCamera;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$6600(Lcom/oppo/camera/OppoCamera;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1768
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$6600(Lcom/oppo/camera/OppoCamera;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    #setter for: Lcom/oppo/camera/OppoCamera;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoCamera;->access$6502(Lcom/oppo/camera/OppoCamera;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 1770
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$6500(Lcom/oppo/camera/OppoCamera;)Landroid/view/SurfaceHolder;

    move-result-object v1

    #calls: Lcom/oppo/camera/OppoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoCamera;->access$6700(Lcom/oppo/camera/OppoCamera;Landroid/view/SurfaceHolder;)V

    goto/16 :goto_0

    .line 1773
    :pswitch_c
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->closeCamera()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$5900(Lcom/oppo/camera/OppoCamera;)V

    .line 1774
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->showCameraErrorAndFinish()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$6800(Lcom/oppo/camera/OppoCamera;)V

    goto/16 :goto_0

    .line 1777
    :pswitch_d
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mFocusState:I
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoCamera;->access$6902(Lcom/oppo/camera/OppoCamera;I)I

    .line 1778
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->doSnapAfterFocusFinished()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$7000(Lcom/oppo/camera/OppoCamera;)V

    goto/16 :goto_0

    .line 1781
    :pswitch_e
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$500(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/setting/NewCameraSettingMenu;

    move-result-object v2

    const-string v3, "key_camera_hdr"

    invoke-virtual {v2, v3, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setEnable(Ljava/lang/String;Z)V

    .line 1782
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$500(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/setting/NewCameraSettingMenu;

    move-result-object v2

    const-string v3, "key_camera_flash"

    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$MainHandler;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mFeatureMode:I
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$1500(Lcom/oppo/camera/OppoCamera;)I

    move-result v4

    if-eq v4, v0, :cond_3

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setEnable(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 1722
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_6
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
