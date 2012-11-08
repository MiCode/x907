.class Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
.super Ljava/lang/Object;
.source "FeatureCameraFactory.java"

# interfaces
.implements Lcom/scalado/camera/FeatureCamera;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/FeatureCameraFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureCameraImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "ScaladoCameraFramework"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

.field private mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

.field private mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

.field final synthetic this$0:Lcom/scalado/camera/FeatureCameraFactory;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/FeatureCameraFactory;Landroid/hardware/Camera;)V
    .locals 2
    .parameter
    .parameter "camera"

    .prologue
    const/4 v0, 0x0

    .line 118
    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->this$0:Lcom/scalado/camera/FeatureCameraFactory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    .line 114
    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 115
    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    .line 116
    new-instance v0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-direct {v0, p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;-><init>(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    .line 119
    iput-object p2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    .line 120
    new-instance v0, Lcom/scalado/camera/ParametersImplementation;

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-direct {v0, v1}, Lcom/scalado/camera/ParametersImplementation;-><init>(Landroid/hardware/Camera;)V

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/FeatureCameraFactory;Landroid/hardware/Camera;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;-><init>(Lcom/scalado/camera/FeatureCameraFactory;Landroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    return-object v0
.end method

.method static synthetic access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$4(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->this$0:Lcom/scalado/camera/FeatureCameraFactory;

    return-object v0
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0, p1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->addApplicationPreviewBuffer([B)V

    .line 611
    return-void
.end method

.method public addPlugin(Lcom/scalado/camera/Plugin;)V
    .locals 2
    .parameter "plugin"

    .prologue
    .line 851
    invoke-interface {p1}, Lcom/scalado/camera/Plugin;->getImageCallback()Lcom/scalado/camera/Camera$ImageCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    .line 853
    invoke-interface {p1}, Lcom/scalado/camera/Plugin;->getImageCallback()Lcom/scalado/camera/Camera$ImageCallback;

    move-result-object v1

    .line 852
    #calls: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->addPluginPreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V
    invoke-static {v0, v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;Lcom/scalado/camera/Camera$ImageCallback;)V

    .line 855
    :cond_0
    return-void
.end method

.method public autoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0, p1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->doAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureImplementation;->onAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->doCancelAutoFocus()V

    .line 635
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureImplementation;->onCancelAutoFocus()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 818
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    .line 820
    :cond_0
    return-void
.end method

.method public getAndroidCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/scalado/camera/Camera$Parameters;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    return-object v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 645
    return-void
.end method

.method public reconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V

    .line 650
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 654
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureImplementation;->deregisterCamera()V

    .line 656
    iput-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->clearCallbackBuffers()V

    .line 659
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 660
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 661
    iput-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    .line 662
    return-void
.end method

.method public removePlugin(Lcom/scalado/camera/Plugin;)V
    .locals 2
    .parameter "plugin"

    .prologue
    .line 859
    invoke-interface {p1}, Lcom/scalado/camera/Plugin;->getImageCallback()Lcom/scalado/camera/Camera$ImageCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    .line 861
    invoke-interface {p1}, Lcom/scalado/camera/Plugin;->getImageCallback()Lcom/scalado/camera/Camera$ImageCallback;

    move-result-object v1

    .line 860
    #calls: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->removePluginPreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V
    invoke-static {v0, v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$1(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;Lcom/scalado/camera/Camera$ImageCallback;)V

    .line 863
    :cond_0
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 667
    return-void
.end method

.method public setErrorCallback(Lcom/scalado/camera/Camera$ErrorCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    .line 672
    invoke-static {p1, p0}, Lcom/scalado/camera/FeatureCameraFactory$ErrorCallbackAdapter;->createErrorCallbackAdapter(Lcom/scalado/camera/Camera$ErrorCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$ErrorCallbackAdapter;

    move-result-object v1

    .line 671
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 673
    return-void
.end method

.method public setFeature(Lcom/scalado/camera/Feature;)V
    .locals 4
    .parameter "feature"

    .prologue
    const/4 v3, 0x0

    .line 825
    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/scalado/camera/naturalflash/NaturalFlash;

    if-eqz v1, :cond_2

    .line 826
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->this$0:Lcom/scalado/camera/FeatureCameraFactory;

    const/4 v2, 0x1

    #setter for: Lcom/scalado/camera/FeatureCameraFactory;->mIsNaturalFlash:Z
    invoke-static {v1, v2}, Lcom/scalado/camera/FeatureCameraFactory;->access$1(Lcom/scalado/camera/FeatureCameraFactory;Z)V

    .line 831
    :goto_0
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-eqz v1, :cond_0

    .line 832
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v1}, Lcom/scalado/camera/Feature$FeatureImplementation;->deregisterCamera()V

    .line 833
    iput-object v3, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    .line 835
    :cond_0
    if-eqz p1, :cond_1

    .line 836
    invoke-interface {p1}, Lcom/scalado/camera/Feature;->getFeatureImplementation()Lcom/scalado/camera/Feature$FeatureImplementation;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    .line 837
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-eqz v1, :cond_1

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    iget-object v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-interface {v1, p0, v2}, Lcom/scalado/camera/Feature$FeatureImplementation;->registerCamera(Lcom/scalado/camera/FeatureCamera;Lcom/scalado/camera/Feature$FeatureSocket;)V
    :try_end_0
    .catch Lcom/scalado/camera/FeatureNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :cond_1
    return-void

    .line 828
    :cond_2
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->this$0:Lcom/scalado/camera/FeatureCameraFactory;

    const/4 v2, 0x0

    #setter for: Lcom/scalado/camera/FeatureCameraFactory;->mIsNaturalFlash:Z
    invoke-static {v1, v2}, Lcom/scalado/camera/FeatureCameraFactory;->access$1(Lcom/scalado/camera/FeatureCameraFactory;Z)V

    goto :goto_0

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, e:Lcom/scalado/camera/FeatureNotSupportedException;
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v1}, Lcom/scalado/camera/Feature$FeatureImplementation;->deregisterCamera()V

    .line 842
    iput-object v3, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    .line 843
    throw v0
.end method

.method public setOneShotPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setApplicationPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;Z)V

    .line 678
    return-void
.end method

.method public setParameters(Lcom/scalado/camera/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 687
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0, p1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 692
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureImplementation;->onSetParameters(Lcom/scalado/camera/Camera$Parameters;)V

    goto :goto_0
.end method

.method public setPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setApplicationPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;Z)V

    .line 703
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Lcom/scalado/camera/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setApplicationPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;Z)V

    .line 714
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 719
    return-void
.end method

.method public setZoomChangeListener(Lcom/scalado/camera/Camera$OnZoomChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    .line 724
    invoke-static {p1, p0}, Lcom/scalado/camera/FeatureCameraFactory$OnZoomChangeListenerAdapter;->createOnZoomChangeListenerAdapter(Lcom/scalado/camera/Camera$OnZoomChangeListener;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$OnZoomChangeListenerAdapter;

    move-result-object v1

    .line 723
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 725
    return-void
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->reAddCallbackBuffers()V

    .line 734
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 735
    return-void
.end method

.method public startSmoothZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0, p1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->doStartSmoothZoom(I)V

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureImplementation;->onStartSmoothZoom(I)V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    iget-boolean v0, v0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->useBufferWorkAround:Z

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->clearCallbackBuffers()V

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 757
    return-void
.end method

.method public stopSmoothZoom()V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-nez v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->doStopSmoothZoom()V

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureImplementation;->onStopSmoothZoom()V

    goto :goto_0
.end method

.method public takePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 806
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->takePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 807
    return-void
.end method

.method public takePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/scalado/camera/Feature$FeatureImplementation;->onTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 798
    :goto_0
    return-void

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 812
    return-void
.end method
