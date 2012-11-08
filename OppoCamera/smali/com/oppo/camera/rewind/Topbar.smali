.class public Lcom/oppo/camera/rewind/Topbar;
.super Landroid/widget/RelativeLayout;
.source "Topbar.java"

# interfaces
.implements Lcom/oppo/camera/rewind/Timeoutable;
.implements Lcom/oppo/camera/rewind/app/ExtWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/Topbar$1;,
        Lcom/oppo/camera/rewind/Topbar$MyHandler;,
        Lcom/oppo/camera/rewind/Topbar$MyFadeOutListener;,
        Lcom/oppo/camera/rewind/Topbar$MyFadeInListener;,
        Lcom/oppo/camera/rewind/Topbar$TopbarListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mFadeOutAnimation:Landroid/view/animation/Animation;

.field private mFadeOutRequest:Z

.field private mHandler:Lcom/oppo/camera/rewind/Topbar$MyHandler;

.field private mListener:Lcom/oppo/camera/rewind/Topbar$TopbarListener;

.field private mState:I

.field private mTimeout:J

.field private mXy:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-boolean v4, p0, Lcom/oppo/camera/rewind/Topbar;->mFadeOutRequest:Z

    .line 36
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/oppo/camera/rewind/Topbar;->mTimeout:J

    .line 40
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/oppo/camera/rewind/Topbar;->mXy:[I

    .line 43
    new-instance v1, Lcom/oppo/camera/rewind/Topbar$MyHandler;

    invoke-direct {v1, p0, v3}, Lcom/oppo/camera/rewind/Topbar$MyHandler;-><init>(Lcom/oppo/camera/rewind/Topbar;Lcom/oppo/camera/rewind/Topbar$1;)V

    iput-object v1, p0, Lcom/oppo/camera/rewind/Topbar;->mHandler:Lcom/oppo/camera/rewind/Topbar$MyHandler;

    .line 48
    iput v4, p0, Lcom/oppo/camera/rewind/Topbar;->mState:I

    .line 59
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/Topbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 60
    .local v0, li:Landroid/view/LayoutInflater;
    const v1, 0x7f030009

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    const v1, 0x7f04001c

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/rewind/Topbar;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 63
    const v1, 0x7f04001d

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/rewind/Topbar;->mFadeOutAnimation:Landroid/view/animation/Animation;

    .line 64
    iget-object v1, p0, Lcom/oppo/camera/rewind/Topbar;->mFadeInAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/oppo/camera/rewind/Topbar$MyFadeInListener;

    invoke-direct {v2, p0, v3}, Lcom/oppo/camera/rewind/Topbar$MyFadeInListener;-><init>(Lcom/oppo/camera/rewind/Topbar;Lcom/oppo/camera/rewind/Topbar$1;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 65
    iget-object v1, p0, Lcom/oppo/camera/rewind/Topbar;->mFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/oppo/camera/rewind/Topbar$MyFadeOutListener;

    invoke-direct {v2, p0, v3}, Lcom/oppo/camera/rewind/Topbar$MyFadeOutListener;-><init>(Lcom/oppo/camera/rewind/Topbar;Lcom/oppo/camera/rewind/Topbar$1;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$302(Lcom/oppo/camera/rewind/Topbar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/oppo/camera/rewind/Topbar;->mState:I

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/camera/rewind/Topbar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/Topbar;->mFadeOutRequest:Z

    return v0
.end method

.method static synthetic access$402(Lcom/oppo/camera/rewind/Topbar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/Topbar;->mFadeOutRequest:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oppo/camera/rewind/Topbar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/oppo/camera/rewind/Topbar;->fadeOut()V

    return-void
.end method

.method private delayedFadeOut(J)V
    .locals 3
    .parameter "t"

    .prologue
    const/16 v2, 0xa

    .line 117
    iget-object v1, p0, Lcom/oppo/camera/rewind/Topbar;->mHandler:Lcom/oppo/camera/rewind/Topbar$MyHandler;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/Topbar$MyHandler;->removeMessages(I)V

    .line 118
    iget-object v1, p0, Lcom/oppo/camera/rewind/Topbar;->mHandler:Lcom/oppo/camera/rewind/Topbar$MyHandler;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/Topbar$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/camera/rewind/Topbar;->mHandler:Lcom/oppo/camera/rewind/Topbar$MyHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/oppo/camera/rewind/Topbar$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 120
    return-void
.end method

.method private doFadeOut()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/camera/rewind/Topbar;->mState:I

    .line 113
    iget-object v0, p0, Lcom/oppo/camera/rewind/Topbar;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/Topbar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    return-void
.end method

.method private fadeIn()V
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/rewind/Topbar;->mState:I

    .line 107
    iget-object v0, p0, Lcom/oppo/camera/rewind/Topbar;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/Topbar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget-wide v0, p0, Lcom/oppo/camera/rewind/Topbar;->mTimeout:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/rewind/Topbar;->delayedFadeOut(J)V

    .line 109
    return-void
.end method

.method private fadeOut()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/Topbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget v0, p0, Lcom/oppo/camera/rewind/Topbar;->mState:I

    if-nez v0, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/oppo/camera/rewind/Topbar;->doFadeOut()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget v0, p0, Lcom/oppo/camera/rewind/Topbar;->mState:I

    if-ne v0, v1, :cond_0

    .line 100
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/Topbar;->mFadeOutRequest:Z

    goto :goto_0
.end method


# virtual methods
.method public cancelPendingTimeout()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oppo/camera/rewind/Topbar;->mHandler:Lcom/oppo/camera/rewind/Topbar$MyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/Topbar$MyHandler;->removeMessages(I)V

    .line 93
    return-void
.end method

.method public getRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "dst"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oppo/camera/rewind/Topbar;->mXy:[I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/Topbar;->getLocationOnScreen([I)V

    .line 132
    iget-object v0, p0, Lcom/oppo/camera/rewind/Topbar;->mXy:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 133
    iget-object v0, p0, Lcom/oppo/camera/rewind/Topbar;->mXy:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 134
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/oppo/camera/rewind/Topbar;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 135
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/oppo/camera/rewind/Topbar;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 136
    return-void
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/oppo/camera/rewind/Topbar;->fadeOut()V

    .line 128
    return-void
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/Topbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/rewind/Topbar;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 139
    if-ne p1, p0, :cond_0

    .line 140
    sparse-switch p2, :sswitch_data_0

    .line 151
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 152
    return-void

    .line 147
    :sswitch_1
    invoke-direct {p0}, Lcom/oppo/camera/rewind/Topbar;->fadeIn()V

    goto :goto_0

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public scheduleTimeout()V
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/oppo/camera/rewind/Topbar;->mTimeout:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/rewind/Topbar;->delayedFadeOut(J)V

    .line 89
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oppo/camera/rewind/Topbar;->mActivity:Landroid/app/Activity;

    .line 73
    return-void
.end method

.method public setListener(Lcom/oppo/camera/rewind/Topbar$TopbarListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/oppo/camera/rewind/Topbar;->mListener:Lcom/oppo/camera/rewind/Topbar$TopbarListener;

    .line 77
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/Topbar;->setVisibility(I)V

    .line 124
    return-void
.end method
