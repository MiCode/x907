.class public Lcom/oppo/camera/utils/TimerSnapShotManager;
.super Ljava/lang/Object;
.source "TimerSnapShotManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;
    }
.end annotation


# static fields
.field private static final NUMBER_ICONS:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsRunning:Z

.field private mShutterButton:Landroid/widget/ImageView;

.field private mTime:I

.field private mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;

.field private mTimerOutListener:Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/camera/utils/TimerSnapShotManager;->NUMBER_ICONS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xd0t 0x0t 0x2t 0x7ft
        0xd1t 0x0t 0x2t 0x7ft
        0xd2t 0x0t 0x2t 0x7ft
        0xd3t 0x0t 0x2t 0x7ft
        0xd4t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "shutterButton"
    .parameter "controlBar"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/utils/TimerSnapShotManager$1;-><init>(Lcom/oppo/camera/utils/TimerSnapShotManager;)V

    iput-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mHandler:Landroid/os/Handler;

    .line 91
    iput-object p1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mShutterButton:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f0b000c

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/utils/TimerSnapShotManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTime:I

    return v0
.end method

.method static synthetic access$010(Lcom/oppo/camera/utils/TimerSnapShotManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTime:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTime:I

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerOutListener:Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/camera/utils/TimerSnapShotManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/oppo/camera/utils/TimerSnapShotManager;->NUMBER_ICONS:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/camera/utils/TimerSnapShotManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->setImageResource(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/views/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;

    return-object v0
.end method

.method private clearMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 131
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    :cond_0
    return-void
.end method

.method private setImageResource(I)V
    .locals 2
    .parameter "resIdIn"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 125
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 126
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 127
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mIsRunning:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTime:I

    .line 114
    iput-boolean v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mIsRunning:Z

    .line 115
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/RotateImageView;->clearAnimation()V

    .line 117
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/utils/TimerSnapShotManager;->clearMessage()V

    .line 120
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mShutterButton:Landroid/widget/ImageView;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    return-void
.end method

.method public setDegree(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public setDegreeWithoutAnimation(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 154
    :cond_0
    return-void
.end method

.method public setTimerOutListener(Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;)V
    .locals 0
    .parameter "timerOutListener"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerOutListener:Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;

    .line 143
    return-void
.end method

.method public startTakePicDelay()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 99
    const/4 v0, 0x5

    iput v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTime:I

    .line 100
    iput-boolean v2, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mIsRunning:Z

    .line 101
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    iget-object v0, p0, Lcom/oppo/camera/utils/TimerSnapShotManager;->mShutterButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    return-void
.end method
