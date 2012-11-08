.class public Lcom/oppo/ImageScaleView/ImageScaleView;
.super Landroid/view/View;
.source "ImageScaleView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/ImageScaleView/ImageScaleView$OnScrollOrReScaleListener;,
        Lcom/oppo/ImageScaleView/ImageScaleView$OnSingleTapUpListener;,
        Lcom/oppo/ImageScaleView/ImageScaleView$OnVisibilityStateChangedListener;
    }
.end annotation


# static fields
.field private static final HIGH_QULITY_FLAG:Landroid/graphics/PaintFlagsDrawFilter;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCurrentAction:I

.field private mCurrentModel:I

.field private mGestureListener:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mImageScaleManager:Lcom/oppo/ImageScaleView/ImageScaleManager;

.field private mIsFromBurst:Z

.field private mPictureOrientation:I

.field private mPointUp:Z

.field private mRedrawCallback:Ljava/lang/Runnable;

.field private mSingleTapUpListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnSingleTapUpListener;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mVisibilityStateChangedListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnVisibilityStateChangedListener;

.field private scrollOrReScaleListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnScrollOrReScaleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    sput-object v0, Lcom/oppo/ImageScaleView/ImageScaleView;->HIGH_QULITY_FLAG:Landroid/graphics/PaintFlagsDrawFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v1, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentModel:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mPictureOrientation:I

    .line 57
    const-string v0, "ImageScaleView"

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->TAG:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mIsFromBurst:Z

    .line 64
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mGestureListener:Landroid/view/GestureDetector;

    .line 67
    new-instance v0, Lcom/oppo/ImageScaleView/ImageScaleView$1;

    invoke-direct {v0, p0}, Lcom/oppo/ImageScaleView/ImageScaleView$1;-><init>(Lcom/oppo/ImageScaleView/ImageScaleView;)V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mRedrawCallback:Ljava/lang/Runnable;

    .line 73
    return-void
.end method

.method private getDoubleVelocity(Landroid/view/VelocityTracker;)F
    .locals 10
    .parameter "velocityTracker"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 339
    invoke-virtual {p1, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    .line 340
    .local v3, velocityX1:F
    invoke-virtual {p1, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 341
    .local v5, velocityY1:F
    mul-float v7, v3, v3

    mul-float v8, v5, v5

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v1, v7

    .line 343
    .local v1, velocityTotal1:F
    invoke-virtual {p1, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 344
    .local v4, velocityX2:F
    invoke-virtual {p1, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    .line 345
    .local v6, velocityY2:F
    mul-float v7, v4, v4

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    .line 347
    .local v2, velocityTotal2:F
    add-float v7, v1, v2

    const/high16 v8, 0x4000

    div-float v0, v7, v8

    .line 348
    .local v0, velocityTotal:F
    return v0
.end method

.method private isDoublePointStill()Z
    .locals 2

    .prologue
    .line 313
    iget v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentModel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v0}, Lcom/oppo/ImageScaleView/ImageScaleView;->isDoubleShake(Landroid/view/VelocityTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDoubleShake(Landroid/view/VelocityTracker;)Z
    .locals 2
    .parameter "velocityTracker"

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/oppo/ImageScaleView/ImageScaleView;->getDoubleVelocity(Landroid/view/VelocityTracker;)F

    move-result v0

    .line 331
    .local v0, velocityTotal:F
    const/high16 v1, 0x3fc0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 332
    const/4 v1, 0x1

    .line 334
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isKeepStill()Z
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/oppo/ImageScaleView/ImageScaleView;->isNonePointStill()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/ImageScaleView/ImageScaleView;->isSinglePointStill()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/ImageScaleView/ImageScaleView;->isDoublePointStill()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNonePointStill()Z
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentModel:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v0}, Lcom/oppo/ImageScaleView/ActionHandler;->isReboundFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSinglePointStill()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 309
    iget v1, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentModel:I

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/ImageScaleView/ImageScaleView;->isSingleShake()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSingleShake()Z
    .locals 5

    .prologue
    .line 319
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 320
    .local v1, velocityX:F
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 321
    .local v2, velocityY:F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 322
    .local v0, velocityTotal:F
    const v3, 0x3ecccccd

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 323
    const/4 v3, 0x1

    .line 325
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 164
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mImageScaleManager:Lcom/oppo/ImageScaleView/ImageScaleManager;

    if-eqz v0, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/oppo/ImageScaleView/ImageScaleView;->isKeepStill()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lcom/oppo/ImageScaleView/ImageScaleView;->HIGH_QULITY_FLAG:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mImageScaleManager:Lcom/oppo/ImageScaleView/ImageScaleManager;

    invoke-virtual {v0, p1}, Lcom/oppo/ImageScaleView/ImageScaleManager;->doDraw(Landroid/graphics/Canvas;)V

    .line 173
    :cond_1
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const v3, 0x44bb8000

    .line 367
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==========velocityY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mPictureOrientation:I

    if-ne v0, v4, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    iget-object v1, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v1}, Lcom/oppo/ImageScaleView/ActionHandler;->getCurrentBitampRect()Landroid/graphics/RectF;

    move-result-object v5

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/ImageScaleView/ActionHandler;->handleFlingAction(Landroid/view/MotionEvent;FFILandroid/graphics/RectF;)V

    .line 373
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 370
    :cond_1
    iget v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mPictureOrientation:I

    if-ne v0, v6, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    iget-object v1, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v1}, Lcom/oppo/ImageScaleView/ActionHandler;->getCurrentBitampRect()Landroid/graphics/RectF;

    move-result-object v5

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/ImageScaleView/ActionHandler;->handleFlingAction(Landroid/view/MotionEvent;FFILandroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 282
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mVisibilityStateChangedListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnVisibilityStateChangedListener;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mVisibilityStateChangedListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnVisibilityStateChangedListener;

    invoke-interface {v0}, Lcom/oppo/ImageScaleView/ImageScaleView$OnVisibilityStateChangedListener;->onReviewHide()V

    .line 287
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 135
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 136
    sub-int v0, p4, p2

    iput v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mViewWidth:I

    .line 137
    sub-int v0, p5, p3

    iput v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mViewHeight:I

    .line 138
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view : width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mViewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/oppo/ImageScaleView/ActionHandler;

    iget-object v2, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mRedrawCallback:Ljava/lang/Runnable;

    iget v4, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mViewWidth:I

    iget v5, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mViewHeight:I

    iget-boolean v6, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mIsFromBurst:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/oppo/ImageScaleView/ActionHandler;-><init>(Lcom/oppo/ImageScaleView/ImageScaleView;Landroid/os/Handler;Ljava/lang/Runnable;IIZ)V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mImageScaleManager:Lcom/oppo/ImageScaleView/ImageScaleManager;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Lcom/oppo/ImageScaleView/ImageScaleManager;

    iget-object v1, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mRedrawCallback:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    iget-boolean v5, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mIsFromBurst:Z

    invoke-direct/range {v0 .. v5}, Lcom/oppo/ImageScaleView/ImageScaleManager;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Runnable;Landroid/os/Handler;Lcom/oppo/ImageScaleView/ActionHandler;Z)V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mImageScaleManager:Lcom/oppo/ImageScaleView/ImageScaleManager;

    .line 159
    :cond_1
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 378
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->scrollOrReScaleListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnScrollOrReScaleListener;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->scrollOrReScaleListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnScrollOrReScaleListener;

    invoke-interface {v0}, Lcom/oppo/ImageScaleView/ImageScaleView$OnScrollOrReScaleListener;->onScrollOrReScale()Z

    .line 387
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 392
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mSingleTapUpListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnSingleTapUpListener;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mSingleTapUpListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnSingleTapUpListener;

    invoke-interface {v0}, Lcom/oppo/ImageScaleView/ImageScaleView$OnSingleTapUpListener;->onSingleTapUp()Z

    move-result v0

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 177
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentAction:I

    .line 180
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 181
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 183
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mGestureListener:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v6

    .line 186
    :cond_1
    iget v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentAction:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v3}, Lcom/oppo/ImageScaleView/ActionHandler;->isReboundFinish()Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v3}, Lcom/oppo/ImageScaleView/ActionHandler;->requestReboundFinish()V

    .line 193
    :cond_2
    iput v6, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentModel:I

    .line 194
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v3, p1}, Lcom/oppo/ImageScaleView/ActionHandler;->handleDownAction(Landroid/view/MotionEvent;)V

    .line 195
    iput-boolean v7, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mPointUp:Z

    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v3}, Lcom/oppo/ImageScaleView/ActionHandler;->isReboundFinish()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    iget-boolean v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mPointUp:Z

    if-eqz v3, :cond_3

    .line 203
    iput-boolean v7, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mPointUp:Z

    .line 204
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v3, p1}, Lcom/oppo/ImageScaleView/ActionHandler;->handleDownAction(Landroid/view/MotionEvent;)V

    .line 207
    :cond_3
    iget v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentModel:I

    if-ne v3, v6, :cond_5

    .line 208
    invoke-direct {p0}, Lcom/oppo/ImageScaleView/ImageScaleView;->isSingleShake()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 209
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mRedrawCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 214
    :cond_4
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v3}, Lcom/oppo/ImageScaleView/ActionHandler;->getCurrentBitampRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 215
    .local v0, imageRect:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------single model move!    imageRect rect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v3, p1, v0}, Lcom/oppo/ImageScaleView/ActionHandler;->handleMoveAction(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 217
    .end local v0           #imageRect:Landroid/graphics/RectF;
    :cond_5
    iget v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentModel:I

    if-ne v3, v5, :cond_0

    .line 218
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->TAG:Ljava/lang/String;

    const-string v4, "=========double model move!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v3}, Lcom/oppo/ImageScaleView/ImageScaleView;->getDoubleVelocity(Landroid/view/VelocityTracker;)F

    move-result v2

    .line 221
    .local v2, velocity:F
    const v3, 0x3e19999a

    cmpl-float v3, v2, v3

    if-lez v3, :cond_7

    .line 222
    const/4 v1, 0x1

    .line 229
    .local v1, needReScale:Z
    :goto_1
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->scrollOrReScaleListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnScrollOrReScaleListener;

    if-eqz v3, :cond_6

    .line 230
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->scrollOrReScaleListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnScrollOrReScaleListener;

    invoke-interface {v3}, Lcom/oppo/ImageScaleView/ImageScaleView$OnScrollOrReScaleListener;->onScrollOrReScale()Z

    .line 233
    :cond_6
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v3, p1, v1}, Lcom/oppo/ImageScaleView/ActionHandler;->handleDoubleMoveAction(Landroid/view/MotionEvent;Z)V

    goto/16 :goto_0

    .line 225
    .end local v1           #needReScale:Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #needReScale:Z
    goto :goto_1

    .line 238
    .end local v1           #needReScale:Z
    .end local v2           #velocity:F
    :pswitch_3
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->TAG:Ljava/lang/String;

    const-string v4, "^^^ two point up"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iput-boolean v6, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mPointUp:Z

    .line 241
    iget v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentModel:I

    if-ne v3, v5, :cond_0

    .line 244
    :pswitch_4
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->TAG:Ljava/lang/String;

    const-string v4, "------------------------------------- action up"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentModel:I

    if-ne v3, v6, :cond_8

    .line 246
    iput v7, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentModel:I

    .line 247
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mRedrawCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 255
    :goto_2
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v3}, Lcom/oppo/ImageScaleView/ActionHandler;->resetScaleHanlder()V

    .line 257
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v3}, Lcom/oppo/ImageScaleView/ActionHandler;->isReboundFinish()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v3, p1}, Lcom/oppo/ImageScaleView/ActionHandler;->handleReboundAction(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 248
    :cond_8
    iget v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentModel:I

    if-ne v3, v5, :cond_0

    .line 249
    iput v6, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentModel:I

    .line 250
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mRedrawCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 263
    :pswitch_5
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->TAG:Ljava/lang/String;

    const-string v4, "^^^ two point down"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentModel:I

    if-ne v3, v6, :cond_0

    .line 265
    iput v5, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mCurrentModel:I

    .line 266
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v3}, Lcom/oppo/ImageScaleView/ActionHandler;->isReboundFinish()Z

    move-result v3

    if-nez v3, :cond_9

    .line 267
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v3}, Lcom/oppo/ImageScaleView/ActionHandler;->requestReboundFinish()V

    .line 269
    :cond_9
    iget-object v3, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mActionHandler:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-virtual {v3, p1}, Lcom/oppo/ImageScaleView/ActionHandler;->setScaleCenterPoint(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public setImage(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "bm"
    .parameter "orientation"

    .prologue
    .line 122
    iput p2, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mPictureOrientation:I

    .line 123
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---setImage---mImageScaleManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mImageScaleManager:Lcom/oppo/ImageScaleView/ImageScaleManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput-object p1, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 125
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mImageScaleManager:Lcom/oppo/ImageScaleView/ImageScaleManager;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mImageScaleManager:Lcom/oppo/ImageScaleView/ImageScaleManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oppo/ImageScaleView/ImageScaleManager;->loadImage(Landroid/graphics/Bitmap;Z)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mVisibilityStateChangedListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnVisibilityStateChangedListener;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mVisibilityStateChangedListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnVisibilityStateChangedListener;

    invoke-interface {v0}, Lcom/oppo/ImageScaleView/ImageScaleView$OnVisibilityStateChangedListener;->onReviewShow()V

    .line 131
    :cond_1
    return-void
.end method

.method public setOnScrollOrReScaleListener(Lcom/oppo/ImageScaleView/ImageScaleView$OnScrollOrReScaleListener;)V
    .locals 0
    .parameter "scrollOrReScaleListener"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->scrollOrReScaleListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnScrollOrReScaleListener;

    .line 415
    return-void
.end method

.method public setmIsFromBurst(Z)V
    .locals 0
    .parameter "isFromBurst"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mIsFromBurst:Z

    .line 115
    return-void
.end method

.method public setmSingleTapUpListener(Lcom/oppo/ImageScaleView/ImageScaleView$OnSingleTapUpListener;)V
    .locals 0
    .parameter "singleTapUpListener"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/oppo/ImageScaleView/ImageScaleView;->mSingleTapUpListener:Lcom/oppo/ImageScaleView/ImageScaleView$OnSingleTapUpListener;

    .line 408
    return-void
.end method
