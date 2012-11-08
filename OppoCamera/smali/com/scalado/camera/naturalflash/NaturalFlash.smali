.class public Lcom/scalado/camera/naturalflash/NaturalFlash;
.super Ljava/lang/Object;
.source "NaturalFlash.java"

# interfaces
.implements Lcom/scalado/camera/Feature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;,
        Lcom/scalado/camera/naturalflash/NaturalFlash$JpegWorkerClass;,
        Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;,
        Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;,
        Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;,
        Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;,
        Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewWorkerClass;,
        Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;
    }
.end annotation


# static fields
.field private static final EXIF_THUMBNAIL_HEIGHT:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "ScaladoCameraFramework"

.field private static final TOTAL_IMAGES:I = 0x2


# instance fields
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

.field private mFeatureImplementation:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;

.field private mInitFlash:Ljava/lang/String;

.field private mJpegCallbackHandler:Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;

.field private mNaturalFlashListener:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;

.field private mPostviewCallbackhandler:Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;

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

.field private mShutterCallbackHandler:Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;

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

.field private mState:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mNaturalFlashListener:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;

    .line 69
    new-instance v0, Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;-><init>(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mShutterCallbackHandler:Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;

    .line 70
    new-instance v0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;-><init>(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mPostviewCallbackhandler:Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;

    .line 71
    new-instance v0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;-><init>(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mJpegCallbackHandler:Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;

    .line 77
    iput-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mSrcBuffers:Ljava/util/Vector;

    .line 78
    iput-object v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mPostviewImages:Ljava/util/Vector;

    .line 84
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 101
    new-instance v0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;-><init>(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;)V

    iput-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mFeatureImplementation:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;

    .line 102
    invoke-direct {p0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->clean()V

    .line 103
    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/FeatureCamera;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mCamera:Lcom/scalado/camera/FeatureCamera;

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/Feature$FeatureSocket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-void
.end method

.method static synthetic access$10(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$11(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$12(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mState:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;

    return-object v0
.end method

.method static synthetic access$13(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mState:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;

    return-void
.end method

.method static synthetic access$14(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mShutterCallbackHandler:Lcom/scalado/camera/naturalflash/NaturalFlash$ShutterCallbackHandler;

    return-object v0
.end method

.method static synthetic access$15(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mPostviewCallbackhandler:Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewCallbackHandler;

    return-object v0
.end method

.method static synthetic access$16(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mJpegCallbackHandler:Lcom/scalado/camera/naturalflash/NaturalFlash$JpegCallbackHandler;

    return-object v0
.end method

.method static synthetic access$17(Lcom/scalado/camera/naturalflash/NaturalFlash;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/scalado/camera/naturalflash/NaturalFlash;->clean()V

    return-void
.end method

.method static synthetic access$18(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mNaturalFlashListener:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;

    return-object v0
.end method

.method static synthetic access$19(Lcom/scalado/camera/naturalflash/NaturalFlash;)I
    .locals 1
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mCapturedImages:I

    return v0
.end method

.method static synthetic access$2(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/FeatureCamera;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mCamera:Lcom/scalado/camera/FeatureCamera;

    return-object v0
.end method

.method static synthetic access$20(Lcom/scalado/camera/naturalflash/NaturalFlash;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mPostviewImages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$21(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/base/Size;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$22(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/base/Image$Config;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mConfig:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method static synthetic access$23(Lcom/scalado/camera/naturalflash/NaturalFlash;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mCapturedPostviews:I

    return v0
.end method

.method static synthetic access$24(Lcom/scalado/camera/naturalflash/NaturalFlash;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mCapturedPostviews:I

    return-void
.end method

.method static synthetic access$25(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$26(Lcom/scalado/camera/naturalflash/NaturalFlash;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$27(Lcom/scalado/camera/naturalflash/NaturalFlash;Ljava/util/Vector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mPostviewImages:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$28(Lcom/scalado/camera/naturalflash/NaturalFlash;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mSrcBuffers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$29(Lcom/scalado/camera/naturalflash/NaturalFlash;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mCapturedImages:I

    return-void
.end method

.method static synthetic access$3(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/base/Size;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mDims:Lcom/scalado/base/Size;

    return-void
.end method

.method static synthetic access$30(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$31(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Camera$ShutterCallback;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$32(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$4(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/base/Image$Config;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mConfig:Lcom/scalado/base/Image$Config;

    return-void
.end method

.method static synthetic access$5(Lcom/scalado/camera/naturalflash/NaturalFlash;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mInitFlash:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/scalado/camera/naturalflash/NaturalFlash;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mInitFlash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Feature$FeatureSocket;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-object v0
.end method

.method static synthetic access$8(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/Camera$ShutterCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-void
.end method

.method static synthetic access$9(Lcom/scalado/camera/naturalflash/NaturalFlash;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method private clean()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 120
    sget-object v0, Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;->READY:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;

    iput-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mState:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashStates;

    .line 121
    iput v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mCapturedImages:I

    .line 122
    iput v1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mCapturedPostviews:I

    .line 125
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mSrcBuffers:Ljava/util/Vector;

    .line 126
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mPostviewImages:Ljava/util/Vector;

    .line 127
    return-void
.end method


# virtual methods
.method public getFeatureImplementation()Lcom/scalado/camera/Feature$FeatureImplementation;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mFeatureImplementation:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashFeatureImplementation;

    return-object v0
.end method

.method public setListener(Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash;->mNaturalFlashListener:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;

    .line 112
    return-void
.end method
