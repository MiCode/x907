.class public final Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;
.super Ljava/lang/Object;
.source "SingleImageLowLight.java"

# interfaces
.implements Lcom/scalado/camera/Feature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;,
        Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegWorkerClass;,
        Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;,
        Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;,
        Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;,
        Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;
    }
.end annotation


# static fields
.field private static final EXIF_THUMBNAIL_HEIGHT:I = 0xa0

.field private static final NOISELEVEL:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaladoCameraFramework"


# instance fields
.field private mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

.field private mCamera:Lcom/scalado/camera/FeatureCamera;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFeatImpl:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;

.field private mJpegCallbackHandler:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;

.field private mListener:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;

.field private mPostviewCallbackhandler:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mListener:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;

    .line 86
    new-instance v0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;-><init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;)V

    iput-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mFeatImpl:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;

    .line 87
    new-instance v0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;-><init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mPostviewCallbackhandler:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;

    .line 88
    new-instance v0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;-><init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mJpegCallbackHandler:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;

    .line 91
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 99
    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/FeatureCamera;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/FeatureCamera;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;

    return-object v0
.end method

.method static synthetic access$10(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$11(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$12(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mListener:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;

    return-object v0
.end method

.method static synthetic access$13(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/Camera$ShutterCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-void
.end method

.method static synthetic access$3(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$4(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$5(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$6(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/Camera$ShutterCallback;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$7(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$8(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mPostviewCallbackhandler:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewCallbackHandler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mJpegCallbackHandler:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegCallbackHandler;

    return-object v0
.end method


# virtual methods
.method public getFeatureImplementation()Lcom/scalado/camera/Feature$FeatureImplementation;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mFeatImpl:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SILowLightFeatureImplementation;

    return-object v0
.end method

.method public setListener(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mListener:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$SingleImageLowLightListener;

    .line 108
    return-void
.end method
