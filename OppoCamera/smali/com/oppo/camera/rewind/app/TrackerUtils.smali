.class public Lcom/oppo/camera/rewind/app/TrackerUtils;
.super Ljava/lang/Object;
.source "TrackerUtils.java"


# instance fields
.field private mConvDec:Lcom/scalado/caps/codec/decoder/ColorDecoder;

.field private mConvScreen:Lcom/scalado/caps/screen/Screen;

.field private mConvSession:Lcom/scalado/caps/Session;

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFaceScreen:Lcom/scalado/caps/screen/Screen;

.field private mFaceSession:Lcom/scalado/caps/Session;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/rewind/app/SourceManager;)V
    .locals 2
    .parameter "srcMgr"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "srcMgr can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    .line 39
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/TrackerUtils;->createSuitableFaceDetectionDim()V

    .line 40
    return-void
.end method

.method private createConverter()V
    .locals 5

    .prologue
    const/16 v4, 0xff

    .line 157
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oppo/camera/rewind/app/SourceManager;->getEntry(I)Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    .line 158
    .local v0, dec:Lcom/scalado/caps/Decoder;
    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    .line 160
    .local v1, dims:Lcom/scalado/base/Size;
    new-instance v2, Lcom/scalado/caps/codec/decoder/ColorDecoder;

    new-instance v3, Lcom/scalado/base/Color;

    invoke-direct {v3, v4, v4, v4, v4}, Lcom/scalado/base/Color;-><init>(IIII)V

    invoke-direct {v2, v3, v1}, Lcom/scalado/caps/codec/decoder/ColorDecoder;-><init>(Lcom/scalado/base/Color;Lcom/scalado/base/Size;)V

    iput-object v2, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mConvDec:Lcom/scalado/caps/codec/decoder/ColorDecoder;

    .line 161
    new-instance v2, Lcom/scalado/caps/Session;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mConvDec:Lcom/scalado/caps/codec/decoder/ColorDecoder;

    invoke-direct {v2, v3}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v2, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mConvSession:Lcom/scalado/caps/Session;

    .line 162
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mConvSession:Lcom/scalado/caps/Session;

    invoke-virtual {p0, v2}, Lcom/oppo/camera/rewind/app/TrackerUtils;->createScreen(Lcom/scalado/caps/Session;)Lcom/scalado/caps/screen/Screen;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    .line 163
    return-void
.end method

.method private createSuitableFaceDetectionDim()V
    .locals 8

    .prologue
    const/high16 v7, 0x4416

    const/16 v6, 0x258

    .line 126
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oppo/camera/rewind/app/SourceManager;->getEntry(I)Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    .line 127
    .local v1, dec:Lcom/scalado/caps/Decoder;
    invoke-virtual {v1}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    .line 128
    .local v2, imageSize:Lcom/scalado/base/Size;
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 130
    .local v0, aspectRatio:F
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 132
    .local v3, minSide:I
    if-gt v3, v6, :cond_0

    .line 133
    iput-object v2, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 142
    :goto_0
    return-void

    .line 134
    :cond_0
    const/high16 v4, 0x3f80

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 135
    new-instance v4, Lcom/scalado/base/Size;

    mul-float v5, v7, v0

    float-to-int v5, v5

    invoke-direct {v4, v5, v6}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v4, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    goto :goto_0

    .line 139
    :cond_1
    new-instance v4, Lcom/scalado/base/Size;

    mul-float v5, v7, v0

    float-to-int v5, v5

    invoke-direct {v4, v6, v5}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v4, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    goto :goto_0
.end method

.method private needConversion()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 148
    :cond_0
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 113
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    if-eqz v2, :cond_0

    .line 114
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 115
    .local v0, screenRect:Lcom/scalado/base/Rect;
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    .line 116
    .local v1, sessionRect:Lcom/scalado/base/Rect;
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, p1, v1}, Lcom/oppo/camera/rewind/app/Geom;->transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 117
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, v1, v0}, Lcom/oppo/camera/rewind/app/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 119
    invoke-static {v0, p2}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 123
    .end local v0           #screenRect:Lcom/scalado/base/Rect;
    .end local v1           #sessionRect:Lcom/scalado/base/Rect;
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {p1, p2}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public createScreen(Lcom/scalado/caps/Session;)Lcom/scalado/caps/screen/Screen;
    .locals 3
    .parameter "session"

    .prologue
    .line 70
    new-instance v0, Lcom/scalado/base/Image;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    sget-object v2, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 71
    .local v0, img:Lcom/scalado/base/Image;
    new-instance v1, Lcom/scalado/caps/screen/Screen;

    invoke-direct {v1, p1, v0}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    return-object v1
.end method

.method public getFaceDetectionDims()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method public getFaceTrackingImage(I)Lcom/scalado/base/Image;
    .locals 13
    .parameter "index"

    .prologue
    const/4 v12, 0x0

    .line 75
    iget-object v10, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v11}, Lcom/scalado/base/Size;->getWidth()I

    move-result v11

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v11}, Lcom/scalado/base/Size;->getHeight()I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 78
    :cond_0
    iget-object v10, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v10, p1}, Lcom/oppo/camera/rewind/app/SourceManager;->getEntry(I)Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->getBackgroundImage()Lcom/scalado/base/Image;

    move-result-object v4

    .line 108
    :cond_1
    :goto_0
    return-object v4

    .line 80
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/TrackerUtils;->needConversion()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v10, :cond_3

    .line 81
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/TrackerUtils;->createConverter()V

    .line 83
    :cond_3
    iget-object v10, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v10, p1}, Lcom/oppo/camera/rewind/app/SourceManager;->getSourceImage(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 84
    .local v8, srcJpeg:Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/scalado/base/Buffer;

    invoke-direct {v1, v8}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 85
    .local v1, buffer:Lcom/scalado/base/Buffer;
    new-instance v9, Lcom/scalado/stream/BufferStream;

    invoke-direct {v9, v1, v12}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 86
    .local v9, stream:Lcom/scalado/stream/BufferStream;
    invoke-static {v9}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 87
    .local v5, iterator:Lcom/scalado/base/Iterator;
    const/4 v2, 0x0

    .line 89
    .local v2, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v5, v10}, Lcom/scalado/base/Iterator;->step(I)F

    .line 90
    invoke-virtual {v5}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-object v2, v0

    .line 91
    new-instance v7, Lcom/scalado/caps/Session;

    invoke-direct {v7, v2}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 92
    .local v7, session:Lcom/scalado/caps/Session;
    iget-object v10, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    if-nez v10, :cond_4

    .line 93
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/TrackerUtils;->createSuitableFaceDetectionDim()V

    .line 95
    :cond_4
    new-instance v4, Lcom/scalado/base/Image;

    iget-object v10, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    iget-object v11, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-virtual {v11}, Lcom/oppo/camera/rewind/app/SourceManager;->getBackgroundConfig()Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v11

    invoke-virtual {v11}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->config()Lcom/scalado/base/Image$Config;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 97
    .local v4, image:Lcom/scalado/base/Image;
    new-instance v6, Lcom/scalado/caps/screen/Screen;

    invoke-direct {v6, v7, v4}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    .line 98
    .local v6, screen:Lcom/scalado/caps/screen/Screen;
    invoke-virtual {v6}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 99
    iget-object v10, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceSession:Lcom/scalado/caps/Session;

    if-nez v10, :cond_5

    .line 100
    iput-object v7, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceSession:Lcom/scalado/caps/Session;

    .line 102
    :cond_5
    iget-object v10, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v10, :cond_1

    .line 103
    iput-object v6, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceScreen:Lcom/scalado/caps/screen/Screen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v4           #image:Lcom/scalado/base/Image;
    .end local v6           #screen:Lcom/scalado/caps/screen/Screen;
    .end local v7           #session:Lcom/scalado/caps/Session;
    :catch_0
    move-exception v3

    .line 107
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "TrackerUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception when scaling image "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setFaceDetectionDims(Lcom/scalado/base/Size;)V
    .locals 0
    .parameter "dims"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 48
    return-void
.end method

.method public setScreenDims(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 43
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    .line 44
    return-void
.end method
