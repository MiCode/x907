.class public Lcom/oppo/camera/views/RotateRecordingTimeView;
.super Landroid/widget/TextView;
.source "RotateRecordingTimeView.java"


# instance fields
.field private final ICON_OFFSET_X:I

.field private final ICON_OFFSET_X1:I

.field private final ICON_OFFSET_Y:I

.field private final ICON_OFFSET_Y1:I

.field private final ICON_WIDTH:I

.field private final TEXT_HEIGHT:I

.field private mAngle:I

.field private mIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x1e

    .line 37
    invoke-direct {p0, p1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    .line 27
    iput-object v2, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mIcon:Landroid/graphics/Bitmap;

    .line 28
    iput v1, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->TEXT_HEIGHT:I

    .line 29
    iput v1, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->ICON_WIDTH:I

    .line 30
    const/16 v0, 0x28

    iput v0, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->ICON_OFFSET_X:I

    .line 31
    const/16 v0, 0xf

    iput v0, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->ICON_OFFSET_Y:I

    .line 32
    const/4 v0, -0x5

    iput v0, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->ICON_OFFSET_X1:I

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->ICON_OFFSET_Y1:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0x1e

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mIcon:Landroid/graphics/Bitmap;

    .line 28
    iput v1, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->TEXT_HEIGHT:I

    .line 29
    iput v1, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->ICON_WIDTH:I

    .line 30
    const/16 v0, 0x28

    iput v0, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->ICON_OFFSET_X:I

    .line 31
    const/16 v0, 0xf

    iput v0, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->ICON_OFFSET_Y:I

    .line 32
    const/4 v0, -0x5

    iput v0, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->ICON_OFFSET_X1:I

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->ICON_OFFSET_Y1:I

    .line 41
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateRecordingTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mIcon:Landroid/graphics/Bitmap;

    .line 43
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/16 v9, 0x10e

    const/16 v8, 0xb4

    const/16 v7, 0x5a

    .line 54
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateRecordingTimeView;->getRight()I

    move-result v2

    .line 55
    .local v2, right:I
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateRecordingTimeView;->getLeft()I

    move-result v1

    .line 56
    .local v1, left:I
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateRecordingTimeView;->getBottom()I

    move-result v0

    .line 57
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateRecordingTimeView;->getTop()I

    move-result v4

    .line 59
    .local v4, top:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v3

    .line 60
    .local v3, saveCount:I
    add-int v5, v1, v2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-int v6, v4, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 61
    iget v5, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    if-nez v5, :cond_3

    .line 63
    iget v5, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 78
    :cond_0
    :goto_0
    iget v5, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    const/16 v6, 0x168

    if-ne v5, v6, :cond_6

    .line 80
    :cond_1
    sub-int v5, v2, v1

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1e

    add-int/lit8 v5, v5, 0x28

    add-int/lit8 v5, v5, -0x1e

    int-to-float v5, v5

    sub-int v6, v0, v4

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0xf

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mIcon:Landroid/graphics/Bitmap;

    const/high16 v6, -0x3e38

    const/high16 v7, 0x4130

    const/4 v8, 0x0

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 98
    return-void

    .line 65
    :cond_3
    iget v5, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    if-ne v5, v7, :cond_4

    .line 67
    iget v5, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    .line 69
    :cond_4
    iget v5, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    if-ne v5, v8, :cond_5

    .line 71
    iget v5, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    .line 73
    :cond_5
    iget v5, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    if-ne v5, v9, :cond_0

    .line 75
    iget v5, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    .line 82
    :cond_6
    iget v5, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    if-ne v5, v7, :cond_7

    .line 84
    sub-int v5, v0, v4

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1e

    add-int/lit8 v5, v5, 0x28

    add-int/lit8 v5, v5, -0x1e

    int-to-float v5, v5

    sub-int v6, v2, v1

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0xf

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 86
    :cond_7
    iget v5, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    if-ne v5, v8, :cond_8

    .line 88
    sub-int v5, v2, v1

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1e

    add-int/lit8 v5, v5, 0x28

    add-int/lit8 v5, v5, 0x50

    int-to-float v5, v5

    sub-int v6, v0, v4

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x1e

    add-int/lit8 v6, v6, -0xf

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 90
    :cond_8
    iget v5, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    if-ne v5, v9, :cond_2

    .line 92
    sub-int v5, v0, v4

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1e

    add-int/lit8 v5, v5, 0x28

    add-int/lit8 v5, v5, -0x1e

    int-to-float v5, v5

    sub-int v6, v2, v1

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x1e

    add-int/lit8 v6, v6, -0xf

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1
.end method

.method public setDegree(I)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 47
    iput p1, p0, Lcom/oppo/camera/views/RotateRecordingTimeView;->mAngle:I

    .line 48
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateRecordingTimeView;->postInvalidate()V

    .line 49
    return-void
.end method
