.class public Lcom/scalado/camera/lowlight/LowLight;
.super Ljava/lang/Object;
.source "LowLight.java"

# interfaces
.implements Lcom/scalado/camera/Feature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;,
        Lcom/scalado/camera/lowlight/LowLight$JpegWorkerClass;,
        Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;,
        Lcom/scalado/camera/lowlight/LowLight$LowLightListener;,
        Lcom/scalado/camera/lowlight/LowLight$LowLightStates;,
        Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;,
        Lcom/scalado/camera/lowlight/LowLight$PostviewWorkerClass;,
        Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;
    }
.end annotation


# static fields
.field private static final EXIF_THUMBNAIL_HEIGHT:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "ScaladoCameraFramework"


# instance fields
.field private TOTAL_CAPTURE_IMAGES:I

.field private mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

.field private mCamera:Lcom/scalado/camera/FeatureCamera;

.field private mCapturedImages:I

.field private mCapturedPostviews:I

.field private mConfig:Lcom/scalado/base/Image$Config;

.field private mDims:Lcom/scalado/base/Size;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFeatureImplementation:Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;

.field private mInitIso:Ljava/lang/String;

.field private mJpegCallbackHandler:Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;

.field private mLowLightListener:Lcom/scalado/camera/lowlight/LowLight$LowLightListener;

.field private mPostviewCallbackhandler:Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;

.field private mPostviewImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mShutterCallbackHandler:Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;

.field private mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

.field private mSrcBuffers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x4

    iput v0, p0, Lcom/scalado/camera/lowlight/LowLight;->TOTAL_CAPTURE_IMAGES:I

    .line 60
    iput-object v1, p0, Lcom/scalado/camera/lowlight/LowLight;->mLowLightListener:Lcom/scalado/camera/lowlight/LowLight$LowLightListener;

    .line 68
    new-instance v0, Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;-><init>(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mShutterCallbackHandler:Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;

    .line 69
    new-instance v0, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;-><init>(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mPostviewCallbackhandler:Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;

    .line 70
    new-instance v0, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;-><init>(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mJpegCallbackHandler:Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;

    .line 76
    iput-object v1, p0, Lcom/scalado/camera/lowlight/LowLight;->mSrcBuffers:Ljava/util/Vector;

    .line 77
    iput-object v1, p0, Lcom/scalado/camera/lowlight/LowLight;->mPostviewImages:Ljava/util/Vector;

    .line 83
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 100
    new-instance v0, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;-><init>(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;)V

    iput-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mFeatureImplementation:Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;

    .line 102
    invoke-direct {p0}, Lcom/scalado/camera/lowlight/LowLight;->clean()V

    .line 103
    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/FeatureCamera;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/Feature$FeatureSocket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-void
.end method

.method static synthetic access$10(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$11(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$12(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$13(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$LowLightStates;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mState:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    return-object v0
.end method

.method static synthetic access$14(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/lowlight/LowLight$LowLightStates;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight;->mState:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    return-void
.end method

.method static synthetic access$15(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mShutterCallbackHandler:Lcom/scalado/camera/lowlight/LowLight$ShutterCallbackHandler;

    return-object v0
.end method

.method static synthetic access$16(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mPostviewCallbackhandler:Lcom/scalado/camera/lowlight/LowLight$PostviewCallbackHandler;

    return-object v0
.end method

.method static synthetic access$17(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mJpegCallbackHandler:Lcom/scalado/camera/lowlight/LowLight$JpegCallbackHandler;

    return-object v0
.end method

.method static synthetic access$18(Lcom/scalado/camera/lowlight/LowLight;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/scalado/camera/lowlight/LowLight;->clean()V

    return-void
.end method

.method static synthetic access$19(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/lowlight/LowLight$LowLightListener;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mLowLightListener:Lcom/scalado/camera/lowlight/LowLight$LowLightListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/FeatureCamera;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;

    return-object v0
.end method

.method static synthetic access$20(Lcom/scalado/camera/lowlight/LowLight;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mCapturedImages:I

    return v0
.end method

.method static synthetic access$21(Lcom/scalado/camera/lowlight/LowLight;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mPostviewImages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$22(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/base/Size;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$23(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/base/Image$Config;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mConfig:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method static synthetic access$24(Lcom/scalado/camera/lowlight/LowLight;)I
    .locals 1
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mCapturedPostviews:I

    return v0
.end method

.method static synthetic access$25(Lcom/scalado/camera/lowlight/LowLight;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/scalado/camera/lowlight/LowLight;->mCapturedPostviews:I

    return-void
.end method

.method static synthetic access$26(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$27(Lcom/scalado/camera/lowlight/LowLight;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$28(Lcom/scalado/camera/lowlight/LowLight;Ljava/util/Vector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight;->mPostviewImages:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$29(Lcom/scalado/camera/lowlight/LowLight;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mSrcBuffers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3(Lcom/scalado/camera/lowlight/LowLight;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/scalado/camera/lowlight/LowLight;->TOTAL_CAPTURE_IMAGES:I

    return v0
.end method

.method static synthetic access$30(Lcom/scalado/camera/lowlight/LowLight;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput p1, p0, Lcom/scalado/camera/lowlight/LowLight;->mCapturedImages:I

    return-void
.end method

.method static synthetic access$31(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$32(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Camera$ShutterCallback;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$33(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$4(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/base/Size;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight;->mDims:Lcom/scalado/base/Size;

    return-void
.end method

.method static synthetic access$5(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/base/Image$Config;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight;->mConfig:Lcom/scalado/base/Image$Config;

    return-void
.end method

.method static synthetic access$6(Lcom/scalado/camera/lowlight/LowLight;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight;->mInitIso:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/scalado/camera/lowlight/LowLight;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mInitIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Feature$FeatureSocket;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-object v0
.end method

.method static synthetic access$9(Lcom/scalado/camera/lowlight/LowLight;Lcom/scalado/camera/Camera$ShutterCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-void
.end method

.method private clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    sget-object v0, Lcom/scalado/camera/lowlight/LowLight$LowLightStates;->READY:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    iput-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mState:Lcom/scalado/camera/lowlight/LowLight$LowLightStates;

    .line 121
    iput v1, p0, Lcom/scalado/camera/lowlight/LowLight;->mCapturedImages:I

    .line 122
    iput v1, p0, Lcom/scalado/camera/lowlight/LowLight;->mCapturedPostviews:I

    .line 125
    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Lcom/scalado/camera/lowlight/LowLight;->TOTAL_CAPTURE_IMAGES:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mSrcBuffers:Ljava/util/Vector;

    .line 126
    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Lcom/scalado/camera/lowlight/LowLight;->TOTAL_CAPTURE_IMAGES:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mPostviewImages:Ljava/util/Vector;

    .line 127
    return-void
.end method


# virtual methods
.method public getFeatureImplementation()Lcom/scalado/camera/Feature$FeatureImplementation;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/scalado/camera/lowlight/LowLight;->mFeatureImplementation:Lcom/scalado/camera/lowlight/LowLight$LowLightFeatureImplementation;

    return-object v0
.end method

.method public setListener(Lcom/scalado/camera/lowlight/LowLight$LowLightListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight;->mLowLightListener:Lcom/scalado/camera/lowlight/LowLight$LowLightListener;

    .line 112
    return-void
.end method
