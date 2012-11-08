.class public final Lcom/scalado/camera/singleimagehdr/SingleImageHDR;
.super Ljava/lang/Object;
.source "SingleImageHDR.java"

# interfaces
.implements Lcom/scalado/camera/Feature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;,
        Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegWorkerClass;,
        Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewCallbackHandler;,
        Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;,
        Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;,
        Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SingleImageHDRListener;
    }
.end annotation


# static fields
.field private static final EXIF_THUMBNAIL_HEIGHT:I = 0xa0

.field private static final LEVEL:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ScaladoCameraFramework"


# instance fields
.field private mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

.field private mCamera:Lcom/scalado/camera/FeatureCamera;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFeatImpl:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;

.field private mJpegCallbackHandler:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;

.field private mListener:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SingleImageHDRListener;

.field private mPostviewCallbackhandler:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewCallbackHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mListener:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SingleImageHDRListener;

    .line 86
    new-instance v0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;-><init>(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;)V

    iput-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mFeatImpl:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;

    .line 87
    new-instance v0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewCallbackHandler;-><init>(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mPostviewCallbackhandler:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewCallbackHandler;

    .line 88
    new-instance v0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;-><init>(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mJpegCallbackHandler:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;

    .line 91
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 99
    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/FeatureCamera;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mCamera:Lcom/scalado/camera/FeatureCamera;

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/Camera$ShutterCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-void
.end method

.method static synthetic access$10(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$11(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SingleImageHDRListener;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mListener:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SingleImageHDRListener;

    return-object v0
.end method

.method static synthetic access$12(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$13(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/FeatureCamera;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mCamera:Lcom/scalado/camera/FeatureCamera;

    return-object v0
.end method

.method static synthetic access$2(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$3(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$4(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$5(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/Camera$ShutterCallback;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$6(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$7(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewCallbackHandler;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mPostviewCallbackhandler:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewCallbackHandler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mJpegCallbackHandler:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegCallbackHandler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method


# virtual methods
.method public getFeatureImplementation()Lcom/scalado/camera/Feature$FeatureImplementation;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mFeatImpl:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SIHDRFeatureImplementation;

    return-object v0
.end method

.method public setListener(Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SingleImageHDRListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mListener:Lcom/scalado/camera/singleimagehdr/SingleImageHDR$SingleImageHDRListener;

    .line 108
    return-void
.end method
