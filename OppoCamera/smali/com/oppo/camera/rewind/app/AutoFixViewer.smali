.class public Lcom/oppo/camera/rewind/app/AutoFixViewer;
.super Lcom/oppo/camera/rewind/app/RewindViewer;
.source "AutoFixViewer.java"


# instance fields
.field private mCurIndex:I

.field private mDrawRects:Z

.field private mMergedIsDisplayed:Z

.field private mMsg:Ljava/lang/String;

.field private mNotReplacedRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRectPaint:Landroid/graphics/Paint;

.field private mReplacedRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBmp:Landroid/graphics/Bitmap;

.field private mScreenCfg:Lcom/scalado/base/Image$Config;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mSurfaceChanged:Z

.field private mTxtPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v6, 0xff

    const/high16 v5, -0x4000

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/RewindViewer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-boolean v4, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mDrawRects:Z

    .line 36
    iput v3, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mCurIndex:I

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 44
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 47
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 48
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    return-void
.end method

.method private draw()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 160
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 161
    .local v0, canvas:Landroid/graphics/Canvas;
    if-nez v0, :cond_0

    .line 162
    const-string v5, "RewindViewer"

    const-string v6, "Failed to lock canvas."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    .line 166
    .local v4, w:I
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 168
    .local v1, h:I
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 169
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 171
    :cond_1
    iget-boolean v5, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mDrawRects:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mMergedIsDisplayed:Z

    if-eqz v5, :cond_3

    .line 172
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mNotReplacedRects:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 173
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mNotReplacedRects:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 174
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mNotReplacedRects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 176
    .local v3, r:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 180
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_2
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mReplacedRects:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 181
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mReplacedRects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 183
    .restart local v3       #r:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 188
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_3
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private privateClear()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 146
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 147
    .local v0, canvas:Landroid/graphics/Canvas;
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0, v4, v4, v4}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 149
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mMsg:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 151
    .local v1, x:I
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 152
    .local v2, y:I
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mMsg:Ljava/lang/String;

    int-to-float v4, v1

    int-to-float v5, v2

    iget-object v6, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 153
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mMsg:Ljava/lang/String;

    .line 155
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 157
    :cond_1
    return-void
.end method


# virtual methods
.method public clearDisplay(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mMsg:Ljava/lang/String;

    .line 136
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mSurfaceChanged:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/AutoFixViewer;->privateClear()V

    .line 139
    :cond_0
    return-void
.end method

.method public display()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method protected onSurfaceChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 117
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mScreenDims:Lcom/scalado/base/Size;

    .line 118
    sget-object v0, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mScreenCfg:Lcom/scalado/base/Image$Config;

    .line 119
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mSurfaceChanged:Z

    if-nez v0, :cond_1

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mSurfaceChanged:Z

    .line 121
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/AutoFixViewer;->privateClear()V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mCurIndex:I

    if-ltz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/AutoFixViewer;->draw()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 72
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v5, v5, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 74
    .local v0, r:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v5, v5, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

    invoke-interface {v5, v0}, Lcom/oppo/camera/rewind/app/ExtWidget;->getRect(Landroid/graphics/Rect;)V

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 76
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 77
    .local v2, y:I
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v3, v3, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

    invoke-interface {v3}, Lcom/oppo/camera/rewind/app/ExtWidget;->show()V

    .line 96
    .end local v0           #r:Landroid/graphics/Rect;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 81
    .restart local v0       #r:Landroid/graphics/Rect;
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_1
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v5, v5, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

    invoke-interface {v5}, Lcom/oppo/camera/rewind/app/ExtWidget;->hide()V

    .line 85
    .end local v0           #r:Landroid/graphics/Rect;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v4, v3

    .line 96
    goto :goto_0

    .line 90
    :pswitch_1
    iget-boolean v5, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mMergedIsDisplayed:Z

    if-eqz v5, :cond_0

    .line 91
    iget-boolean v5, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mDrawRects:Z

    if-nez v5, :cond_3

    move v3, v4

    :cond_3
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mDrawRects:Z

    .line 92
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/AutoFixViewer;->draw()V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/AutoFixViewer;->draw()V

    .line 143
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mReplacedRects:Ljava/util/List;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mCurIndex:I

    .line 69
    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 106
    return-void
.end method

.method public selectBackground(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 109
    iget v0, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mCurIndex:I

    if-ne p1, v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iput p1, p0, Lcom/oppo/camera/rewind/app/AutoFixViewer;->mCurIndex:I

    goto :goto_0
.end method

.method public setRewindSession(Lcom/oppo/camera/rewind/app/RewindSession;I)V
    .locals 0
    .parameter "ltw"
    .parameter "numImages"

    .prologue
    .line 64
    return-void
.end method
