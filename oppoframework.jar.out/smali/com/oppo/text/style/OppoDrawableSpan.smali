.class public abstract Lcom/oppo/text/style/OppoDrawableSpan;
.super Landroid/text/style/ReplacementSpan;
.source "OppoDrawableSpan.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoDrawableSpan"


# instance fields
.field protected mAdjust:I

.field protected mDrawableBounds:Landroid/graphics/Rect;

.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected mFm:Landroid/graphics/Paint$FontMetricsInt;

.field protected mMaxLineWidth:I

.field protected mSubSequenceOmit:Ljava/lang/CharSequence;

.field protected mUserPaddingBottom:I

.field protected mUserPaddingLeft:I

.field protected mUserPaddingRight:I

.field protected mUserPaddingTop:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 25
    iput v0, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingLeft:I

    .line 26
    iput v0, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingTop:I

    .line 27
    iput v0, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingRight:I

    .line 28
    iput v0, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingBottom:I

    .line 29
    iput v0, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mAdjust:I

    .line 33
    iput-object p1, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mSubSequenceOmit:Ljava/lang/CharSequence;

    .line 34
    return-void
.end method

.method private getCachedDrawable(Landroid/graphics/Paint;Ljava/lang/CharSequence;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .parameter "paint"
    .parameter "text"

    .prologue
    const/4 v11, 0x0

    .line 94
    iget-object v8, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 95
    .local v8, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 96
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 97
    .local v4, maxWidthChange:Z
    invoke-virtual {p0}, Lcom/oppo/text/style/OppoDrawableSpan;->getMaxLineWidth()I

    move-result v3

    .line 98
    .local v3, maxWidth:I
    const/4 v7, 0x0

    .local v7, width:I
    const/4 v1, 0x0

    .line 100
    .local v1, height:I
    iget v9, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mMaxLineWidth:I

    if-eq v3, v9, :cond_0

    .line 101
    iput v3, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mMaxLineWidth:I

    .line 102
    const/4 v4, 0x1

    .line 105
    :cond_0
    if-eqz v8, :cond_1

    if-nez v4, :cond_1

    .line 106
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 108
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    if-nez v0, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/oppo/text/style/OppoDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingLeft:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingRight:I

    add-int v7, v9, v10

    .line 112
    if-le v7, v3, :cond_2

    .line 113
    const-string v5, "..."

    .line 114
    .local v5, omit:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v6, v9

    .line 115
    .local v6, omitWidth:I
    sub-int v9, v3, v6

    iget v10, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingRight:I

    sub-int/2addr v9, v10

    invoke-direct {p0, p1, p2, v9}, Lcom/oppo/text/style/OppoDrawableSpan;->getFitLen(Landroid/graphics/Paint;Ljava/lang/CharSequence;I)I

    move-result v2

    .line 116
    .local v2, len:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, v11, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mSubSequenceOmit:Ljava/lang/CharSequence;

    .line 117
    move v7, v3

    .line 119
    .end local v2           #len:I
    .end local v5           #omit:Ljava/lang/String;
    .end local v6           #omitWidth:I
    :cond_2
    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 122
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iput-object v9, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mDrawableBounds:Landroid/graphics/Rect;

    .line 123
    iget-object v9, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mDrawableBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mDrawableBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    if-ge v7, v9, :cond_4

    .line 124
    iget-object v9, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mDrawableBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mDrawableBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int v7, v9, v10

    .line 126
    :cond_4
    iget-object v9, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v9, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v10, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingTop:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingBottom:I

    add-int v1, v9, v10

    .line 127
    iput v11, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mAdjust:I

    .line 128
    iget-object v9, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mDrawableBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mDrawableBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    if-ge v1, v9, :cond_5

    .line 129
    iget-object v9, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mDrawableBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mDrawableBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mAdjust:I

    .line 130
    iget-object v9, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mDrawableBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mDrawableBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int v1, v9, v10

    .line 132
    :cond_5
    iget-object v9, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v11, v11, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 133
    invoke-virtual {v0, v11, v11, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    return-object v0
.end method

.method private getFitLen(Landroid/graphics/Paint;Ljava/lang/CharSequence;I)I
    .locals 5
    .parameter "paint"
    .parameter "text"
    .parameter "width"

    .prologue
    .line 139
    const/4 v2, 0x0

    .local v2, st:I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 141
    .local v0, en:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 142
    add-int v4, v2, v0

    div-int/lit8 v1, v4, 0x2

    .line 143
    .local v1, i:I
    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    float-to-int v3, v4

    .line 144
    .local v3, w:I
    if-le v3, p3, :cond_0

    .line 145
    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 147
    :cond_0
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1           #i:I
    .end local v3           #w:I
    :cond_1
    return v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 11
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "baseline"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mSubSequenceOmit:Ljava/lang/CharSequence;

    move-object/from16 v0, p9

    invoke-direct {p0, v0, v1}, Lcom/oppo/text/style/OppoDrawableSpan;->getCachedDrawable(Landroid/graphics/Paint;Ljava/lang/CharSequence;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 43
    .local v8, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 45
    sub-int v10, p7, p6

    .line 47
    .local v10, y:I
    const/4 v9, 0x0

    .line 48
    .local v9, translateY:I
    iget-object v1, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v1, v1

    if-ne v10, v1, :cond_0

    .line 49
    iget v1, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingTop:I

    iget v2, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mAdjust:I

    add-int/2addr v1, v2

    neg-int v9, v1

    .line 62
    :goto_0
    add-int v1, p6, v9

    int-to-float v1, v1

    move/from16 v0, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 63
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    const/4 v1, -0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v2, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mSubSequenceOmit:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mSubSequenceOmit:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v1, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingLeft:I

    int-to-float v5, v1

    sub-int v1, v10, v9

    int-to-float v6, v1

    move-object v1, p1

    move-object/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 69
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v1, v1

    if-ne v10, v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v2, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mAdjust:I

    sub-int v9, v1, v2

    goto :goto_0

    .line 53
    :cond_1
    const-string v1, "OppoDrawableSpan"

    const-string v2, "drawText FontMetricsInt has been changed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getMaxLineWidth()I
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    .line 76
    if-eqz p5, :cond_0

    .line 77
    iput-object p5, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mFm:Landroid/graphics/Paint$FontMetricsInt;

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mSubSequenceOmit:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v2}, Lcom/oppo/text/style/OppoDrawableSpan;->getCachedDrawable(Landroid/graphics/Paint;Ljava/lang/CharSequence;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 83
    .local v1, rect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->right:I

    return v2
.end method

.method public setUserPadding(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 87
    iput p1, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingLeft:I

    .line 88
    iput p2, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingTop:I

    .line 89
    iput p3, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingRight:I

    .line 90
    iput p4, p0, Lcom/oppo/text/style/OppoDrawableSpan;->mUserPaddingBottom:I

    .line 91
    return-void
.end method
