.class public Lcom/oppo/camera/rewind/ui/JobIndicator;
.super Lcom/oppo/camera/rewind/ui/Widget;
.source "JobIndicator.java"

# interfaces
.implements Lcom/oppo/camera/rewind/app/JobListener;


# instance fields
.field private mAngle:F

.field private mAngleV:F

.field private mBBox:Landroid/graphics/Rect;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCurJobbing:I

.field private mCurJobs:I

.field private mJobIds:[I

.field private mJobbing:[I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRect:Landroid/graphics/Rect;

.field private mSX:F

.field private mSY:F

.field mT0:J


# direct methods
.method public constructor <init>(Lcom/oppo/camera/rewind/ui/UiManager;Landroid/graphics/Bitmap;I)V
    .locals 4
    .parameter "uiMgr"
    .parameter "bitmap"
    .parameter "maxJobs"

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/ui/Widget;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;)V

    .line 16
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    .line 17
    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mAngle:F

    .line 18
    const v1, 0x3f0a3d71

    iput v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mAngleV:F

    .line 19
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mT0:J

    .line 20
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mMatrix:Landroid/graphics/Matrix;

    .line 23
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mBBox:Landroid/graphics/Rect;

    .line 31
    new-array v1, p3, [I

    iput-object v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mJobbing:[I

    .line 32
    new-array v1, p3, [I

    iput-object v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mJobIds:[I

    .line 33
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mJobIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mJobIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    iput v3, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mCurJobs:I

    .line 37
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/ui/Widget;->mInteractible:Z

    .line 38
    iput-object p2, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mBitmap:Landroid/graphics/Bitmap;

    .line 39
    return-void
.end method


# virtual methods
.method public boundingBox(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bbox"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 91
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 75
    iget v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mCurJobbing:I

    if-gtz v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mSX:F

    iget v3, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mSY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 80
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 81
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mAngle:F

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 82
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "JobIndicator"

    const-string v2, "exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mCurJobbing:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onJobEnded(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mCurJobbing:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mCurJobbing:I

    .line 56
    return-void
.end method

.method public onJobStarted(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 51
    iget v0, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mCurJobbing:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mCurJobbing:I

    .line 52
    return-void
.end method

.method public setPos(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 43
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mSX:F

    .line 44
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mSY:F

    .line 46
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mBBox:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 47
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mBBox:Landroid/graphics/Rect;

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 48
    return-void
.end method

.method public update(J)V
    .locals 6
    .parameter "t"

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    .line 64
    .local v0, delta:J
    iget-wide v2, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mT0:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 65
    iget-wide v2, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mT0:J

    sub-long v0, p1, v2

    .line 67
    :cond_0
    iget v2, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mAngle:F

    long-to-float v3, v0

    iget v4, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mAngleV:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mAngle:F

    .line 68
    iget v2, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mAngle:F

    const/high16 v3, -0x3c4c

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 69
    iget v2, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mAngle:F

    const/high16 v3, 0x43b4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mAngle:F

    .line 71
    :cond_1
    iput-wide p1, p0, Lcom/oppo/camera/rewind/ui/JobIndicator;->mT0:J

    .line 72
    return-void
.end method
