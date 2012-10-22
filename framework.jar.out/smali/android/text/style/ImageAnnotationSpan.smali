.class public Landroid/text/style/ImageAnnotationSpan;
.super Landroid/text/style/ImageSpan;
.source "ImageAnnotationSpan.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageAnnotationSpan"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mComFlag:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mNumValue:Ljava/lang/String;

.field private mStr:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;ILandroid/widget/TextView;)V
    .locals 1
    .parameter "d"
    .parameter "verticalAlignment"
    .parameter "t"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 19
    const-string v0, " ,"

    iput-object v0, p0, Landroid/text/style/ImageAnnotationSpan;->mStr:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/style/ImageAnnotationSpan;->mComFlag:Z

    .line 27
    iput-object p3, p0, Landroid/text/style/ImageAnnotationSpan;->mTextView:Landroid/widget/TextView;

    .line 28
    return-void
.end method


# virtual methods
.method public getComFlag()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Landroid/text/style/ImageAnnotationSpan;->mComFlag:Z

    return v0
.end method

.method public getFlagDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/text/style/ImageAnnotationSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Landroid/text/style/ImageAnnotationSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    :goto_0
    return-object v1

    .line 70
    :cond_0
    iget-object v1, p0, Landroid/text/style/ImageAnnotationSpan;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/text/style/ImageAnnotationSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    :cond_1
    iget-object v1, p0, Landroid/text/style/ImageAnnotationSpan;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    iget-object v1, p0, Landroid/text/style/ImageAnnotationSpan;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/text/style/ImageAnnotationSpan;->mStr:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->getFlagBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/text/style/ImageAnnotationSpan;->mBitmap:Landroid/graphics/Bitmap;

    .line 74
    :cond_2
    iget-object v1, p0, Landroid/text/style/ImageAnnotationSpan;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 75
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/text/style/ImageAnnotationSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Landroid/text/style/ImageAnnotationSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    iget-object v1, p0, Landroid/text/style/ImageAnnotationSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/text/style/ImageAnnotationSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/text/style/ImageAnnotationSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    iget-object v1, p0, Landroid/text/style/ImageAnnotationSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 78
    goto :goto_0
.end method

.method public getNumValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Landroid/text/style/ImageAnnotationSpan;->mNumValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Landroid/text/style/ImageAnnotationSpan;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/style/ImageAnnotationSpan;->mStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Landroid/text/style/ImageAnnotationSpan;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/text/style/ImageAnnotationSpan;->mStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getFlagBitmapSize(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInShowBounds(FIII)Z
    .locals 1
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/text/style/ImageAnnotationSpan;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->isInDrawRect(FIII)Z

    move-result v0

    return v0
.end method

.method public removeFlagDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Landroid/text/style/ImageAnnotationSpan;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Landroid/text/style/ImageAnnotationSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 53
    iput-object v1, p0, Landroid/text/style/ImageAnnotationSpan;->mBitmap:Landroid/graphics/Bitmap;

    .line 55
    :cond_0
    iput-object v1, p0, Landroid/text/style/ImageAnnotationSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    return-void
.end method

.method public setComFlag(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 47
    iput-boolean p1, p0, Landroid/text/style/ImageAnnotationSpan;->mComFlag:Z

    .line 48
    return-void
.end method

.method public setNumValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/text/style/ImageAnnotationSpan;->mNumValue:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setStr(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 39
    iput-object p1, p0, Landroid/text/style/ImageAnnotationSpan;->mStr:Ljava/lang/String;

    .line 40
    return-void
.end method
