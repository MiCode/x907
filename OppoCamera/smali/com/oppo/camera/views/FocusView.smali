.class public Lcom/oppo/camera/views/FocusView;
.super Landroid/view/View;
.source "FocusView.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsDoingAnimation:Z

.field private mSize:I

.field private mViewPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lcom/oppo/camera/views/FocusView$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/views/FocusView$1;-><init>(Lcom/oppo/camera/views/FocusView;)V

    iput-object v0, p0, Lcom/oppo/camera/views/FocusView;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x190

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/views/FocusView;->mViewPoint:Landroid/graphics/Point;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/views/FocusView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/oppo/camera/views/FocusView;->mSize:I

    return v0
.end method

.method static synthetic access$020(Lcom/oppo/camera/views/FocusView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iget v0, p0, Lcom/oppo/camera/views/FocusView;->mSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/views/FocusView;->mSize:I

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/camera/views/FocusView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/oppo/camera/views/FocusView;->mIsDoingAnimation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/camera/views/FocusView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/oppo/camera/views/FocusView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/camera/views/FocusView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/FocusView;->reLayout(I)V

    return-void
.end method

.method private handleIsTimeToClear(I)V
    .locals 4
    .parameter "delay"

    .prologue
    const/4 v3, 0x2

    .line 84
    iget-object v0, p0, Lcom/oppo/camera/views/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/oppo/camera/views/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/views/FocusView;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    return-void
.end method

.method private reLayout(I)V
    .locals 4
    .parameter "size"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oppo/camera/views/FocusView;->mViewPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/oppo/camera/views/FocusView;->mViewPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/oppo/camera/views/FocusView;->mViewPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/oppo/camera/views/FocusView;->mViewPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oppo/camera/views/FocusView;->layout(IIII)V

    .line 108
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    const-string v0, "FocusView"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-boolean v2, p0, Lcom/oppo/camera/views/FocusView;->mIsDoingAnimation:Z

    .line 78
    iput v2, p0, Lcom/oppo/camera/views/FocusView;->mSize:I

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/views/FocusView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public isFocusing()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/oppo/camera/views/FocusView;->mIsDoingAnimation:Z

    return v0
.end method

.method public setPosition(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oppo/camera/views/FocusView;->mViewPoint:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 62
    iget-object v0, p0, Lcom/oppo/camera/views/FocusView;->mViewPoint:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 63
    return-void
.end method

.method public showFail()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "FocusView"

    const-string v1, "showFail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const v0, 0x7f02004c

    invoke-virtual {p0, v0}, Lcom/oppo/camera/views/FocusView;->setBackgroundResource(I)V

    .line 99
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/oppo/camera/views/FocusView;->handleIsTimeToClear(I)V

    .line 100
    return-void
.end method

.method public showStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    const-string v0, "FocusView"

    const-string v1, "showStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/16 v0, 0x48

    iput v0, p0, Lcom/oppo/camera/views/FocusView;->mSize:I

    .line 68
    iput-boolean v2, p0, Lcom/oppo/camera/views/FocusView;->mIsDoingAnimation:Z

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/views/FocusView;->setVisibility(I)V

    .line 70
    const v0, 0x7f02004e

    invoke-virtual {p0, v0}, Lcom/oppo/camera/views/FocusView;->setBackgroundResource(I)V

    .line 71
    iget-object v0, p0, Lcom/oppo/camera/views/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 72
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Lcom/oppo/camera/views/FocusView;->handleIsTimeToClear(I)V

    .line 73
    return-void
.end method

.method public showSuccess()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "FocusView"

    const-string v1, "showSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const v0, 0x7f02004d

    invoke-virtual {p0, v0}, Lcom/oppo/camera/views/FocusView;->setBackgroundResource(I)V

    .line 93
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/oppo/camera/views/FocusView;->handleIsTimeToClear(I)V

    .line 94
    return-void
.end method
