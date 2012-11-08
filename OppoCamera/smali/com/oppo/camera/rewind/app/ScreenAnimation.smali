.class public Lcom/oppo/camera/rewind/app/ScreenAnimation;
.super Ljava/lang/Object;
.source "ScreenAnimation.java"


# instance fields
.field mAnim:Lcom/scalado/caps/speedview/Animation;

.field private mAr:F

.field private mBitmapSrcRect:Landroid/graphics/Rect;

.field private mCount:I

.field private mCurRect:Lcom/scalado/base/Rect;

.field private mDstRect:Lcom/scalado/base/Rect;

.field private mFirstTimeDone:Z

.field private mInterpol:Lcom/oppo/camera/rewind/ui/Interpolation;

.field private mIterator:Lcom/scalado/base/Iterator;

.field private mMinTime:J

.field private mMode:I

.field private mNumPrevs:I

.field private mPrevRects:[Lcom/scalado/base/Rect;

.field private mPrevTs:[F

.field private mPrevTs2:[J

.field private mRefDistZoom:F

.field private mRuntime:I

.field private mScreen:Lcom/scalado/caps/screen/Screen;

.field private mScreenImg:Lcom/scalado/base/Image;

.field private mSrcRect:Lcom/scalado/base/Rect;

.field private mTmpImg:Lcom/scalado/base/Image;

.field private mTmpRect:Lcom/scalado/base/Rect;

.field private mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

.field private mUserCode:I


# direct methods
.method public constructor <init>(Lcom/scalado/caps/screen/Screen;Lcom/oppo/camera/rewind/app/CoordTransform;I)V
    .locals 3
    .parameter "screen"
    .parameter "transform"
    .parameter "userCode"

    .prologue
    const/16 v2, 0x14

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v1, Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-direct {v1}, Lcom/oppo/camera/rewind/ui/Interpolation;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mInterpol:Lcom/oppo/camera/rewind/ui/Interpolation;

    .line 28
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    .line 29
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    .line 30
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    .line 31
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTmpRect:Lcom/scalado/base/Rect;

    .line 32
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mBitmapSrcRect:Landroid/graphics/Rect;

    .line 46
    new-array v1, v2, [Lcom/scalado/base/Rect;

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mPrevRects:[Lcom/scalado/base/Rect;

    .line 47
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mPrevTs:[F

    .line 48
    new-array v1, v2, [J

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mPrevTs2:[J

    .line 52
    const/4 v1, 0x1

    iput v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mMode:I

    .line 58
    const v1, 0x3e3e49aa

    iput v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mRefDistZoom:F

    .line 59
    const-wide/16 v1, 0x32

    iput-wide v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mMinTime:J

    .line 62
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 63
    iput-object p2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    .line 64
    iput p3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mUserCode:I

    .line 65
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mPrevRects:[Lcom/scalado/base/Rect;

    if-eqz v1, :cond_0

    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mPrevRects:[Lcom/scalado/base/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mPrevRects:[Lcom/scalado/base/Rect;

    new-instance v2, Lcom/scalado/base/Rect;

    invoke-direct {v2}, Lcom/scalado/base/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private addRect(Lcom/scalado/base/Rect;FJ)V
    .locals 2
    .parameter "r"
    .parameter "t"
    .parameter "delta"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mPrevRects:[Lcom/scalado/base/Rect;

    if-nez v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mNumPrevs:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mPrevRects:[Lcom/scalado/base/Rect;

    iget v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mNumPrevs:I

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/oppo/camera/rewind/app/Geom;->setRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 269
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mPrevTs:[F

    iget v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mNumPrevs:I

    aput p2, v0, v1

    .line 270
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mPrevTs2:[J

    iget v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mNumPrevs:I

    aput-wide p3, v0, v1

    .line 271
    iget v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mNumPrevs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mNumPrevs:I

    goto :goto_0
.end method

.method private adjustAr(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 230
    iget v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mAr:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mAr:F

    iget v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mAr:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    div-float v0, v2, v3

    .line 231
    .local v0, h:F
    iget v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mAr:F

    mul-float v1, v2, v0

    .line 232
    .local v1, w:F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/oppo/camera/rewind/ui/Layout;->resizeRect(Landroid/graphics/Rect;II)V

    .line 233
    return-void
.end method

.method private calculateZoom(Lcom/scalado/base/Rect;)F
    .locals 1
    .parameter "dst"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v0, :cond_0

    .line 248
    const/high16 v0, 0x3f80

    .line 251
    :goto_0
    return v0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen;->setZoomRect(Lcom/scalado/base/Rect;)V

    .line 251
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v0}, Lcom/scalado/caps/screen/Screen;->getZoom()F

    move-result v0

    goto :goto_0
.end method

.method private iterate(I)V
    .locals 3
    .parameter "runtime"

    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mIterator:Lcom/scalado/base/Iterator;

    invoke-virtual {v1}, Lcom/scalado/base/Iterator;->done()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mIterator:Lcom/scalado/base/Iterator;

    invoke-virtual {v1, p1}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Zoomer"

    const-string v2, "Exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private midPoint(Lcom/scalado/base/Rect;)Lcom/scalado/base/Point;
    .locals 6
    .parameter "dst"

    .prologue
    const/high16 v5, 0x3f00

    .line 255
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    .line 256
    .local v0, mid:Lcom/scalado/base/Point;
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 257
    .local v1, x:F
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 258
    .local v2, y:F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/scalado/base/Point;->setX(I)V

    .line 259
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/scalado/base/Point;->setY(I)V

    .line 260
    return-object v0
.end method

.method private start()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 275
    iput v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mNumPrevs:I

    .line 276
    iput v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mCount:I

    .line 277
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mFirstTimeDone:Z

    .line 278
    return-void
.end method


# virtual methods
.method public done()Z
    .locals 2

    .prologue
    .line 206
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mInterpol:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/Interpolation;->done()Z

    move-result v0

    .line 207
    .local v0, done:Z
    return v0
.end method

.method public end()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    sget-object v1, Lcom/scalado/caps/screen/Screen$RenderMode;->QUALITY:Lcom/scalado/caps/screen/Screen$RenderMode;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/screen/Screen;->setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V

    .line 217
    const-string v0, "Zoomer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frames = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 195
    iget v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 196
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mFirstTimeDone:Z

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mBitmapSrcRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 198
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mBitmapSrcRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->adjustAr(Landroid/graphics/Rect;)V

    .line 199
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mBitmapSrcRect:Landroid/graphics/Rect;

    .line 202
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserCode()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mUserCode:I

    return v0
.end method

.method public render(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "bitmap"

    .prologue
    const/4 v6, 0x1

    .line 135
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v3, :cond_0

    .line 192
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mInterpol:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/Interpolation;->param()F

    move-result v2

    .line 139
    .local v2, t:F
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    invoke-static {v3, v4, v2, v5}, Lcom/oppo/camera/rewind/ui/AnimUtils;->interpolateRects(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;FLcom/scalado/base/Rect;)V

    .line 140
    iget v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 191
    :goto_1
    iget v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mCount:I

    goto :goto_0

    .line 142
    :pswitch_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mInterpol:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/ui/Interpolation;->delta()J

    move-result-wide v4

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->addRect(Lcom/scalado/base/Rect;FJ)V

    .line 143
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3, v4}, Lcom/scalado/caps/screen/Screen;->setZoomRect(Lcom/scalado/base/Rect;)V

    .line 144
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v3}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 145
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mInterpol:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/Interpolation;->done()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    iget-boolean v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mFirstTimeDone:Z

    if-nez v3, :cond_1

    .line 147
    iput-boolean v6, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mFirstTimeDone:Z

    .line 151
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v3}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v3, "Zoomer"

    const-string v4, "exception..."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 157
    .end local v1           #re:Ljava/lang/RuntimeException;
    :pswitch_1
    iget v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mCount:I

    if-nez v3, :cond_3

    .line 158
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    invoke-static {v3, v4}, Lcom/oppo/camera/rewind/app/Geom;->setRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 159
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mInterpol:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/ui/Interpolation;->delta()J

    move-result-wide v4

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->addRect(Lcom/scalado/base/Rect;FJ)V

    .line 160
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTmpRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3, v4, v5}, Lcom/oppo/camera/rewind/app/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 161
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTmpRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3, v4}, Lcom/scalado/caps/screen/Screen;->setZoomRect(Lcom/scalado/base/Rect;)V

    .line 162
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v3}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 163
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTmpImg:Lcom/scalado/base/Image;

    invoke-virtual {v3}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v4}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 164
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTmpImg:Lcom/scalado/base/Image;

    iput-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreenImg:Lcom/scalado/base/Image;

    .line 165
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTmpRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3, v4, v5}, Lcom/oppo/camera/rewind/app/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 166
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTmpRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3, v4}, Lcom/scalado/caps/screen/Screen;->setZoomRect(Lcom/scalado/base/Rect;)V

    .line 167
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v3}, Lcom/scalado/caps/screen/Screen;->preview()Lcom/scalado/base/Iterator;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mIterator:Lcom/scalado/base/Iterator;

    .line 181
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreenImg:Lcom/scalado/base/Image;

    invoke-virtual {v3}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto/16 :goto_1

    .line 169
    :cond_3
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mInterpol:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/Interpolation;->done()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 170
    iget-boolean v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mFirstTimeDone:Z

    if-nez v3, :cond_2

    .line 171
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    invoke-static {v3, v4}, Lcom/oppo/camera/rewind/app/Geom;->setRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 172
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mInterpol:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/ui/Interpolation;->delta()J

    move-result-wide v4

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->addRect(Lcom/scalado/base/Rect;FJ)V

    .line 173
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->iterate(I)V

    .line 174
    iput-boolean v6, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mFirstTimeDone:Z

    .line 175
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v3}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreenImg:Lcom/scalado/base/Image;

    goto :goto_2

    .line 178
    :cond_4
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mCurRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mInterpol:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/ui/Interpolation;->delta()J

    move-result-wide v4

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->addRect(Lcom/scalado/base/Rect;FJ)V

    .line 179
    iget v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mRuntime:I

    invoke-direct {p0, v3}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->iterate(I)V

    goto :goto_2

    .line 184
    :pswitch_2
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mAnim:Lcom/scalado/caps/speedview/Animation;

    invoke-virtual {v3, v2, v2}, Lcom/scalado/caps/speedview/Animation;->updateScreen(FF)V

    .line 185
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v3}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 186
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 187
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto/16 :goto_1

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(J)V
    .locals 1
    .parameter "t"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mInterpol:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/rewind/ui/Interpolation;->update(J)V

    .line 132
    return-void
.end method

.method public zoomIn(Landroid/graphics/Rect;J)V
    .locals 5
    .parameter "to"
    .parameter "time"

    .prologue
    .line 75
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v2, :cond_0

    .line 113
    :goto_0
    return-void

    .line 78
    :cond_0
    iget v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 111
    :goto_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mInterpol:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v2, p2, p3}, Lcom/oppo/camera/rewind/ui/Interpolation;->startTimed(J)V

    .line 112
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->start()V

    goto :goto_0

    .line 80
    :pswitch_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/rewind/app/CoordTransform;->canvasRectInCurrent(Lcom/scalado/base/Rect;)V

    .line 81
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-static {p1, v2}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 82
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/oppo/camera/rewind/app/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 83
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    sget-object v3, Lcom/scalado/caps/screen/Screen$RenderMode;->SPEED:Lcom/scalado/caps/screen/Screen$RenderMode;

    invoke-virtual {v2, v3}, Lcom/scalado/caps/screen/Screen;->setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V

    goto :goto_1

    .line 87
    :pswitch_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/rewind/app/CoordTransform;->canvasRect(Lcom/scalado/base/Rect;)V

    .line 88
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mAr:F

    .line 89
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-static {p1, v2}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 90
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    sget-object v3, Lcom/scalado/caps/screen/Screen$RenderMode;->SPEED:Lcom/scalado/caps/screen/Screen$RenderMode;

    invoke-virtual {v2, v3}, Lcom/scalado/caps/screen/Screen;->setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V

    .line 91
    new-instance v2, Lcom/scalado/base/Image;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v3}, Lcom/scalado/caps/screen/Screen;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v4}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Image;->getConfig()Lcom/scalado/base/Image$Config;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTmpImg:Lcom/scalado/base/Image;

    .line 94
    const/16 v2, 0xa

    iput v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mRuntime:I

    goto :goto_1

    .line 97
    :pswitch_2
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/rewind/app/CoordTransform;->canvasRectInCurrent(Lcom/scalado/base/Rect;)V

    .line 98
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-static {p1, v2}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 99
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/oppo/camera/rewind/app/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 100
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v2}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 101
    new-instance v2, Lcom/scalado/caps/speedview/Animation;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-direct {v2, v3}, Lcom/scalado/caps/speedview/Animation;-><init>(Lcom/scalado/caps/screen/Screen;)V

    iput-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mAnim:Lcom/scalado/caps/speedview/Animation;

    .line 102
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-direct {p0, v2}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->calculateZoom(Lcom/scalado/base/Rect;)F

    move-result v1

    .line 103
    .local v1, zoom:F
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-direct {p0, v2}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->midPoint(Lcom/scalado/base/Rect;)Lcom/scalado/base/Point;

    move-result-object v0

    .line 104
    .local v0, mid:Lcom/scalado/base/Point;
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Lcom/scalado/caps/screen/Screen;->setZoom(F)V

    .line 105
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mAnim:Lcom/scalado/caps/speedview/Animation;

    invoke-virtual {v2, v1, v0}, Lcom/scalado/caps/speedview/Animation;->beginZoom(FLcom/scalado/base/Point;)V

    goto/16 :goto_1

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public zoomOut(Landroid/graphics/Rect;J)V
    .locals 3
    .parameter "from"
    .parameter "time"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mMode:I

    .line 121
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-static {p1, v0}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 122
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/rewind/app/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 123
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mTransform:Lcom/oppo/camera/rewind/app/CoordTransform;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mDstRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/CoordTransform;->canvasRectInCurrent(Lcom/scalado/base/Rect;)V

    .line 124
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mScreen:Lcom/scalado/caps/screen/Screen;

    sget-object v1, Lcom/scalado/caps/screen/Screen$RenderMode;->SPEED:Lcom/scalado/caps/screen/Screen$RenderMode;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/screen/Screen;->setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V

    .line 126
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ScreenAnimation;->mInterpol:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v0, p2, p3}, Lcom/oppo/camera/rewind/ui/Interpolation;->startTimed(J)V

    .line 127
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->start()V

    goto :goto_0
.end method
