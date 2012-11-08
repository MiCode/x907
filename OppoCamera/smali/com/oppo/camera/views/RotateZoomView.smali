.class public Lcom/oppo/camera/views/RotateZoomView;
.super Landroid/widget/TextView;
.source "RotateZoomView.java"


# instance fields
.field private mDegree:I

.field private mLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/views/RotateZoomView;->mDegree:I

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/views/RotateZoomView;->mLength:I

    .line 17
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 32
    iget v0, p0, Lcom/oppo/camera/views/RotateZoomView;->mDegree:I

    sparse-switch v0, :sswitch_data_0

    .line 50
    iget v0, p0, Lcom/oppo/camera/views/RotateZoomView;->mLength:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 54
    :goto_0
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 55
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    return-void

    .line 34
    :sswitch_0
    iget v0, p0, Lcom/oppo/camera/views/RotateZoomView;->mLength:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 35
    const/high16 v0, -0x3d4c

    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateZoomView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateZoomView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    .line 39
    :sswitch_1
    iget v0, p0, Lcom/oppo/camera/views/RotateZoomView;->mLength:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    const/high16 v0, 0x4334

    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateZoomView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateZoomView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    .line 43
    :sswitch_2
    iget v0, p0, Lcom/oppo/camera/views/RotateZoomView;->mLength:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 44
    const/high16 v0, 0x42b4

    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateZoomView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateZoomView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    .line 47
    :sswitch_3
    iget v0, p0, Lcom/oppo/camera/views/RotateZoomView;->mLength:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 32
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
        0x168 -> :sswitch_3
    .end sparse-switch
.end method

.method public setDegree(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 21
    iput p1, p0, Lcom/oppo/camera/views/RotateZoomView;->mDegree:I

    .line 22
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateZoomView;->postInvalidate()V

    .line 23
    return-void
.end method

.method public setLength(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 27
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/oppo/camera/views/RotateZoomView;->mLength:I

    .line 28
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateZoomView;->postInvalidate()V

    .line 29
    return-void
.end method
