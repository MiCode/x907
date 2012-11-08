.class public Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;
.super Lcom/oppo/camera/lomo/filters/Filter;
.source "DepthOfFieldFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;
    }
.end annotation


# instance fields
.field private mBlurImage:Lcom/scalado/base/Image;

.field private mBlurImage2:Lcom/scalado/base/Image;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDoFOval:Landroid/graphics/RectF;

.field private mDoFOvalPaint:Landroid/graphics/Paint;

.field private mDofLandBitmap:Landroid/graphics/Bitmap;

.field private mDofPortBitmap:Landroid/graphics/Bitmap;

.field private mGradientPaint:Landroid/graphics/Paint;

.field private mImageEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

.field private mInitialDoFOval:Landroid/graphics/RectF;

.field mLastX:F

.field mLastY:F

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mMaskImage:Lcom/scalado/base/Image;

.field private mMode:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

.field mMotionEdge:I

.field private mViewPortRect:Lcom/scalado/base/Rect;

.field xScale:F

.field yScale:F


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x120

    .line 99
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/filters/Filter;-><init>(I)V

    .line 70
    const v0, 0x3eb851ec

    iput v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->xScale:F

    .line 71
    const v0, 0x3f19999a

    iput v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->yScale:F

    .line 89
    sget-object v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;->None:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    iput-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMode:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    .line 91
    iput v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mLastX:F

    .line 92
    iput v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mLastY:F

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMotionEdge:I

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mGradientPaint:Landroid/graphics/Paint;

    .line 101
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 103
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mCanvas:Landroid/graphics/Canvas;

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOvalPaint:Landroid/graphics/Paint;

    .line 106
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOvalPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOvalPaint:Landroid/graphics/Paint;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOvalPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOvalPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOvalPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    sget-object v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;->None:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    iput-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMode:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    .line 114
    new-instance v0, Lcom/scalado/base/Image;

    new-instance v1, Lcom/scalado/base/Size;

    invoke-direct {v1, v2, v2}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v2, Lcom/scalado/base/Image$Config;->GRAY8:Lcom/scalado/base/Image$Config;

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMaskImage:Lcom/scalado/base/Image;

    .line 117
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42b4

    const/high16 v2, 0x4258

    const/high16 v3, 0x4346

    const/high16 v4, 0x436a

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mInitialDoFOval:Landroid/graphics/RectF;

    .line 121
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/16 v3, 0xc

    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->makeOvalMask(FFIFF)V

    .line 123
    return-void
.end method

.method private computeLayout()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 264
    const v2, 0x4031c71c

    .line 265
    .local v2, xScale:F
    const v5, 0x3fd55555

    .line 266
    .local v5, yScale:F
    iget-object v6, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    mul-float v0, v2, v6

    .line 267
    .local v0, x0:F
    iget-object v6, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    mul-float v3, v5, v6

    .line 268
    .local v3, y0:F
    iget-object v6, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    mul-float v1, v2, v6

    .line 269
    .local v1, x1:F
    iget-object v6, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    mul-float v4, v5, v6

    .line 271
    .local v4, y1:F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v0, v3, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v6
.end method

.method private fixDof()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 315
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 316
    .local v1, centerX:F
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 317
    .local v2, centerY:F
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 318
    .local v4, width:F
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 319
    .local v5, height:F
    cmpg-float v0, v1, v3

    if-gez v0, :cond_2

    .line 320
    const/4 v1, 0x0

    .line 324
    :cond_0
    :goto_0
    cmpg-float v0, v2, v3

    if-gez v0, :cond_3

    .line 325
    const/4 v2, 0x0

    .line 329
    :cond_1
    :goto_1
    const/16 v3, 0xc

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->makeOvalMask(FFIFF)V

    .line 330
    return-void

    .line 321
    :cond_2
    const/high16 v0, 0x437a

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    .line 322
    const/high16 v1, 0x437a

    goto :goto_0

    .line 326
    :cond_3
    const/high16 v0, 0x4390

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    .line 327
    const/high16 v2, 0x4390

    goto :goto_1
.end method

.method public static fixRect(Landroid/graphics/RectF;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 371
    iget v2, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 372
    iget v1, p0, Landroid/graphics/RectF;->left:F

    .line 373
    .local v1, right:F
    iget v2, p0, Landroid/graphics/RectF;->right:F

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 374
    iput v1, p0, Landroid/graphics/RectF;->right:F

    .line 377
    .end local v1           #right:F
    :cond_0
    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 378
    iget v0, p0, Landroid/graphics/RectF;->top:F

    .line 379
    .local v0, bottom:F
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 380
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 382
    .end local v0           #bottom:F
    :cond_1
    return-void
.end method

.method public static getBlurStrength(Lcom/scalado/base/Size;)I
    .locals 5
    .parameter "dims"

    .prologue
    .line 401
    const-wide v1, 0x3f56f0068db8bac7L

    invoke-virtual {p0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x3fe3333333333333L

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 403
    .local v0, level:I
    return v0
.end method

.method private init(Lcom/scalado/caps/Session;)V
    .locals 3
    .parameter "session"

    .prologue
    .line 385
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mViewPortRect:Lcom/scalado/base/Rect;

    .line 390
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    .line 391
    .local v0, dimensions:Lcom/scalado/base/Size;
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 392
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 394
    new-instance v1, Lcom/scalado/base/Image;

    sget-object v2, Lcom/scalado/base/Image$Config;->RGB_565_D:Lcom/scalado/base/Image$Config;

    invoke-direct {v1, v0, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mBlurImage:Lcom/scalado/base/Image;

    .line 396
    new-instance v1, Lcom/scalado/base/Image;

    sget-object v2, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v1, v0, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mBlurImage2:Lcom/scalado/base/Image;

    .line 397
    new-instance v1, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    iget-object v2, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mBlurImage:Lcom/scalado/base/Image;

    invoke-direct {v1, v2}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    iput-object v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mImageEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

    .line 398
    return-void
.end method

.method private makeOvalMask(FFIFF)V
    .locals 9
    .parameter "xPos"
    .parameter "yPos"
    .parameter "gradient"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 334
    iget-object v5, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mGradientPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 335
    iget-object v5, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mGradientPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 337
    iget-object v5, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 339
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 340
    .local v3, solidPaint:Landroid/graphics/Paint;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v5, 0x4000

    div-float v5, p4, v5

    sub-float v5, p1, v5

    const/high16 v6, 0x4000

    div-float v6, p5, v6

    sub-float v6, p2, v6

    const/high16 v7, 0x4000

    div-float v7, p4, v7

    add-float/2addr v7, p1

    const/high16 v8, 0x4000

    div-float v8, p5, v8

    add-float/2addr v8, p2

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 344
    .local v1, oval:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->fixRect(Landroid/graphics/RectF;)V

    .line 345
    iget-object v5, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v5, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 349
    iget-boolean v5, p0, Lcom/oppo/camera/lomo/filters/Filter;->mIsFrontCamera:Z

    if-eqz v5, :cond_0

    .line 350
    const/high16 v5, 0x4390

    sub-float p1, v5, p1

    .line 351
    new-instance v1, Landroid/graphics/RectF;

    .end local v1           #oval:Landroid/graphics/RectF;
    const/high16 v5, 0x4000

    div-float v5, p4, v5

    sub-float v5, p1, v5

    const/high16 v6, 0x4000

    div-float v6, p5, v6

    sub-float v6, p2, v6

    const/high16 v7, 0x4000

    div-float v7, p4, v7

    add-float/2addr v7, p1

    const/high16 v8, 0x4000

    div-float v8, p5, v8

    add-float/2addr v8, p2

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 353
    .restart local v1       #oval:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->fixRect(Landroid/graphics/RectF;)V

    .line 355
    :cond_0
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 356
    .local v2, path:Landroid/graphics/Path;
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 357
    invoke-virtual {v2}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 359
    iget-object v5, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 360
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 361
    const/16 v5, 0xff

    div-int/2addr v5, p3

    mul-int/2addr v5, v0

    rsub-int v4, v5, 0xff

    .line 362
    .local v4, v:I
    iget-object v5, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mGradientPaint:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 363
    iget-object v5, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 364
    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    invoke-virtual {v1, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    .end local v4           #v:I
    :cond_1
    iget-object v5, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMaskImage:Lcom/scalado/base/Image;

    invoke-virtual {v6}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 368
    return-void
.end method

.method private setMode(Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMode:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    if-eq p1, v0, :cond_0

    .line 213
    iput-object p1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMode:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    .line 215
    :cond_0
    return-void
.end method


# virtual methods
.method public applyFilterToCaptureSession(Lcom/scalado/caps/Session;)V
    .locals 13
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/high16 v12, 0x1

    const/4 v11, 0x0

    .line 434
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v8

    .line 435
    .local v8, vp:Lcom/scalado/base/Rect;
    new-instance v0, Lcom/scalado/caps/filter/photoart/Blur;

    invoke-direct {v0, p1}, Lcom/scalado/caps/filter/photoart/Blur;-><init>(Lcom/scalado/caps/Session;)V

    .line 436
    .local v0, blur:Lcom/scalado/caps/filter/photoart/Blur;
    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v9

    invoke-static {v9}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->getBlurStrength(Lcom/scalado/base/Size;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lcom/scalado/caps/filter/photoart/Blur;->set(ILcom/scalado/base/Rect;)V

    .line 438
    new-instance v1, Lcom/scalado/base/Buffer;

    invoke-direct {v1, v12}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 439
    .local v1, buf:Lcom/scalado/base/Buffer;
    new-instance v7, Lcom/scalado/stream/BufferStream;

    invoke-direct {v7, v1, v11}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 440
    .local v7, stream:Lcom/scalado/stream/BufferStream;
    new-instance v2, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v9

    invoke-direct {v2, v7, v9}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 441
    .local v2, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    invoke-virtual {p1, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/scalado/base/Iterator;->step(I)F

    .line 442
    invoke-virtual {v0}, Lcom/scalado/caps/filter/photoart/Blur;->abort()V

    .line 444
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 445
    .local v6, pngStream:Ljava/io/ByteArrayOutputStream;
    iget-object v9, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v9, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 447
    new-instance v3, Lcom/scalado/stream/BufferStream;

    invoke-virtual {v1}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v9

    invoke-direct {v3, v1, v9}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 448
    .local v3, frameStream:Lcom/scalado/stream/Stream;
    new-instance v5, Lcom/scalado/stream/BufferStream;

    new-instance v9, Lcom/scalado/base/Buffer;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/scalado/base/Buffer;-><init>([B)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-direct {v5, v9, v10}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 452
    .local v5, maskStream:Lcom/scalado/stream/Stream;
    new-instance v4, Lcom/scalado/caps/filter/imagefusion/Imagefusion;

    invoke-direct {v4, p1}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;-><init>(Lcom/scalado/caps/Session;)V

    .line 453
    .local v4, fusion:Lcom/scalado/caps/filter/imagefusion/Imagefusion;
    invoke-virtual {v4, v3, v5, v11}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->setFrameMask(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;Z)V

    .line 454
    invoke-virtual {v4}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->commit()V

    .line 455
    return-void
.end method

.method public applyFilterToSession(Lcom/scalado/caps/Session;)V
    .locals 6
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 133
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v2

    .line 134
    .local v2, vp:Lcom/scalado/base/Rect;
    iget-object v3, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mImageEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

    if-nez v3, :cond_1

    .line 135
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->init(Lcom/scalado/caps/Session;)V

    .line 141
    :cond_0
    :goto_0
    new-instance v0, Lcom/scalado/caps/filter/photoart/Blur;

    invoke-direct {v0, p1}, Lcom/scalado/caps/filter/photoart/Blur;-><init>(Lcom/scalado/caps/Session;)V

    .line 142
    .local v0, blur:Lcom/scalado/caps/filter/photoart/Blur;
    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    invoke-static {v3}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->getBlurStrength(Lcom/scalado/base/Size;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/scalado/caps/filter/photoart/Blur;->set(ILcom/scalado/base/Rect;)V

    .line 144
    iget-object v3, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mImageEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-virtual {p1, v3}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/scalado/base/Iterator;->step(I)F

    .line 145
    invoke-virtual {v0}, Lcom/scalado/caps/filter/photoart/Blur;->abort()V

    .line 148
    iget-object v3, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mBlurImage2:Lcom/scalado/base/Image;

    invoke-virtual {v3}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mBlurImage:Lcom/scalado/base/Image;

    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 151
    new-instance v1, Lcom/scalado/caps/filter/imagefusion/Imagefusion;

    invoke-direct {v1, p1}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;-><init>(Lcom/scalado/caps/Session;)V

    .line 153
    .local v1, fusion:Lcom/scalado/caps/filter/imagefusion/Imagefusion;
    iget-object v3, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mBlurImage2:Lcom/scalado/base/Image;

    iget-object v4, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMaskImage:Lcom/scalado/base/Image;

    invoke-virtual {v1, v3, v4, v5}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->setFrameMask(Lcom/scalado/base/Image;Lcom/scalado/base/Image;Z)V

    .line 154
    invoke-virtual {v1}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->commit()V

    .line 156
    return-void

    .line 136
    .end local v0           #blur:Lcom/scalado/caps/filter/photoart/Blur;
    .end local v1           #fusion:Lcom/scalado/caps/filter/imagefusion/Imagefusion;
    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mViewPortRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mViewPortRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 138
    :cond_2
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->init(Lcom/scalado/caps/Session;)V

    goto :goto_0
.end method

.method public getHit(FF)I
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    .line 225
    invoke-direct {p0}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->computeLayout()Landroid/graphics/RectF;

    move-result-object v5

    .line 226
    .local v5, r:Landroid/graphics/RectF;
    const/high16 v4, 0x41a0

    .line 227
    .local v4, hysteresis:F
    const/4 v7, 0x1

    .line 229
    .local v7, retval:I
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float v1, p1, v8

    .line 230
    .local v1, distX:F
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float v2, p2, v8

    .line 231
    .local v2, distY:F
    mul-float v8, v1, v1

    mul-float v9, v2, v2

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v3, v8

    .line 232
    .local v3, distanceFromCenter:I
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    float-to-int v6, v8

    .line 233
    .local v6, radius:I
    sub-int v0, v3, v6

    .line 235
    .local v0, delta:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x41a0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 236
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 237
    cmpg-float v8, v2, v10

    if-gez v8, :cond_0

    .line 238
    const/16 v7, 0x8

    .line 255
    :goto_0
    return v7

    .line 240
    :cond_0
    const/16 v7, 0x10

    goto :goto_0

    .line 243
    :cond_1
    cmpg-float v8, v1, v10

    if-gez v8, :cond_2

    .line 244
    const/4 v7, 0x2

    goto :goto_0

    .line 246
    :cond_2
    const/4 v7, 0x4

    goto :goto_0

    .line 249
    :cond_3
    if-ge v3, v6, :cond_4

    .line 250
    const/16 v7, 0x20

    goto :goto_0

    .line 252
    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public handleMotion(IFFFFFF)V
    .locals 8
    .parameter "edge"
    .parameter "dx"
    .parameter "dy"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 170
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const/16 v0, 0x20

    if-ne p1, v0, :cond_2

    .line 173
    iget v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->xScale:F

    iget v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mLastX:F

    sub-float v1, p2, v1

    mul-float v6, v0, v1

    .line 174
    .local v6, dX:F
    iget v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->yScale:F

    iget v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mLastY:F

    sub-float v1, p3, v1

    mul-float v7, v0, v1

    .line 175
    .local v7, dY:F
    add-float/2addr p4, v6

    .line 176
    add-float/2addr p5, v7

    .line 177
    const/16 v3, 0xc

    move-object v0, p0

    move v1, p4

    move v2, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->makeOvalMask(FFIFF)V

    goto :goto_0

    .line 182
    .end local v6           #dX:F
    .end local v7           #dY:F
    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 183
    iget v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->yScale:F

    iget v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mLastX:F

    sub-float/2addr v1, p2

    mul-float p2, v0, v1

    .line 184
    add-float v4, p6, p2

    .line 185
    .local v4, newWidth:F
    const/high16 v0, 0x40a0

    mul-float/2addr v0, v4

    const/high16 v1, 0x4040

    div-float v5, v0, v1

    .line 199
    .local v5, newHeight:F
    :goto_1
    const/high16 v0, 0x4220

    cmpg-float v0, v4, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x4316

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_0

    .line 202
    const/16 v3, 0xc

    move-object v0, p0

    move v1, p4

    move v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->makeOvalMask(FFIFF)V

    goto :goto_0

    .line 186
    .end local v4           #newWidth:F
    .end local v5           #newHeight:F
    :cond_3
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_4

    .line 187
    iget v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->yScale:F

    iget v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mLastX:F

    sub-float v1, p2, v1

    mul-float p2, v0, v1

    .line 188
    add-float v4, p6, p2

    .line 189
    .restart local v4       #newWidth:F
    const/high16 v0, 0x40a0

    mul-float/2addr v0, v4

    const/high16 v1, 0x4040

    div-float v5, v0, v1

    .restart local v5       #newHeight:F
    goto :goto_1

    .line 190
    .end local v4           #newWidth:F
    .end local v5           #newHeight:F
    :cond_4
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_5

    .line 191
    iget v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->yScale:F

    iget v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mLastY:F

    sub-float/2addr v1, p3

    mul-float p3, v0, v1

    .line 192
    add-float v5, p7, p3

    .line 193
    .restart local v5       #newHeight:F
    const/high16 v0, 0x4040

    mul-float/2addr v0, v5

    const/high16 v1, 0x40a0

    div-float v4, v0, v1

    .restart local v4       #newWidth:F
    goto :goto_1

    .line 195
    .end local v4           #newWidth:F
    .end local v5           #newHeight:F
    :cond_5
    iget v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->yScale:F

    iget v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mLastY:F

    sub-float v1, p3, v1

    mul-float p3, v0, v1

    .line 196
    add-float v5, p7, p3

    .line 197
    .restart local v5       #newHeight:F
    const/high16 v0, 0x4040

    mul-float/2addr v0, v5

    const/high16 v1, 0x40a0

    div-float v4, v0, v1

    .restart local v4       #newWidth:F
    goto :goto_1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x1

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 277
    const/4 v9, 0x0

    .line 308
    :goto_0
    return v9

    .line 279
    :cond_0
    const/4 v9, 0x0

    .line 280
    .local v9, isDoTouchFoucs:Z
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mInitialDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    .line 281
    .local v4, x:F
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mInitialDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    .line 282
    .local v5, y:F
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mInitialDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 283
    .local v6, width:F
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mInitialDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    .line 285
    .local v7, height:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 287
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->getHit(FF)I

    move-result v8

    .line 288
    .local v8, edge:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mLastX:F

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mLastY:F

    .line 290
    if-eq v8, v2, :cond_1

    .line 291
    iput v8, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMotionEdge:I

    .line 292
    if-ne v8, v3, :cond_2

    sget-object v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;->Move:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    :goto_1
    invoke-direct {p0, v0}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->setMode(Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mInitialDoFOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 292
    :cond_2
    sget-object v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;->Grow:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    goto :goto_1

    .line 297
    .end local v8           #edge:I
    :pswitch_1
    iget v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMotionEdge:I

    if-ne v0, v3, :cond_3

    .line 298
    const/4 v9, 0x1

    .line 300
    :cond_3
    sget-object v0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;->None:Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;

    invoke-direct {p0, v0}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->setMode(Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter$ModifyMode;)V

    .line 301
    iput v2, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMotionEdge:I

    .line 302
    invoke-direct {p0}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->fixDof()V

    goto :goto_0

    .line 305
    :pswitch_2
    iget v1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->handleMotion(IFFFFFF)V

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public postRender(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/high16 v7, 0x4390

    const/high16 v12, 0x41a0

    const/high16 v11, 0x4120

    const/high16 v10, 0x4000

    .line 408
    invoke-super {p0, p1}, Lcom/oppo/camera/lomo/filters/Filter;->postRender(Landroid/graphics/Canvas;)V

    .line 409
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v6, v7

    .line 410
    .local v4, xScale:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v5, v6, v7

    .line 411
    .local v5, yScale:F
    iget-object v6, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    mul-float v1, v4, v6

    .line 412
    .local v1, left:F
    iget-object v6, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    mul-float v3, v5, v6

    .line 413
    .local v3, top:F
    iget-object v6, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    mul-float v2, v4, v6

    .line 414
    .local v2, right:F
    iget-object v6, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    mul-float v0, v5, v6

    .line 415
    .local v0, bottom:F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v7, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOvalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 424
    iget-object v6, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDofLandBitmap:Landroid/graphics/Bitmap;

    sub-float v7, v1, v12

    sub-float v8, v3, v0

    div-float/2addr v8, v10

    add-float/2addr v8, v0

    sub-float/2addr v8, v11

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 425
    iget-object v6, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDofLandBitmap:Landroid/graphics/Bitmap;

    sub-float v7, v2, v12

    sub-float v8, v3, v0

    div-float/2addr v8, v10

    add-float/2addr v8, v0

    sub-float/2addr v8, v11

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 426
    iget-object v6, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDofPortBitmap:Landroid/graphics/Bitmap;

    sub-float v7, v2, v1

    div-float/2addr v7, v10

    add-float/2addr v7, v1

    sub-float/2addr v7, v11

    sub-float v8, v3, v12

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 427
    iget-object v6, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDofPortBitmap:Landroid/graphics/Bitmap;

    sub-float v7, v2, v1

    div-float/2addr v7, v10

    add-float/2addr v7, v1

    sub-float/2addr v7, v11

    sub-float v8, v0, v12

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 429
    return-void
.end method

.method public refresh()V
    .locals 6

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/16 v3, 0xc

    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v0, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDoFOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->makeOvalMask(FFIFF)V

    .line 128
    return-void
.end method

.method public setUsedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDofLandBitmap:Landroid/graphics/Bitmap;

    .line 160
    iput-object p2, p0, Lcom/oppo/camera/lomo/filters/DepthOfFieldFilter;->mDofPortBitmap:Landroid/graphics/Bitmap;

    .line 161
    return-void
.end method
