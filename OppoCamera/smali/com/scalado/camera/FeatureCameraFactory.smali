.class public Lcom/scalado/camera/FeatureCameraFactory;
.super Ljava/lang/Object;
.source "FeatureCameraFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;,
        Lcom/scalado/camera/FeatureCameraFactory$ErrorCallbackAdapter;,
        Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;,
        Lcom/scalado/camera/FeatureCameraFactory$OnZoomChangeListenerAdapter;,
        Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;,
        Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;
    }
.end annotation


# instance fields
.field private mIsNaturalFlash:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory;->mIsNaturalFlash:Z

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/FeatureCameraFactory;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory;->mIsNaturalFlash:Z

    return v0
.end method

.method static synthetic access$1(Lcom/scalado/camera/FeatureCameraFactory;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/scalado/camera/FeatureCameraFactory;->mIsNaturalFlash:Z

    return-void
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 0
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 51
    invoke-static {p0, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 52
    return-void
.end method

.method public static getNumberOfCameras()I
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public static open()Lcom/scalado/camera/FeatureCamera;
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 75
    .local v0, camera:Landroid/hardware/Camera;
    new-instance v1, Lcom/scalado/camera/FeatureCameraFactory;

    invoke-direct {v1}, Lcom/scalado/camera/FeatureCameraFactory;-><init>()V

    .line 76
    .local v1, thiz:Lcom/scalado/camera/FeatureCameraFactory;
    new-instance v2, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;-><init>(Lcom/scalado/camera/FeatureCameraFactory;Landroid/hardware/Camera;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V

    return-object v2
.end method

.method public static open(I)Lcom/scalado/camera/FeatureCamera;
    .locals 4
    .parameter "cameraId"

    .prologue
    .line 100
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 106
    .local v0, camera:Landroid/hardware/Camera;
    new-instance v1, Lcom/scalado/camera/FeatureCameraFactory;

    invoke-direct {v1}, Lcom/scalado/camera/FeatureCameraFactory;-><init>()V

    .line 107
    .local v1, thiz:Lcom/scalado/camera/FeatureCameraFactory;
    new-instance v2, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;-><init>(Lcom/scalado/camera/FeatureCameraFactory;Landroid/hardware/Camera;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V

    return-object v2
.end method

.method public static open(Landroid/hardware/Camera;)Lcom/scalado/camera/FeatureCamera;
    .locals 3
    .parameter "camera"

    .prologue
    .line 88
    new-instance v0, Lcom/scalado/camera/FeatureCameraFactory;

    invoke-direct {v0}, Lcom/scalado/camera/FeatureCameraFactory;-><init>()V

    .line 89
    .local v0, thiz:Lcom/scalado/camera/FeatureCameraFactory;
    new-instance v1, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;-><init>(Lcom/scalado/camera/FeatureCameraFactory;Landroid/hardware/Camera;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V

    return-object v1
.end method
