.class public Lcom/scalado/camera/hdr2/HDR2;
.super Ljava/lang/Object;
.source "HDR2.java"

# interfaces
.implements Lcom/scalado/camera/Feature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;,
        Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;,
        Lcom/scalado/camera/hdr2/HDR2$HDROptions;,
        Lcom/scalado/camera/hdr2/HDR2$HDRStates;,
        Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;,
        Lcom/scalado/camera/hdr2/HDR2$PostviewCallbackHandler;,
        Lcom/scalado/camera/hdr2/HDR2$ShutterCallbackHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_EV_STEP:F = 0.5f

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

.field private mCurrentExposureCompensation:I

.field private mDims:Lcom/scalado/base/Size;

.field private mExposureCompensationStep:F

.field private mExposureDiff:I

.field private mFeatureImplementation:Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;

.field private mHDR2:Lcom/scalado/caps/hdr2/HDR2;

.field private mHDR2Listener:Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;

.field private mHDROptions:Lcom/scalado/camera/hdr2/HDR2$HDROptions;

.field private mMaxExposureCompensation:I

.field private mMinExposureCompensation:I

.field private mPostviewCallbackhandler:Lcom/scalado/camera/hdr2/HDR2$PostviewCallbackHandler;

.field private mShutterCallbackHandler:Lcom/scalado/camera/hdr2/HDR2$ShutterCallbackHandler;

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

.field private mState:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

.field private mWorkerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v2, p0, Lcom/scalado/camera/hdr2/HDR2;->mHDR2Listener:Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;

    .line 77
    new-instance v0, Lcom/scalado/camera/hdr2/HDR2$ShutterCallbackHandler;

    invoke-direct {v0, p0, v2}, Lcom/scalado/camera/hdr2/HDR2$ShutterCallbackHandler;-><init>(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/hdr2/HDR2$ShutterCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mShutterCallbackHandler:Lcom/scalado/camera/hdr2/HDR2$ShutterCallbackHandler;

    .line 78
    new-instance v0, Lcom/scalado/camera/hdr2/HDR2$PostviewCallbackHandler;

    invoke-direct {v0, p0, v2}, Lcom/scalado/camera/hdr2/HDR2$PostviewCallbackHandler;-><init>(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/hdr2/HDR2$PostviewCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mPostviewCallbackhandler:Lcom/scalado/camera/hdr2/HDR2$PostviewCallbackHandler;

    .line 85
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mSrcBuffers:Ljava/util/Vector;

    .line 134
    new-instance v0, Lcom/scalado/camera/hdr2/HDR2$HDROptions;

    invoke-direct {v0, p0}, Lcom/scalado/camera/hdr2/HDR2$HDROptions;-><init>(Lcom/scalado/camera/hdr2/HDR2;)V

    iput-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mHDROptions:Lcom/scalado/camera/hdr2/HDR2$HDROptions;

    .line 135
    new-instance v0, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;

    invoke-direct {v0, p0, v2}, Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;-><init>(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;)V

    iput-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mFeatureImplementation:Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;

    .line 137
    invoke-direct {p0}, Lcom/scalado/camera/hdr2/HDR2;->clean()V

    .line 138
    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/hdr2/HDR2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mExposureDiff:I

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/camera/hdr2/HDR2;)I
    .locals 1
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mExposureDiff:I

    return v0
.end method

.method static synthetic access$10(Lcom/scalado/camera/hdr2/HDR2;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mExposureCompensationStep:F

    return-void
.end method

.method static synthetic access$11(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/base/Size;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mDims:Lcom/scalado/base/Size;

    return-void
.end method

.method static synthetic access$12(Lcom/scalado/camera/hdr2/HDR2;)F
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mExposureCompensationStep:F

    return v0
.end method

.method static synthetic access$13(Lcom/scalado/camera/hdr2/HDR2;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mCurrentExposureCompensation:I

    return v0
.end method

.method static synthetic access$14(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Feature$FeatureSocket;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-object v0
.end method

.method static synthetic access$15(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/Camera$ShutterCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-void
.end method

.method static synthetic access$16(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$17(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$18(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$19(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/hdr2/HDR2$HDRStates;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mState:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    return-object v0
.end method

.method static synthetic access$2(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/FeatureCamera;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mCamera:Lcom/scalado/camera/FeatureCamera;

    return-void
.end method

.method static synthetic access$20(Lcom/scalado/camera/hdr2/HDR2;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/scalado/camera/hdr2/HDR2;->startCapturing()V

    return-void
.end method

.method static synthetic access$21(Lcom/scalado/camera/hdr2/HDR2;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/scalado/camera/hdr2/HDR2;->clean()V

    return-void
.end method

.method static synthetic access$22(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mHDR2Listener:Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;

    return-object v0
.end method

.method static synthetic access$23(Lcom/scalado/camera/hdr2/HDR2;)I
    .locals 1
    .parameter

    .prologue
    .line 84
    iget v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mCapturedImages:I

    return v0
.end method

.method static synthetic access$24(Lcom/scalado/camera/hdr2/HDR2;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mSrcBuffers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$25(Lcom/scalado/camera/hdr2/HDR2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mCapturedImages:I

    return-void
.end method

.method static synthetic access$26(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$ShutterCallback;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$27(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$28(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/caps/hdr2/HDR2;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mHDR2:Lcom/scalado/caps/hdr2/HDR2;

    return-void
.end method

.method static synthetic access$29(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/caps/hdr2/HDR2;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mHDR2:Lcom/scalado/caps/hdr2/HDR2;

    return-object v0
.end method

.method static synthetic access$3(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/Feature$FeatureSocket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-void
.end method

.method static synthetic access$30(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$31(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$32(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/base/Size;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$33(Lcom/scalado/camera/hdr2/HDR2;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mWorkerThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$34(Lcom/scalado/camera/hdr2/HDR2;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mWorkerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$35(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/hdr2/HDR2$HDRStates;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mState:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    return-void
.end method

.method static synthetic access$4(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/FeatureCamera;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mCamera:Lcom/scalado/camera/FeatureCamera;

    return-object v0
.end method

.method static synthetic access$5(Lcom/scalado/camera/hdr2/HDR2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mMinExposureCompensation:I

    return-void
.end method

.method static synthetic access$6(Lcom/scalado/camera/hdr2/HDR2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mMaxExposureCompensation:I

    return-void
.end method

.method static synthetic access$7(Lcom/scalado/camera/hdr2/HDR2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mCurrentExposureCompensation:I

    return-void
.end method

.method static synthetic access$8(Lcom/scalado/camera/hdr2/HDR2;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mMinExposureCompensation:I

    return v0
.end method

.method static synthetic access$9(Lcom/scalado/camera/hdr2/HDR2;)I
    .locals 1
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mMaxExposureCompensation:I

    return v0
.end method

.method private clean()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mHDR2:Lcom/scalado/caps/hdr2/HDR2;

    .line 165
    sget-object v0, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->READY:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    iput-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mState:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mCapturedImages:I

    .line 167
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mSrcBuffers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 168
    return-void
.end method

.method private startCapturing()V
    .locals 8

    .prologue
    .line 172
    iget v4, p0, Lcom/scalado/camera/hdr2/HDR2;->mMinExposureCompensation:I

    iget v5, p0, Lcom/scalado/camera/hdr2/HDR2;->mCurrentExposureCompensation:I

    iget v6, p0, Lcom/scalado/camera/hdr2/HDR2;->mExposureDiff:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 173
    .local v2, lowExposure:I
    iget v4, p0, Lcom/scalado/camera/hdr2/HDR2;->mMaxExposureCompensation:I

    iget v5, p0, Lcom/scalado/camera/hdr2/HDR2;->mCurrentExposureCompensation:I

    iget v6, p0, Lcom/scalado/camera/hdr2/HDR2;->mExposureDiff:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 175
    .local v0, highExposure:I
    iget-object v4, p0, Lcom/scalado/camera/hdr2/HDR2;->mCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v4}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v3

    .line 177
    .local v3, params:Lcom/scalado/camera/FeatureCamera$Parameters;
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-interface {v3, v4}, Lcom/scalado/camera/FeatureCamera$Parameters;->setExposureBracketing([I)V

    .line 178
    iget-object v4, p0, Lcom/scalado/camera/hdr2/HDR2;->mCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v4, v3}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 180
    sget-object v4, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->CAPTURING:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    iput-object v4, p0, Lcom/scalado/camera/hdr2/HDR2;->mState:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    .line 182
    new-instance v1, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    iget-object v4, p0, Lcom/scalado/camera/hdr2/HDR2;->mCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-direct {v1, p0, v4}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;-><init>(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/FeatureCamera;)V

    .line 183
    .local v1, jpegCallbackHandler:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;
    iget-object v4, p0, Lcom/scalado/camera/hdr2/HDR2;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    iget-object v5, p0, Lcom/scalado/camera/hdr2/HDR2;->mShutterCallbackHandler:Lcom/scalado/camera/hdr2/HDR2$ShutterCallbackHandler;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/scalado/camera/hdr2/HDR2;->mPostviewCallbackhandler:Lcom/scalado/camera/hdr2/HDR2$PostviewCallbackHandler;

    invoke-interface {v4, v5, v6, v7, v1}, Lcom/scalado/camera/Feature$FeatureSocket;->doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 184
    return-void
.end method


# virtual methods
.method public getFeatureImplementation()Lcom/scalado/camera/Feature$FeatureImplementation;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mFeatureImplementation:Lcom/scalado/camera/hdr2/HDR2$HDR2FeatureImplementation;

    return-object v0
.end method

.method public getOptions()Lcom/scalado/camera/hdr2/HDR2$HDROptions;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2;->mHDROptions:Lcom/scalado/camera/hdr2/HDR2$HDROptions;

    return-object v0
.end method

.method public setListener(Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2;->mHDR2Listener:Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;

    .line 156
    return-void
.end method
