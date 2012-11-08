.class public Lcom/oppo/camera/rewind/app/RewindApp;
.super Ljava/lang/Object;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/app/RewindApp$1;,
        Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;,
        Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;,
        Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;,
        Lcom/oppo/camera/rewind/app/RewindApp$Rewinding;,
        Lcom/oppo/camera/rewind/app/RewindApp$Capturing;,
        Lcom/oppo/camera/rewind/app/RewindApp$Loading;,
        Lcom/oppo/camera/rewind/app/RewindApp$ReceivingImages;,
        Lcom/oppo/camera/rewind/app/RewindApp$PendingPreviewStartUp;,
        Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;,
        Lcom/oppo/camera/rewind/app/RewindApp$StartingUpNoPreview;,
        Lcom/oppo/camera/rewind/app/RewindApp$Previewing;,
        Lcom/oppo/camera/rewind/app/RewindApp$State;,
        Lcom/oppo/camera/rewind/app/RewindApp$RewindSurfaceCallback;,
        Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;,
        Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBgIndex:I

.field private mBurstSize:I

.field private mCameraInterface:Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;

.field private mCapturing:Z

.field private mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

.field private mContext:Landroid/content/Context;

.field private mCurSurfaceView:Landroid/view/SurfaceView;

.field private mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mFgIndex:I

.field private mIgnoreNextBackUp:Z

.field private mIsPreviewSurfaceDestoryed:Z

.field private mIsRunning:Z

.field private mIsSurfaceCreated:Z

.field private mJpegs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mPreviewConfig:Lcom/scalado/base/Image$Config;

.field private mPreviewEnabled:Z

.field private mPreviewHeight:I

.field private mPreviewSurfaceCallback:Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;

.field private mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mPreviewSurfaceView:Landroid/view/SurfaceView;

.field private mPreviewWidth:I

.field private mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

.field private mRewindCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

.field private mRewindSurfaceCallback:Lcom/oppo/camera/rewind/app/RewindApp$RewindSurfaceCallback;

.field private mRewindSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mRewindSurfaceView:Landroid/view/SurfaceView;

.field private mSourcesLoaded:Z

.field private mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

.field private mThumbSize:Lcom/scalado/base/Size;

.field private mToUiHandler:Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;

.field private mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;ZILcom/oppo/camera/rewind/app/RewindViewerConfig;)V
    .locals 3
    .parameter "context"
    .parameter "camera"
    .parameter "previewEnabled"
    .parameter "numImages"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-string v0, "RewindApp"

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->TAG:Ljava/lang/String;

    .line 106
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mIsRunning:Z

    .line 107
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCapturing:Z

    .line 109
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewEnabled:Z

    .line 113
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;

    invoke-direct {v0, p0}, Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceCallback:Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;

    .line 114
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindApp$RewindSurfaceCallback;

    invoke-direct {v0, p0}, Lcom/oppo/camera/rewind/app/RewindApp$RewindSurfaceCallback;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceCallback:Lcom/oppo/camera/rewind/app/RewindApp$RewindSurfaceCallback;

    .line 140
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mToUiHandler:Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;

    .line 144
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPaused:Z

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mIsPreviewSurfaceDestoryed:Z

    .line 152
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mIgnoreNextBackUp:Z

    .line 153
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mIsSurfaceCreated:Z

    .line 163
    iget-object v0, p5, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->predefinedSizes:[I

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p5, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->predefinedSizes:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length miss match for predefined images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iput-object p2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCameraInterface:Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;

    .line 170
    iput-boolean p3, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewEnabled:Z

    .line 171
    iput p4, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mBurstSize:I

    .line 172
    iput-object p5, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    .line 173
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 178
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mJpegs:Ljava/util/Vector;

    .line 181
    :pswitch_0
    return-void

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/oppo/camera/rewind/app/RewindApp;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCurSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/oppo/camera/rewind/app/RewindApp;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCurSurfaceView:Landroid/view/SurfaceView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/oppo/camera/rewind/app/RewindApp;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindApp$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oppo/camera/rewind/app/RewindApp;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oppo/camera/rewind/app/RewindApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewEnabled:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp;->switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RewindApp;->hideTopbar()V

    return-void
.end method

.method static synthetic access$1900(Lcom/oppo/camera/rewind/app/RewindApp;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/RewindApp;->setViewVisibilities(II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCameraInterface:Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/oppo/camera/rewind/app/RewindApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mSourcesLoaded:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/oppo/camera/rewind/app/RewindApp;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp;->showLtw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2602(Lcom/oppo/camera/rewind/app/RewindApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/oppo/camera/rewind/app/RewindApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCapturing:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/oppo/camera/rewind/app/RewindApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$2900(Lcom/oppo/camera/rewind/app/RewindApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$3000(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/scalado/base/Image$Config;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewConfig:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewerConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewindCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/oppo/camera/rewind/app/RewindApp;[Ljava/lang/String;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/RewindApp;->loadFromAssets([Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/oppo/camera/rewind/app/RewindApp;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp;->loadFromSD([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/SourceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RewindApp;->createSourceManager()V

    return-void
.end method

.method static synthetic access$3900(Lcom/oppo/camera/rewind/app/RewindApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mBurstSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/oppo/camera/rewind/app/RewindApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mIsPreviewSurfaceDestoryed:Z

    return v0
.end method

.method static synthetic access$602(Lcom/oppo/camera/rewind/app/RewindApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mIsPreviewSurfaceDestoryed:Z

    return p1
.end method

.method static synthetic access$702(Lcom/oppo/camera/rewind/app/RewindApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mIsSurfaceCreated:Z

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/camera/rewind/app/RewindApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mDisplayWidth:I

    return p1
.end method

.method static synthetic access$902(Lcom/oppo/camera/rewind/app/RewindApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mDisplayHeight:I

    return p1
.end method

.method private addJpeg(Ljava/nio/ByteBuffer;)V
    .locals 13
    .parameter "bb"

    .prologue
    const/4 v11, 0x0

    .line 284
    iget-object v10, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget v10, v10, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->mMode:I

    if-nez v10, :cond_1

    .line 285
    iget-object v10, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mThumbSize:Lcom/scalado/base/Size;

    if-nez v10, :cond_0

    .line 286
    new-instance v1, Lcom/scalado/base/Buffer;

    invoke-direct {v1, p1}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 287
    .local v1, buffer:Lcom/scalado/base/Buffer;
    new-instance v8, Lcom/scalado/stream/BufferStream;

    invoke-direct {v8, v1, v11}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 288
    .local v8, stream:Lcom/scalado/stream/BufferStream;
    invoke-static {v8}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v6

    .line 290
    .local v6, iterator:Lcom/scalado/base/Iterator;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v6, v10}, Lcom/scalado/base/Iterator;->step(I)F

    .line 291
    invoke-virtual {v6}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 292
    .local v2, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-virtual {v2}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    .line 293
    .local v3, dims:Lcom/scalado/base/Size;
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 294
    .local v0, ar:F
    const v10, 0x3dcccccd

    iget v11, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mDisplayWidth:I

    int-to-float v11, v11

    mul-float v9, v10, v11

    .line 295
    .local v9, w:F
    div-float v5, v9, v0

    .line 296
    .local v5, h:F
    new-instance v10, Lcom/scalado/base/Size;

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {v10, v11, v12}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v10, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mThumbSize:Lcom/scalado/base/Size;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v0           #ar:F
    .end local v1           #buffer:Lcom/scalado/base/Buffer;
    .end local v2           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v3           #dims:Lcom/scalado/base/Size;
    .end local v5           #h:F
    .end local v6           #iterator:Lcom/scalado/base/Iterator;
    .end local v8           #stream:Lcom/scalado/stream/BufferStream;
    .end local v9           #w:F
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mToUiHandler:Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, p1}, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 303
    .local v7, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mToUiHandler:Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;

    invoke-virtual {v10, v7}, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 313
    .end local v7           #msg:Landroid/os/Message;
    :cond_1
    return-void

    .line 298
    .restart local v1       #buffer:Lcom/scalado/base/Buffer;
    .restart local v6       #iterator:Lcom/scalado/base/Iterator;
    .restart local v8       #stream:Lcom/scalado/stream/BufferStream;
    :catch_0
    move-exception v4

    .line 299
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "RewindApp"

    const-string v11, "Exception in addJpeg:"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSourceManager()V
    .locals 9

    .prologue
    const/16 v5, 0x32

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 625
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mThumbSize:Lcom/scalado/base/Size;

    if-nez v4, :cond_0

    .line 626
    new-instance v3, Lcom/scalado/base/Size;

    invoke-direct {v3, v5, v5}, Lcom/scalado/base/Size;-><init>(II)V

    .line 631
    .local v3, tnSize:Lcom/scalado/base/Size;
    :goto_0
    new-instance v1, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    iget v4, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mDisplayWidth:I

    iget v5, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mDisplayHeight:I

    sget-object v6, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    invoke-direct {v1, v4, v5, v7, v6}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;-><init>(IIILcom/scalado/caps/Rotation;)V

    .line 633
    .local v1, fgCfg:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    new-instance v0, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    iget v4, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mDisplayWidth:I

    iget v5, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mDisplayHeight:I

    sget-object v6, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    invoke-direct {v0, v4, v5, v7, v6}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;-><init>(IIILcom/scalado/caps/Rotation;)V

    .line 635
    .local v0, bgCfg:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    new-instance v2, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    sget-object v6, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    invoke-direct {v2, v4, v5, v7, v6}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;-><init>(IIILcom/scalado/caps/Rotation;)V

    .line 637
    .local v2, tnCfg:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    new-instance v4, Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-direct {v4, v1, v0, v2}, Lcom/oppo/camera/rewind/app/SourceManager;-><init>(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;Lcom/oppo/camera/rewind/app/SourceManager$Configuration;Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)V

    iput-object v4, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    .line 638
    new-instance v4, Lcom/oppo/camera/rewind/app/RewindSession;

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-direct {v4, v5}, Lcom/oppo/camera/rewind/app/RewindSession;-><init>(Lcom/oppo/camera/rewind/app/SourceManager;)V

    iput-object v4, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    .line 639
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    iget v6, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mBurstSize:I

    invoke-virtual {v4, v5, v6}, Lcom/oppo/camera/rewind/app/RewindViewer;->setRewindSession(Lcom/oppo/camera/rewind/app/RewindSession;I)V

    .line 640
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/RewindViewer;->display()V

    .line 641
    iput v8, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mBgIndex:I

    .line 642
    iput v8, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mFgIndex:I

    .line 643
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    iget v5, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mBgIndex:I

    invoke-virtual {v4, v5}, Lcom/oppo/camera/rewind/app/RewindSession;->setBackground(I)V

    .line 644
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    iget v5, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mFgIndex:I

    invoke-virtual {v4, v5}, Lcom/oppo/camera/rewind/app/RewindSession;->setForeground(I)V

    .line 645
    return-void

    .line 628
    .end local v0           #bgCfg:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    .end local v1           #fgCfg:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    .end local v2           #tnCfg:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    .end local v3           #tnSize:Lcom/scalado/base/Size;
    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mThumbSize:Lcom/scalado/base/Size;

    .restart local v3       #tnSize:Lcom/scalado/base/Size;
    goto :goto_0
.end method

.method private final hideTopbar()V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/ExtWidget;->hide()V

    .line 711
    :cond_0
    return-void
.end method

.method private loadFromAssets([Ljava/lang/String;[I)V
    .locals 11
    .parameter "images"
    .parameter "sizes"

    .prologue
    .line 513
    iget-object v8, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 514
    .local v5, mgr:Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, p1

    if-ge v2, v8, :cond_2

    .line 515
    aget-object v6, p1, v2

    .line 517
    .local v6, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 519
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 520
    aget v7, p2, v2

    .line 521
    .local v7, size:I
    new-array v1, v7, [B

    .line 522
    .local v1, bytes:[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 523
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 524
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/RewindApp;->addJpeg(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 527
    if-eqz v3, :cond_0

    .line 529
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 514
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v1           #bytes:[B
    .end local v7           #size:I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    .restart local v0       #bb:Ljava/nio/ByteBuffer;
    .restart local v1       #bytes:[B
    .restart local v7       #size:I
    :catch_0
    move-exception v4

    .line 531
    .local v4, ioe:Ljava/io/IOException;
    const-string v8, "RewindApp"

    const-string v9, "Exception when closing input stream!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v8, "RewindApp"

    const-string v9, "Ex:"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 525
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v1           #bytes:[B
    .end local v4           #ioe:Ljava/io/IOException;
    .end local v7           #size:I
    :catch_1
    move-exception v8

    .line 527
    if-eqz v3, :cond_0

    .line 529
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 530
    :catch_2
    move-exception v4

    .line 531
    .restart local v4       #ioe:Ljava/io/IOException;
    const-string v8, "RewindApp"

    const-string v9, "Exception when closing input stream!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v8, "RewindApp"

    const-string v9, "Ex:"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 527
    .end local v4           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_1

    .line 529
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 533
    :cond_1
    :goto_2
    throw v8

    .line 530
    :catch_3
    move-exception v4

    .line 531
    .restart local v4       #ioe:Ljava/io/IOException;
    const-string v9, "RewindApp"

    const-string v10, "Exception when closing input stream!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v9, "RewindApp"

    const-string v10, "Ex:"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 537
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #ioe:Ljava/io/IOException;
    .end local v6           #name:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private loadFromSD([Ljava/lang/String;)V
    .locals 12
    .parameter "images"

    .prologue
    .line 540
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, p1

    if-ge v3, v9, :cond_2

    .line 541
    aget-object v7, p1, v3

    .line 542
    .local v7, name:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v8, v9

    .line 545
    .local v8, size:I
    const/4 v4, 0x0

    .line 547
    .local v4, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 548
    .end local v4           #in:Ljava/io/InputStream;
    .local v5, in:Ljava/io/InputStream;
    :try_start_1
    new-array v1, v8, [B

    .line 549
    .local v1, bytes:[B
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    .line 550
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 551
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 552
    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/RewindApp;->addJpeg(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 556
    if-eqz v5, :cond_3

    .line 558
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 540
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v1           #bytes:[B
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 559
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v0       #bb:Ljava/nio/ByteBuffer;
    .restart local v1       #bytes:[B
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 560
    .local v6, ioe:Ljava/io/IOException;
    const-string v9, "RewindApp"

    const-string v10, "Exception when closing input stream!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v9, "RewindApp"

    const-string v10, "Ex:"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 562
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_1

    .line 553
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v1           #bytes:[B
    .end local v6           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 554
    .restart local v6       #ioe:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v9, "RewindApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception loading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 556
    if-eqz v4, :cond_0

    .line 558
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 559
    :catch_2
    move-exception v6

    .line 560
    const-string v9, "RewindApp"

    const-string v10, "Exception when closing input stream!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v9, "RewindApp"

    const-string v10, "Ex:"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 556
    .end local v6           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v4, :cond_1

    .line 558
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 562
    :cond_1
    :goto_4
    throw v9

    .line 559
    :catch_3
    move-exception v6

    .line 560
    .restart local v6       #ioe:Ljava/io/IOException;
    const-string v10, "RewindApp"

    const-string v11, "Exception when closing input stream!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v10, "RewindApp"

    const-string v11, "Ex:"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 566
    .end local v2           #file:Ljava/io/File;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #ioe:Ljava/io/IOException;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #size:I
    :cond_2
    return-void

    .line 556
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v7       #name:Ljava/lang/String;
    .restart local v8       #size:I
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_3

    .line 553
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_4
    move-exception v6

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_2

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v0       #bb:Ljava/nio/ByteBuffer;
    .restart local v1       #bytes:[B
    .restart local v5       #in:Ljava/io/InputStream;
    :cond_3
    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private privateCapture()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 406
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/RewindApp;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCapturing:Z

    if-nez v2, :cond_1

    .line 407
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget v2, v2, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->mMode:I

    if-ne v2, v1, :cond_0

    .line 409
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "myTouch_4G_Slide"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mToUiHandler:Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 411
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mToUiHandler:Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v0, v3, v4}, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 414
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    new-instance v2, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    invoke-direct {p0, v2}, Lcom/oppo/camera/rewind/app/RewindApp;->switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V

    .line 417
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final setViewVisibilities(II)V
    .locals 1
    .parameter "vfVis"
    .parameter "ltwVis"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    .line 705
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupPreviewSurface(Landroid/content/Context;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
    .locals 3
    .parameter "context"
    .parameter "surfaceView"
    .parameter "ltwView"

    .prologue
    const/4 v2, 0x0

    .line 234
    iput-object p2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    .line 235
    iput-object p3, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;

    .line 237
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 238
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 239
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceCallback:Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 240
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 241
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 242
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceCallback:Lcom/oppo/camera/rewind/app/RewindApp$RewindSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 243
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 244
    return-void
.end method

.method private final showLtw(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 694
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->setViewVisibilities(II)V

    .line 696
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/app/RewindViewer;->clearDisplay(Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method private startPreview(Z)V
    .locals 3
    .parameter "reset"

    .prologue
    .line 316
    iget-boolean v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewEnabled:Z

    if-nez v1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 319
    :cond_0
    if-eqz p1, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/RewindApp;->reset()V

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCameraInterface:Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;

    invoke-interface {v1}, Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;->previewRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/RewindApp;->stopPreview()V

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCameraInterface:Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;->startPreview(Z)Z

    move-result v0

    .line 326
    .local v0, success:Z
    if-nez v0, :cond_3

    .line 327
    const-string v1, "RewindApp"

    const-string v2, "Error when starting preview."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mIsRunning:Z

    goto :goto_0
.end method

.method private switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V
    .locals 1
    .parameter "newTask"

    .prologue
    .line 714
    invoke-virtual {p1}, Lcom/oppo/camera/rewind/app/RewindApp$State;->beforeSwitching()V

    .line 715
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindApp$State;->end()V

    .line 718
    :cond_0
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;

    .line 719
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindApp$State;->start()V

    .line 720
    return-void
.end method


# virtual methods
.method public capture()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RewindApp;->privateCapture()Z

    .line 382
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCameraInterface:Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCameraInterface:Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;->release()V

    .line 621
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/RewindApp;->reset()V

    .line 352
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceCallback:Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceCallback:Lcom/oppo/camera/rewind/app/RewindApp$RewindSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindViewer;->recycle()V

    .line 360
    return-void
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 184
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 185
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceCallback:Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 186
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/app/Activity;Landroid/view/SurfaceView;Landroid/view/SurfaceView;Lcom/oppo/camera/rewind/app/RewindViewer;)V
    .locals 3
    .parameter "context"
    .parameter "activity"
    .parameter "surfaceView"
    .parameter "ltwView"
    .parameter "viewer"

    .prologue
    const/4 v2, 0x0

    .line 195
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mContext:Landroid/content/Context;

    .line 196
    invoke-direct {p0, p1, p3, p4}, Lcom/oppo/camera/rewind/app/RewindApp;->setupPreviewSurface(Landroid/content/Context;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V

    .line 198
    const/16 v0, 0x140

    iput v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewWidth:I

    .line 199
    const/16 v0, 0xf0

    iput v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewHeight:I

    .line 200
    invoke-virtual {p0, p5}, Lcom/oppo/camera/rewind/app/RewindApp;->setViewer(Lcom/oppo/camera/rewind/app/RewindViewer;)V

    .line 201
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindViewer;->setConfig(Lcom/oppo/camera/rewind/app/RewindViewerConfig;)V

    .line 202
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    new-instance v1, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindViewer;->setCallback(Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;)V

    .line 203
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewEnabled:Z

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/RewindApp;->switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpNoPreview;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpNoPreview;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/RewindApp;->switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V

    goto :goto_0
.end method

.method public isPreviewSurfaceDestoryed()Z
    .locals 1

    .prologue
    .line 1049
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mIsPreviewSurfaceDestoryed:Z

    return v0
.end method

.method public isRewinding()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;

    instance-of v0, v0, Lcom/oppo/camera/rewind/app/RewindApp$Rewinding;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCameraInterface:Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;->previewRunning()Z

    move-result v0

    return v0
.end method

.method public loadImages()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindViewer;->startBenchmark()V

    .line 509
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindApp$Loading;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/rewind/app/RewindApp$Loading;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/RewindApp;->switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V

    .line 510
    return-void
.end method

.method public onCaptureComplete()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;

    if-nez v0, :cond_1

    .line 269
    const-string v0, "RewindApp"

    const-string v1, "Error! Current task is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;

    instance-of v0, v0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;

    if-nez v0, :cond_0

    .line 273
    const-string v0, "RewindApp"

    const-string v1, "Error! Current task is not a capture task!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 576
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/rewind/app/RewindViewer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v0

    .line 586
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;

    if-eqz v1, :cond_2

    .line 587
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/rewind/app/RewindApp$State;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 595
    iget-boolean v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mIsSurfaceCreated:Z

    if-nez v2, :cond_1

    .line 614
    :cond_0
    :goto_0
    return v0

    .line 598
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    invoke-virtual {v2, p1, p2}, Lcom/oppo/camera/rewind/app/RewindViewer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 601
    packed-switch p1, :pswitch_data_0

    .line 609
    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;

    if-eqz v2, :cond_3

    .line 610
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;

    invoke-virtual {v2, p1, p2}, Lcom/oppo/camera/rewind/app/RewindApp$State;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 614
    goto :goto_0

    .line 603
    :pswitch_0
    iget-boolean v2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mIgnoreNextBackUp:Z

    if-eqz v2, :cond_2

    .line 604
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mIgnoreNextBackUp:Z

    goto :goto_0

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPictureTaken([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 260
    array-length v1, p1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 261
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 262
    const/4 p1, 0x0

    .line 263
    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/RewindApp;->addJpeg(Ljava/nio/ByteBuffer;)V

    .line 264
    return-void
.end method

.method public onShutterComplete()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 338
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindViewer;->reset()V

    .line 342
    :cond_0
    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    .line 343
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager;->reset()V

    .line 346
    :cond_1
    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    .line 347
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 348
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPaused:Z

    if-eqz v0, :cond_0

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPaused:Z

    .line 392
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindViewer;->refresh()V

    .line 393
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceCallback:Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/RewindApp;->isRewinding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindViewer;->requestDraw()V

    .line 403
    :cond_1
    :goto_0
    return-void

    .line 400
    :cond_2
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/RewindApp;->switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V

    goto :goto_0
.end method

.method public saveRewind(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/app/RewindViewer;->save(Ljava/lang/String;)V

    .line 460
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mRewindCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    .line 212
    return-void
.end method

.method public setPreviewConfig(III)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "pixelFormat"

    .prologue
    .line 247
    iput p1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewWidth:I

    .line 248
    iput p2, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewHeight:I

    .line 249
    invoke-static {p3}, Lcom/oppo/camera/rewind/app/PixelFormat;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewConfig:Lcom/scalado/base/Image$Config;

    .line 251
    return-void
.end method

.method public setViewer(Lcom/oppo/camera/rewind/app/RewindViewer;)V
    .locals 2
    .parameter "viewer"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    .line 221
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 230
    :cond_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    instance-of v0, v0, Lcom/oppo/camera/rewind/app/AutoFixViewer;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RewindViewerConfig.mMode == REWIND_AUTO, but viewer is not AutoFixViewer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/RewindApp;->startPreview(Z)V

    .line 335
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/RewindApp;->stopPreview()V

    .line 373
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/RewindApp;->close()V

    .line 374
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mCameraInterface:Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;->stopPreview()Z

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindApp;->mIsRunning:Z

    .line 369
    return-void
.end method
