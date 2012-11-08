.class public Lcom/oppo/camera/lomo/PanoramaHandler;
.super Ljava/lang/Object;
.source "PanoramaHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/lomo/PanoramaHandler$1;,
        Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;,
        Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;
    }
.end annotation


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mDirection:Lcom/scalado/caps/autorama/Direction;

.field private mFrameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/camera/panorama/PanoramaFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mNbrOfImagesGrabbed:I

.field private mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

.field private mViewFinderImage:Lcom/scalado/base/Image;

.field private mViewFinderSize:Lcom/scalado/base/Size;

.field private mViewFinderTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

.field private mViewFinderTransform:Lcom/scalado/caps/autorama/Transform;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderImage:Lcom/scalado/base/Image;

    .line 45
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, v2, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderSize:Lcom/scalado/base/Size;

    .line 46
    iput-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    .line 48
    iput-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mDirection:Lcom/scalado/caps/autorama/Direction;

    .line 50
    iput v2, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mNbrOfImagesGrabbed:I

    .line 52
    iput-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

    .line 53
    iput-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mCachePath:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mFrameList:Ljava/util/List;

    .line 68
    invoke-direct {p0}, Lcom/oppo/camera/lomo/PanoramaHandler;->setupTemporaryCache()V

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/camera/lomo/PanoramaHandler;)Lcom/scalado/base/Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderSize:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/camera/lomo/PanoramaHandler;)Lcom/scalado/caps/autorama/Direction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mDirection:Lcom/scalado/caps/autorama/Direction;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/camera/lomo/PanoramaHandler;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mFrameList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/camera/lomo/PanoramaHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/PanoramaHandler;->sendOnPanoramaGenerated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/camera/lomo/PanoramaHandler;Lcom/oppo/camera/panorama/PanoramaStitcher;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/lomo/PanoramaHandler;->saveImage(Lcom/oppo/camera/panorama/PanoramaStitcher;Ljava/lang/String;)V

    return-void
.end method

.method private clearCache()V
    .locals 7

    .prologue
    .line 233
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mCachePath:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, cacheDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 235
    .local v3, files:[Ljava/io/File;
    array-length v6, v3

    if-lez v6, :cond_0

    .line 236
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 237
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 240
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    return-void
.end method

.method private saveImage(Lcom/oppo/camera/panorama/PanoramaStitcher;Ljava/lang/String;)V
    .locals 6
    .parameter "stitcher"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    :try_start_0
    new-instance v3, Lcom/scalado/caps/Session;

    invoke-virtual {p1}, Lcom/oppo/camera/panorama/PanoramaStitcher;->getPanoramaDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 204
    .local v3, session:Lcom/scalado/caps/Session;
    new-instance v4, Lcom/scalado/stream/FileStream;

    sget-object v5, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v4, p2, v5}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V

    .line 205
    .local v4, stream:Lcom/scalado/stream/FileStream;
    new-instance v2, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-virtual {p1}, Lcom/oppo/camera/panorama/PanoramaStitcher;->getPanoramaSize()Lcom/scalado/base/Size;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 206
    .local v2, jpegEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    invoke-virtual {v3, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v1

    .line 207
    .local v1, it:Lcom/scalado/base/Iterator;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/scalado/base/Iterator;->step(I)F

    .line 208
    invoke-virtual {v4}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    return-void

    .line 210
    .end local v1           #it:Lcom/scalado/base/Iterator;
    .end local v2           #jpegEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v3           #session:Lcom/scalado/caps/Session;
    .end local v4           #stream:Lcom/scalado/stream/FileStream;
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/io/IOException;
    throw v0

    .line 212
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    throw v0
.end method

.method private sendOnDirectionChanged()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

    invoke-interface {v0}, Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;->onDirectionChanged()V

    .line 290
    :cond_0
    return-void
.end method

.method private sendOnDirectionConfirmed(Lcom/scalado/caps/autorama/Direction;)V
    .locals 1
    .parameter "dir"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

    invoke-interface {v0, p1}, Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;->onDirectionConfirmed(Lcom/scalado/caps/autorama/Direction;)V

    .line 284
    :cond_0
    return-void
.end method

.method private sendOnFrameAdded(I)V
    .locals 1
    .parameter "frameId"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

    invoke-interface {v0, p1}, Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;->onFrameAdded(I)V

    .line 269
    :cond_0
    return-void
.end method

.method private sendOnPanoramaGenerated(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

    invoke-interface {v0, p1}, Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;->onPanoramaGenerated(Ljava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method

.method private sendOnTrackerProgressUpdate(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

    invoke-interface {v0, p1}, Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;->onTrackerProgressUpdate(I)V

    .line 274
    :cond_0
    return-void
.end method

.method private setupTemporaryCache()V
    .locals 4

    .prologue
    .line 243
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, storageState:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sweep"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 250
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mCachePath:Ljava/lang/String;

    .line 255
    .end local v0           #cacheDir:Ljava/io/File;
    :cond_1
    return-void
.end method

.method private setupTracker(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderSize:Lcom/scalado/base/Size;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 118
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderSize:Lcom/scalado/base/Size;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 119
    new-instance v0, Lcom/scalado/caps/autorama/ViewfinderTracker;

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderSize:Lcom/scalado/base/Size;

    sget-object v2, Lcom/scalado/caps/autorama/ViewfinderTracker$Type;->VFTRACKERTYPE_MULTIREGION:Lcom/scalado/caps/autorama/ViewfinderTracker$Type;

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/autorama/ViewfinderTracker;-><init>(Lcom/scalado/base/Size;Lcom/scalado/caps/autorama/ViewfinderTracker$Type;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderImage:Lcom/scalado/base/Image;

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Lcom/scalado/base/Image;

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderSize:Lcom/scalado/base/Size;

    sget-object v2, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderImage:Lcom/scalado/base/Image;

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 127
    new-instance v0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;-><init>(Lcom/oppo/camera/lomo/PanoramaHandler;Lcom/oppo/camera/lomo/PanoramaHandler$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mFrameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 219
    invoke-direct {p0}, Lcom/oppo/camera/lomo/PanoramaHandler;->clearCache()V

    .line 221
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    if-eqz v0, :cond_0

    .line 222
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    monitor-enter v1

    .line 223
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderImage:Lcom/scalado/base/Image;

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mDirection:Lcom/scalado/caps/autorama/Direction;

    .line 226
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mNbrOfImagesGrabbed:I

    .line 229
    return-void

    .line 226
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setPanoramaListener(Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

    .line 263
    return-void
.end method

.method public declared-synchronized track([BII)V
    .locals 7
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/oppo/camera/lomo/PanoramaHandler;->setupTracker(II)V

    .line 79
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderImage:Lcom/scalado/base/Image;

    invoke-virtual {v1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 80
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    iget-object v2, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderImage:Lcom/scalado/base/Image;

    invoke-virtual {v1, v2}, Lcom/scalado/caps/autorama/ViewfinderTracker;->track(Lcom/scalado/base/Image;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderTransform:Lcom/scalado/caps/autorama/Transform;

    .line 81
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderTransform:Lcom/scalado/caps/autorama/Transform;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/scalado/caps/autorama/Transform;->getDirection(I)Lcom/scalado/caps/autorama/Direction;

    move-result-object v6

    .line 82
    .local v6, dir:Lcom/scalado/caps/autorama/Direction;
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mDirection:Lcom/scalado/caps/autorama/Direction;

    if-nez v1, :cond_3

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v6, v1, :cond_3

    .line 83
    iput-object v6, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mDirection:Lcom/scalado/caps/autorama/Direction;

    .line 84
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mDirection:Lcom/scalado/caps/autorama/Direction;

    invoke-direct {p0, v1}, Lcom/oppo/camera/lomo/PanoramaHandler;->sendOnDirectionConfirmed(Lcom/scalado/caps/autorama/Direction;)V

    .line 89
    :cond_0
    iget v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mNbrOfImagesGrabbed:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mDirection:Lcom/scalado/caps/autorama/Direction;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderTransform:Lcom/scalado/caps/autorama/Transform;

    iget-object v2, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mDirection:Lcom/scalado/caps/autorama/Direction;

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Lcom/scalado/caps/autorama/Transform;->isTimeToCapture(Lcom/scalado/caps/autorama/Direction;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    :cond_1
    new-instance v0, Lcom/oppo/camera/panorama/PanoramaFrame;

    iget-object v4, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderTransform:Lcom/scalado/caps/autorama/Transform;

    iget v5, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mNbrOfImagesGrabbed:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/panorama/PanoramaFrame;-><init>([BIILcom/scalado/caps/autorama/Transform;I)V

    .line 92
    .local v0, previewFrame:Lcom/oppo/camera/panorama/PanoramaFrame;
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mFrameList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    invoke-virtual {v1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->reset()V

    .line 94
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    iget-object v2, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderImage:Lcom/scalado/base/Image;

    invoke-virtual {v1, v2}, Lcom/scalado/caps/autorama/ViewfinderTracker;->track(Lcom/scalado/base/Image;)Lcom/scalado/caps/autorama/Transform;

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderImage:Lcom/scalado/base/Image;

    .line 97
    iget v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mNbrOfImagesGrabbed:I

    invoke-direct {p0, v1}, Lcom/oppo/camera/lomo/PanoramaHandler;->sendOnFrameAdded(I)V

    .line 98
    iget v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mNbrOfImagesGrabbed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mNbrOfImagesGrabbed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v0           #previewFrame:Lcom/oppo/camera/panorama/PanoramaFrame;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 85
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mDirection:Lcom/scalado/caps/autorama/Direction;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v6, v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mDirection:Lcom/scalado/caps/autorama/Direction;

    if-eq v6, v1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/oppo/camera/lomo/PanoramaHandler;->sendOnDirectionChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    .end local v6           #dir:Lcom/scalado/caps/autorama/Direction;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 102
    .restart local v6       #dir:Lcom/scalado/caps/autorama/Direction;
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mDirection:Lcom/scalado/caps/autorama/Direction;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mDirection:Lcom/scalado/caps/autorama/Direction;

    invoke-virtual {v1}, Lcom/scalado/caps/autorama/Direction;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 103
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderTransform:Lcom/scalado/caps/autorama/Transform;

    invoke-virtual {v1}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Vector;->getX()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/lomo/PanoramaHandler;->sendOnTrackerProgressUpdate(I)V

    goto :goto_0

    .line 104
    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mDirection:Lcom/scalado/caps/autorama/Direction;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mDirection:Lcom/scalado/caps/autorama/Direction;

    invoke-virtual {v1}, Lcom/scalado/caps/autorama/Direction;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderTransform:Lcom/scalado/caps/autorama/Transform;

    invoke-virtual {v1}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Vector;->getY()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/lomo/PanoramaHandler;->sendOnTrackerProgressUpdate(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
