.class public Lcom/oppo/widget/OppoFloatWindow;
.super Landroid/app/Dialog;
.source "OppoFloatWindow.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHight:I

.field private mImageView:Landroid/widget/ImageView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const v0, 0x1030325

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    iput-object p1, p0, Lcom/oppo/widget/OppoFloatWindow;->mContext:Landroid/content/Context;

    .line 25
    const v0, 0x109005a

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoFloatWindow;->setContentView(I)V

    .line 26
    const v0, 0x102030b

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoFloatWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/widget/OppoFloatWindow;->mImageView:Landroid/widget/ImageView;

    .line 27
    return-void
.end method

.method private offsetFloatWindow(Landroid/view/View;II)V
    .locals 6
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 62
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 64
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 65
    .local v0, locationOnScreen:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 67
    invoke-virtual {p0}, Lcom/oppo/widget/OppoFloatWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 68
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 69
    .local v3, wl:Landroid/view/WindowManager$LayoutParams;
    iget v4, v1, Landroid/graphics/Rect;->right:I

    neg-int v4, v4

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoFloatWindow;->mWidth:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    const/4 v5, 0x0

    aget v5, v0, v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 70
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    neg-int v4, v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoFloatWindow;->mHight:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p3

    const/4 v5, 0x1

    aget v5, v0, v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 72
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 73
    return-void
.end method


# virtual methods
.method public setImageView(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oppo/widget/OppoFloatWindow;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/widget/OppoFloatWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    return-void
.end method

.method public setImageView(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oppo/widget/OppoFloatWindow;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/oppo/widget/OppoFloatWindow;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v0, "help"

    const-string v1, "+++++++[ERROR] setImageView is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNoneImageView()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/widget/OppoFloatWindow;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 46
    iget-object v1, p0, Lcom/oppo/widget/OppoFloatWindow;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 47
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 48
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49
    iget-object v1, p0, Lcom/oppo/widget/OppoFloatWindow;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iput p1, p0, Lcom/oppo/widget/OppoFloatWindow;->mWidth:I

    .line 52
    iput p2, p0, Lcom/oppo/widget/OppoFloatWindow;->mHight:I

    .line 53
    return-void
.end method

.method public show(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoFloatWindow;->offsetFloatWindow(Landroid/view/View;II)V

    .line 57
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 58
    return-void
.end method
