.class public Lcom/oppo/camera/rewind/ui/Wheel;
.super Lcom/oppo/camera/rewind/ui/Widget;
.source "Wheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/ui/Wheel$WheelCallback;
    }
.end annotation


# instance fields
.field private mAngleMode:I

.field private mBmpRect:Landroid/graphics/Rect;

.field private mCallback:Lcom/oppo/camera/rewind/ui/Wheel$WheelCallback;

.field private mCenter:Landroid/graphics/Point;

.field private mCurIndex:I

.field private mDown:Z

.field private mDrawMarked:Z

.field private mElemCount:I

.field private mIndicScale:Landroid/graphics/PointF;

.field private mIndicTouchR2:F

.field private mIndicatorBmp:Landroid/graphics/Bitmap;

.field private mIndicatorPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

.field private mIntBuffer:Ljava/nio/ByteBuffer;

.field private mMagBmp:Landroid/graphics/Bitmap;

.field private mMagBmp2:Landroid/graphics/Bitmap;

.field private mMarkedIndex:I

.field mMatrix:Landroid/graphics/Matrix;

.field private mNumRevolutions:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

.field private mPivot:I

.field private mPrevIndex:I

.field private mRadiusX:I

.field private mRadiusY:I

.field private mRect:Landroid/graphics/Rect;

.field private mRectF:Landroid/graphics/RectF;

.field private mRelCenter:Landroid/graphics/PointF;

.field private mRelIndicatorExtraY:F

.field private mRelIndicatorY:F

.field private mRelR:F

.field private mRelRimW:F

.field private mRimH:F

.field private mRimW:F

.field private mThetaIvl:D

.field private mThetaMax:D

.field private mThetaMin:D

.field private mThetaOffset:D

.field private mWheelBmp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/rewind/ui/UiManager;)V
    .locals 7
    .parameter "uiManager"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x41c8

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 112
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/ui/Widget;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;)V

    .line 36
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mCenter:Landroid/graphics/Point;

    .line 43
    iput v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRimW:F

    .line 44
    iput v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRimH:F

    .line 45
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelCenter:Landroid/graphics/PointF;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicScale:Landroid/graphics/PointF;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMatrix:Landroid/graphics/Matrix;

    .line 60
    iput v5, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMarkedIndex:I

    .line 68
    iput v6, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mAngleMode:I

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mNumRevolutions:I

    .line 82
    new-instance v0, Lcom/oppo/camera/rewind/ui/PaintConfig;

    invoke-direct {v0}, Lcom/oppo/camera/rewind/ui/PaintConfig;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    .line 83
    new-instance v0, Lcom/oppo/camera/rewind/ui/PaintConfig;

    invoke-direct {v0}, Lcom/oppo/camera/rewind/ui/PaintConfig;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicatorPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    .line 84
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mDrawMarked:Z

    .line 89
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mDown:Z

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPaint:Landroid/graphics/Paint;

    .line 121
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iput v5, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mColor:I

    .line 122
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    const/16 v1, 0xff

    iput v1, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mAlpha:I

    .line 123
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    const/high16 v1, 0x40a0

    const/high16 v2, -0x4000

    const/high16 v3, 0x4000

    const/high16 v4, -0x100

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oppo/camera/rewind/ui/PaintConfig;->setShadowLayer(FFFI)V

    .line 124
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iput-boolean v6, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mAntiAlias:Z

    .line 125
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iput-object v1, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mStyle:Landroid/graphics/Paint$Style;

    .line 127
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicatorPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iput v5, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mColor:I

    .line 128
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicatorPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    const/16 v1, 0x80

    iput v1, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mAlpha:I

    .line 129
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicatorPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iput-boolean v6, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mAntiAlias:Z

    .line 130
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicatorPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iput-object v1, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mStyle:Landroid/graphics/Paint$Style;

    .line 133
    const-wide v0, -0x4018860ed80a17b1L

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaMin:D

    .line 134
    const-wide v0, 0x3fe779f127f5e84fL

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaMax:D

    .line 135
    return-void
.end method

.method private final angleToIndex(D)I
    .locals 3
    .parameter "angle"

    .prologue
    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, index:I
    iget-wide v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaMin:D

    cmpg-double v1, p1, v1

    if-gez v1, :cond_1

    .line 575
    const/4 v0, 0x0

    .line 581
    :goto_0
    iget v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mElemCount:I

    if-lt v0, v1, :cond_0

    .line 582
    iget v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mElemCount:I

    add-int/lit8 v0, v1, -0x1

    .line 584
    :cond_0
    return v0

    .line 578
    :cond_1
    iget-wide v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaMin:D

    sub-double/2addr p1, v1

    .line 579
    iget-wide v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaIvl:D

    div-double v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    goto :goto_0
.end method

.method private contains(II)Z
    .locals 15
    .parameter "x"
    .parameter "y"

    .prologue
    .line 527
    iget-object v12, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    sub-int v12, p1, v12

    int-to-float v5, v12

    .line 528
    .local v5, dx:F
    iget-object v12, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    sub-int v12, p2, v12

    int-to-float v6, v12

    .line 529
    .local v6, dy:F
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRadiusX:I

    iget v13, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRadiusX:I

    mul-int/2addr v12, v13

    int-to-float v9, v12

    .line 530
    .local v9, rx2:F
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRadiusY:I

    iget v13, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRadiusY:I

    mul-int/2addr v12, v13

    int-to-float v11, v12

    .line 531
    .local v11, ry2:F
    mul-float v12, v5, v5

    mul-float/2addr v12, v11

    mul-float v13, v6, v6

    mul-float/2addr v13, v9

    add-float v4, v12, v13

    .line 532
    .local v4, d:F
    mul-float v12, v9, v11

    cmpg-float v12, v4, v12

    if-gtz v12, :cond_0

    .line 533
    const/4 v12, 0x1

    .line 549
    :goto_0
    return v12

    .line 535
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/Wheel;->getIndex()I

    move-result v7

    .line 536
    .local v7, index:I
    invoke-direct {p0, v7}, Lcom/oppo/camera/rewind/ui/Wheel;->getIndicatorAngle(I)F

    move-result v1

    .line 539
    .local v1, angle:F
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRadiusX:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    iget v14, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelIndicatorExtraY:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    add-float v8, v12, v13

    .line 540
    .local v8, rx:F
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRadiusY:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    iget v14, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelIndicatorExtraY:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    add-float v10, v12, v13

    .line 541
    .local v10, ry:F
    iget-object v12, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v13, v8

    add-float v2, v12, v13

    .line 542
    .local v2, cx:F
    iget-object v12, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v13, v10

    add-float v3, v12, v13

    .line 543
    .local v3, cy:F
    move/from16 v0, p1

    int-to-float v12, v0

    sub-float v5, v12, v2

    .line 544
    move/from16 v0, p2

    int-to-float v12, v0

    sub-float v6, v12, v3

    .line 545
    mul-float v12, v5, v5

    mul-float v13, v6, v6

    add-float v4, v12, v13

    .line 546
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicTouchR2:F

    cmpg-float v12, v4, v12

    if-gtz v12, :cond_1

    .line 547
    const/4 v12, 0x1

    goto :goto_0

    .line 549
    :cond_1
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private createBitmap(II)V
    .locals 5
    .parameter "w"
    .parameter "h"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 514
    const-string v0, "Wheel"

    const-string v1, "creating bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    .line 516
    const-string v0, "Wheel"

    const-string v1, "%dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_2
    return-void
.end method

.method private drawIndicator(Landroid/graphics/Canvas;F)V
    .locals 5
    .parameter "canvas"
    .parameter "angle"

    .prologue
    .line 465
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 466
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicScale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicScale:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 467
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 468
    const/high16 v1, 0x43b4

    mul-float/2addr v1, p2

    float-to-double v1, v1

    const-wide v3, 0x401921fb54442d18L

    div-double/2addr v1, v3

    const-wide v3, 0x4056800000000000L

    sub-double/2addr v1, v3

    double-to-float v0, v1

    .line 469
    .local v0, rotAngle:F
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 470
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicatorBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 471
    return-void
.end method

.method private drawPointer(Landroid/graphics/Canvas;F)V
    .locals 1
    .parameter "canvas"
    .parameter "angle"

    .prologue
    .line 474
    const v0, 0x3d80adfd

    .line 475
    .local v0, dAngle:F
    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/camera/rewind/ui/Wheel;->drawPointer(Landroid/graphics/Canvas;FF)V

    .line 476
    return-void
.end method

.method private drawPointer(Landroid/graphics/Canvas;FF)V
    .locals 19
    .parameter "canvas"
    .parameter "angle"
    .parameter "deltaAngle"

    .prologue
    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    .line 481
    .local v8, centerX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    .line 482
    .local v9, centerY:F
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 483
    .local v10, clipPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRadiusX:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRimW:F

    sub-float v11, v2, v7

    .line 484
    .local v11, rx0:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRadiusY:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRimH:F

    sub-float v13, v2, v7

    .line 485
    .local v13, ry0:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRadiusX:I

    add-int/lit8 v2, v2, 0xa

    int-to-float v12, v2

    .line 486
    .local v12, rxc:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRadiusY:I

    add-int/lit8 v2, v2, 0xa

    int-to-float v14, v2

    .line 487
    .local v14, ryc:F
    sub-float v2, p2, p3

    float-to-double v0, v2

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    mul-float/2addr v2, v11

    add-float v3, v8, v2

    .line 488
    .local v3, x0:F
    sub-float v2, p2, p3

    float-to-double v0, v2

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    mul-float/2addr v2, v13

    add-float v4, v9, v2

    .line 489
    .local v4, y0:F
    invoke-virtual {v10, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 492
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    mul-float/2addr v2, v12

    add-float v15, v8, v2

    .line 493
    .local v15, x:F
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    mul-float/2addr v2, v14

    add-float v16, v9, v2

    .line 495
    .local v16, y:F
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    mul-float/2addr v2, v11

    add-float v3, v8, v2

    .line 496
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    mul-float/2addr v2, v13

    add-float v4, v9, v2

    .line 497
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRimW:F

    add-float/2addr v7, v11

    const/high16 v17, 0x41a0

    add-float v7, v7, v17

    mul-float/2addr v2, v7

    add-float v5, v8, v2

    .line 498
    .local v5, x1:F
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRimH:F

    add-float/2addr v7, v13

    const/high16 v17, 0x41a0

    add-float v7, v7, v17

    mul-float/2addr v2, v7

    add-float v6, v9, v2

    .line 499
    .local v6, y1:F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 500
    return-void
.end method

.method private final getAngleRestricted(DD)D
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 637
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    sub-double/2addr p1, v2

    .line 638
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    sub-double/2addr p3, v2

    .line 648
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    neg-double v0, v2

    .line 649
    .local v0, angle:D
    const-wide v2, -0x3ff6de04abbbd2e8L

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 650
    const-wide v2, 0x401921fb54442d18L

    add-double/2addr v0, v2

    .line 652
    :cond_0
    return-wide v0
.end method

.method private getImage()V
    .locals 3

    .prologue
    .line 411
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mCallback:Lcom/oppo/camera/rewind/ui/Wheel$WheelCallback;

    invoke-interface {v1}, Lcom/oppo/camera/rewind/ui/Wheel$WheelCallback;->getImage()Lcom/scalado/base/Image;

    move-result-object v0

    .line 412
    .local v0, img:Lcom/scalado/base/Image;
    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/rewind/ui/Wheel;->createBitmap(II)V

    .line 413
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 414
    return-void
.end method

.method private final getIndex()I
    .locals 2

    .prologue
    .line 608
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mElemCount:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mCurIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getIndicatorAngle(I)F
    .locals 5
    .parameter "index"

    .prologue
    .line 613
    int-to-double v1, p1

    iget-wide v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaIvl:D

    mul-double/2addr v1, v3

    iget-wide v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaOffset:D

    add-double/2addr v1, v3

    const-wide v3, 0x3ff921fb54442d18L

    add-double/2addr v1, v3

    double-to-float v0, v1

    .line 614
    .local v0, angle:F
    return v0
.end method

.method private setPosition(IIII)V
    .locals 28
    .parameter "x"
    .parameter "y"
    .parameter "rx"
    .parameter "ry"

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/oppo/camera/rewind/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v8

    .line 244
    .local v8, dims:Lcom/scalado/base/Size;
    sub-int v18, p1, p3

    .line 245
    .local v18, x0:I
    sub-int v21, p2, p4

    .line 246
    .local v21, y0:I
    add-int v19, p1, p3

    .line 247
    .local v19, x1:I
    add-int v22, p2, p4

    .line 248
    .local v22, y1:I
    new-instance v14, Landroid/graphics/Rect;

    move/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v19

    move/from16 v3, v22

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 252
    .local v14, r:Landroid/graphics/Rect;
    const/4 v12, 0x0

    .line 253
    .local v12, minX:I
    const/4 v13, 0x0

    .line 254
    .local v13, minY:I
    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    .line 255
    .local v10, maxX:I
    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v11

    .line 256
    .local v11, maxY:I
    const/4 v5, 0x0

    .line 257
    .local v5, dLeftX:I
    const/4 v7, 0x0

    .line 258
    .local v7, dTopY:I
    const/4 v6, 0x0

    .line 259
    .local v6, dRightX:I
    const/4 v4, 0x0

    .line 260
    .local v4, dBottomY:I
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v12, :cond_0

    .line 261
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v5, v12, v24

    .line 263
    :cond_0
    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v13, :cond_1

    .line 264
    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v7, v13, v24

    .line 266
    :cond_1
    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v10, :cond_2

    .line 267
    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v24, v24, v10

    move/from16 v0, v24

    neg-int v6, v0

    .line 269
    :cond_2
    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v11, :cond_3

    .line 270
    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v24, v24, v11

    move/from16 v0, v24

    neg-int v4, v0

    .line 272
    :cond_3
    add-int v24, v5, v6

    add-int v25, v7, v4

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mCenter:Landroid/graphics/Point;

    move-object/from16 v24, v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mCenter:Landroid/graphics/Point;

    move-object/from16 v24, v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 276
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f00

    mul-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/camera/rewind/ui/Wheel;->mRadiusX:I

    .line 277
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f00

    mul-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/camera/rewind/ui/Wheel;->mRadiusY:I

    .line 278
    new-instance v24, Landroid/graphics/Rect;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/camera/rewind/ui/Wheel;->mRect:Landroid/graphics/Rect;

    .line 280
    new-instance v24, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/camera/rewind/ui/Wheel;->mRectF:Landroid/graphics/RectF;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f00

    mul-float v15, v24, v25

    .line 284
    .local v15, rbxs:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f00

    mul-float v16, v24, v25

    .line 285
    .local v16, rbys:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelR:F

    move/from16 v24, v0

    div-float v17, v15, v24

    .line 286
    .local v17, wbs:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelR:F

    move/from16 v24, v0

    div-float v9, v16, v24

    .line 287
    .local v9, hbs:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelCenter:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    mul-float v20, v17, v24

    .line 288
    .local v20, xcbs:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelCenter:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    mul-float v23, v9, v24

    .line 289
    .local v23, ycbs:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mCenter:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v20

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mCenter:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v23

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mCenter:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v17

    sub-float v25, v25, v20

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mCenter:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v9

    sub-float v25, v25, v23

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelR:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/camera/rewind/ui/Wheel;->mRadiusX:I

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelR:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/camera/rewind/ui/Wheel;->mRadiusY:I

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelRimW:F

    move/from16 v24, v0

    mul-float v24, v24, v17

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/camera/rewind/ui/Wheel;->mRimW:F

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelRimW:F

    move/from16 v24, v0

    mul-float v24, v24, v9

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/camera/rewind/ui/Wheel;->mRimH:F

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/high16 v25, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRimW:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    const/high16 v26, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRimH:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/RectF;->inset(FF)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicScale:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicatorBmp:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicScale:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicScale:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelIndicatorExtraY:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    const/high16 v25, 0x4000

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicTouchR2:F

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicTouchR2:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicTouchR2:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicTouchR2:F

    .line 312
    return-void
.end method

.method private updateAngleParams()V
    .locals 4

    .prologue
    .line 521
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaMax:D

    iget-wide v2, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaMin:D

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mElemCount:I

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaIvl:D

    .line 522
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaMin:D

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaOffset:D

    .line 523
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaOffset:D

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/rewind/ui/Wheel;->wrapAngle(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaOffset:D

    .line 524
    return-void
.end method

.method private final wrapAngle(D)D
    .locals 5
    .parameter "angle"

    .prologue
    const-wide/16 v3, 0x0

    const-wide v1, 0x401921fb54442d18L

    .line 588
    :cond_0
    :goto_0
    cmpg-double v0, p1, v3

    if-ltz v0, :cond_1

    cmpl-double v0, p1, v1

    if-ltz v0, :cond_3

    .line 589
    :cond_1
    cmpg-double v0, p1, v3

    if-gez v0, :cond_2

    .line 590
    add-double/2addr p1, v1

    goto :goto_0

    .line 591
    :cond_2
    cmpl-double v0, p1, v1

    if-ltz v0, :cond_0

    .line 592
    sub-double/2addr p1, v1

    goto :goto_0

    .line 595
    :cond_3
    return-wide p1
.end method

.method private final wrapIndex(II)I
    .locals 0
    .parameter "index"
    .parameter "size"

    .prologue
    .line 599
    if-gez p1, :cond_1

    .line 600
    const/4 p1, 0x0

    .line 604
    :cond_0
    :goto_0
    return p1

    .line 601
    :cond_1
    if-lt p1, p2, :cond_0

    .line 602
    add-int/lit8 p1, p2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, -0x1

    const-wide v7, 0x3ff921fb54442d18L

    const/4 v6, 0x0

    .line 417
    iget-boolean v3, p0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    if-nez v3, :cond_0

    .line 462
    :goto_0
    return-void

    .line 420
    :cond_0
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 422
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 423
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 424
    .local v1, clipPath:Landroid/graphics/Path;
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 425
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRectF:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 426
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 427
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp2:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 428
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v6, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 432
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 433
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 436
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mWheelBmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v6, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 438
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/Wheel;->getIndex()I

    move-result v2

    .line 442
    .local v2, index:I
    int-to-double v3, v2

    iget-wide v5, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaIvl:D

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaOffset:D

    add-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-float v0, v3

    .line 444
    .local v0, angle:F
    iget v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMarkedIndex:I

    if-ltz v3, :cond_1

    iget-boolean v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mDrawMarked:Z

    if-eqz v3, :cond_1

    .line 446
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicatorPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/ui/PaintConfig;->apply(Landroid/graphics/Paint;)V

    .line 447
    iget v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMarkedIndex:I

    int-to-double v3, v3

    iget-wide v5, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaIvl:D

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mThetaOffset:D

    add-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-float v0, v3

    .line 448
    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/rewind/ui/Wheel;->drawPointer(Landroid/graphics/Canvas;F)V

    .line 449
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicatorBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 454
    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/rewind/ui/Wheel;->drawIndicator(Landroid/graphics/Canvas;F)V

    goto :goto_0

    .line 430
    .end local v0           #angle:F
    .end local v2           #index:I
    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp2:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v6, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 457
    .restart local v0       #angle:F
    .restart local v2       #index:I
    :cond_3
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 458
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/ui/PaintConfig;->apply(Landroid/graphics/Paint;)V

    .line 459
    invoke-direct {p0, v2}, Lcom/oppo/camera/rewind/ui/Wheel;->getIndicatorAngle(I)F

    move-result v0

    .line 460
    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/rewind/ui/Wheel;->drawPointer(Landroid/graphics/Canvas;F)V

    goto/16 :goto_0
.end method

.method public getIndicatorExtraY()F
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelIndicatorExtraY:F

    return v0
.end method

.method public getRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "dst"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 346
    return-void
.end method

.method public markPosition(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 218
    iput p1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMarkedIndex:I

    .line 219
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 349
    iget-boolean v7, p0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    if-nez v7, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v5

    .line 352
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 353
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 355
    .local v4, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_6

    .line 356
    invoke-direct {p0, v3, v4}, Lcom/oppo/camera/rewind/ui/Wheel;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 359
    iput-boolean v6, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mDown:Z

    .line 360
    const/4 v7, -0x1

    iput v7, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPrevIndex:I

    .line 364
    :cond_2
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp2:Landroid/graphics/Bitmap;

    .line 367
    int-to-double v7, v3

    int-to-double v9, v4

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/oppo/camera/rewind/ui/Wheel;->getAngleRestricted(DD)D

    move-result-wide v0

    .line 368
    .local v0, angle:D
    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/rewind/ui/Wheel;->angleToIndex(D)I

    move-result v2

    .line 369
    .local v2, index:I
    iget v7, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mElemCount:I

    invoke-direct {p0, v2, v7}, Lcom/oppo/camera/rewind/ui/Wheel;->wrapIndex(II)I

    move-result v2

    .line 371
    iget v7, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mElemCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v2, v7, v2

    .line 373
    iget v7, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPrevIndex:I

    if-eq v2, v7, :cond_4

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 375
    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v7, p0, v2}, Lcom/oppo/camera/rewind/ui/UiManager;->onIndexFocused(Lcom/oppo/camera/rewind/ui/Widget;I)V

    .line 377
    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/Wheel;->getImage()V

    .line 378
    iput v2, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPrevIndex:I

    .line 380
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_5

    .line 381
    iput-boolean v5, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mDown:Z

    .line 382
    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v5, p0, v2}, Lcom/oppo/camera/rewind/ui/UiManager;->onIndexSelected(Lcom/oppo/camera/rewind/ui/Widget;I)V

    .line 384
    :cond_5
    iput v2, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mCurIndex:I

    move v5, v6

    .line 386
    goto :goto_0

    .line 361
    .end local v0           #angle:D
    .end local v2           #index:I
    :cond_6
    iget-boolean v7, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mDown:Z

    if-nez v7, :cond_2

    goto :goto_0
.end method

.method public select(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 208
    iput p1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mCurIndex:I

    .line 209
    return-void
.end method

.method public setCallback(Lcom/oppo/camera/rewind/ui/Wheel$WheelCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mCallback:Lcom/oppo/camera/rewind/ui/Wheel$WheelCallback;

    .line 200
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 402
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/rewind/ui/Wheel;->createBitmap(II)V

    .line 395
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x2

    .line 396
    .local v0, size:I
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIntBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIntBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 397
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIntBuffer:Ljava/nio/ByteBuffer;

    .line 399
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIntBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 400
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIntBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 401
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIntBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0
.end method

.method public setImage(Lcom/scalado/base/Image;)V
    .locals 3
    .parameter "img"

    .prologue
    .line 405
    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 406
    .local v0, dims:Lcom/scalado/base/Size;
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/rewind/ui/Wheel;->createBitmap(II)V

    .line 407
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 408
    return-void
.end method

.method public setLayoutParams(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFFF)V
    .locals 1
    .parameter "wheelBitmap"
    .parameter "indicator"
    .parameter "relCenter"
    .parameter "relR"
    .parameter "relRimW"
    .parameter "indicatorOffsetY"
    .parameter "indicatorExtraY"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mWheelBmp:Landroid/graphics/Bitmap;

    .line 167
    iput-object p2, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mIndicatorBmp:Landroid/graphics/Bitmap;

    .line 168
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelCenter:Landroid/graphics/PointF;

    invoke-virtual {v0, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 169
    iput p4, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelR:F

    .line 170
    iput p5, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelRimW:F

    .line 171
    iput p6, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelIndicatorY:F

    .line 172
    iput p7, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mRelIndicatorExtraY:F

    .line 173
    return-void
.end method

.method public setPivot(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 191
    iput p1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mPivot:I

    .line 192
    return-void
.end method

.method public setPosition(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oppo/camera/rewind/ui/Wheel;->setPosition(IIII)V

    .line 230
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 181
    iput p1, p0, Lcom/oppo/camera/rewind/ui/Wheel;->mElemCount:I

    .line 182
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/Wheel;->updateAngleParams()V

    .line 505
    invoke-super {p0}, Lcom/oppo/camera/rewind/ui/Widget;->show()V

    .line 506
    return-void
.end method
