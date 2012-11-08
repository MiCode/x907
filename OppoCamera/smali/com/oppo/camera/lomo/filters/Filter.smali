.class public abstract Lcom/oppo/camera/lomo/filters/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private mBitmap:Landroid/graphics/Bitmap;

.field protected mId:I

.field protected mIsFrontCamera:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/lomo/filters/Filter;->mTransformation:Landroid/view/animation/Transformation;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/lomo/filters/Filter;->mPaint:Landroid/graphics/Paint;

    .line 192
    iput p1, p0, Lcom/oppo/camera/lomo/filters/Filter;->mId:I

    .line 193
    return-void
.end method


# virtual methods
.method public applyFilterToCaptureSession(Lcom/scalado/caps/Session;)V
    .locals 0
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/oppo/camera/lomo/filters/Filter;->applyFilterToSession(Lcom/scalado/caps/Session;)V

    .line 142
    return-void
.end method

.method public abstract applyFilterToSession(Lcom/scalado/caps/Session;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/oppo/camera/lomo/filters/Filter;->mId:I

    return v0
.end method

.method public getOutStream(Ljava/lang/String;)Lcom/scalado/stream/Stream;
    .locals 2
    .parameter "fileDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lcom/scalado/stream/FileStream;

    sget-object v1, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v0, p1, v1}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V

    return-object v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public postRender(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/oppo/camera/lomo/filters/Filter;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/lomo/filters/Filter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/oppo/camera/lomo/filters/Filter;->mAnimation:Landroid/view/animation/Animation;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/oppo/camera/lomo/filters/Filter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 118
    iget-object v1, p0, Lcom/oppo/camera/lomo/filters/Filter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    .line 120
    .local v0, alpha:F
    iget-object v1, p0, Lcom/oppo/camera/lomo/filters/Filter;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    iget-object v1, p0, Lcom/oppo/camera/lomo/filters/Filter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/lomo/filters/Filter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/lomo/filters/Filter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oppo/camera/lomo/filters/Filter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 123
    .end local v0           #alpha:F
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public setIsFrontCamera(Z)V
    .locals 0
    .parameter "isFrontCamera"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/filters/Filter;->mIsFrontCamera:Z

    .line 63
    return-void
.end method

.method public setUsedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 151
    return-void
.end method
