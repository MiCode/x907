.class Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCameraInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;-><init>(Lcom/oppo/camera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public getPostview()[B
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mPreviewCallback:Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$1900(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mPreviewCallback:Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$1900(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;

    move-result-object v0

    #calls: Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->getLast()[B
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->access$3200(Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;)[B

    move-result-object v0

    .line 767
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public previewRunning()Z
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mIsRunning:Z
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$2400(Lcom/oppo/camera/rewind/RewindActivity;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 651
    sget-boolean v0, Lcom/oppo/camera/rewind/Config;->previewEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mBurstJpegCallback:Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$1100(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mBurstJpegCallback:Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$1100(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;

    move-result-object v0

    #calls: Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->cancel()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;->access$1200(Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;)V

    .line 657
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->stopPreview()Z

    .line 658
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->stopPreview()V

    .line 659
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->release()V

    .line 660
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$1002(Lcom/oppo/camera/rewind/RewindActivity;Lcom/scalado/camera/FeatureCamera;)Lcom/scalado/camera/FeatureCamera;

    goto :goto_0
.end method

.method public startPreview(Z)Z
    .locals 7
    .parameter "isBurst"

    .prologue
    const/4 v2, 0x1

    .line 664
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->showShutterControlBar()V
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$1300(Lcom/oppo/camera/rewind/RewindActivity;)V

    .line 665
    sget-boolean v3, Lcom/oppo/camera/rewind/Config;->previewEnabled:Z

    if-nez v3, :cond_0

    .line 711
    :goto_0
    return v2

    .line 669
    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v3

    if-nez v3, :cond_1

    .line 670
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->openCamera()V
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$1400(Lcom/oppo/camera/rewind/RewindActivity;)V

    .line 672
    :cond_1
    if-nez p1, :cond_2

    .line 673
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mPreviewSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$1500(Lcom/oppo/camera/rewind/RewindActivity;)Landroid/view/SurfaceView;

    move-result-object v4

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->setPreviewDisplay(Landroid/view/SurfaceView;)V
    invoke-static {v3, v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$1600(Lcom/oppo/camera/rewind/RewindActivity;Landroid/view/SurfaceView;)V

    .line 675
    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mPreviewSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$1500(Lcom/oppo/camera/rewind/RewindActivity;)Landroid/view/SurfaceView;

    move-result-object v4

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->setPreviewDisplay(Landroid/view/SurfaceView;)V
    invoke-static {v3, v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$1600(Lcom/oppo/camera/rewind/RewindActivity;Landroid/view/SurfaceView;)V

    .line 676
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v3

    invoke-interface {v3}, Lcom/scalado/camera/FeatureCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mContinuousAfCallback:Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;
    invoke-static {v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$1700(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setContinuousAfCallback(Landroid/hardware/Camera$ContinuousAfCallback;)V

    .line 678
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v4

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v3, v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$1802(Lcom/oppo/camera/rewind/RewindActivity;Lcom/scalado/camera/FeatureCamera$Parameters;)Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 680
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$1800(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v3

    const/16 v4, 0x320

    const/16 v5, 0x1e0

    invoke-interface {v3, v4, v5}, Lcom/scalado/camera/FeatureCamera$Parameters;->setPreviewSize(II)V

    .line 681
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$1800(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v3

    const/16 v4, 0xcc0

    const/16 v5, 0x990

    invoke-interface {v3, v4, v5}, Lcom/scalado/camera/FeatureCamera$Parameters;->setPictureSize(II)V

    .line 682
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$1800(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v3

    const-string v4, "continuous"

    invoke-interface {v3, v4}, Lcom/scalado/camera/FeatureCamera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 685
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$1800(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v3

    const-string v4, "auto"

    invoke-interface {v3, v4}, Lcom/scalado/camera/FeatureCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 688
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v3

    invoke-interface {v3}, Lcom/scalado/camera/FeatureCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 689
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setShutterSound(I)V

    .line 690
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v3

    invoke-interface {v3}, Lcom/scalado/camera/FeatureCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 692
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$1800(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 694
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mPreviewCallback:Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$1900(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 695
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mPreviewCallback:Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$1900(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v4

    #calls: Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->set(Lcom/scalado/camera/Camera;)V
    invoke-static {v3, v4}, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;->access$2000(Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;Lcom/scalado/camera/Camera;)V

    .line 698
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v3

    invoke-interface {v3}, Lcom/scalado/camera/FeatureCamera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Blaze generic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Full Android on Blaze or SDP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 704
    :cond_4
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v3

    new-instance v4, Lcom/oppo/camera/rewind/RewindActivity$MyAutoFocusCallback;

    iget-object v5, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/oppo/camera/rewind/RewindActivity$MyAutoFocusCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V

    invoke-interface {v3, v4}, Lcom/scalado/camera/FeatureCamera;->autoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V

    .line 708
    :goto_1
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->turnOnContiniousAF()V
    invoke-static {v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$2300(Lcom/oppo/camera/rewind/RewindActivity;)V

    .line 709
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mIsRunning:Z
    invoke-static {v3, v2}, Lcom/oppo/camera/rewind/RewindActivity;->access$2402(Lcom/oppo/camera/rewind/RewindActivity;Z)Z

    goto/16 :goto_0

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "RewindActivity"

    const-string v3, "Exception when starting preview: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 706
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mCapturingEnabled:Z
    invoke-static {v3, v2}, Lcom/oppo/camera/rewind/RewindActivity;->access$2202(Lcom/oppo/camera/rewind/RewindActivity;Z)Z

    goto :goto_1
.end method

.method public startWithoutPreview()V
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->loadImages()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$3100(Lcom/oppo/camera/rewind/RewindActivity;)V

    .line 761
    return-void
.end method

.method public stopPreview()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 716
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mCapturingEnabled:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$2202(Lcom/oppo/camera/rewind/RewindActivity;Z)Z

    .line 717
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mIsRunning:Z
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$2400(Lcom/oppo/camera/rewind/RewindActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oppo/camera/rewind/Config;->previewEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 723
    :cond_0
    :goto_0
    return v2

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->stopPreview()V

    .line 721
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mIsRunning:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$2402(Lcom/oppo/camera/rewind/RewindActivity;Z)Z

    goto :goto_0
.end method

.method public takeBurst()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 728
    sget-boolean v4, Lcom/oppo/camera/rewind/Config;->previewEnabled:Z

    if-nez v4, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->turnOffContiniousAF()V
    invoke-static {v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$2500(Lcom/oppo/camera/rewind/RewindActivity;)V

    .line 732
    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/scalado/camera/FeatureCamera;->cancelAutoFocus()V

    .line 733
    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    new-instance v5, Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;

    iget-object v6, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    sget v7, Lcom/oppo/camera/rewind/Config;->burstSize:I

    invoke-direct {v5, v6, v7, v8}, Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;ILcom/oppo/camera/rewind/RewindActivity$1;)V

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mShutterCallback:Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;
    invoke-static {v4, v5}, Lcom/oppo/camera/rewind/RewindActivity;->access$2602(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;)Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;

    .line 734
    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    new-instance v5, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;

    iget-object v6, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    sget v7, Lcom/oppo/camera/rewind/Config;->burstSize:I

    invoke-direct {v5, v6, v8, v7}, Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;Landroid/location/Location;I)V

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mBurstJpegCallback:Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;
    invoke-static {v4, v5}, Lcom/oppo/camera/rewind/RewindActivity;->access$1102(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;)Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;

    .line 735
    new-instance v2, Lcom/oppo/camera/rewind/RewindActivity$MyRawCallback;

    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    sget v5, Lcom/oppo/camera/rewind/Config;->burstSize:I

    invoke-direct {v2, v4, v5, v8}, Lcom/oppo/camera/rewind/RewindActivity$MyRawCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;ILcom/oppo/camera/rewind/RewindActivity$1;)V

    .line 736
    .local v2, rawCb:Lcom/oppo/camera/rewind/RewindActivity$MyRawCallback;
    new-instance v1, Lcom/oppo/camera/rewind/RewindActivity$MyPostviewCallback;

    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    sget v5, Lcom/oppo/camera/rewind/Config;->burstSize:I

    invoke-direct {v1, v4, v5, v8}, Lcom/oppo/camera/rewind/RewindActivity$MyPostviewCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;ILcom/oppo/camera/rewind/RewindActivity$1;)V

    .line 738
    .local v1, pvCb:Lcom/oppo/camera/rewind/RewindActivity$MyPostviewCallback;
    const/4 v3, 0x0

    .line 739
    .local v3, rotation:I
    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mOrientation:I
    invoke-static {v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$3000(Lcom/oppo/camera/rewind/RewindActivity;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 740
    invoke-static {}, Lcom/oppo/camera/CameraHolder;->instance()Lcom/oppo/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v0, v4, v5

    .line 741
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget-object v5, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mOrientation:I
    invoke-static {v5}, Lcom/oppo/camera/rewind/RewindActivity;->access$3000(Lcom/oppo/camera/rewind/RewindActivity;)I

    move-result v5

    add-int/2addr v4, v5

    rem-int/lit16 v3, v4, 0x168

    .line 743
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_2
    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    iget-object v5, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v5}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v5

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v4, v5}, Lcom/oppo/camera/rewind/RewindActivity;->access$1802(Lcom/oppo/camera/rewind/RewindActivity;Lcom/scalado/camera/FeatureCamera$Parameters;)Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 744
    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$1800(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/scalado/camera/FeatureCamera$Parameters;->setRotation(I)V

    .line 745
    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v5}, Lcom/oppo/camera/rewind/RewindActivity;->access$1800(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 747
    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mShutterCallback:Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;
    invoke-static {v5}, Lcom/oppo/camera/rewind/RewindActivity;->access$2600(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mBurstJpegCallback:Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;
    invoke-static {v6}, Lcom/oppo/camera/rewind/RewindActivity;->access$1100(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;

    move-result-object v6

    invoke-interface {v4, v5, v2, v1, v6}, Lcom/scalado/camera/FeatureCamera;->takePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 749
    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mPreviewCallback:Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;
    invoke-static {v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$1900(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    goto/16 :goto_0
.end method
