.class public Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;
.super Ljava/lang/Object;
.source "SourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/SourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SourceManagerEntry"
.end annotation


# instance fields
.field private mAllowedMagnifierPositionsRect:Lcom/scalado/base/Rect;

.field mBackgroundImageZoom:F

.field mCachedBackgroundImage:Lcom/scalado/base/Image;

.field mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

.field mCachedMagnifierImage:Lcom/scalado/base/Image;

.field mCachedMagnifierPosition:Landroid/graphics/Point;

.field mCachedMagnifierRect:Lcom/scalado/base/Rect;

.field mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

.field mCachedMagnifierZoom:F

.field mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

.field private mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

.field mIsCompleted:Z

.field mSession:Lcom/scalado/caps/Session;

.field mSourceBuffer:Lcom/scalado/base/Buffer;

.field mSourceByteBuffer:Ljava/nio/ByteBuffer;

.field mSourceDimensions:Lcom/scalado/base/Size;

.field mSourceStream:Lcom/scalado/stream/BufferStream;

.field mThumbnailImage:Lcom/scalado/base/Image;

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/SourceManager;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/SourceManager;Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 493
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mIsCompleted:Z

    .line 495
    iput-object p2, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSourceByteBuffer:Ljava/nio/ByteBuffer;

    .line 497
    new-instance v0, Lcom/scalado/base/Buffer;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSourceByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSourceBuffer:Lcom/scalado/base/Buffer;

    .line 498
    new-instance v0, Lcom/scalado/stream/BufferStream;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSourceBuffer:Lcom/scalado/base/Buffer;

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSourceStream:Lcom/scalado/stream/BufferStream;

    .line 500
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierPosition:Landroid/graphics/Point;

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierZoom:F

    .line 503
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    .line 504
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mAllowedMagnifierPositionsRect:Lcom/scalado/base/Rect;

    .line 505
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/SourceManager;Ljava/nio/ByteBuffer;Lcom/oppo/camera/rewind/app/SourceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 461
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;-><init>(Lcom/oppo/camera/rewind/app/SourceManager;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private calculateBackgroundImageZoom(Lcom/scalado/base/Size;Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)V
    .locals 3
    .parameter "sourceDimensions"
    .parameter "backGroundImageConfig"

    .prologue
    .line 583
    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {p2}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$1300(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v0

    sget-object v1, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    if-eq v0, v1, :cond_0

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {p2}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$1300(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v0

    sget-object v1, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    if-ne v0, v1, :cond_1

    .line 584
    :cond_0
    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I
    invoke-static {p2}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$600(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I
    invoke-static {p2}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$700(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    .line 589
    :goto_0
    return-void

    .line 587
    :cond_1
    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I
    invoke-static {p2}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$700(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I
    invoke-static {p2}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$600(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    goto :goto_0
.end method

.method private calculateDisplayedBackgroundImageRect()V
    .locals 8

    .prologue
    .line 597
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    .line 598
    .local v2, srcWidth:I
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    .line 605
    .local v1, srcHeight:I
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$1300(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v6

    sget-object v7, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$1300(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v6

    sget-object v7, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    if-ne v6, v7, :cond_1

    .line 606
    :cond_0
    iget v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 607
    .local v3, w:I
    iget v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    int-to-float v7, v1

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 615
    .local v0, h:I
    :goto_0
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mBackgroundImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager;->access$800(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$600(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v6

    sub-int/2addr v6, v3

    div-int/lit8 v4, v6, 0x2

    .line 616
    .local v4, x:I
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mBackgroundImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager;->access$800(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$700(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v5, v6, 0x2

    .line 618
    .local v5, y:I
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v6, v3}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 619
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v6, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 620
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v6, v4}, Lcom/scalado/base/Rect;->setX(I)V

    .line 621
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v6, v5}, Lcom/scalado/base/Rect;->setY(I)V

    .line 623
    return-void

    .line 611
    .end local v0           #h:I
    .end local v3           #w:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_1
    iget v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    int-to-float v7, v1

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 612
    .restart local v3       #w:I
    iget v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .restart local v0       #h:I
    goto :goto_0
.end method

.method private createSession()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 512
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    if-nez v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSourceStream:Lcom/scalado/stream/BufferStream;

    invoke-static {v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v0

    .line 515
    .local v0, iterator:Lcom/scalado/base/Iterator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    .line 517
    invoke-virtual {v0}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 519
    new-instance v1, Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-virtual {v2}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-virtual {v3}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    .line 522
    .end local v0           #iterator:Lcom/scalado/base/Iterator;
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    if-nez v1, :cond_1

    .line 523
    new-instance v1, Lcom/scalado/caps/Session;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-direct {v1, v2}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    .line 525
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mBackgroundImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/SourceManager;->access$800(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->calculateBackgroundImageZoom(Lcom/scalado/base/Size;Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)V

    .line 526
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->calculateDisplayedBackgroundImageRect()V

    .line 528
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v2

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$600(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    #setter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I
    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$602(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;I)I

    .line 529
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v2

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$700(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    #setter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I
    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$702(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;I)I

    .line 531
    :cond_1
    return-void
.end method

.method private magnifiedImageDirty()Z
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v1

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$600(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v1

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$700(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 802
    :cond_0
    const/4 v0, 0x1

    .line 804
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private renderBackground()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 563
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    if-nez v1, :cond_0

    .line 564
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->createSession()V

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mBackgroundImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/SourceManager;->access$800(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v1

    if-nez v1, :cond_1

    .line 567
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "mBackgroundImageConfig was null when creating background"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    :cond_1
    new-instance v1, Lcom/scalado/base/Image;

    new-instance v2, Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mBackgroundImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/SourceManager;->access$800(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v3

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$600(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mBackgroundImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/SourceManager;->access$800(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$700(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mBackgroundImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/SourceManager;->access$800(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v3

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$1100(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)Lcom/scalado/base/Image$Config;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedBackgroundImage:Lcom/scalado/base/Image;

    .line 571
    new-instance v0, Lcom/scalado/caps/screen/Screen;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedBackgroundImage:Lcom/scalado/base/Image;

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    .line 573
    .local v0, screen:Lcom/scalado/caps/screen/Screen;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mBackgroundImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/SourceManager;->access$800(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->calculateBackgroundImageZoom(Lcom/scalado/base/Size;Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)V

    .line 574
    iget v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 575
    iget v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    invoke-virtual {v0, v1}, Lcom/scalado/caps/screen/Screen;->setZoom(F)V

    .line 578
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mBackgroundImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/SourceManager;->access$800(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v1

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$1300(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scalado/caps/screen/Screen;->setRotation(Lcom/scalado/caps/Rotation;)V

    .line 579
    invoke-virtual {v0}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 580
    return-void
.end method

.method private renderMagnifiedImage(Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen;->setZoomRect(Lcom/scalado/base/Rect;)V

    .line 559
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v0}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 560
    return-void
.end method

.method private renderThumbnail()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 534
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    if-nez v2, :cond_0

    .line 535
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->createSession()V

    .line 538
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mThumbnailImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/SourceManager;->access$1000(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v2

    if-nez v2, :cond_1

    .line 539
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "mThumbnailImageConfig was null when creating thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 542
    :cond_1
    new-instance v2, Lcom/scalado/base/Image;

    new-instance v3, Lcom/scalado/base/Size;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mThumbnailImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/SourceManager;->access$1000(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$600(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v4

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mThumbnailImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/SourceManager;->access$1000(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v5

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$700(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mThumbnailImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/SourceManager;->access$1000(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$1100(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)Lcom/scalado/base/Image$Config;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v2, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mThumbnailImage:Lcom/scalado/base/Image;

    .line 543
    new-instance v0, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mThumbnailImage:Lcom/scalado/base/Image;

    invoke-direct {v0, v2}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 546
    .local v0, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v2, v0}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v1

    .line 547
    .local v1, iterator:Lcom/scalado/base/Iterator;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/scalado/base/Iterator;->step(I)F

    .line 549
    return-void
.end method

.method private updateMagnifiedImage()V
    .locals 8

    .prologue
    .line 809
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v3

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$1100(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)Lcom/scalado/base/Image$Config;

    move-result-object v3

    invoke-static {v3}, Lcom/oppo/camera/rewind/app/PixelFormat;->getBitsPerPixel(Lcom/scalado/base/Image$Config;)I

    move-result v0

    .line 810
    .local v0, bpp:I
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v3

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$600(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v3

    mul-int/2addr v3, v0

    div-int/lit8 v2, v3, 0x8

    .line 811
    .local v2, scanline:I
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v3

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$700(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v3

    mul-int v1, v2, v3

    .line 813
    .local v1, necessarySize:I
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    invoke-virtual {v3}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 815
    :cond_0
    new-instance v3, Lcom/scalado/base/Buffer;

    int-to-float v4, v1

    const v5, 0x3f8ccccd

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v4}, Lcom/scalado/base/Buffer;-><init>(I)V

    iput-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    .line 817
    :cond_1
    new-instance v3, Lcom/scalado/base/Image;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    new-instance v5, Lcom/scalado/base/Size;

    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mWidth:I
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$600(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v6

    iget-object v7, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v7

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mHeight:I
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$700(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v6, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$1100(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)Lcom/scalado/base/Image$Config;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    .line 818
    new-instance v3, Lcom/scalado/caps/screen/Screen;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    invoke-direct {v3, v4, v5}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    iput-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    .line 820
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$1300(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scalado/caps/screen/Screen;->setRotation(Lcom/scalado/caps/Rotation;)V

    .line 821
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->mMagnifiedImageConfig:Lcom/oppo/camera/rewind/app/SourceManager$Configuration;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/SourceManager;->access$900(Lcom/oppo/camera/rewind/app/SourceManager;)Lcom/oppo/camera/rewind/app/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/SourceManager$Configuration;->access$400(Lcom/oppo/camera/rewind/app/SourceManager$Configuration;)Lcom/scalado/caps/screen/Screen$RenderMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scalado/caps/screen/Screen;->setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V

    .line 822
    return-void
.end method


# virtual methods
.method public getBackgroundImage()Lcom/scalado/base/Image;
    .locals 3

    .prologue
    .line 827
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedBackgroundImage:Lcom/scalado/base/Image;

    if-nez v1, :cond_0

    .line 829
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->renderBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedBackgroundImage:Lcom/scalado/base/Image;

    return-object v1

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/SourceManager;->access$200(Lcom/oppo/camera/rewind/app/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDecoder()Lcom/scalado/caps/Decoder;
    .locals 3

    .prologue
    .line 727
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    if-nez v1, :cond_0

    .line 729
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->createSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    return-object v1

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/SourceManager;->access$200(Lcom/oppo/camera/rewind/app/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMagnifiedImage(Lcom/scalado/base/Rect;)Lcom/scalado/base/Image;
    .locals 6
    .parameter "rect"

    .prologue
    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, render:Z
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->magnifiedImageDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->updateMagnifiedImage()V

    .line 785
    const/4 v0, 0x1

    .line 787
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierRect:Lcom/scalado/base/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierRect:Lcom/scalado/base/Rect;

    invoke-virtual {v1, p1}, Lcom/scalado/base/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 788
    :cond_1
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/scalado/base/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierRect:Lcom/scalado/base/Rect;

    .line 790
    const/4 v0, 0x1

    .line 792
    :cond_2
    if-eqz v0, :cond_3

    .line 793
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierRect:Lcom/scalado/base/Rect;

    invoke-direct {p0, v1}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->renderMagnifiedImage(Lcom/scalado/base/Rect;)V

    .line 795
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    return-object v1
.end method

.method public getSource()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mSourceByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getThumbnail()Lcom/scalado/base/Image;
    .locals 3

    .prologue
    .line 838
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mThumbnailImage:Lcom/scalado/base/Image;

    if-nez v1, :cond_0

    .line 840
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->renderThumbnail()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 847
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->mThumbnailImage:Lcom/scalado/base/Image;

    return-object v1

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/SourceManager;->access$200(Lcom/oppo/camera/rewind/app/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 843
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 844
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->this$0:Lcom/oppo/camera/rewind/app/SourceManager;

    #getter for: Lcom/oppo/camera/rewind/app/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/SourceManager;->access$200(Lcom/oppo/camera/rewind/app/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
