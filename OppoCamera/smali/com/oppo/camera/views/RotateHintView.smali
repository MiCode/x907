.class public Lcom/oppo/camera/views/RotateHintView;
.super Landroid/widget/TextView;
.source "RotateHintView.java"


# instance fields
.field private final HEIGHT_DIFF:I

.field private final WIDTH_DIFF:I

.field private mAngle:I

.field private mBackground:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mNinePatch:Landroid/graphics/NinePatch;

.field private mTextRect:Landroid/graphics/Rect;

.field mVisibleStart:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/16 v1, 0x14

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/views/RotateHintView;->mAngle:I

    .line 25
    iput v1, p0, Lcom/oppo/camera/views/RotateHintView;->WIDTH_DIFF:I

    .line 26
    iput v1, p0, Lcom/oppo/camera/views/RotateHintView;->HEIGHT_DIFF:I

    .line 35
    new-instance v0, Lcom/oppo/camera/views/RotateHintView$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/views/RotateHintView$1;-><init>(Lcom/oppo/camera/views/RotateHintView;)V

    iput-object v0, p0, Lcom/oppo/camera/views/RotateHintView;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0x14

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/views/RotateHintView;->mAngle:I

    .line 25
    iput v1, p0, Lcom/oppo/camera/views/RotateHintView;->WIDTH_DIFF:I

    .line 26
    iput v1, p0, Lcom/oppo/camera/views/RotateHintView;->HEIGHT_DIFF:I

    .line 35
    new-instance v0, Lcom/oppo/camera/views/RotateHintView$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/views/RotateHintView$1;-><init>(Lcom/oppo/camera/views/RotateHintView;)V

    iput-object v0, p0, Lcom/oppo/camera/views/RotateHintView;->mHandler:Landroid/os/Handler;

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/camera/views/RotateHintView;->mVisibleStart:J

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/views/RotateHintView;->mBackground:Landroid/graphics/Bitmap;

    .line 53
    new-instance v0, Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/oppo/camera/views/RotateHintView;->mBackground:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oppo/camera/views/RotateHintView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/views/RotateHintView;->mNinePatch:Landroid/graphics/NinePatch;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/views/RotateHintView;->mTextRect:Landroid/graphics/Rect;

    .line 55
    iget-object v0, p0, Lcom/oppo/camera/views/RotateHintView;->mTextRect:Landroid/graphics/Rect;

    const/16 v1, -0x14

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 56
    iget-object v0, p0, Lcom/oppo/camera/views/RotateHintView;->mTextRect:Landroid/graphics/Rect;

    const/high16 v1, -0x3e60

    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateHintView;->getTextSize()F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x4040

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 57
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateHintView;->getRight()I

    move-result v3

    .line 79
    .local v3, right:I
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateHintView;->getLeft()I

    move-result v1

    .line 80
    .local v1, left:I
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateHintView;->getBottom()I

    move-result v0

    .line 81
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateHintView;->getTop()I

    move-result v6

    .line 83
    .local v6, top:I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 85
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateHintView;->getTextSize()F

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateHintView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v5, v7

    .line 88
    .local v5, textLength:I
    iget-object v7, p0, Lcom/oppo/camera/views/RotateHintView;->mTextRect:Landroid/graphics/Rect;

    add-int/lit8 v8, v5, 0x14

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 89
    iget-object v7, p0, Lcom/oppo/camera/views/RotateHintView;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateHintView;->getTextSize()F

    move-result v8

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x14

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v4

    .line 91
    .local v4, saveCount:I
    add-int v7, v1, v3

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-int v8, v6, v0

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    iget v7, p0, Lcom/oppo/camera/views/RotateHintView;->mAngle:I

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/oppo/camera/views/RotateHintView;->mAngle:I

    const/16 v8, 0x168

    if-ne v7, v8, :cond_3

    .line 94
    :cond_0
    iget v7, p0, Lcom/oppo/camera/views/RotateHintView;->mAngle:I

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 95
    neg-int v7, v5

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-int v8, v0, v6

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    :cond_1
    :goto_0
    new-instance v7, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-direct {v7, v8, v9}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 117
    iget-object v7, p0, Lcom/oppo/camera/views/RotateHintView;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/oppo/camera/views/RotateHintView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz p1, :cond_2

    .line 118
    iget-object v7, p0, Lcom/oppo/camera/views/RotateHintView;->mNinePatch:Landroid/graphics/NinePatch;

    iget-object v8, p0, Lcom/oppo/camera/views/RotateHintView;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, v8}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 120
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 131
    return-void

    .line 97
    :cond_3
    iget v7, p0, Lcom/oppo/camera/views/RotateHintView;->mAngle:I

    const/16 v8, 0x5a

    if-ne v7, v8, :cond_4

    .line 99
    iget v7, p0, Lcom/oppo/camera/views/RotateHintView;->mAngle:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 100
    neg-int v7, v5

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-int v8, v0, v6

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 102
    :cond_4
    iget v7, p0, Lcom/oppo/camera/views/RotateHintView;->mAngle:I

    const/16 v8, 0xb4

    if-ne v7, v8, :cond_5

    .line 104
    iget v7, p0, Lcom/oppo/camera/views/RotateHintView;->mAngle:I

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 105
    neg-int v7, v5

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-int v8, v0, v6

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 107
    :cond_5
    iget v7, p0, Lcom/oppo/camera/views/RotateHintView;->mAngle:I

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_1

    .line 109
    iget v7, p0, Lcom/oppo/camera/views/RotateHintView;->mAngle:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 110
    neg-int v7, v5

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-int v8, v0, v6

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method public setDegree(I)V
    .locals 4
    .parameter "angle"

    .prologue
    const/4 v3, 0x1

    .line 61
    iput p1, p0, Lcom/oppo/camera/views/RotateHintView;->mAngle:I

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/views/RotateHintView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/oppo/camera/views/RotateHintView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/oppo/camera/views/RotateHintView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/views/RotateHintView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 68
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateHintView;->postInvalidate()V

    .line 69
    return-void
.end method
