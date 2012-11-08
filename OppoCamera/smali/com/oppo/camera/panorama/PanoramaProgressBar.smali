.class public Lcom/oppo/camera/panorama/PanoramaProgressBar;
.super Landroid/view/View;
.source "PanoramaProgressBar.java"


# instance fields
.field private mCurrentPiece:I

.field private mCurrentProgress:I

.field private mDirection:Lcom/scalado/caps/autorama/Direction;

.field private mDownBitmap:Landroid/graphics/Bitmap;

.field private mDownTooFastBitmap:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mLeftBitmap:Landroid/graphics/Bitmap;

.field private mLeftTooFastBitmap:Landroid/graphics/Bitmap;

.field private mProgressBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mProgressBackgroundNinePatch:Landroid/graphics/NinePatch;

.field private mProgressBitmap:Landroid/graphics/Bitmap;

.field private mProgressNinePatch:Landroid/graphics/NinePatch;

.field private mRightBitmap:Landroid/graphics/Bitmap;

.field private mRightTooFastBitmap:Landroid/graphics/Bitmap;

.field private mTooFast:Z

.field private mTooFastHint:Lcom/oppo/camera/utils/OnScreenHint;

.field private mTooFastRunnable:Ljava/lang/Runnable;

.field private mUpBitmap:Landroid/graphics/Bitmap;

.field private mUpTooFastBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 58
    iput v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mCurrentPiece:I

    .line 59
    iput v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mCurrentProgress:I

    .line 60
    iput v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mLastProgress:I

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/oppo/camera/panorama/PanoramaProgressBar$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar$1;-><init>(Lcom/oppo/camera/panorama/PanoramaProgressBar;)V

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFastRunnable:Ljava/lang/Runnable;

    .line 85
    invoke-direct {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->initResource()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mCurrentPiece:I

    .line 59
    iput v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mCurrentProgress:I

    .line 60
    iput v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mLastProgress:I

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/oppo/camera/panorama/PanoramaProgressBar$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar$1;-><init>(Lcom/oppo/camera/panorama/PanoramaProgressBar;)V

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFastRunnable:Ljava/lang/Runnable;

    .line 80
    invoke-direct {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->initResource()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mCurrentPiece:I

    .line 59
    iput v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mCurrentProgress:I

    .line 60
    iput v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mLastProgress:I

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/oppo/camera/panorama/PanoramaProgressBar$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar$1;-><init>(Lcom/oppo/camera/panorama/PanoramaProgressBar;)V

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFastRunnable:Ljava/lang/Runnable;

    .line 75
    invoke-direct {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->initResource()V

    .line 76
    return-void
.end method

.method static synthetic access$002(Lcom/oppo/camera/panorama/PanoramaProgressBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFast:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oppo/camera/panorama/PanoramaProgressBar;)Lcom/oppo/camera/utils/OnScreenHint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFastHint:Lcom/oppo/camera/utils/OnScreenHint;

    return-object v0
.end method

.method private drawArrow(Landroid/graphics/RectF;Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "rect"
    .parameter "canvas"

    .prologue
    const/high16 v5, 0x41a0

    .line 178
    iget-object v3, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v4, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne v3, v4, :cond_1

    .line 179
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 180
    .local v1, left:F
    const/high16 v2, 0x4080

    .line 181
    .local v2, top:F
    iget-boolean v3, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFast:Z

    if-eqz v3, :cond_0

    .line 182
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mRightTooFastBitmap:Landroid/graphics/Bitmap;

    .line 212
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 213
    return-void

    .line 184
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mRightBitmap:Landroid/graphics/Bitmap;

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 186
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #left:F
    .end local v2           #top:F
    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v4, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-ne v3, v4, :cond_3

    .line 187
    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v3, v5

    .line 188
    .restart local v1       #left:F
    const/high16 v2, 0x4080

    .line 189
    .restart local v2       #top:F
    iget-boolean v3, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFast:Z

    if-eqz v3, :cond_2

    .line 190
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mLeftTooFastBitmap:Landroid/graphics/Bitmap;

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 192
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mLeftBitmap:Landroid/graphics/Bitmap;

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 194
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #left:F
    .end local v2           #top:F
    :cond_3
    iget-object v3, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v4, Lcom/scalado/caps/autorama/Direction;->DOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne v3, v4, :cond_5

    .line 195
    const/high16 v1, 0x4080

    .line 196
    .restart local v1       #left:F
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 197
    .restart local v2       #top:F
    iget-boolean v3, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFast:Z

    if-eqz v3, :cond_4

    .line 198
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mDownTooFastBitmap:Landroid/graphics/Bitmap;

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 200
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mDownBitmap:Landroid/graphics/Bitmap;

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 203
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #left:F
    .end local v2           #top:F
    :cond_5
    const/high16 v1, 0x4080

    .line 204
    .restart local v1       #left:F
    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v3, v5

    .line 205
    .restart local v2       #top:F
    iget-boolean v3, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFast:Z

    if-eqz v3, :cond_6

    .line 206
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mUpTooFastBitmap:Landroid/graphics/Bitmap;

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 208
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mUpBitmap:Landroid/graphics/Bitmap;

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private getProgressLocation()Landroid/graphics/RectF;
    .locals 11

    .prologue
    const/high16 v10, 0x43b0

    const/high16 v9, 0x4268

    .line 221
    iget-object v7, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v8, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v8, Lcom/scalado/caps/autorama/Direction;->UP:Lcom/scalado/caps/autorama/Direction;

    if-ne v7, v8, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 223
    .local v2, isNegativeDirection:I
    :goto_0
    iget-object v7, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mDirection:Lcom/scalado/caps/autorama/Direction;

    invoke-virtual {v7}, Lcom/scalado/caps/autorama/Direction;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_2

    const/high16 v4, 0x43dc

    .line 224
    .local v4, onePieceCounts:F
    :goto_1
    iget v7, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mCurrentPiece:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    int-to-float v8, v2

    mul-float/2addr v8, v9

    div-float/2addr v8, v4

    iget v9, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mCurrentProgress:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float v1, v7, v8

    .line 228
    .local v1, currentLength:F
    iget-object v7, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v8, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne v7, v8, :cond_3

    .line 229
    const/4 v3, 0x0

    .line 230
    .local v3, left:F
    move v5, v1

    .line 231
    .local v5, right:F
    const/4 v6, 0x0

    .line 232
    .local v6, top:F
    const/high16 v0, 0x41e0

    .line 249
    .local v0, bottom:F
    :goto_2
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v3, v6, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v7

    .line 221
    .end local v0           #bottom:F
    .end local v1           #currentLength:F
    .end local v2           #isNegativeDirection:I
    .end local v3           #left:F
    .end local v4           #onePieceCounts:F
    .end local v5           #right:F
    .end local v6           #top:F
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 223
    .restart local v2       #isNegativeDirection:I
    :cond_2
    const/high16 v4, 0x4382

    goto :goto_1

    .line 233
    .restart local v1       #currentLength:F
    .restart local v4       #onePieceCounts:F
    :cond_3
    iget-object v7, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v8, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-ne v7, v8, :cond_4

    .line 234
    sub-float v3, v10, v1

    .line 235
    .restart local v3       #left:F
    const/high16 v5, 0x43b0

    .line 236
    .restart local v5       #right:F
    const/4 v6, 0x0

    .line 237
    .restart local v6       #top:F
    const/high16 v0, 0x41e0

    .restart local v0       #bottom:F
    goto :goto_2

    .line 238
    .end local v0           #bottom:F
    .end local v3           #left:F
    .end local v5           #right:F
    .end local v6           #top:F
    :cond_4
    iget-object v7, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v8, Lcom/scalado/caps/autorama/Direction;->DOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne v7, v8, :cond_5

    .line 239
    const/4 v3, 0x0

    .line 240
    .restart local v3       #left:F
    const/high16 v5, 0x41e0

    .line 241
    .restart local v5       #right:F
    const/4 v6, 0x0

    .line 242
    .restart local v6       #top:F
    move v0, v1

    .restart local v0       #bottom:F
    goto :goto_2

    .line 244
    .end local v0           #bottom:F
    .end local v3           #left:F
    .end local v5           #right:F
    .end local v6           #top:F
    :cond_5
    const/4 v3, 0x0

    .line 245
    .restart local v3       #left:F
    const/high16 v5, 0x41e0

    .line 246
    .restart local v5       #right:F
    sub-float v6, v10, v1

    .line 247
    .restart local v6       #top:F
    const/high16 v0, 0x43b0

    .restart local v0       #bottom:F
    goto :goto_2
.end method

.method private initResource()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mUpBitmap:Landroid/graphics/Bitmap;

    .line 94
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mUpTooFastBitmap:Landroid/graphics/Bitmap;

    .line 96
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mDownBitmap:Landroid/graphics/Bitmap;

    .line 98
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mDownTooFastBitmap:Landroid/graphics/Bitmap;

    .line 100
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mLeftBitmap:Landroid/graphics/Bitmap;

    .line 102
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mLeftTooFastBitmap:Landroid/graphics/Bitmap;

    .line 104
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mRightBitmap:Landroid/graphics/Bitmap;

    .line 106
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mRightTooFastBitmap:Landroid/graphics/Bitmap;

    .line 109
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    .line 111
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mProgressBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 113
    new-instance v0, Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mProgressBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mProgressBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mProgressBackgroundNinePatch:Landroid/graphics/NinePatch;

    .line 115
    new-instance v0, Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mProgressNinePatch:Landroid/graphics/NinePatch;

    .line 117
    return-void
.end method

.method private setTooFast()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFastHint:Lcom/oppo/camera/utils/OnScreenHint;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/OnScreenHint;->cancel()V

    .line 132
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFastHint:Lcom/oppo/camera/utils/OnScreenHint;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/OnScreenHint;->show()V

    .line 133
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFast:Z

    .line 135
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFastRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 158
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 160
    .local v0, progressBgRect:Landroid/graphics/RectF;
    invoke-direct {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->getProgressLocation()Landroid/graphics/RectF;

    move-result-object v1

    .line 161
    .local v1, progressRect:Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mProgressBackgroundNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 162
    iget-object v2, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mProgressNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 163
    invoke-direct {p0, v1, p1}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->drawArrow(Landroid/graphics/RectF;Landroid/graphics/Canvas;)V

    .line 164
    return-void
.end method

.method public setCurrentPiece(I)V
    .locals 0
    .parameter "currentPiece"

    .prologue
    .line 142
    iput p1, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mCurrentPiece:I

    .line 143
    return-void
.end method

.method public setCurrentProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 146
    iget v1, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mCurrentProgress:I

    iput v1, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mLastProgress:I

    .line 147
    iput p1, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mCurrentProgress:I

    .line 149
    iget v1, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mCurrentProgress:I

    iget v2, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mLastProgress:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 150
    .local v0, velocity:I
    iget v1, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mLastProgress:I

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->setTooFast()V

    .line 153
    :cond_0
    return-void
.end method

.method public setDirection(Lcom/scalado/caps/autorama/Direction;)V
    .locals 3
    .parameter "dir"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mDirection:Lcom/scalado/caps/autorama/Direction;

    .line 121
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, tooFastHint:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oppo/camera/utils/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/oppo/camera/utils/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/panorama/PanoramaProgressBar;->mTooFastHint:Lcom/oppo/camera/utils/OnScreenHint;

    .line 123
    return-void
.end method
