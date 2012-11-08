.class public Lcom/oppo/ImageScaleView/ImageScaleManager;
.super Ljava/lang/Object;
.source "ImageScaleManager.java"


# instance fields
.field private mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

.field private mBitmapKind:I

.field private mCurrentFullBitmap:Landroid/graphics/Bitmap;

.field private mCurrentThumbBitmap:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mIsFromBurst:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRedrawCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/Runnable;Landroid/os/Handler;Lcom/oppo/ImageScaleView/ActionHandler;Z)V
    .locals 3
    .parameter "bm"
    .parameter "redrawCallback"
    .parameter "handler"
    .parameter "actionHandler"
    .parameter "isFromBurst"

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v2, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mBitmapKind:I

    .line 15
    iput-boolean v2, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mIsFromBurst:Z

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mPaint:Landroid/graphics/Paint;

    .line 30
    iput-object p2, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mRedrawCallback:Ljava/lang/Runnable;

    .line 31
    iput-object p3, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mHandler:Landroid/os/Handler;

    .line 32
    iput-object p4, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    .line 33
    iput-boolean p5, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mIsFromBurst:Z

    .line 35
    invoke-virtual {p0, p1, v2}, Lcom/oppo/ImageScaleView/ImageScaleManager;->loadImage(Landroid/graphics/Bitmap;Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 39
    iget v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mBitmapKind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 40
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mCurrentThumbBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    iget-object v1, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mCurrentThumbBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/oppo/ImageScaleView/ActionHandler;->drawCurrentBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 44
    :cond_2
    iget v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mBitmapKind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mCurrentFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    iget-object v1, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mCurrentFullBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Lcom/oppo/ImageScaleView/ActionHandler;->drawCurrentBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public loadImage(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "bitmap"
    .parameter "isThumb"

    .prologue
    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mBitmapKind:I

    .line 74
    if-eqz p2, :cond_0

    .line 75
    iput-object p1, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mCurrentThumbBitmap:Landroid/graphics/Bitmap;

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mBitmapKind:I

    .line 77
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v0, p1}, Lcom/oppo/ImageScaleView/ActionHandler;->initMatrix(Landroid/graphics/Bitmap;)V

    .line 78
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mRedrawCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mCurrentFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mIsFromBurst:Z

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mCurrentFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mCurrentFullBitmap:Landroid/graphics/Bitmap;

    .line 85
    :cond_1
    iput-object p1, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mCurrentFullBitmap:Landroid/graphics/Bitmap;

    .line 86
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v0, p1}, Lcom/oppo/ImageScaleView/ActionHandler;->initMatrix(Landroid/graphics/Bitmap;)V

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mBitmapKind:I

    .line 88
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/ImageScaleView/ImageScaleManager;->mRedrawCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
