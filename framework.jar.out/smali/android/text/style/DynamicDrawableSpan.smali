.class public abstract Landroid/text/style/DynamicDrawableSpan;
.super Landroid/text/style/ReplacementSpan;
.source "DynamicDrawableSpan.java"


# static fields
.field public static final ALIGN_BASELINE:I = 0x1

.field public static final ALIGN_BOTTOM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DynamicDrawableSpan"


# instance fields
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

.field protected final mVerticalAlignment:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    .line 52
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .parameter "verticalAlignment"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 58
    iput p1, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    .line 59
    return-void
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Landroid/text/style/DynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 188
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 190
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 194
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 196
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/text/style/DynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 199
    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, b:Landroid/graphics/drawable/Drawable;
    instance-of v4, p0, Landroid/text/style/ImageAnnotationSpan;

    if-eqz v4, :cond_4

    move-object v2, p0

    .line 138
    check-cast v2, Landroid/text/style/ImageAnnotationSpan;

    .line 140
    .local v2, img:Landroid/text/style/ImageAnnotationSpan;
    invoke-virtual {v2}, Landroid/text/style/ImageAnnotationSpan;->getComFlag()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    invoke-virtual {v2, p5, p6, p7, p8}, Landroid/text/style/ImageAnnotationSpan;->isInShowBounds(FIII)Z

    move-result v1

    .line 142
    .local v1, bflag:Z
    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {v2}, Landroid/text/style/ImageAnnotationSpan;->getNumValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 184
    .end local v1           #bflag:Z
    .end local v2           #img:Landroid/text/style/ImageAnnotationSpan;
    :goto_0
    return-void

    .line 146
    .restart local v1       #bflag:Z
    .restart local v2       #img:Landroid/text/style/ImageAnnotationSpan;
    :cond_0
    invoke-virtual {v2}, Landroid/text/style/ImageAnnotationSpan;->getFlagDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 164
    .end local v1           #bflag:Z
    .end local v2           #img:Landroid/text/style/ImageAnnotationSpan;
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p8, v4

    .line 167
    .local v3, transY:I
    iget v4, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 170
    sub-int v4, p8, p7

    sub-int/2addr v3, v4

    .line 181
    :cond_1
    :goto_2
    int-to-float v4, v3

    invoke-virtual {p1, p5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 149
    .end local v3           #transY:I
    .restart local v1       #bflag:Z
    .restart local v2       #img:Landroid/text/style/ImageAnnotationSpan;
    :cond_2
    invoke-virtual {v2}, Landroid/text/style/ImageAnnotationSpan;->removeFlagDrawable()V

    goto :goto_0

    .line 153
    .end local v1           #bflag:Z
    :cond_3
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 157
    .end local v2           #img:Landroid/text/style/ImageAnnotationSpan;
    :cond_4
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 175
    .restart local v3       #transY:I
    :cond_5
    if-eqz p9, :cond_1

    .line 176
    sub-int v4, p8, p7

    sub-int/2addr v3, v4

    .line 177
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v3, v4

    goto :goto_2
.end method

.method public abstract getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 6
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    const/4 v4, 0x0

    .line 83
    instance-of v5, p0, Landroid/text/style/ImageAnnotationSpan;

    if-eqz v5, :cond_7

    move-object v1, p0

    .line 84
    check-cast v1, Landroid/text/style/ImageAnnotationSpan;

    .line 85
    .local v1, img:Landroid/text/style/ImageAnnotationSpan;
    invoke-virtual {v1}, Landroid/text/style/ImageAnnotationSpan;->getComFlag()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 86
    invoke-virtual {v1}, Landroid/text/style/ImageAnnotationSpan;->getNumValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 127
    .end local v1           #img:Landroid/text/style/ImageAnnotationSpan;
    :goto_0
    return v4

    .line 89
    .restart local v1       #img:Landroid/text/style/ImageAnnotationSpan;
    :cond_0
    const/4 v0, 0x0

    .line 90
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/text/style/ImageAnnotationSpan;->getSize()Landroid/graphics/Rect;

    move-result-object v2

    .line 106
    .end local v1           #img:Landroid/text/style/ImageAnnotationSpan;
    .local v2, rect:Landroid/graphics/Rect;
    :goto_1
    if-eqz p5, :cond_1

    .line 107
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    neg-int v5, v5

    iput v5, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 108
    iput v4, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 110
    iget v5, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v5, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 111
    iput v4, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 115
    :cond_1
    if-eqz p5, :cond_5

    if-eqz p1, :cond_5

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 117
    .local v3, tmp:Landroid/graphics/Paint$FontMetricsInt;
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v5, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-ge v4, v5, :cond_2

    .line 118
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 119
    :cond_2
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v5, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ge v4, v5, :cond_3

    .line 120
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v4, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 121
    :cond_3
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v5, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le v4, v5, :cond_4

    .line 122
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v4, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 123
    :cond_4
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v4, v5, :cond_5

    .line 124
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v4, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 127
    .end local v3           #tmp:Landroid/graphics/Paint$FontMetricsInt;
    :cond_5
    iget v4, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 93
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #rect:Landroid/graphics/Rect;
    .restart local v1       #img:Landroid/text/style/ImageAnnotationSpan;
    :cond_6
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .restart local v2       #rect:Landroid/graphics/Rect;
    goto :goto_1

    .line 98
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #img:Landroid/text/style/ImageAnnotationSpan;
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_7
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 99
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .restart local v2       #rect:Landroid/graphics/Rect;
    goto :goto_1
.end method

.method public getVerticalAlignment()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    return v0
.end method
