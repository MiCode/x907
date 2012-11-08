.class public Lcom/oppo/camera/rewind/app/RewindSession;
.super Ljava/lang/Object;
.source "RewindSession.java"

# interfaces
.implements Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/app/RewindSession$1;,
        Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;,
        Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;,
        Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;,
        Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;,
        Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;,
        Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;,
        Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCallback:Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;

.field mCallbackHandler:Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;

.field private mCommits:I

.field private mConsistentParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

.field private mConsistentScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

.field private mCreateOwnDecoders:Z

.field private mCurMagParams:Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

.field private mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

.field private mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

.field private mDecoders:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/caps/Decoder;",
            ">;"
        }
    .end annotation
.end field

.field private mDstImage:Lcom/scalado/base/Image;

.field private mError:Z

.field private mFilters:I

.field private mFullRect:Lcom/scalado/base/Rect;

.field private mJobId:I

.field private mJobListener:Lcom/oppo/camera/rewind/app/JobListener;

.field private mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

.field mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

.field private mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

.field private mRender:Z

.field private mRunning:Z

.field private mScreen:Lcom/scalado/caps/screen/Screen;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mSession:Lcom/scalado/caps/Session;

.field private mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

.field private mSrcSize:Lcom/scalado/base/Size;

.field private mSyncObj:Ljava/lang/Object;

.field private mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

.field private mUpdated:Z

.field private mUpdates:I


# direct methods
.method public constructor <init>(Lcom/oppo/camera/rewind/app/SourceManager;)V
    .locals 4
    .parameter "srcMgr"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "RewindSession"

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->TAG:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCreateOwnDecoders:Z

    .line 75
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mRender:Z

    .line 77
    iput v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mFilters:I

    .line 80
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    .line 85
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mRunning:Z

    .line 89
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    .line 91
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    .line 92
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurMagParams:Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

    .line 94
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    .line 98
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    .line 99
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    .line 112
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    .line 117
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;

    invoke-direct {v0, p0}, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallbackHandler:Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSyncObj:Ljava/lang/Object;

    .line 125
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mUpdated:Z

    .line 126
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mError:Z

    .line 128
    iput v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mUpdates:I

    .line 129
    iput v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCommits:I

    .line 188
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    .line 189
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/rewind/app/SourceManager;->registerListener(Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;)V

    .line 190
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    const/16 v1, 0x64

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFeathering:I
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$402(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;I)I

    .line 191
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    const/16 v1, 0x32

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mMaxTranslation:I
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$502(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;I)I

    .line 192
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    const/high16 v1, 0x3f80

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$602(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;F)F

    .line 193
    new-instance v0, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-direct {v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    .line 194
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->start()V

    .line 195
    return-void
.end method

.method static synthetic access$2500(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession;->copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/oppo/camera/rewind/app/RewindSession;)Lcom/oppo/camera/rewind/app/CoordTransform;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oppo/camera/rewind/app/RewindSession;)Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/oppo/camera/rewind/app/RewindSession;)Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallback:Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/oppo/camera/rewind/app/RewindSession;)Lcom/scalado/caps/screen/Screen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession;->updateRequest(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/RewindSession;->renderRequest(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/rewind/app/RewindSession;->asyncRender(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/oppo/camera/rewind/app/RewindSession;)Lcom/scalado/caps/localtimewarp/LocalTimeWarp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    return-object v0
.end method

.method static synthetic access$4308(Lcom/oppo/camera/rewind/app/RewindSession;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCommits:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCommits:I

    return v0
.end method

.method static synthetic access$4402(Lcom/oppo/camera/rewind/app/RewindSession;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mUpdates:I

    return p1
.end method

.method static synthetic access$4500(Lcom/oppo/camera/rewind/app/RewindSession;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession;->renderOutput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/scalado/base/Size;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/rewind/app/RewindSession;->getScreenRequest(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/scalado/base/Size;I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/oppo/camera/rewind/app/RewindSession;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RewindSession;->resetScreenRequest()V

    return-void
.end method

.method static synthetic access$4800(Lcom/oppo/camera/rewind/app/RewindSession;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RewindSession;->recycle()V

    return-void
.end method

.method private asyncRender(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "params"
    .parameter "magParams"
    .parameter "dstBitmap"

    .prologue
    .line 1189
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/RewindSession;->doRender(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1190
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    invoke-virtual {v1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1191
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallbackHandler:Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3}, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1193
    .local v0, callbackMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallbackHandler:Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1195
    .end local v0           #callbackMsg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private calculateScreen()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1481
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager;->getBackgroundConfig()Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v0

    .line 1482
    new-instance v1, Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->width()I

    move-result v2

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    .line 1483
    new-instance v2, Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->config()Lcom/scalado/base/Image$Config;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 1485
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v0, v7}, Lcom/oppo/camera/rewind/app/SourceManager;->getEntry(I)Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;

    move-result-object v0

    .line 1486
    new-instance v3, Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 1487
    invoke-virtual {v3}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 1488
    new-instance v4, Lcom/scalado/caps/screen/Screen;

    invoke-direct {v4, v3, v2}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    .line 1489
    new-instance v2, Lcom/scalado/base/Point;

    invoke-direct {v2, v7, v7}, Lcom/scalado/base/Point;-><init>(II)V

    .line 1490
    new-instance v3, Lcom/scalado/base/Point;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-direct {v3, v5, v1}, Lcom/scalado/base/Point;-><init>(II)V

    .line 1491
    invoke-virtual {v4, v2}, Lcom/scalado/caps/screen/Screen;->transformToSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v1

    .line 1492
    invoke-virtual {v4, v3}, Lcom/scalado/caps/screen/Screen;->transformToSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v5

    .line 1493
    const-string v6, "to Session"

    invoke-direct {p0, v2, v1, v6}, Lcom/oppo/camera/rewind/app/RewindSession;->logTransform(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Ljava/lang/String;)V

    .line 1494
    const-string v1, "to Session"

    invoke-direct {p0, v3, v5, v1}, Lcom/oppo/camera/rewind/app/RewindSession;->logTransform(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Ljava/lang/String;)V

    .line 1496
    invoke-virtual {v2, v7}, Lcom/scalado/base/Point;->setX(I)V

    .line 1497
    invoke-virtual {v2, v7}, Lcom/scalado/base/Point;->setY(I)V

    .line 1498
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/scalado/base/Point;->setX(I)V

    .line 1499
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/scalado/base/Point;->setY(I)V

    .line 1500
    invoke-virtual {v4, v2}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v1

    .line 1501
    invoke-virtual {v4, v3}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v5

    .line 1502
    const-string v6, "from Session"

    invoke-direct {p0, v2, v1, v6}, Lcom/oppo/camera/rewind/app/RewindSession;->logTransform(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Ljava/lang/String;)V

    .line 1503
    const-string v2, "from Session"

    invoke-direct {p0, v3, v5, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->logTransform(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Ljava/lang/String;)V

    .line 1505
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1506
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1507
    new-instance v2, Lcom/scalado/base/Rect;

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v3

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v6

    invoke-virtual {v5}, Lcom/scalado/base/Point;->getX()I

    move-result v7

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v5}, Lcom/scalado/base/Point;->getY()I

    move-result v5

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v1

    sub-int v1, v5, v1

    invoke-direct {v2, v3, v6, v7, v1}, Lcom/scalado/base/Rect;-><init>(IIII)V

    .line 1509
    new-instance v1, Lcom/oppo/camera/rewind/app/CoordTransform;

    invoke-direct {v1, v0, v4, v2}, Lcom/oppo/camera/rewind/app/CoordTransform;-><init>(Lcom/scalado/base/Size;Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;)V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    .line 1510
    return-void
.end method

.method private calculateScreen2(Lcom/scalado/caps/screen/Screen;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1513
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0, v1, v1}, Lcom/scalado/base/Point;-><init>(II)V

    .line 1514
    new-instance v1, Lcom/scalado/base/Point;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Point;-><init>(II)V

    .line 1515
    invoke-virtual {p1, v0}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v2

    .line 1516
    invoke-virtual {p1, v1}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v3

    .line 1517
    const-string v4, "to Session"

    invoke-direct {p0, v0, v2, v4}, Lcom/oppo/camera/rewind/app/RewindSession;->logTransform(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Ljava/lang/String;)V

    .line 1518
    const-string v0, "to Session"

    invoke-direct {p0, v1, v3, v0}, Lcom/oppo/camera/rewind/app/RewindSession;->logTransform(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Ljava/lang/String;)V

    .line 1520
    invoke-virtual {v2}, Lcom/scalado/base/Point;->getX()I

    move-result v0

    .line 1521
    invoke-virtual {v2}, Lcom/scalado/base/Point;->getY()I

    move-result v1

    .line 1522
    invoke-virtual {v3}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {v2}, Lcom/scalado/base/Point;->getX()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1523
    invoke-virtual {v3}, Lcom/scalado/base/Point;->getY()I

    move-result v3

    invoke-virtual {v2}, Lcom/scalado/base/Point;->getY()I

    move-result v2

    sub-int v2, v3, v2

    .line 1524
    new-instance v3, Lcom/scalado/base/Rect;

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/scalado/base/Rect;-><init>(IIII)V

    .line 1525
    new-instance v0, Lcom/oppo/camera/rewind/app/CoordTransform;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-direct {v0, v1, p1, v3}, Lcom/oppo/camera/rewind/app/CoordTransform;-><init>(Lcom/scalado/base/Size;Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    .line 1526
    return-void
.end method

.method private static final copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 1461
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setX(I)V

    .line 1462
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setY(I)V

    .line 1463
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 1464
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 1465
    return-void
.end method

.method private static final copySize(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V
    .locals 1
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 1468
    invoke-virtual {p0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1469
    invoke-virtual {p0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1470
    return-void
.end method

.method private createOwnDecoder(Ljava/nio/ByteBuffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1424
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1425
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1426
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1428
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1430
    new-instance v1, Lcom/scalado/base/Buffer;

    invoke-direct {v1, v0}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 1431
    new-instance v0, Lcom/scalado/stream/BufferStream;

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 1432
    invoke-static {v0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v0

    .line 1434
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    invoke-virtual {v0}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 1440
    :goto_0
    return-object v0

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    const-string v1, "RewindSession"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1437
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createScreen(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)Z
    .locals 4
    .parameter "size"
    .parameter "config"

    .prologue
    const/4 v3, 0x0

    .line 846
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    if-nez v1, :cond_0

    .line 847
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RewindSession;->createSession()V

    .line 849
    :cond_0
    const/4 v0, 0x0

    .line 850
    .local v0, screenChanged:Z
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 852
    :cond_1
    iput-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    .line 854
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    if-nez v1, :cond_3

    .line 855
    new-instance v1, Lcom/scalado/base/Image;

    invoke-direct {v1, p1, p2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    .line 856
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    invoke-static {p1, v1}, Lcom/oppo/camera/rewind/app/RewindSession;->copySize(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V

    .line 857
    iput-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 859
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v1, :cond_4

    .line 860
    new-instance v1, Lcom/scalado/caps/screen/Screen;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    invoke-direct {v1, v2, v3}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 861
    const/4 v0, 0x1

    .line 863
    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    sget-object v2, Lcom/scalado/caps/screen/Screen$RenderMode;->QUALITY:Lcom/scalado/caps/screen/Screen$RenderMode;

    invoke-virtual {v1, v2}, Lcom/scalado/caps/screen/Screen;->setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V

    .line 864
    return v0
.end method

.method private createSession()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 868
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    if-nez v2, :cond_0

    .line 869
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v2}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->getDecoder()Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 871
    :cond_0
    const/4 v0, 0x0

    .line 872
    .local v0, setDecoder:Z
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    if-nez v2, :cond_3

    .line 873
    new-instance v2, Lcom/scalado/caps/Session;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    invoke-direct {v2, v3}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    .line 874
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v2}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v1

    .line 875
    .local v1, vp:Lcom/scalado/base/Rect;
    new-instance v2, Lcom/scalado/base/Rect;

    invoke-virtual {v1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/scalado/base/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mFullRect:Lcom/scalado/base/Rect;

    .line 881
    .end local v1           #vp:Lcom/scalado/base/Rect;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 882
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    invoke-virtual {v2, v3}, Lcom/scalado/caps/Session;->setDecoder(Lcom/scalado/caps/Decoder;)V

    .line 884
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 886
    :cond_2
    return-void

    .line 877
    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v3}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 878
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doRender(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;)Z
    .locals 10
    .parameter "params"
    .parameter "magParams"

    .prologue
    const/4 v1, 0x0

    const/high16 v9, 0x3f80

    const/4 v5, 0x1

    .line 792
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSyncObj:Ljava/lang/Object;

    monitor-enter v6

    .line 793
    :try_start_0
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    if-nez v7, :cond_0

    .line 794
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v7}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->getDecoder()Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 796
    :cond_0
    const/4 v3, 0x0

    .line 797
    .local v3, screenChanged:Z
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RewindSession;->createSession()V

    .line 798
    iget-boolean v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mRender:Z

    if-nez v7, :cond_1

    .line 799
    monitor-exit v6

    .line 842
    :goto_0
    return v5

    .line 803
    :cond_1
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v7}, Lcom/oppo/camera/rewind/app/SourceManager;->getBackgroundConfig()Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v0

    .line 804
    .local v0, cfg:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->config()Lcom/scalado/base/Image$Config;

    move-result-object v2

    .line 805
    .local v2, imgCfg:Lcom/scalado/base/Image$Config;
    if-nez p2, :cond_9

    .line 806
    new-instance v4, Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->width()I

    move-result v7

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->height()I

    move-result v8

    invoke-direct {v4, v7, v8}, Lcom/scalado/base/Size;-><init>(II)V

    .line 811
    .local v4, size:Lcom/scalado/base/Size;
    :goto_1
    invoke-direct {p0, v4, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->createScreen(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)Z

    move-result v3

    .line 812
    if-nez p2, :cond_2

    if-eqz v3, :cond_2

    .line 813
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-direct {p0, v7}, Lcom/oppo/camera/rewind/app/RewindSession;->calculateScreen2(Lcom/scalado/caps/screen/Screen;)V

    .line 816
    :cond_2
    if-eqz p1, :cond_4

    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    invoke-virtual {v7, p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    #calls: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->isDefaultZoom()Z
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$2300(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    move v1, v5

    .line 819
    .local v1, dirty:Z
    :cond_4
    if-eqz p2, :cond_5

    .line 820
    const/4 v1, 0x1

    .line 822
    :cond_5
    if-eqz v1, :cond_7

    .line 823
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$2100(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)I

    move-result v7

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$2100(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)I

    move-result v8

    if-eq v7, v8, :cond_6

    .line 824
    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$2100(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/oppo/camera/rewind/app/RewindSession;->setEffect(I)V

    .line 826
    :cond_6
    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$600(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)F

    move-result v7

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_a

    .line 827
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$600(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)F

    move-result v8

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/scalado/caps/screen/Screen;->setZoom(F)V

    .line 828
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$600(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/scalado/caps/screen/Screen;->setZoom(F)V

    .line 833
    :goto_2
    const/4 v7, 0x0

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mDirty:Z
    invoke-static {p1, v7}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$2002(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Z)Z

    .line 834
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->copyFrom(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)V
    invoke-static {v7, p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$2400(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)V

    .line 836
    :cond_7
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v7}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 837
    if-eqz v3, :cond_8

    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallback:Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;

    if-eqz v7, :cond_8

    .line 838
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallback:Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;

    iget-object v8, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-interface {v7, v8}, Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;->onScreenChanged(Lcom/scalado/caps/screen/Screen;)V

    .line 841
    :cond_8
    monitor-exit v6

    goto/16 :goto_0

    .end local v0           #cfg:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    .end local v1           #dirty:Z
    .end local v2           #imgCfg:Lcom/scalado/base/Image$Config;
    .end local v3           #screenChanged:Z
    .end local v4           #size:Lcom/scalado/base/Size;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 808
    .restart local v0       #cfg:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    .restart local v2       #imgCfg:Lcom/scalado/base/Image$Config;
    .restart local v3       #screenChanged:Z
    :cond_9
    :try_start_1
    iget-object v4, p2, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mDims:Lcom/scalado/base/Size;

    .restart local v4       #size:Lcom/scalado/base/Size;
    goto :goto_1

    .line 830
    .restart local v1       #dirty:Z
    :cond_a
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    const/high16 v8, 0x42a0

    invoke-virtual {v7, v8}, Lcom/scalado/caps/screen/Screen;->setZoom(F)V

    .line 831
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$1900(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)Lcom/scalado/base/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/scalado/caps/screen/Screen;->setZoomRect(Lcom/scalado/base/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private doUpdate(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V
    .locals 9
    .parameter "params"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 732
    const/4 v0, -0x1

    .line 733
    .local v0, curBg:I
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v6

    .line 734
    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mError:Z

    .line 735
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mValid:Z
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$1200(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    invoke-virtual {p1, v7}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 736
    monitor-exit v6

    .line 789
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mValid:Z
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$1200(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 739
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$700(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I

    move-result v0

    .line 741
    :cond_1
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    const/4 v8, 0x0

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mValid:Z
    invoke-static {v7, v8}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$1202(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Z)Z

    .line 742
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 743
    const/4 v4, 0x0

    .line 744
    .local v4, updated:Z
    const/4 v3, 0x1

    .line 745
    .local v3, performUpdate:Z
    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mRectSet:Z
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$900(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)Z

    move-result v6

    if-eqz v6, :cond_2

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFgIndex:I
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$800(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I

    move-result v6

    if-gez v6, :cond_3

    .line 746
    :cond_2
    const/4 v3, 0x0

    .line 748
    :cond_3
    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$700(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I

    move-result v6

    if-eq v0, v6, :cond_4

    .line 749
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$700(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setBackgroundSource(I)V

    .line 750
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 751
    iput v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mUpdates:I

    .line 753
    :cond_4
    iget v6, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mUpdates:I

    if-lez v6, :cond_8

    .line 754
    .local v1, discard:Z
    :goto_1
    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mRectSet:Z
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$900(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)Z

    move-result v5

    if-eqz v5, :cond_5

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFgIndex:I
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$800(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I

    move-result v5

    if-ltz v5, :cond_5

    .line 757
    :cond_5
    if-eqz v3, :cond_9

    .line 758
    iget v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mUpdates:I

    if-lez v5, :cond_6

    .line 759
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v5}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->discard()V

    .line 760
    iget v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mUpdates:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mUpdates:I

    .line 762
    :cond_6
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$1100(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setPriority(Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;)V

    .line 763
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$1000(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)Lcom/scalado/base/Rect;

    move-result-object v6

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFeathering:I
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$400(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I

    move-result v7

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mMaxTranslation:I
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$500(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setReplaceArea(Lcom/scalado/base/Rect;II)V

    .line 765
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFgIndex:I
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$800(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setReplaceSource(I)V

    .line 767
    :try_start_1
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v5}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->update()V

    .line 768
    iget v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mUpdates:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mUpdates:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 775
    :goto_2
    const/4 v4, 0x1

    .line 781
    :cond_7
    :goto_3
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    monitor-enter v6

    .line 782
    :try_start_2
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    const/4 v7, 0x1

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mDirty:Z
    invoke-static {v5, v7}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$2002(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Z)Z

    .line 783
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 784
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v6

    .line 785
    :try_start_3
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->copyFrom(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V
    invoke-static {v5, p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$2200(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V

    .line 786
    iput-boolean v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mUpdated:Z

    .line 787
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    const/4 v7, 0x1

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mValid:Z
    invoke-static {v5, v7}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$1202(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Z)Z

    .line 788
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 742
    .end local v1           #discard:Z
    .end local v3           #performUpdate:Z
    .end local v4           #updated:Z
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .restart local v3       #performUpdate:Z
    .restart local v4       #updated:Z
    :cond_8
    move v1, v5

    .line 753
    goto :goto_1

    .line 769
    .restart local v1       #discard:Z
    :catch_0
    move-exception v2

    .line 770
    .local v2, iae:Ljava/lang/IllegalArgumentException;
    const-string v5, "RewindSession"

    const-string v6, "update error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v6

    .line 772
    const/4 v5, 0x1

    :try_start_5
    iput-boolean v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mError:Z

    .line 773
    monitor-exit v6

    goto :goto_2

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5

    .line 776
    .end local v2           #iae:Ljava/lang/IllegalArgumentException;
    :cond_9
    iget v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mUpdates:I

    if-lez v5, :cond_7

    .line 777
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v5, v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setReplaceSource(I)V

    .line 778
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v5}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->discard()V

    .line 779
    iget v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mUpdates:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mUpdates:I

    goto :goto_3

    .line 783
    :catchall_3
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v5
.end method

.method private fullScreenRender(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "params"
    .parameter "dstBitmap"

    .prologue
    .line 1198
    if-nez p2, :cond_1

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession;->needReRender(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1205
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v3

    .line 1206
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$700(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I

    move-result v1

    .line 1207
    .local v1, index:I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1212
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/rewind/app/SourceManager;->getBackgroundImage(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1213
    .local v0, bb:Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 1214
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/rewind/app/SourceManager;->getBackgroundImage(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 1207
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v1           #index:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1217
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->doRender(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1218
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    invoke-virtual {v2}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0
.end method

.method private getScreenRequest(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/scalado/base/Size;I)V
    .locals 6
    .parameter "params"
    .parameter "size"
    .parameter "user"

    .prologue
    const/4 v5, 0x0

    .line 1242
    if-eqz p2, :cond_4

    .line 1243
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1245
    :cond_0
    iput-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 1246
    iput-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    .line 1256
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v3, :cond_2

    .line 1257
    invoke-direct {p0, p2}, Lcom/oppo/camera/rewind/app/RewindSession;->resetScreenRequest(Lcom/scalado/base/Size;)V

    .line 1259
    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$2100(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)I

    move-result v3

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$2100(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1260
    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$2100(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/oppo/camera/rewind/app/RewindSession;->setEffect(I)V

    .line 1261
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$2100(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)I

    move-result v4

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I
    invoke-static {v3, v4}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$2102(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;I)I

    .line 1264
    :cond_3
    new-instance v2, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;

    invoke-direct {v2, p0, p3, v5}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;ILcom/oppo/camera/rewind/app/RewindSession$1;)V

    .line 1265
    .local v2, req:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallbackHandler:Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2}, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1267
    .local v0, callbackMsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallbackHandler:Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;

    invoke-virtual {v3, v0}, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1268
    return-void

    .line 1249
    .end local v0           #callbackMsg:Landroid/os/Message;
    .end local v2           #req:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    :cond_4
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/app/SourceManager;->getBackgroundConfig()Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v1

    .line 1250
    .local v1, cfg:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->width()I

    move-result v4

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->height()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1252
    :cond_5
    iput-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 1253
    iput-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    goto :goto_0
.end method

.method private final logTransform(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1529
    const-string v0, "RewindSession"

    const-string v1, "(%d, %d) -> (%d, %d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    return-void
.end method

.method private final needReRender(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)Z
    .locals 5
    .parameter "params"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1444
    iget v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mUpdates:I

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mFilters:I

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCommits:I

    if-lez v3, :cond_2

    :cond_0
    move v0, v2

    .line 1445
    .local v0, ltwDirty:Z
    :goto_0
    if-eqz p1, :cond_1

    .line 1446
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    monitor-enter v3

    .line 1447
    :try_start_0
    #calls: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->isDefaultZoom()Z
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$2300(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1449
    const/4 v0, 0x1

    .line 1455
    :goto_1
    monitor-exit v3

    .line 1457
    :cond_1
    return v0

    .end local v0           #ltwDirty:Z
    :cond_2
    move v0, v1

    .line 1444
    goto :goto_0

    .line 1451
    .restart local v0       #ltwDirty:Z
    :cond_3
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mConsistentScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    invoke-virtual {p1, v4}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    :goto_2
    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    .line 1455
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1368
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/rewind/app/SourceManager;->removeListener(Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerListener;)V

    .line 1369
    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    .line 1370
    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    .line 1371
    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 1372
    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mDstImage:Lcom/scalado/base/Image;

    .line 1373
    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    .line 1374
    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 1375
    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    .line 1376
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mDecoders:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1378
    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mDecoders:Ljava/util/Vector;

    .line 1380
    :cond_0
    return-void
.end method

.method private refreshSession()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1313
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    if-nez v3, :cond_0

    .line 1314
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v3}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->getDecoder()Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    .line 1317
    :cond_0
    const/4 v1, 0x0

    .line 1318
    .local v1, setDecoder:Z
    const/4 v0, 0x0

    .line 1319
    .local v0, screenChanged:Z
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    if-nez v3, :cond_3

    .line 1320
    new-instance v3, Lcom/scalado/caps/Session;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    invoke-direct {v3, v4}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    .line 1321
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v3}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v2

    .line 1322
    .local v2, vp:Lcom/scalado/base/Rect;
    new-instance v3, Lcom/scalado/base/Rect;

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Lcom/scalado/base/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mFullRect:Lcom/scalado/base/Rect;

    .line 1328
    .end local v2           #vp:Lcom/scalado/base/Rect;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1329
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    invoke-virtual {v3, v4}, Lcom/scalado/caps/Session;->setDecoder(Lcom/scalado/caps/Decoder;)V

    .line 1331
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 1333
    :cond_2
    return-void

    .line 1324
    :cond_3
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v4}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 1325
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private renderOutput(Ljava/lang/String;)V
    .locals 13
    .parameter "filename"

    .prologue
    .line 1285
    iget-object v10, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSyncObj:Ljava/lang/Object;

    monitor-enter v10

    .line 1286
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RewindSession;->refreshSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    const/4 v7, 0x0

    .line 1289
    .local v7, stream:Lcom/scalado/stream/FileStream;
    :try_start_1
    new-instance v8, Lcom/scalado/stream/FileStream;

    sget-object v9, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v8, p1, v9}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1290
    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .local v8, stream:Lcom/scalado/stream/FileStream;
    :try_start_2
    iget-object v9, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v9}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    .line 1291
    .local v1, dims:Lcom/scalado/base/Size;
    new-instance v3, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v3, v8, v1}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 1292
    .local v3, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    iget-object v9, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v9, v3}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 1293
    .local v5, iterator:Lcom/scalado/base/Iterator;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/scalado/base/Iterator;->step(I)F

    .line 1294
    new-instance v6, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-direct {v6, p0, v9, p1, v11}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Ljava/lang/String;Lcom/oppo/camera/rewind/app/RewindSession$1;)V

    .line 1295
    .local v6, req:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    iget-object v9, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallbackHandler:Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;

    const/4 v11, 0x4

    invoke-virtual {v9, v11, v6}, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1297
    .local v0, callbackMsg:Landroid/os/Message;
    iget-object v9, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallbackHandler:Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;

    invoke-virtual {v9, v0}, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1301
    if-eqz v8, :cond_2

    .line 1303
    :try_start_3
    invoke-virtual {v8}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v7, v8

    .line 1309
    .end local v0           #callbackMsg:Landroid/os/Message;
    .end local v1           #dims:Lcom/scalado/base/Size;
    .end local v3           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v5           #iterator:Lcom/scalado/base/Iterator;
    .end local v6           #req:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    .end local v8           #stream:Lcom/scalado/stream/FileStream;
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v10

    .line 1310
    return-void

    .line 1304
    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v0       #callbackMsg:Landroid/os/Message;
    .restart local v1       #dims:Lcom/scalado/base/Size;
    .restart local v3       #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v5       #iterator:Lcom/scalado/base/Iterator;
    .restart local v6       #req:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    .restart local v8       #stream:Lcom/scalado/stream/FileStream;
    :catch_0
    move-exception v4

    .line 1305
    .local v4, ioe:Ljava/io/IOException;
    const-string v9, "RewindSession"

    const-string v11, "Exception when closing file."

    invoke-static {v9, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v7, v8

    .line 1306
    .end local v8           #stream:Lcom/scalado/stream/FileStream;
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_0

    .line 1298
    .end local v0           #callbackMsg:Landroid/os/Message;
    .end local v1           #dims:Lcom/scalado/base/Size;
    .end local v3           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v4           #ioe:Ljava/io/IOException;
    .end local v5           #iterator:Lcom/scalado/base/Iterator;
    .end local v6           #req:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    :catch_1
    move-exception v2

    .line 1299
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_5
    const-string v9, "RewindSession"

    const-string v11, "Exception when rendering to file."

    invoke-static {v9, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1301
    if-eqz v7, :cond_0

    .line 1303
    :try_start_6
    invoke-virtual {v7}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 1304
    :catch_2
    move-exception v4

    .line 1305
    .restart local v4       #ioe:Ljava/io/IOException;
    :try_start_7
    const-string v9, "RewindSession"

    const-string v11, "Exception when closing file."

    invoke-static {v9, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1309
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #ioe:Ljava/io/IOException;
    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v9

    .line 1301
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    :catchall_1
    move-exception v9

    :goto_2
    if-eqz v7, :cond_1

    .line 1303
    :try_start_8
    invoke-virtual {v7}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1306
    :cond_1
    :goto_3
    :try_start_9
    throw v9

    .line 1304
    :catch_3
    move-exception v4

    .line 1305
    .restart local v4       #ioe:Ljava/io/IOException;
    const-string v11, "RewindSession"

    const-string v12, "Exception when closing file."

    invoke-static {v11, v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 1301
    .end local v4           #ioe:Ljava/io/IOException;
    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v8       #stream:Lcom/scalado/stream/FileStream;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8           #stream:Lcom/scalado/stream/FileStream;
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_2

    .line 1298
    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v8       #stream:Lcom/scalado/stream/FileStream;
    :catch_4
    move-exception v2

    move-object v7, v8

    .end local v8           #stream:Lcom/scalado/stream/FileStream;
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_1

    .end local v7           #stream:Lcom/scalado/stream/FileStream;
    .restart local v0       #callbackMsg:Landroid/os/Message;
    .restart local v1       #dims:Lcom/scalado/base/Size;
    .restart local v3       #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v5       #iterator:Lcom/scalado/base/Iterator;
    .restart local v6       #req:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    .restart local v8       #stream:Lcom/scalado/stream/FileStream;
    :cond_2
    move-object v7, v8

    .end local v8           #stream:Lcom/scalado/stream/FileStream;
    .restart local v7       #stream:Lcom/scalado/stream/FileStream;
    goto :goto_0
.end method

.method private renderRequest(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "params"
    .parameter "dstBitmap"

    .prologue
    .line 1223
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/RewindSession;->fullScreenRender(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V

    .line 1224
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallbackHandler:Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1226
    .local v0, callbackMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallbackHandler:Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/rewind/app/RewindSession$LTWHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1227
    return-void
.end method

.method private resetScreenRequest()V
    .locals 1

    .prologue
    .line 1281
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/RewindSession;->resetScreenRequest(Lcom/scalado/base/Size;)V

    .line 1282
    return-void
.end method

.method private resetScreenRequest(Lcom/scalado/base/Size;)V
    .locals 4
    .parameter "size"

    .prologue
    .line 1272
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/app/SourceManager;->getBackgroundConfig()Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v0

    .line 1273
    .local v0, cfg:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    if-nez p1, :cond_0

    .line 1274
    new-instance p1, Lcom/scalado/base/Size;

    .end local p1
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->width()I

    move-result v2

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->height()I

    move-result v3

    invoke-direct {p1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    .line 1276
    .restart local p1
    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->config()Lcom/scalado/base/Image$Config;

    move-result-object v1

    .line 1277
    .local v1, imgCfg:Lcom/scalado/base/Image$Config;
    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/rewind/app/RewindSession;->createScreen(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)Z

    .line 1278
    return-void
.end method

.method private final restrictImageIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 722
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 723
    return p1
.end method

.method private final restrictRect(Lcom/scalado/base/Rect;)V
    .locals 8
    .parameter "rect"

    .prologue
    .line 1542
    const/4 v1, 0x0

    .line 1543
    .local v1, padding:I
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    .line 1544
    .local v2, size:Lcom/scalado/base/Size;
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    .line 1545
    .local v4, x:I
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    .line 1546
    .local v3, w:I
    if-ge v4, v1, :cond_0

    .line 1547
    sub-int v6, v1, v4

    sub-int/2addr v3, v6

    .line 1548
    move v4, v1

    .line 1550
    :cond_0
    rem-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_1

    .line 1551
    add-int/lit8 v4, v4, 0x1

    .line 1553
    :cond_1
    add-int v6, v4, v3

    add-int/2addr v6, v1

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 1554
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int v3, v6, v4

    .line 1556
    :cond_2
    rem-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_3

    .line 1557
    add-int/lit8 v3, v3, -0x1

    .line 1559
    :cond_3
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    .line 1560
    .local v5, y:I
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v0

    .line 1561
    .local v0, h:I
    if-ge v5, v1, :cond_4

    .line 1562
    sub-int v6, v1, v5

    sub-int/2addr v0, v6

    .line 1563
    move v5, v1

    .line 1565
    :cond_4
    rem-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_5

    .line 1566
    add-int/lit8 v5, v5, 0x1

    .line 1568
    :cond_5
    add-int v6, v5, v0

    add-int/2addr v6, v1

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_6

    .line 1569
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int v0, v6, v5

    .line 1571
    :cond_6
    rem-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_7

    .line 1572
    add-int/lit8 v0, v0, -0x1

    .line 1574
    :cond_7
    invoke-virtual {p1, v4}, Lcom/scalado/base/Rect;->setX(I)V

    .line 1575
    invoke-virtual {p1, v5}, Lcom/scalado/base/Rect;->setY(I)V

    .line 1576
    invoke-virtual {p1, v3}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 1577
    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 1578
    return-void
.end method

.method private setEffect(I)V
    .locals 6
    .parameter "fx"

    .prologue
    .line 1336
    packed-switch p1, :pswitch_data_0

    .line 1361
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v4}, Lcom/scalado/caps/Session;->removeAllFilters()V

    .line 1362
    const/4 v4, 0x0

    iput v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mFilters:I

    .line 1365
    :goto_0
    return-void

    .line 1338
    :pswitch_0
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    mul-int v3, v4, v5

    .line 1339
    .local v3, n:I
    const/4 v2, 0x1

    .line 1340
    .local v2, lvl:I
    const v4, 0x309198

    if-gt v3, v4, :cond_0

    .line 1341
    const/4 v2, 0x2

    .line 1352
    :goto_1
    const/4 v4, 0x2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1353
    new-instance v0, Lcom/scalado/caps/filter/photoart/Blur;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSession:Lcom/scalado/caps/Session;

    invoke-direct {v0, v4}, Lcom/scalado/caps/filter/photoart/Blur;-><init>(Lcom/scalado/caps/Session;)V

    .line 1354
    .local v0, blur:Lcom/scalado/caps/filter/photoart/Blur;
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/scalado/caps/filter/photoart/Blur;->set(ILcom/scalado/base/Rect;)V

    .line 1355
    sget-object v4, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;->RECTANGULAR:Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    invoke-virtual {v0, v4}, Lcom/scalado/caps/filter/photoart/Blur;->setRegionMode(Lcom/scalado/caps/filter/photoart/Blur$RegionMode;)V

    .line 1356
    invoke-virtual {v0}, Lcom/scalado/caps/filter/photoart/Blur;->commit()V

    .line 1357
    iget v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mFilters:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mFilters:I

    goto :goto_0

    .line 1343
    .end local v0           #blur:Lcom/scalado/caps/filter/photoart/Blur;
    :cond_0
    int-to-float v4, v3

    const v5, 0x4b124e67

    div-float v1, v4, v5

    .line 1348
    .local v1, f:F
    const/high16 v4, 0x3f80

    const/high16 v5, 0x40e0

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1350
    const/16 v4, 0x8

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 1336
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final transformLength(I)I
    .locals 6
    .parameter "length"

    .prologue
    .line 1534
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/SourceManager;->getBackgroundConfig()Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->width()I

    move-result v3

    .line 1535
    .local v3, wScreen:I
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/SourceManager;->getBackgroundConfig()Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->height()I

    move-result v0

    .line 1536
    .local v0, hScreen:I
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1537
    .local v1, lScreen:I
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcSize:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1538
    .local v2, lSession:I
    mul-int v4, p1, v2

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    return v4
.end method

.method private updateRequest(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V
    .locals 6
    .parameter "params"

    .prologue
    .line 1230
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mJobListener:Lcom/oppo/camera/rewind/app/JobListener;

    if-eqz v4, :cond_0

    .line 1231
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mJobListener:Lcom/oppo/camera/rewind/app/JobListener;

    iget v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mJobId:I

    invoke-interface {v4, v5}, Lcom/oppo/camera/rewind/app/JobListener;->onJobStarted(I)V

    .line 1233
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1234
    .local v0, t0:J
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession;->doUpdate(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)V

    .line 1235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1236
    .local v2, t1:J
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mJobListener:Lcom/oppo/camera/rewind/app/JobListener;

    if-eqz v4, :cond_1

    .line 1237
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mJobListener:Lcom/oppo/camera/rewind/app/JobListener;

    iget v5, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mJobId:I

    invoke-interface {v4, v5}, Lcom/oppo/camera/rewind/app/JobListener;->onJobEnded(I)V

    .line 1239
    :cond_1
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 3

    .prologue
    .line 515
    iget-boolean v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mRunning:Z

    if-nez v1, :cond_0

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 519
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public curSourceDimensions()Lcom/scalado/base/Size;
    .locals 4

    .prologue
    .line 374
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v2

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$700(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oppo/camera/rewind/app/SourceManager;->getEntry(I)Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;

    move-result-object v0

    .line 376
    .local v0, entry:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 377
    .end local v0           #entry:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mRunning:Z

    if-nez v0, :cond_0

    .line 558
    :goto_0
    return-void

    .line 551
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mRunning:Z

    .line 552
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 553
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 554
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 555
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 556
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 557
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public getBackground()I
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$700(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCoordTransform()Lcom/oppo/camera/rewind/app/CoordTransform;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    return-object v0
.end method

.method public getForeground()I
    .locals 2

    .prologue
    .line 268
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFgIndex:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$800(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMagnifiedPreview()Lcom/scalado/base/Image;
    .locals 4

    .prologue
    .line 594
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v1

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFgIndex:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$800(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurMagParams:Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

    iget-object v3, v3, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, v2, v3}, Lcom/oppo/camera/rewind/app/SourceManager;->getMagnifiedImage(ILcom/scalado/base/Rect;)Lcom/scalado/base/Image;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMagnifierSize()Lcom/scalado/base/Size;
    .locals 4

    .prologue
    .line 360
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v1

    .line 362
    :try_start_0
    new-instance v0, Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/app/SourceManager;->getMagnifierWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/app/SourceManager;->getMagnifierHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    monitor-exit v1

    return-object v0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPreviewBackground()Lcom/scalado/base/Image;
    .locals 4

    .prologue
    .line 607
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v2

    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$700(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oppo/camera/rewind/app/SourceManager;->getEntry(I)Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;

    move-result-object v0

    .line 609
    .local v0, entry:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->getBackgroundImage()Lcom/scalado/base/Image;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 610
    .end local v0           #entry:Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSourceManager()Lcom/oppo/camera/rewind/app/SourceManager;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    return-object v0
.end method

.method public lockScreen(ILcom/scalado/base/Size;)V
    .locals 9
    .parameter "user"
    .parameter "size"

    .prologue
    .line 570
    iget-object v8, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v8

    .line 571
    :try_start_0
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/scalado/base/Size;ILcom/oppo/camera/rewind/app/RewindSession$1;)V

    .line 573
    .local v0, request:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 575
    .local v7, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 576
    monitor-exit v8

    .line 577
    return-void

    .line 576
    .end local v0           #request:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    .end local v7           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBackgroundReady(ILcom/scalado/base/Image;)V
    .locals 1
    .parameter "index"
    .parameter "background"

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallback:Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;

    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;->onBackgroundReady(ILcom/scalado/base/Image;)V

    .line 1414
    return-void
.end method

.method public onEntryReady(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallback:Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;

    invoke-interface {v0, p1}, Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;->onEntryReady(I)V

    .line 1418
    if-nez p1, :cond_0

    .line 1419
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RewindSession;->calculateScreen()V

    .line 1421
    :cond_0
    return-void
.end method

.method public onThumbnailReady(ILcom/scalado/base/Image;)V
    .locals 6
    .parameter "index"
    .parameter "thumbnail"

    .prologue
    .line 1387
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    if-nez v1, :cond_0

    .line 1388
    const-string v1, "RewindSession"

    const-string v2, "ignoring onThumbnailReady, source manager is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :goto_0
    return-void

    .line 1393
    :cond_0
    const/4 v0, 0x0

    .line 1394
    .local v0, decoder:Lcom/scalado/caps/Decoder;
    iget-boolean v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCreateOwnDecoders:Z

    if-eqz v1, :cond_2

    .line 1395
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/rewind/app/SourceManager;->getSourceImage(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/rewind/app/RewindSession;->createOwnDecoder(Ljava/nio/ByteBuffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v0

    .line 1396
    if-eqz v0, :cond_2

    .line 1397
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mDecoders:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 1398
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mDecoders:Ljava/util/Vector;

    .line 1400
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1403
    :cond_2
    if-nez v0, :cond_3

    .line 1404
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/rewind/app/SourceManager;->getEntry(I)Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    .line 1405
    const-string v1, "RewindSession"

    const-string v2, "Adding decoder %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v1, v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->addSource(Lcom/scalado/caps/Decoder;)V

    .line 1408
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallback:Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;

    invoke-interface {v1, p1, p2}, Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;->onThumbnailReady(ILcom/scalado/base/Image;)V

    goto :goto_0
.end method

.method public outputTo(Ljava/lang/String;)V
    .locals 5
    .parameter "filename"

    .prologue
    .line 531
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v3

    .line 532
    :try_start_0
    iget-boolean v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mRunning:Z

    if-nez v2, :cond_0

    .line 533
    monitor-exit v3

    .line 541
    :goto_0
    return-void

    .line 535
    :cond_0
    new-instance v1, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, p1, v4}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Ljava/lang/String;Lcom/oppo/camera/rewind/app/RewindSession$1;)V

    .line 536
    .local v1, request:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 537
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v2, v4, v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 539
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 540
    monitor-exit v3

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #request:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public render(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    .line 426
    iget-object v8, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v8

    .line 427
    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mRunning:Z

    if-nez v1, :cond_0

    .line 428
    monitor-exit v8

    .line 437
    :goto_0
    return-void

    .line 430
    :cond_0
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;Lcom/oppo/camera/rewind/app/RewindSession$1;)V

    .line 432
    .local v0, request:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 434
    .local v7, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 435
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 436
    monitor-exit v8

    goto :goto_0

    .end local v0           #request:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    .end local v7           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetScreen()V
    .locals 9

    .prologue
    .line 440
    iget-object v8, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v8

    .line 441
    :try_start_0
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;Lcom/oppo/camera/rewind/app/RewindSession$1;)V

    .line 442
    .local v0, request:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x41

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 444
    .local v7, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 445
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 446
    monitor-exit v8

    .line 447
    return-void

    .line 446
    .end local v0           #request:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    .end local v7           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBackground(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession;->restrictImageIndex(I)I

    move-result v2

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBgIndex:I
    invoke-static {v0, v2}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$702(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;I)I

    .line 234
    monitor-exit v1

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBlur(Z)V
    .locals 3
    .parameter "blur"

    .prologue
    .line 681
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v1

    .line 682
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mRunning:Z

    if-nez v0, :cond_0

    .line 683
    monitor-exit v1

    .line 687
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mFx:I
    invoke-static {v2, v0}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$2102(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;I)I

    .line 686
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 685
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCallback:Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;

    .line 206
    return-void
.end method

.method public setFeathering(I)V
    .locals 2
    .parameter "feathering"

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession;->transformLength(I)I

    move-result p1

    .line 389
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFeathering:I
    invoke-static {v0, p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$402(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;I)I

    .line 391
    monitor-exit v1

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setForeground(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v1

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession;->restrictImageIndex(I)I

    move-result v2

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mFgIndex:I
    invoke-static {v0, v2}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$802(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;I)I

    .line 246
    monitor-exit v1

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setJobListener(Lcom/oppo/camera/rewind/app/JobListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "id"

    .prologue
    .line 676
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mJobListener:Lcom/oppo/camera/rewind/app/JobListener;

    .line 677
    iput p2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mJobId:I

    .line 678
    return-void
.end method

.method public setMagnifiedPreviewRect(Lcom/scalado/base/Rect;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 332
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v1

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurMagParams:Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mScreenRect:Lcom/scalado/base/Rect;

    invoke-static {p1, v0}, Lcom/oppo/camera/rewind/app/RewindSession;->copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 336
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurMagParams:Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

    iget-object v2, v2, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mScreenRect:Lcom/scalado/base/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurMagParams:Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

    iget-object v3, v3, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, v2, v3}, Lcom/oppo/camera/rewind/app/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 338
    monitor-exit v1

    .line 339
    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMagnifierSize(Lcom/scalado/base/Size;)V
    .locals 4
    .parameter "dims"

    .prologue
    .line 352
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurMagParams:Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mDims:Lcom/scalado/base/Size;

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 354
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurMagParams:Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;->mDims:Lcom/scalado/base/Size;

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 355
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/oppo/camera/rewind/app/SourceManager;->setMagnifierSize(II)V

    .line 356
    monitor-exit v1

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxTranslation(I)V
    .locals 2
    .parameter "maxTranslation"

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession;->transformLength(I)I

    move-result p1

    .line 382
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v1

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mMaxTranslation:I
    invoke-static {v0, p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$502(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;I)I

    .line 384
    monitor-exit v1

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPriority(Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;)V
    .locals 2
    .parameter "prio"

    .prologue
    .line 368
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;
    invoke-static {v0, p1}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$1102(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;)Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    .line 370
    monitor-exit v1

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 4
    .parameter "rect"
    .parameter "dst"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v1

    .line 285
    if-eqz p1, :cond_1

    .line 286
    :try_start_0
    const-string v0, "RewindSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReplaceArea (screen coords): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/oppo/camera/rewind/app/Geom;->rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    const/4 v2, 0x1

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mRectSet:Z
    invoke-static {v0, v2}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$902(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Z)Z

    .line 290
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$1000(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)Lcom/scalado/base/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/oppo/camera/rewind/app/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 292
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$1000(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)Lcom/scalado/base/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/RewindSession;->restrictRect(Lcom/scalado/base/Rect;)V

    .line 293
    if-eqz p2, :cond_0

    .line 294
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$1000(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;)Lcom/scalado/base/Rect;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/oppo/camera/rewind/app/CoordTransform;->transformRectToScreen(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 299
    :cond_0
    :goto_0
    monitor-exit v1

    .line 300
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    const/4 v2, 0x0

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->mRectSet:Z
    invoke-static {v0, v2}, Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;->access$902(Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Z)Z

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setZoom(F)V
    .locals 3
    .parameter "zoom"

    .prologue
    .line 665
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    monitor-enter v1

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomLvl:F
    invoke-static {v0, p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$602(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;F)F

    .line 667
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    const/4 v2, 0x1

    #setter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mDirty:Z
    invoke-static {v0, v2}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$2002(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Z)Z

    .line 668
    monitor-exit v1

    .line 669
    return-void

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setZoomRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 2
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 656
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v1

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    #calls: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->setZoom(Lcom/scalado/base/Rect;)V
    invoke-static {v0, p1}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$1800(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/scalado/base/Rect;)V

    .line 658
    if-eqz p2, :cond_0

    .line 659
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;->access$1900(Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;)Lcom/scalado/base/Rect;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/oppo/camera/rewind/app/RewindSession;->copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 661
    :cond_0
    monitor-exit v1

    .line 662
    return-void

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transformReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 2
    .parameter "area"
    .parameter "dst"

    .prologue
    .line 316
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v1

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/rewind/app/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 318
    invoke-direct {p0, p2}, Lcom/oppo/camera/rewind/app/RewindSession;->restrictRect(Lcom/scalado/base/Rect;)V

    .line 319
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    invoke-virtual {v0, p2, p2}, Lcom/oppo/camera/rewind/app/CoordTransform;->transformRectToScreen(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 320
    monitor-exit v1

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    .line 455
    iget-object v8, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v8

    .line 456
    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mRunning:Z

    if-nez v1, :cond_0

    .line 457
    monitor-exit v8

    .line 467
    :goto_0
    return-void

    .line 459
    :cond_0
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;Lcom/oppo/camera/rewind/app/RewindSession$1;)V

    .line 461
    .local v0, request:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 463
    .local v7, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 464
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 465
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 466
    monitor-exit v8

    goto :goto_0

    .end local v0           #request:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    .end local v7           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateMagnified(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    .line 497
    iget-object v8, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    monitor-enter v8

    .line 498
    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mRunning:Z

    if-nez v1, :cond_0

    .line 499
    monitor-exit v8

    .line 508
    :goto_0
    return-void

    .line 501
    :cond_0
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurParams:Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurScreenParams:Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mCurMagParams:Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$LTWParams;Lcom/oppo/camera/rewind/app/RewindSession$ScreenParams;Lcom/oppo/camera/rewind/app/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;Lcom/oppo/camera/rewind/app/RewindSession$1;)V

    .line 503
    .local v0, request:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 505
    .local v7, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->removeMessages(I)V

    .line 506
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindSession;->mLooperThread:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 507
    monitor-exit v8

    goto :goto_0

    .end local v0           #request:Lcom/oppo/camera/rewind/app/RewindSession$LTWRequest;
    .end local v7           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
