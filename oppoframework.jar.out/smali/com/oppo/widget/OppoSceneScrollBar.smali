.class public Lcom/oppo/widget/OppoSceneScrollBar;
.super Landroid/view/View;
.source "OppoSceneScrollBar.java"

# interfaces
.implements Lcom/oppo/widget/OppoSceneScroller$OnScrollBarListener;


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoSceneScrollBar"


# instance fields
.field private mOnProgressListener:Lcom/oppo/widget/OppoSceneScroller$OnProgressListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mScrollBarHeight:I

.field private mScrollBarNormal:Landroid/graphics/drawable/Drawable;

.field private mScrollBarPressed:Landroid/graphics/drawable/Drawable;

.field private mScrollBarWidth:I

.field private mbPressed:Z

.field private miProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-direct {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->init()V

    .line 63
    return-void
.end method

.method private calculateProgress()F
    .locals 4

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, progress:F
    iget v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    iget v2, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarWidth:I

    div-int/lit8 v2, v2, 0x2

    if-gt v1, v2, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    .line 194
    :cond_0
    iget v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_1

    .line 195
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 197
    :cond_1
    iget v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    iget v2, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 69
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mRect:Landroid/graphics/Rect;

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 73
    iget-object v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x108072e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarNormal:Landroid/graphics/drawable/Drawable;

    .line 76
    const v1, 0x108072f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarPressed:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarWidth:I

    .line 78
    iget-object v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarHeight:I

    .line 81
    return-void
.end method

.method private progressChanged()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mOnProgressListener:Lcom/oppo/widget/OppoSceneScroller$OnProgressListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mOnProgressListener:Lcom/oppo/widget/OppoSceneScroller$OnProgressListener;

    invoke-direct {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->calculateProgress()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoSceneScroller$OnProgressListener;->onProgressChanged(F)V

    .line 228
    :cond_0
    return-void
.end method

.method private progressEnd()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mOnProgressListener:Lcom/oppo/widget/OppoSceneScroller$OnProgressListener;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mOnProgressListener:Lcom/oppo/widget/OppoSceneScroller$OnProgressListener;

    invoke-direct {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->calculateProgress()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoSceneScroller$OnProgressListener;->onProgressEnd(F)V

    .line 219
    :cond_0
    return-void
.end method

.method private progressStart()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mOnProgressListener:Lcom/oppo/widget/OppoSceneScroller$OnProgressListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mOnProgressListener:Lcom/oppo/widget/OppoSceneScroller$OnProgressListener;

    invoke-direct {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->calculateProgress()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoSceneScroller$OnProgressListener;->onProgressStart(F)V

    .line 210
    :cond_0
    return-void
.end method

.method private setProgressInternal()V
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    if-gtz v0, :cond_1

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    .line 181
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->invalidate()V

    .line 182
    return-void

    .line 177
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 115
    iget v2, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    iget v3, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 116
    .local v0, left:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 118
    .local v1, top:I
    if-gez v0, :cond_1

    .line 119
    const/4 v0, 0x0

    .line 124
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 126
    iget-boolean v2, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mbPressed:Z

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarPressed:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 128
    iget-object v2, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    :goto_1
    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarWidth:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarWidth:I

    sub-int v0, v2, v3

    goto :goto_0

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarNormal:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 131
    iget-object v2, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 87
    .local v4, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 88
    .local v5, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 89
    .local v1, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 94
    .local v2, heightSpecSize:I
    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    .line 95
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "OppoPageflipView cannot have UNSPECIFIED dimensions"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 98
    :cond_1
    iget v6, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarWidth:I

    iget v7, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mPaddingLeft:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mPaddingRight:I

    add-int v3, v6, v7

    .line 99
    .local v3, width:I
    iget v6, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarHeight:I

    iget v7, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mPaddingTop:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mPaddingBottom:I

    add-int v0, v6, v7

    .line 104
    .local v0, height:I
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 105
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 109
    invoke-virtual {p0, v3, v0}, Lcom/oppo/widget/OppoSceneScrollBar;->setMeasuredDimension(II)V

    .line 110
    return-void
.end method

.method public onScrollBarChanged(F)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mbPressed:Z

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 240
    :cond_1
    const-string v0, "OppoSceneScrollBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onScrollChanged() error progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mScrollBarWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    .line 246
    iget v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    if-gtz v0, :cond_4

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    .line 252
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->postInvalidate()V

    goto :goto_0

    .line 248
    :cond_4
    iget v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 249
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    return v2

    .line 141
    :pswitch_0
    iput-boolean v2, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mbPressed:Z

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    .line 143
    invoke-direct {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->setProgressInternal()V

    .line 144
    invoke-direct {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->progressStart()V

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    .line 149
    invoke-direct {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->setProgressInternal()V

    .line 150
    invoke-direct {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->progressChanged()V

    goto :goto_0

    .line 154
    :pswitch_2
    iput-boolean v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mbPressed:Z

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoSceneScrollBar;->miProgress:I

    .line 156
    invoke-direct {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->setProgressInternal()V

    .line 157
    invoke-direct {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->progressEnd()V

    goto :goto_0

    .line 161
    :pswitch_3
    iput-boolean v1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mbPressed:Z

    .line 162
    invoke-direct {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->setProgressInternal()V

    .line 163
    invoke-direct {p0}, Lcom/oppo/widget/OppoSceneScrollBar;->progressEnd()V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnProgressListener(Lcom/oppo/widget/OppoSceneScroller$OnProgressListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/oppo/widget/OppoSceneScrollBar;->mOnProgressListener:Lcom/oppo/widget/OppoSceneScroller$OnProgressListener;

    .line 261
    return-void
.end method
