.class public Lcom/oppo/camera/views/FocusSurfaceView;
.super Landroid/view/SurfaceView;
.source "FocusSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/views/FocusSurfaceView$FocusThread;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mFocusFailBmp:Landroid/graphics/Bitmap;

.field private mFocusFailNP:Landroid/graphics/NinePatch;

.field private mFocusRect:Landroid/graphics/Rect;

.field private mFocusSuccessBmp:Landroid/graphics/Bitmap;

.field private mFocusSuccessNP:Landroid/graphics/NinePatch;

.field private mFocusThread:Lcom/oppo/camera/views/FocusSurfaceView$FocusThread;

.field private mFocusingBmp:Landroid/graphics/Bitmap;

.field private mFocusingNP:Landroid/graphics/NinePatch;

.field private mHandler:Landroid/os/Handler;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mIsDoingAnimation:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mSize:I

.field private mXPosition:I

.field private mYPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/views/FocusSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-string v1, "FocusSurfaceView"

    iput-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->TAG:Ljava/lang/String;

    .line 50
    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mSize:I

    .line 181
    new-instance v1, Lcom/oppo/camera/views/FocusSurfaceView$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/views/FocusSurfaceView$1;-><init>(Lcom/oppo/camera/views/FocusSurfaceView;)V

    iput-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHandler:Landroid/os/Handler;

    .line 65
    invoke-virtual {p0}, Lcom/oppo/camera/views/FocusSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 66
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 67
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/views/FocusSurfaceView;->setZOrderOnTop(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/oppo/camera/views/FocusSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02004e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusingBmp:Landroid/graphics/Bitmap;

    .line 71
    const v1, 0x7f02004d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusSuccessBmp:Landroid/graphics/Bitmap;

    .line 72
    const v1, 0x7f02004c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusFailBmp:Landroid/graphics/Bitmap;

    .line 73
    new-instance v1, Landroid/graphics/NinePatch;

    iget-object v2, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusingBmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusingBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusingNP:Landroid/graphics/NinePatch;

    .line 74
    new-instance v1, Landroid/graphics/NinePatch;

    iget-object v2, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusSuccessBmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusSuccessBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusSuccessNP:Landroid/graphics/NinePatch;

    .line 75
    new-instance v1, Landroid/graphics/NinePatch;

    iget-object v2, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusFailBmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusFailBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusFailNP:Landroid/graphics/NinePatch;

    .line 76
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusRect:Landroid/graphics/Rect;

    .line 77
    invoke-direct {p0}, Lcom/oppo/camera/views/FocusSurfaceView;->setPaint()V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/views/FocusSurfaceView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mSize:I

    return v0
.end method

.method static synthetic access$020(Lcom/oppo/camera/views/FocusSurfaceView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iget v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/camera/views/FocusSurfaceView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/FocusSurfaceView;->reCalcFocusRect(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/camera/views/FocusSurfaceView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/oppo/camera/views/FocusSurfaceView;->drawFocus()V

    return-void
.end method

.method static synthetic access$302(Lcom/oppo/camera/views/FocusSurfaceView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mIsDoingAnimation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/graphics/NinePatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusSuccessNP:Landroid/graphics/NinePatch;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/camera/views/FocusSurfaceView;)Landroid/graphics/NinePatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusFailNP:Landroid/graphics/NinePatch;

    return-object v0
.end method

.method private drawFocus()V
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 110
    .local v0, canvas:Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 112
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusingNP:Landroid/graphics/NinePatch;

    iget-object v2, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 113
    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 115
    :cond_0
    return-void
.end method

.method private reCalcFocusRect(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 125
    iget v4, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mXPosition:I

    sub-int v1, v4, p1

    .line 126
    .local v1, left:I
    iget v4, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mYPosition:I

    sub-int v3, v4, p1

    .line 127
    .local v3, top:I
    iget v4, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mXPosition:I

    add-int v2, v4, p1

    .line 128
    .local v2, right:I
    iget v4, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mYPosition:I

    add-int v0, v4, p1

    .line 129
    .local v0, bottom:I
    iget-object v4, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 130
    return-void
.end method

.method private removeAllMessages()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    return-void
.end method

.method private setPaint()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 102
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 104
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 106
    return-void
.end method

.method private showStart()V
    .locals 4

    .prologue
    .line 136
    const/16 v0, 0x4f

    iput v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mSize:I

    .line 137
    new-instance v0, Lcom/oppo/camera/views/FocusSurfaceView$FocusThread;

    invoke-direct {v0, p0}, Lcom/oppo/camera/views/FocusSurfaceView$FocusThread;-><init>(Lcom/oppo/camera/views/FocusSurfaceView;)V

    iput-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusThread:Lcom/oppo/camera/views/FocusSurfaceView$FocusThread;

    .line 138
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mFocusThread:Lcom/oppo/camera/views/FocusSurfaceView$FocusThread;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusSurfaceView$FocusThread;->start()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mIsDoingAnimation:Z

    .line 140
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mSize:I

    .line 166
    iput-boolean v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mIsDoingAnimation:Z

    .line 167
    invoke-direct {p0}, Lcom/oppo/camera/views/FocusSurfaceView;->removeAllMessages()V

    .line 168
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 169
    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/oppo/camera/views/FocusSurfaceView;->clear()V

    .line 119
    iput p1, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mXPosition:I

    .line 120
    iput p2, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mYPosition:I

    .line 121
    invoke-direct {p0}, Lcom/oppo/camera/views/FocusSurfaceView;->showStart()V

    .line 122
    return-void
.end method

.method public showFail()V
    .locals 4

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/oppo/camera/views/FocusSurfaceView;->removeAllMessages()V

    .line 157
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 159
    return-void
.end method

.method public showSuccess()V
    .locals 4

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/oppo/camera/views/FocusSurfaceView;->removeAllMessages()V

    .line 148
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 149
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 150
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 221
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 226
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 231
    return-void
.end method
