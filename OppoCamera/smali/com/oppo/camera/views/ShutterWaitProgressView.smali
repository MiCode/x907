.class public Lcom/oppo/camera/views/ShutterWaitProgressView;
.super Landroid/view/View;
.source "ShutterWaitProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/views/ShutterWaitProgressView$1;,
        Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;
    }
.end annotation


# instance fields
.field private centralX:F

.field private centralY:F

.field private isShowing:Z

.field private mBackground:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;

.field private mLeftAnimDegree:F

.field private mLeftMatrix:Landroid/graphics/Matrix;

.field private mLeftRotateImage:Landroid/graphics/Bitmap;

.field private mRightAnimDegree:F

.field private mRightMatrix:Landroid/graphics/Matrix;

.field private mRightRotateImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/high16 v0, 0x425c

    iput v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->centralX:F

    .line 35
    const/high16 v0, 0x4370

    iput v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->centralY:F

    .line 72
    iput-object p1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lcom/oppo/camera/views/ShutterWaitProgressView;->init()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/views/ShutterWaitProgressView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftAnimDegree:F

    return v0
.end method

.method static synthetic access$002(Lcom/oppo/camera/views/ShutterWaitProgressView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftAnimDegree:F

    return p1
.end method

.method static synthetic access$016(Lcom/oppo/camera/views/ShutterWaitProgressView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iget v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftAnimDegree:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftAnimDegree:F

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/camera/views/ShutterWaitProgressView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightAnimDegree:F

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/camera/views/ShutterWaitProgressView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightAnimDegree:F

    return p1
.end method

.method static synthetic access$124(Lcom/oppo/camera/views/ShutterWaitProgressView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iget v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightAnimDegree:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightAnimDegree:F

    return v0
.end method

.method static synthetic access$200(Lcom/oppo/camera/views/ShutterWaitProgressView;)Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mHandler:Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;

    return-object v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 102
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mBackground:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/high16 v2, 0x4339

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    return-void
.end method

.method private drawLeftRotateView(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftAnimDegree:F

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/views/ShutterWaitProgressView;->refreshDegree(Landroid/graphics/Matrix;F)V

    .line 111
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 112
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftRotateImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftRotateImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftRotateImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/high16 v2, 0x4339

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 116
    return-void
.end method

.method private drawRightRotateView(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightAnimDegree:F

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/views/ShutterWaitProgressView;->refreshDegree(Landroid/graphics/Matrix;F)V

    .line 121
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 122
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightRotateImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightRotateImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightRotateImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/high16 v2, 0x4339

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 126
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0200e3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mBackground:Landroid/graphics/Bitmap;

    .line 79
    const v1, 0x7f0200e4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftRotateImage:Landroid/graphics/Bitmap;

    .line 80
    const v1, 0x7f0200e5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightRotateImage:Landroid/graphics/Bitmap;

    .line 81
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftMatrix:Landroid/graphics/Matrix;

    .line 82
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightMatrix:Landroid/graphics/Matrix;

    .line 83
    new-instance v1, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;-><init>(Lcom/oppo/camera/views/ShutterWaitProgressView;Lcom/oppo/camera/views/ShutterWaitProgressView$1;)V

    iput-object v1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mHandler:Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;

    .line 84
    iput v3, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftAnimDegree:F

    .line 85
    iput v3, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightAnimDegree:F

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->isShowing:Z

    .line 87
    return-void
.end method

.method private refreshDegree(Landroid/graphics/Matrix;F)V
    .locals 3
    .parameter "matrix"
    .parameter "degree"

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 131
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 132
    .local v0, camera:Landroid/graphics/Camera;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 133
    invoke-virtual {v0, p2}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 137
    iget v1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->centralX:F

    neg-float v1, v1

    iget v2, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->centralY:F

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 138
    iget v1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->centralX:F

    iget v2, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->centralY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 139
    return-void
.end method


# virtual methods
.method public hideProgressBar()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mHandler:Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->sendEmptyMessage(I)Z

    .line 152
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oppo/camera/views/ShutterWaitProgressView;->setVisibility(I)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->isShowing:Z

    .line 154
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 92
    invoke-virtual {p0}, Lcom/oppo/camera/views/ShutterWaitProgressView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/ShutterWaitProgressView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/ShutterWaitProgressView;->drawLeftRotateView(Landroid/graphics/Canvas;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/ShutterWaitProgressView;->drawRightRotateView(Landroid/graphics/Canvas;)V

    .line 98
    :cond_0
    return-void
.end method

.method public showProgressBar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 142
    iget-boolean v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->isShowing:Z

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->mHandler:Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->sendEmptyMessage(I)Z

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/views/ShutterWaitProgressView;->setVisibility(I)V

    .line 147
    iput-boolean v1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView;->isShowing:Z

    goto :goto_0
.end method
