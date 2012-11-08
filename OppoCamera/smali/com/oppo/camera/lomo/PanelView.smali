.class public Lcom/oppo/camera/lomo/PanelView;
.super Landroid/view/View;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/lomo/PanelView$FlingRunnable;,
        Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;
    }
.end annotation


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private isEnableClick:Z

.field private isFirstClickEnable:Z

.field private isFirstEnterMenu:Z

.field private mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

.field private mBigCircle:Landroid/graphics/Bitmap;

.field private mBigCircleAngle:F

.field private mBigCircleAngleStep:F

.field private mClickAnimPerStep:I

.field private mClickAnimRunnable:Ljava/lang/Runnable;

.field private mClickAnimStep:I

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCurrClickAnimStep:I

.field private mCurrItemNum:I

.field private mDownY:I

.field private mDrawTpye:I

.field private mFirstLengthCount:I

.field private mFlingDerection:I

.field private mFlingRunnable:Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsAnimation:Z

.field private mIsClick:Z

.field private mIsFilling:Z

.field private mIsMove:Z

.field private mIsSilent:Z

.field private mIsStopRun:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOffset:I

.field private mOldY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPixelToDegree:F

.field private mPixelsNumBetweenItems:I

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mRegionInfos:[Landroid/graphics/RectF;

.field private mScaleLength:[I

.field private mSelectItemBitmap:[Landroid/graphics/Bitmap;

.field private mSelectItemId:[I

.field private mSmallCircle:Landroid/graphics/Bitmap;

.field private mSmallCircleAngle:F

.field private mSmallCircleAngleStep:F

.field private mStartIndex:I

.field private mTotalCount:I

.field private mUnSelectItemBitmap:[Landroid/graphics/Bitmap;

.field private mUnSelectItemId:[I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v5, 0x3e99999a

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->mSmallCircle:Landroid/graphics/Bitmap;

    .line 64
    iput-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->mBigCircle:Landroid/graphics/Bitmap;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mUnSelectItemId:[I

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mSelectItemId:[I

    .line 74
    iput v4, p0, Lcom/oppo/camera/lomo/PanelView;->mSmallCircleAngle:F

    .line 75
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/oppo/camera/lomo/PanelView;->mSmallCircleAngleStep:F

    .line 76
    iput v4, p0, Lcom/oppo/camera/lomo/PanelView;->mBigCircleAngle:F

    .line 77
    iput v5, p0, Lcom/oppo/camera/lomo/PanelView;->mBigCircleAngleStep:F

    .line 78
    iput v5, p0, Lcom/oppo/camera/lomo/PanelView;->mPixelToDegree:F

    .line 81
    iput-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 83
    iput-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->audioManager:Landroid/media/AudioManager;

    .line 88
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/PanelView;->mIsMove:Z

    .line 89
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/PanelView;->mIsStopRun:Z

    .line 90
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/PanelView;->mIsSilent:Z

    .line 91
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z

    .line 92
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/PanelView;->mIsClick:Z

    .line 93
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/PanelView;->isEnableClick:Z

    .line 94
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/PanelView;->isFirstEnterMenu:Z

    .line 95
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/PanelView;->isFirstClickEnable:Z

    .line 98
    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mYStart:I

    .line 99
    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mOldY:I

    .line 100
    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mDownY:I

    .line 102
    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mCount:I

    .line 103
    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    .line 104
    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 105
    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mDrawTpye:I

    .line 106
    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    .line 107
    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I

    .line 108
    const/high16 v0, 0x41f0

    iget v1, p0, Lcom/oppo/camera/lomo/PanelView;->mPixelToDegree:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oppo/camera/lomo/PanelView;->mPixelsNumBetweenItems:I

    .line 111
    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimStep:I

    .line 112
    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mCurrClickAnimStep:I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimPerStep:I

    .line 114
    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mFirstLengthCount:I

    .line 116
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/PanelView;->mIsAnimation:Z

    .line 118
    new-instance v0, Lcom/oppo/camera/lomo/PanelView$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/PanelView$1;-><init>(Lcom/oppo/camera/lomo/PanelView;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mHandler:Landroid/os/Handler;

    .line 786
    new-instance v0, Lcom/oppo/camera/lomo/PanelView$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/PanelView$2;-><init>(Lcom/oppo/camera/lomo/PanelView;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimRunnable:Ljava/lang/Runnable;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mPaint:Landroid/graphics/Paint;

    .line 155
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iput-object p1, p0, Lcom/oppo/camera/lomo/PanelView;->mContext:Landroid/content/Context;

    .line 157
    invoke-direct {p0}, Lcom/oppo/camera/lomo/PanelView;->initBitmap()V

    .line 158
    invoke-direct {p0}, Lcom/oppo/camera/lomo/PanelView;->initPoints()V

    .line 159
    invoke-direct {p0}, Lcom/oppo/camera/lomo/PanelView;->initRegionInfo()V

    .line 160
    invoke-direct {p0}, Lcom/oppo/camera/lomo/PanelView;->initItemInfo()V

    .line 161
    invoke-direct {p0}, Lcom/oppo/camera/lomo/PanelView;->initScaleLength()V

    .line 162
    return-void

    .line 65
    nop

    :array_0
    .array-data 0x4
        0x74t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
        0x72t 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
        0x7et 0x0t 0x2t 0x7ft
    .end array-data

    .line 68
    :array_1
    .array-data 0x4
        0x73t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
        0x71t 0x0t 0x2t 0x7ft
        0x6ft 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/oppo/camera/lomo/PanelView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/camera/lomo/PanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/camera/lomo/PanelView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/oppo/camera/lomo/PanelView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z

    return p1
.end method

.method static synthetic access$102(Lcom/oppo/camera/lomo/PanelView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    return p1
.end method

.method static synthetic access$1100(Lcom/oppo/camera/lomo/PanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oppo/camera/lomo/PanelView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mPixelToDegree:F

    return v0
.end method

.method static synthetic access$1300(Lcom/oppo/camera/lomo/PanelView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/PanelView;->onDealActionMove(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oppo/camera/lomo/PanelView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/PanelView;->onDealActionUp(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oppo/camera/lomo/PanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oppo/camera/lomo/PanelView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/PanelView;->mIsStopRun:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/oppo/camera/lomo/PanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mCurrClickAnimStep:I

    return v0
.end method

.method static synthetic access$1708(Lcom/oppo/camera/lomo/PanelView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mCurrClickAnimStep:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/lomo/PanelView;->mCurrClickAnimStep:I

    return v0
.end method

.method static synthetic access$1800(Lcom/oppo/camera/lomo/PanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimStep:I

    return v0
.end method

.method static synthetic access$1900(Lcom/oppo/camera/lomo/PanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimPerStep:I

    return v0
.end method

.method static synthetic access$2002(Lcom/oppo/camera/lomo/PanelView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/oppo/camera/lomo/PanelView;->mCurrItemNum:I

    return p1
.end method

.method static synthetic access$202(Lcom/oppo/camera/lomo/PanelView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/PanelView;->mIsClick:Z

    return p1
.end method

.method static synthetic access$302(Lcom/oppo/camera/lomo/PanelView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/PanelView;->isEnableClick:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/camera/lomo/PanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/oppo/camera/lomo/PanelView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    return p1
.end method

.method static synthetic access$410(Lcom/oppo/camera/lomo/PanelView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/camera/lomo/PanelView;)Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/oppo/camera/lomo/PanelView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/PanelView;->isFirstEnterMenu:Z

    return p1
.end method

.method static synthetic access$702(Lcom/oppo/camera/lomo/PanelView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/oppo/camera/lomo/PanelView;->mDrawTpye:I

    return p1
.end method

.method static synthetic access$800(Lcom/oppo/camera/lomo/PanelView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/camera/lomo/PanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initBitmap()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 190
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cb

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->mSmallCircle:Landroid/graphics/Bitmap;

    .line 192
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020009

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->mBigCircle:Landroid/graphics/Bitmap;

    .line 194
    new-array v1, v4, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->mSelectItemBitmap:[Landroid/graphics/Bitmap;

    .line 195
    new-array v1, v4, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->mUnSelectItemBitmap:[Landroid/graphics/Bitmap;

    .line 197
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 198
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->mSelectItemBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/oppo/camera/lomo/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mSelectItemId:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 200
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->mUnSelectItemBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/oppo/camera/lomo/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mUnSelectItemId:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method private initItemInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 222
    iget-object v2, p0, Lcom/oppo/camera/lomo/PanelView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/oppo/camera/CommConfig;->CAMERA_SETTING_SHAREPREFERENCE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 223
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 224
    const-string v2, "lomo main menu"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 226
    .local v1, temp:I
    packed-switch v1, :pswitch_data_0

    .line 244
    :goto_0
    iget v2, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mCurrItemNum:I

    .line 246
    .end local v1           #temp:I
    :cond_0
    const/4 v2, 0x5

    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I

    .line 247
    return-void

    .line 228
    .restart local v1       #temp:I
    :pswitch_0
    iput v4, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    goto :goto_0

    .line 231
    :pswitch_1
    iput v5, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    goto :goto_0

    .line 234
    :pswitch_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    goto :goto_0

    .line 237
    :pswitch_3
    const/4 v2, 0x3

    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    goto :goto_0

    .line 240
    :pswitch_4
    const/4 v2, 0x4

    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initPoints()V
    .locals 12

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, i:I
    const/high16 v2, -0x4100

    .line 208
    .local v2, stepAngle:F
    const/high16 v0, 0x41b4

    .line 210
    .local v0, currAngle:F
    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x96

    if-ge v1, v4, :cond_0

    .line 211
    add-float/2addr v0, v2

    .line 212
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 213
    .local v3, tempPoint:Landroid/graphics/PointF;
    const-wide v4, 0x4078600000000000L

    float-to-double v6, v0

    const-wide v8, 0x400921fb54442d18L

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x406e

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x403e

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 215
    const-wide v4, 0x405f400000000000L

    const-wide v6, 0x4078600000000000L

    float-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x403e

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 217
    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v3           #tempPoint:Landroid/graphics/PointF;
    :cond_0
    return-void
.end method

.method private initRegionInfo()V
    .locals 9

    .prologue
    const v8, 0x43898000

    const/high16 v7, 0x4348

    const/high16 v4, 0x4334

    const/high16 v6, 0x42b4

    const/4 v5, 0x0

    .line 250
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mRegionInfos:[Landroid/graphics/RectF;

    .line 251
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mRegionInfos:[Landroid/graphics/RectF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5, v5, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 252
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mRegionInfos:[Landroid/graphics/RectF;

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x4352

    invoke-direct {v2, v5, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 253
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mRegionInfos:[Landroid/graphics/RectF;

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5, v4, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 254
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mRegionInfos:[Landroid/graphics/RectF;

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x4320

    const v4, 0x43b68000

    invoke-direct {v2, v5, v8, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 255
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mRegionInfos:[Landroid/graphics/RectF;

    const/4 v1, 0x4

    new-instance v2, Landroid/graphics/RectF;

    const v3, 0x43b68000

    const/high16 v4, 0x43dc

    invoke-direct {v2, v5, v3, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 256
    return-void
.end method

.method private initScaleLength()V
    .locals 9

    .prologue
    const/16 v8, 0x1e

    .line 259
    new-array v1, v8, [I

    iput-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->mScaleLength:[I

    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 262
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->mScaleLength:[I

    const-wide/high16 v2, 0x404e

    const-wide v4, 0x3ff547ae147ae148L

    int-to-double v6, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v0

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method

.method private judgeRegion(FF)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 268
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->mRegionInfos:[Landroid/graphics/RectF;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->mRegionInfos:[Landroid/graphics/RectF;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->mRegionInfos:[Landroid/graphics/RectF;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView;->mRegionInfos:[Landroid/graphics/RectF;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 273
    .end local v0           #i:I
    :goto_1
    return v0

    .line 268
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private onDealActionDown(I)V
    .locals 3
    .parameter "Y"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 500
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z

    if-nez v0, :cond_0

    .line 501
    iput v1, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    .line 502
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/PanelView;->isEnableClick:Z

    .line 506
    :goto_0
    iput-boolean v1, p0, Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z

    .line 507
    iput-boolean v1, p0, Lcom/oppo/camera/lomo/PanelView;->mIsMove:Z

    .line 508
    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mDrawTpye:I

    .line 509
    iput p1, p0, Lcom/oppo/camera/lomo/PanelView;->mYStart:I

    .line 510
    iput v1, p0, Lcom/oppo/camera/lomo/PanelView;->mCount:I

    .line 511
    return-void

    .line 504
    :cond_0
    iput-boolean v1, p0, Lcom/oppo/camera/lomo/PanelView;->isEnableClick:Z

    goto :goto_0
.end method

.method private onDealActionMove(I)V
    .locals 9
    .parameter "Y"

    .prologue
    const/4 v8, -0x1

    const/high16 v3, 0x3f80

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, distance:I
    iput-boolean v7, p0, Lcom/oppo/camera/lomo/PanelView;->mIsAnimation:Z

    .line 516
    iget-boolean v4, p0, Lcom/oppo/camera/lomo/PanelView;->mIsMove:Z

    if-eqz v4, :cond_0

    .line 517
    iget v4, p0, Lcom/oppo/camera/lomo/PanelView;->mYStart:I

    sub-int v0, p1, v4

    .line 520
    :cond_0
    iget-boolean v4, p0, Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z

    if-eqz v4, :cond_1

    .line 521
    move v0, p1

    .line 523
    :cond_1
    if-eqz v0, :cond_8

    .line 524
    int-to-float v4, v0

    iget v5, p0, Lcom/oppo/camera/lomo/PanelView;->mPixelToDegree:F

    mul-float v2, v4, v5

    .line 525
    .local v2, tempDegree:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_2

    .line 526
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_6

    move v2, v3

    .line 528
    :cond_2
    :goto_0
    iget v3, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 530
    .local v1, tempCount:F
    const/high16 v3, 0x41f0

    div-float v3, v1, v3

    float-to-int v3, v3

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mCount:I

    .line 531
    iget v3, p0, Lcom/oppo/camera/lomo/PanelView;->mCount:I

    mul-int/lit8 v3, v3, 0x1e

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    .line 532
    iget v3, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_7

    .line 533
    iput v6, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    .line 534
    iput v7, p0, Lcom/oppo/camera/lomo/PanelView;->mCount:I

    .line 543
    .end local v1           #tempCount:F
    .end local v2           #tempDegree:F
    :cond_3
    :goto_1
    if-lez v0, :cond_9

    .line 544
    iput v7, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 552
    :cond_4
    :goto_2
    const/4 v3, 0x2

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mDrawTpye:I

    .line 553
    iput p1, p0, Lcom/oppo/camera/lomo/PanelView;->mYStart:I

    .line 554
    iget v3, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    iget v4, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    iget v5, p0, Lcom/oppo/camera/lomo/PanelView;->mCount:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I

    rem-int/2addr v4, v5

    if-eq v3, v4, :cond_5

    .line 555
    iget v3, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    iget v4, p0, Lcom/oppo/camera/lomo/PanelView;->mCount:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    .line 558
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/PanelView;->invalidate()V

    .line 560
    return-void

    .line 526
    .restart local v2       #tempDegree:F
    :cond_6
    const/high16 v2, -0x4080

    goto :goto_0

    .line 535
    .restart local v1       #tempCount:F
    :cond_7
    iget v3, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    const/16 v4, -0x1e

    if-ne v3, v4, :cond_3

    .line 536
    iput v6, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    .line 537
    iput v8, p0, Lcom/oppo/camera/lomo/PanelView;->mCount:I

    goto :goto_1

    .line 540
    .end local v1           #tempCount:F
    .end local v2           #tempDegree:F
    :cond_8
    iput v6, p0, Lcom/oppo/camera/lomo/PanelView;->mCount:I

    goto :goto_1

    .line 545
    :cond_9
    if-gez v0, :cond_a

    .line 546
    iput v8, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    goto :goto_2

    .line 547
    :cond_a
    iget-boolean v3, p0, Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z

    if-nez v3, :cond_4

    .line 548
    iput v6, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    goto :goto_2
.end method

.method private onDealActionUp(I)V
    .locals 4
    .parameter "Y"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 413
    if-eq p1, v1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 415
    :cond_0
    iput-boolean v1, p0, Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z

    .line 416
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/PanelView;->mIsMove:Z

    .line 417
    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mDrawTpye:I

    .line 418
    iput p1, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 419
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingRunnable:Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    if-nez v0, :cond_1

    .line 420
    new-instance v0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;-><init>(Lcom/oppo/camera/lomo/PanelView;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingRunnable:Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingRunnable:Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    mul-int/lit8 v1, p1, -0x1

    mul-int/lit16 v1, v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->start(I)V

    .line 454
    :cond_2
    :goto_0
    return-void

    .line 423
    :cond_3
    if-eq p1, v3, :cond_4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    .line 425
    :cond_4
    iput-boolean v1, p0, Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z

    .line 426
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/PanelView;->mIsMove:Z

    .line 427
    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mDrawTpye:I

    .line 428
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 429
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingRunnable:Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    if-nez v0, :cond_5

    .line 430
    new-instance v0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;-><init>(Lcom/oppo/camera/lomo/PanelView;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingRunnable:Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    .line 432
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingRunnable:Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    mul-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->start(I)V

    goto :goto_0

    .line 433
    :cond_6
    if-nez p1, :cond_2

    .line 435
    iput v1, p0, Lcom/oppo/camera/lomo/PanelView;->mDrawTpye:I

    .line 436
    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mCount:I

    .line 437
    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    .line 438
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/PanelView;->mIsMove:Z

    .line 439
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mCurrItemNum:I

    iget v1, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    if-eq v0, v1, :cond_7

    .line 440
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/camera/lomo/PanelView;->mCurrItemNum:I

    .line 445
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    iget v1, p0, Lcom/oppo/camera/lomo/PanelView;->mCurrItemNum:I

    invoke-interface {v0, v1}, Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;->OnAnimationFinish(I)V

    .line 447
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 451
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/PanelView;->postInvalidate()V

    goto :goto_0

    .line 443
    :cond_7
    iput v2, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    goto :goto_1
.end method

.method private onDealActionUpFilling(I)V
    .locals 8
    .parameter "y"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 462
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 464
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mMinimumVelocity:I

    .line 466
    const/16 v3, 0x5dc

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mMaximumVelocity:I

    .line 468
    iget-object v2, p0, Lcom/oppo/camera/lomo/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 469
    .local v2, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    iget v4, p0, Lcom/oppo/camera/lomo/PanelView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 471
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    float-to-int v1, v3

    .line 473
    .local v1, initialVelocity:I
    iget v3, p0, Lcom/oppo/camera/lomo/PanelView;->mMinimumVelocity:I

    if-le v1, v3, :cond_1

    .line 474
    iput-boolean v6, p0, Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z

    .line 475
    iput-boolean v5, p0, Lcom/oppo/camera/lomo/PanelView;->mIsMove:Z

    .line 476
    iput v7, p0, Lcom/oppo/camera/lomo/PanelView;->mDrawTpye:I

    .line 477
    iput v6, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 479
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingRunnable:Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    if-nez v3, :cond_0

    .line 480
    new-instance v3, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    invoke-direct {v3, p0}, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;-><init>(Lcom/oppo/camera/lomo/PanelView;)V

    iput-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingRunnable:Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    .line 482
    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingRunnable:Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->start(I)V

    .line 496
    :goto_0
    return-void

    .line 483
    :cond_1
    iget v3, p0, Lcom/oppo/camera/lomo/PanelView;->mMinimumVelocity:I

    neg-int v3, v3

    if-ge v1, v3, :cond_3

    .line 484
    iput-boolean v6, p0, Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z

    .line 485
    iput-boolean v5, p0, Lcom/oppo/camera/lomo/PanelView;->mIsMove:Z

    .line 486
    iput v7, p0, Lcom/oppo/camera/lomo/PanelView;->mDrawTpye:I

    .line 487
    const/4 v3, -0x1

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 488
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingRunnable:Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    if-nez v3, :cond_2

    .line 489
    new-instance v3, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    invoke-direct {v3, p0}, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;-><init>(Lcom/oppo/camera/lomo/PanelView;)V

    iput-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingRunnable:Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    .line 491
    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingRunnable:Lcom/oppo/camera/lomo/PanelView$FlingRunnable;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->start(I)V

    goto :goto_0

    .line 493
    :cond_3
    iput v5, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    goto :goto_0
.end method


# virtual methods
.method public enableClick()V
    .locals 1

    .prologue
    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/PanelView;->isFirstClickEnable:Z

    .line 847
    return-void
.end method

.method public getAnimationState()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/PanelView;->mIsAnimation:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/PanelView;->mIsStopRun:Z

    .line 168
    return-void
.end method

.method public onDealOffset()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, -0x1

    const/4 v2, -0x6

    const/4 v3, 0x1

    .line 563
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    if-lt v0, v2, :cond_1

    .line 564
    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 565
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    neg-int v0, v0

    iput v0, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimStep:I

    .line 587
    :cond_0
    :goto_0
    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimPerStep:I

    .line 588
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/lomo/PanelView;->mCurrClickAnimStep:I

    .line 589
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 591
    :goto_1
    return-void

    .line 568
    :cond_1
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    if-le v0, v5, :cond_2

    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_2

    .line 569
    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 571
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    rsub-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimStep:I

    goto :goto_0

    .line 572
    :cond_2
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    if-ge v0, v2, :cond_3

    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    const/16 v1, -0x1e

    if-le v0, v1, :cond_3

    .line 573
    iput v4, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 574
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    add-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimStep:I

    goto :goto_0

    .line 576
    :cond_3
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    if-gt v0, v5, :cond_4

    .line 577
    iput v4, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 578
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    iput v0, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimStep:I

    goto :goto_0

    .line 581
    :cond_4
    iget v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    if-nez v0, :cond_0

    .line 582
    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mDrawTpye:I

    .line 584
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/PanelView;->postInvalidate()V

    goto :goto_1
.end method

.method public onDestoryBitmap()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 850
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mUnSelectItemBitmap:[Landroid/graphics/Bitmap;

    .local v0, arr$:[Landroid/graphics/Bitmap;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 851
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 852
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 850
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 856
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mSelectItemBitmap:[Landroid/graphics/Bitmap;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 857
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 858
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 856
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 862
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView;->mSmallCircle:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView;->mSmallCircle:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 863
    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView;->mSmallCircle:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 864
    iput-object v5, p0, Lcom/oppo/camera/lomo/PanelView;->mSmallCircle:Landroid/graphics/Bitmap;

    .line 866
    :cond_4
    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView;->mBigCircle:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView;->mBigCircle:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 867
    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView;->mBigCircle:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 868
    iput-object v5, p0, Lcom/oppo/camera/lomo/PanelView;->mBigCircle:Landroid/graphics/Bitmap;

    .line 870
    :cond_5
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/PanelView;->mIsStopRun:Z

    .line 174
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    .line 178
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x1

    const/high16 v11, 0x41a0

    const/16 v10, 0x2d

    .line 700
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 701
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 702
    iget v6, p0, Lcom/oppo/camera/lomo/PanelView;->mDrawTpye:I

    packed-switch v6, :pswitch_data_0

    .line 784
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 785
    return-void

    .line 704
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v13, :cond_0

    .line 705
    iget v6, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v0

    iget v7, p0, Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I

    rem-int v1, v6, v7

    .line 706
    .local v1, itemId:I
    mul-int/lit8 v6, v0, 0x1e

    add-int/lit8 v6, v6, 0xf

    iget v7, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    add-int/2addr v6, v7

    add-int/lit16 v6, v6, 0x96

    rem-int/lit16 v2, v6, 0x96

    .line 709
    .local v2, posId:I
    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mUnSelectItemBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v6, v1

    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/oppo/camera/lomo/PanelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    .end local v0           #i:I
    .end local v1           #itemId:I
    .end local v2           #posId:I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v13, :cond_0

    .line 716
    iget v6, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v0

    iget v7, p0, Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I

    rem-int v1, v6, v7

    .line 717
    .restart local v1       #itemId:I
    mul-int/lit8 v6, v0, 0x1e

    add-int/lit8 v6, v6, 0xf

    iget v7, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    add-int/2addr v6, v7

    add-int/lit16 v6, v6, 0x96

    rem-int/lit16 v2, v6, 0x96

    .line 719
    .restart local v2       #posId:I
    const/16 v6, 0xe

    if-le v2, v6, :cond_1

    if-ge v2, v10, :cond_1

    .line 720
    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mUnSelectItemBitmap:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/oppo/camera/lomo/PanelView;->mScaleLength:[I

    add-int/lit8 v8, v2, -0xf

    div-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    iget-object v8, p0, Lcom/oppo/camera/lomo/PanelView;->mScaleLength:[I

    add-int/lit8 v9, v2, -0xf

    div-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    invoke-static {v6, v7, v8, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 724
    .local v4, tempBitmap:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mScaleLength:[I

    add-int/lit8 v7, v2, -0xf

    div-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v5, v6, -0x1e

    .line 725
    .local v5, tempLength:I
    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    int-to-float v7, v5

    sub-float v7, v6, v7

    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    int-to-float v8, v5

    sub-float/2addr v6, v8

    iget-object v8, p0, Lcom/oppo/camera/lomo/PanelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 715
    .end local v4           #tempBitmap:Landroid/graphics/Bitmap;
    .end local v5           #tempLength:I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 728
    :cond_1
    if-ne v2, v10, :cond_2

    .line 729
    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mSelectItemBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v6, v1

    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v8, v6, v11

    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v11

    iget-object v9, p0, Lcom/oppo/camera/lomo/PanelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 732
    :cond_2
    if-le v2, v10, :cond_3

    const/16 v6, 0x4c

    if-ge v2, v6, :cond_3

    .line 733
    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mUnSelectItemBitmap:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/oppo/camera/lomo/PanelView;->mScaleLength:[I

    rsub-int/lit8 v8, v2, 0x4b

    div-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    iget-object v8, p0, Lcom/oppo/camera/lomo/PanelView;->mScaleLength:[I

    rsub-int/lit8 v9, v2, 0x4b

    div-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    invoke-static {v6, v7, v8, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 737
    .restart local v4       #tempBitmap:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mScaleLength:[I

    rsub-int/lit8 v7, v2, 0x4b

    div-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v5, v6, -0x1e

    .line 738
    .restart local v5       #tempLength:I
    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    int-to-float v7, v5

    sub-float v7, v6, v7

    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    int-to-float v8, v5

    sub-float/2addr v6, v8

    iget-object v8, p0, Lcom/oppo/camera/lomo/PanelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 742
    .end local v4           #tempBitmap:Landroid/graphics/Bitmap;
    .end local v5           #tempLength:I
    :cond_3
    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mUnSelectItemBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v6, v1

    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/oppo/camera/lomo/PanelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 765
    .end local v0           #i:I
    .end local v1           #itemId:I
    .end local v2           #posId:I
    :pswitch_2
    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mSelectItemBitmap:[Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    aget-object v7, v6, v7

    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v8, v6, v11

    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v11

    iget-object v9, p0, Lcom/oppo/camera/lomo/PanelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 769
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, v13, :cond_0

    .line 770
    if-eq v0, v12, :cond_4

    .line 771
    iget v6, p0, Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v0

    iget v7, p0, Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I

    rem-int v1, v6, v7

    .line 772
    .restart local v1       #itemId:I
    mul-int/lit8 v6, v0, 0x1e

    add-int/lit8 v6, v6, 0xf

    iget v7, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    add-int/2addr v6, v7

    add-int/lit16 v6, v6, 0x96

    rem-int/lit16 v3, v6, 0x96

    .line 774
    .local v3, posid:I
    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mUnSelectItemBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v6, v1

    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/oppo/camera/lomo/PanelView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/oppo/camera/lomo/PanelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 769
    .end local v1           #itemId:I
    .end local v3           #posid:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/16 v9, 0xc8

    const/4 v8, -0x1

    const/4 v7, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 278
    iget-boolean v3, p0, Lcom/oppo/camera/lomo/PanelView;->isFirstClickEnable:Z

    if-nez v3, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v6

    .line 282
    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 283
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 285
    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    .line 288
    .local v0, Y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 290
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/oppo/camera/lomo/PanelView;->judgeRegion(FF)I

    move-result v3

    if-eq v3, v8, :cond_3

    .line 291
    iput-boolean v6, p0, Lcom/oppo/camera/lomo/PanelView;->mIsAnimation:Z

    .line 293
    :cond_3
    invoke-direct {p0, v0}, Lcom/oppo/camera/lomo/PanelView;->onDealActionDown(I)V

    .line 294
    iput v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOldY:I

    .line 295
    iput v0, p0, Lcom/oppo/camera/lomo/PanelView;->mDownY:I

    goto :goto_0

    .line 299
    :pswitch_1
    iget-boolean v3, p0, Lcom/oppo/camera/lomo/PanelView;->mIsMove:Z

    if-nez v3, :cond_4

    iget v3, p0, Lcom/oppo/camera/lomo/PanelView;->mDownY:I

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x96

    if-le v3, v4, :cond_0

    .line 300
    :cond_4
    iget-boolean v3, p0, Lcom/oppo/camera/lomo/PanelView;->mIsMove:Z

    if-nez v3, :cond_5

    .line 301
    iput v0, p0, Lcom/oppo/camera/lomo/PanelView;->mYStart:I

    .line 303
    :cond_5
    iput-boolean v6, p0, Lcom/oppo/camera/lomo/PanelView;->mIsMove:Z

    .line 304
    iget v3, p0, Lcom/oppo/camera/lomo/PanelView;->mOldY:I

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    .line 305
    iput-boolean v6, p0, Lcom/oppo/camera/lomo/PanelView;->mIsAnimation:Z

    .line 306
    iput-boolean v5, p0, Lcom/oppo/camera/lomo/PanelView;->mIsClick:Z

    .line 307
    iput-boolean v5, p0, Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z

    .line 308
    iput v0, p0, Lcom/oppo/camera/lomo/PanelView;->mOldY:I

    .line 309
    invoke-direct {p0, v0}, Lcom/oppo/camera/lomo/PanelView;->onDealActionMove(I)V

    goto :goto_0

    .line 316
    :pswitch_2
    iget v3, p0, Lcom/oppo/camera/lomo/PanelView;->mDownY:I

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 317
    .local v2, tempY:I
    iget-boolean v3, p0, Lcom/oppo/camera/lomo/PanelView;->isEnableClick:Z

    if-ne v3, v6, :cond_7

    const/16 v3, 0xf

    if-lt v2, v3, :cond_7

    const/16 v3, 0x96

    if-gt v2, v3, :cond_7

    .line 318
    iput-boolean v6, p0, Lcom/oppo/camera/lomo/PanelView;->mIsAnimation:Z

    .line 319
    iget v3, p0, Lcom/oppo/camera/lomo/PanelView;->mDownY:I

    sub-int/2addr v3, v0

    if-lez v3, :cond_6

    .line 320
    const/16 v3, 0xa

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimStep:I

    .line 321
    const/4 v3, 0x3

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimPerStep:I

    .line 322
    iput v5, p0, Lcom/oppo/camera/lomo/PanelView;->mCurrClickAnimStep:I

    .line 323
    iput v8, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 324
    iput v5, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    .line 325
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    invoke-interface {v3, v9}, Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;->OnAnimationStart(I)V

    .line 326
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 336
    :goto_1
    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    invoke-virtual {v3, v7}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    goto/16 :goto_0

    .line 328
    :cond_6
    const/16 v3, 0xa

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimStep:I

    .line 329
    const/4 v3, 0x3

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimPerStep:I

    .line 330
    iput v5, p0, Lcom/oppo/camera/lomo/PanelView;->mCurrClickAnimStep:I

    .line 331
    iput v6, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 332
    iput v5, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    .line 333
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    invoke-interface {v3, v9}, Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;->OnAnimationStart(I)V

    .line 334
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 339
    :cond_7
    iget-boolean v3, p0, Lcom/oppo/camera/lomo/PanelView;->isEnableClick:Z

    if-ne v3, v6, :cond_a

    const/16 v3, 0xf

    if-ge v2, v3, :cond_a

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/oppo/camera/lomo/PanelView;->judgeRegion(FF)I

    move-result v1

    .line 341
    .local v1, region:I
    if-eq v1, v8, :cond_8

    if-ne v1, v6, :cond_9

    .line 342
    :cond_8
    iput-boolean v5, p0, Lcom/oppo/camera/lomo/PanelView;->mIsAnimation:Z

    goto/16 :goto_0

    .line 345
    :cond_9
    iput-boolean v6, p0, Lcom/oppo/camera/lomo/PanelView;->mIsAnimation:Z

    .line 347
    packed-switch v1, :pswitch_data_1

    .line 373
    :goto_2
    :pswitch_3
    iput v5, p0, Lcom/oppo/camera/lomo/PanelView;->mCurrClickAnimStep:I

    .line 374
    iput v5, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    .line 376
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 377
    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    invoke-virtual {v3, v7}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    goto/16 :goto_0

    .line 349
    :pswitch_4
    iput v7, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimStep:I

    .line 350
    const/4 v3, 0x5

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimPerStep:I

    .line 351
    iput v6, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 352
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    const/16 v4, 0x96

    invoke-interface {v3, v4}, Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;->OnAnimationStart(I)V

    goto :goto_2

    .line 355
    :pswitch_5
    iput v7, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimStep:I

    .line 356
    const/4 v3, 0x5

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimPerStep:I

    .line 357
    iput v8, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 358
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    const/16 v4, 0x96

    invoke-interface {v3, v4}, Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;->OnAnimationStart(I)V

    goto :goto_2

    .line 361
    :pswitch_6
    const/16 v3, 0xa

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimStep:I

    .line 362
    iput v7, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimPerStep:I

    .line 363
    iput v8, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 364
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    invoke-interface {v3, v9}, Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;->OnAnimationStart(I)V

    goto :goto_2

    .line 367
    :pswitch_7
    const/16 v3, 0x12

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimStep:I

    .line 368
    const/4 v3, 0x5

    iput v3, p0, Lcom/oppo/camera/lomo/PanelView;->mClickAnimPerStep:I

    .line 369
    iput v8, p0, Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I

    .line 370
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    const/16 v4, 0x12c

    invoke-interface {v3, v4}, Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;->OnAnimationStart(I)V

    goto :goto_2

    .line 381
    .end local v1           #region:I
    :cond_a
    iget-boolean v3, p0, Lcom/oppo/camera/lomo/PanelView;->mIsMove:Z

    if-eqz v3, :cond_e

    .line 382
    const/16 v3, 0x50

    if-ge v2, v3, :cond_c

    .line 383
    iget v3, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    if-eqz v3, :cond_b

    .line 384
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    invoke-interface {v3, v9}, Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;->OnAnimationStart(I)V

    .line 385
    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    invoke-virtual {v3, v7}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 387
    :cond_b
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/PanelView;->onDealOffset()V

    goto/16 :goto_0

    .line 388
    :cond_c
    const/16 v3, 0x50

    if-lt v2, v3, :cond_0

    .line 389
    invoke-direct {p0, v0}, Lcom/oppo/camera/lomo/PanelView;->onDealActionUpFilling(I)V

    .line 390
    iget-boolean v3, p0, Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z

    if-nez v3, :cond_0

    .line 391
    iget v3, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    if-eqz v3, :cond_d

    .line 392
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    invoke-interface {v3, v9}, Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;->OnAnimationStart(I)V

    .line 393
    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    invoke-virtual {v3, v7}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 395
    :cond_d
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/PanelView;->onDealOffset()V

    goto/16 :goto_0

    .line 399
    :cond_e
    iget v3, p0, Lcom/oppo/camera/lomo/PanelView;->mOffset:I

    if-eqz v3, :cond_f

    .line 400
    iget-object v3, p0, Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    invoke-interface {v3, v9}, Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;->OnAnimationStart(I)V

    .line 401
    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    invoke-virtual {v3, v7}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 403
    :cond_f
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/PanelView;->onDealOffset()V

    goto/16 :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 347
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setAnimationState(Z)V
    .locals 0
    .parameter "isAnimation"

    .prologue
    .line 459
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/PanelView;->mIsAnimation:Z

    .line 460
    return-void
.end method

.method public setOnAnimationStateListener(Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    .line 187
    return-void
.end method

.method public stopRollGear()V
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 839
    return-void
.end method
