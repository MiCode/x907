.class public Lcom/oppo/camera/rewind/ui/Strip;
.super Lcom/oppo/camera/rewind/ui/Widget;
.source "Strip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/ui/Strip$1;,
        Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;,
        Lcom/oppo/camera/rewind/ui/Strip$Transition;,
        Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;
    }
.end annotation


# instance fields
.field private mAcc:F

.field private mBBox:Landroid/graphics/Rect;

.field private mBgAlpha:I

.field private mBgDrawer:Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mCurPoint:Landroid/graphics/Point;

.field private mCurPos:F

.field private mCurRect:Landroid/graphics/Rect;

.field mCurSize:Lcom/scalado/base/Size;

.field private mCurTmpSize:Lcom/scalado/base/Size;

.field mDownItem:Lcom/oppo/camera/rewind/ui/Item;

.field private mDownPoint:Landroid/graphics/Point;

.field mDrawOrder:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/ui/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawTxt:Z

.field private mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

.field private mFrameRect:Landroid/graphics/Rect;

.field private mHasAnimItem:Z

.field private mIdentityDrawOrder:Z

.field private mIdleTime:J

.field private mItemAlpha:I

.field private mItemPaint:Landroid/graphics/Paint;

.field mItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/ui/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFocusedItem:Lcom/oppo/camera/rewind/ui/Item;

.field protected mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

.field mLocked:Z

.field private mMaxLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

.field private mMaxModal:Z

.field private mMinLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

.field private mMinVel:F

.field private mNextSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevItem:Lcom/oppo/camera/rewind/ui/Item;

.field private mQueuedTransitions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/ui/Strip$Transition;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

.field private mSelectedOnDownItem:Lcom/oppo/camera/rewind/ui/Item;

.field private mSelectedPaint:Landroid/graphics/Paint;

.field protected mState:I

.field private mT0:J

.field private mTargetItem:Lcom/oppo/camera/rewind/ui/Item;

.field private mTmpBbox:Landroid/graphics/Rect;

.field private mTnMaxScale:F

.field private mTnScale:F

.field private mTnScaleMaxDist:F

.field private mTouchDown:Z

.field private mTouchState:I

.field private mTouchTmpPoint:Landroid/graphics/Point;

.field private mTouchTmpRect:Landroid/graphics/Rect;

.field private mTransP0:Landroid/graphics/Point;

.field private mTransP1:Landroid/graphics/Point;

.field private mTransParam:F

.field private mTransT:J

.field private mTransT0:J

.field private mTransT1:J

.field private mTxtDx:I

.field private mTxtDy:I

.field private mTxtPaint:Landroid/graphics/Paint;

.field private mVelMax:F

.field private mVelStickines:F

.field private mVelStopLimit:F

.field private mVelTrapper:Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;

.field private mVelocity:F

.field private mVisited:I


# direct methods
.method public constructor <init>(Lcom/oppo/camera/rewind/ui/UiManager;)V
    .locals 10
    .parameter "uiManager"

    .prologue
    const/16 v9, 0xff

    const/4 v8, 0x1

    const/high16 v7, -0x4000

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 117
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/ui/Widget;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;)V

    .line 19
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDrawOrder:Ljava/util/Vector;

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mIdleTime:J

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mQueuedTransitions:Ljava/util/Vector;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPos:F

    .line 34
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTnScale:F

    .line 36
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTnMaxScale:F

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTnScaleMaxDist:F

    .line 40
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    .line 41
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPoint:Landroid/graphics/Point;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBBox:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTmpBbox:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mFrameRect:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurSize:Lcom/scalado/base/Size;

    .line 49
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurTmpSize:Lcom/scalado/base/Size;

    .line 50
    new-instance v0, Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;

    const/16 v2, 0xa

    const-wide/16 v3, 0xc8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;-><init>(Lcom/oppo/camera/rewind/ui/Strip;IJLcom/oppo/camera/rewind/ui/Strip$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelTrapper:Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;

    .line 52
    const v0, 0x3951b717

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelStopLimit:F

    .line 53
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelStopLimit:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMinVel:F

    .line 54
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelStopLimit:F

    const/high16 v1, 0x3e80

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelStickines:F

    .line 55
    const v0, 0x39aec33e

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelMax:F

    .line 56
    const v0, 0x33d6bf95

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mAcc:F

    .line 65
    iput v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    .line 70
    iput-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 71
    iput-boolean v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchDown:Z

    .line 72
    iput-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 73
    iput-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedOnDownItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 74
    iput-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mNextSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 75
    iput-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mPrevItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 76
    iput-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTargetItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 77
    iput-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLastFocusedItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 85
    iput v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    .line 86
    iput-boolean v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mHasAnimItem:Z

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mPaint:Landroid/graphics/Paint;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedPaint:Landroid/graphics/Paint;

    .line 91
    const/4 v0, 0x5

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTxtDx:I

    .line 92
    const/16 v0, 0xa

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTxtDy:I

    .line 93
    iput-boolean v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDrawTxt:Z

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItemPaint:Landroid/graphics/Paint;

    .line 96
    iput v9, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItemAlpha:I

    .line 97
    iput v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBgAlpha:I

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBgPaint:Landroid/graphics/Paint;

    .line 101
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransP0:Landroid/graphics/Point;

    .line 102
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransP1:Landroid/graphics/Point;

    .line 106
    iput-boolean v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLocked:Z

    .line 119
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v7, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 122
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    .line 127
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v7, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 131
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v7, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 140
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 144
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItemPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItemPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItemPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItemPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBgPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    const/16 v2, 0x64

    const/16 v3, 0x64

    invoke-static {v9, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 154
    const v0, 0x350637bd

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mAcc:F

    .line 155
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mAcc:F

    const/high16 v1, 0x44fa

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelMax:F

    .line 157
    const v0, 0x3951b717

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelStopLimit:F

    .line 158
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelStopLimit:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMinVel:F

    .line 160
    const/high16 v0, 0x4000

    iget v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMinVel:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelStickines:F

    .line 162
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mMinimizeTime:J

    .line 163
    return-void
.end method

.method static synthetic access$1100(Lcom/oppo/camera/rewind/ui/Strip;)Lcom/oppo/camera/rewind/ui/StripLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oppo/camera/rewind/ui/Strip;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    return v0
.end method

.method static synthetic access$1300(Lcom/oppo/camera/rewind/ui/Strip;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItemAlpha:I

    return v0
.end method

.method private beforeUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 592
    iput-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 593
    iput-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLastFocusedItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 594
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchDown:Z

    .line 595
    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    .line 596
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    if-nez v0, :cond_0

    .line 597
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mIdleTime:J

    .line 599
    :cond_0
    return-void
.end method

.method private final borderReached()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 895
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/StripLayout;->isCyclic()Z

    move-result v1

    if-nez v1, :cond_2

    .line 896
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-boolean v1, v1, Lcom/oppo/camera/rewind/ui/StripLayout;->mClamped:Z

    if-eqz v1, :cond_2

    .line 897
    iget v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPos:F

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mMaxOffset:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 906
    :cond_0
    :goto_0
    return v0

    .line 900
    :cond_1
    iget v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPos:F

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mMinOffset:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    .line 906
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calculateVelocity()V
    .locals 11

    .prologue
    const/high16 v7, 0x3f80

    const/high16 v4, -0x4080

    const/4 v10, 0x0

    .line 505
    iget-object v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelTrapper:Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;

    #calls: Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;->get()F
    invoke-static {v8}, Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;->access$500(Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;)F

    move-result v8

    iput v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    .line 506
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/ui/Strip;->closestItem()Lcom/oppo/camera/rewind/ui/Item;

    move-result-object v0

    .line 507
    .local v0, closest:Lcom/oppo/camera/rewind/ui/Item;
    iget-object v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelTrapper:Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;

    #calls: Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;->totalTime()J
    invoke-static {v8}, Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;->access$600(Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;)J

    move-result-wide v5

    .line 508
    .local v5, tTot:J
    iget v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVisited:I

    const/4 v9, 0x1

    if-gt v8, v9, :cond_2

    iget-object v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedOnDownItem:Lcom/oppo/camera/rewind/ui/Item;

    if-ne v0, v8, :cond_2

    iget-object v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    if-eqz v8, :cond_2

    const-wide/16 v8, 0x12c

    cmp-long v8, v5, v8

    if-gez v8, :cond_2

    .line 511
    iget-object v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    invoke-virtual {v8}, Lcom/oppo/camera/rewind/ui/Item;->index()F

    move-result v8

    invoke-direct {p0, v8}, Lcom/oppo/camera/rewind/ui/Strip;->signedPivotDist(F)F

    move-result v8

    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 512
    .local v1, d:F
    cmpg-float v8, v1, v10

    if-gez v8, :cond_1

    .line 513
    .local v4, dir:F
    :goto_0
    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    iput-object v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTargetItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 514
    neg-float v7, v4

    iget v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelMax:F

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    .line 533
    .end local v1           #d:F
    .end local v4           #dir:F
    :cond_0
    :goto_1
    return-void

    .restart local v1       #d:F
    :cond_1
    move v4, v7

    .line 512
    goto :goto_0

    .line 517
    .end local v1           #d:F
    :cond_2
    iget v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    .line 519
    :cond_3
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/Item;->index()F

    move-result v8

    invoke-direct {p0, v8}, Lcom/oppo/camera/rewind/ui/Strip;->signedPivotDist(F)F

    move-result v1

    .line 520
    .restart local v1       #d:F
    cmpl-float v8, v1, v10

    if-ltz v8, :cond_5

    iget v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMinVel:F

    :goto_2
    iput v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    .line 522
    .end local v1           #d:F
    :cond_4
    iget v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    invoke-direct {p0, v8}, Lcom/oppo/camera/rewind/ui/Strip;->clampV(F)F

    move-result v8

    iput v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    .line 523
    iget v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelStickines:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 524
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/Item;->index()F

    move-result v8

    invoke-direct {p0, v8, v7}, Lcom/oppo/camera/rewind/ui/Strip;->directedPivotDist(FF)F

    move-result v3

    .line 525
    .local v3, dPos:F
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/Item;->index()F

    move-result v7

    invoke-direct {p0, v7, v4}, Lcom/oppo/camera/rewind/ui/Strip;->directedPivotDist(FF)F

    move-result v2

    .line 526
    .local v2, dNeg:F
    cmpg-float v7, v3, v2

    if-gtz v7, :cond_6

    .line 527
    iget v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMinVel:F

    iput v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    goto :goto_1

    .line 520
    .end local v2           #dNeg:F
    .end local v3           #dPos:F
    .restart local v1       #d:F
    :cond_5
    iget v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMinVel:F

    neg-float v8, v8

    goto :goto_2

    .line 529
    .end local v1           #d:F
    .restart local v2       #dNeg:F
    .restart local v3       #dPos:F
    :cond_6
    iget v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMinVel:F

    neg-float v7, v7

    iput v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    goto :goto_1
.end method

.method private final clampV(F)F
    .locals 1
    .parameter "v"

    .prologue
    .line 1104
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1105
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelMax:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1109
    :goto_0
    return p1

    .line 1107
    :cond_0
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelMax:F

    neg-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0
.end method

.method private final closestItemDirect(F)Lcom/oppo/camera/rewind/ui/Item;
    .locals 6
    .parameter "dir"

    .prologue
    .line 1088
    const v4, 0x7f7fffff

    .line 1089
    .local v4, minDist:F
    const/4 v0, 0x0

    .line 1090
    .local v0, closest:Lcom/oppo/camera/rewind/ui/Item;
    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/rewind/ui/Item;

    .line 1091
    .local v3, iterItem:Lcom/oppo/camera/rewind/ui/Item;
    iget-boolean v5, v3, Lcom/oppo/camera/rewind/ui/Item;->mInteractible:Z

    if-eqz v5, :cond_0

    .line 1092
    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/Item;->index()F

    move-result v5

    invoke-direct {p0, v5, p1}, Lcom/oppo/camera/rewind/ui/Strip;->directedPivotDist(FF)F

    move-result v1

    .line 1093
    .local v1, dist:F
    cmpg-float v5, v1, v4

    if-gez v5, :cond_0

    .line 1094
    move v4, v1

    .line 1095
    move-object v0, v3

    goto :goto_0

    .line 1099
    .end local v1           #dist:F
    .end local v3           #iterItem:Lcom/oppo/camera/rewind/ui/Item;
    :cond_1
    return-object v0
.end method

.method private closestItemFromPoint(II)Lcom/oppo/camera/rewind/ui/Item;
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 546
    const v1, 0x7f7fffff

    .line 547
    .local v1, dMin:F
    const/4 v5, 0x0

    .line 548
    .local v5, itemMin:Lcom/oppo/camera/rewind/ui/Item;
    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/camera/rewind/ui/Item;

    .line 549
    .local v6, tmpItem:Lcom/oppo/camera/rewind/ui/Item;
    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget-object v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v6, v7, v8}, Lcom/oppo/camera/rewind/ui/Strip;->getItemRect(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 550
    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int v7, p1, v7

    int-to-float v2, v7

    .line 551
    .local v2, dx:F
    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int v7, p2, v7

    int-to-float v3, v7

    .line 552
    .local v3, dy:F
    mul-float v7, v2, v2

    mul-float v8, v3, v3

    add-float v0, v7, v8

    .line 553
    .local v0, d:F
    cmpg-float v7, v0, v1

    if-gez v7, :cond_0

    .line 554
    move v1, v0

    .line 555
    move-object v5, v6

    goto :goto_0

    .line 558
    .end local v0           #d:F
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v6           #tmpItem:Lcom/oppo/camera/rewind/ui/Item;
    :cond_1
    return-object v5
.end method

.method private final directedPivotDist(FF)F
    .locals 4
    .parameter "pos"
    .parameter "dir"

    .prologue
    const/4 v3, 0x0

    .line 1036
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    int-to-float v1, v2

    .line 1037
    .local v1, size:F
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/ui/StripLayout;->isCyclic()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1038
    cmpl-float v2, p2, v3

    if-ltz v2, :cond_1

    .line 1039
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 1040
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    sub-float v0, v2, p1

    .line 1066
    .local v0, d:F
    :goto_0
    return v0

    .line 1042
    .end local v0           #d:F
    :cond_0
    const/high16 v2, 0x4000

    mul-float v0, v1, v2

    .restart local v0       #d:F
    goto :goto_0

    .line 1045
    .end local v0           #d:F
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    .line 1046
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    sub-float v0, p1, v2

    .restart local v0       #d:F
    goto :goto_0

    .line 1048
    .end local v0           #d:F
    :cond_2
    const v0, 0x7f7fffff

    .restart local v0       #d:F
    goto :goto_0

    .line 1052
    .end local v0           #d:F
    :cond_3
    cmpl-float v2, p2, v3

    if-ltz v2, :cond_5

    .line 1053
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_4

    .line 1054
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    sub-float v0, v2, p1

    .restart local v0       #d:F
    goto :goto_0

    .line 1056
    .end local v0           #d:F
    :cond_4
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    add-float/2addr v2, v1

    sub-float v0, v2, p1

    .restart local v0       #d:F
    goto :goto_0

    .line 1059
    .end local v0           #d:F
    :cond_5
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_6

    .line 1060
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    sub-float v0, p1, v2

    .restart local v0       #d:F
    goto :goto_0

    .line 1062
    .end local v0           #d:F
    :cond_6
    add-float v2, p1, v1

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v3, v3, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    sub-float v0, v2, v3

    .restart local v0       #d:F
    goto :goto_0
.end method

.method private final focusItemOnTouchNonSlidable(Lcom/oppo/camera/rewind/ui/Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 924
    if-nez p1, :cond_1

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mPrevItem:Lcom/oppo/camera/rewind/ui/Item;

    if-eq v0, p1, :cond_0

    .line 928
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/ui/Strip;->privateSelect(Lcom/oppo/camera/rewind/ui/Item;)V

    .line 929
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVisited:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVisited:I

    .line 930
    iput-object p1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mPrevItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 931
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-boolean v0, v0, Lcom/oppo/camera/rewind/ui/StripLayout;->mContinuousSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTargetItem:Lcom/oppo/camera/rewind/ui/Item;

    if-nez v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    iget v1, p1, Lcom/oppo/camera/rewind/ui/Item;->mIndex:I

    invoke-virtual {v0, p0, v1}, Lcom/oppo/camera/rewind/ui/UiManager;->onIndexFocused(Lcom/oppo/camera/rewind/ui/Widget;I)V

    goto :goto_0
.end method

.method private final getBBox()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 938
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 939
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    :goto_0
    return-void

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v1}, Lcom/oppo/camera/rewind/ui/Strip;->getBBox(Landroid/graphics/Rect;II)V

    goto :goto_0
.end method

.method private final getBoolProp(Ljava/lang/String;)Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1277
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-nez v2, :cond_1

    .line 1278
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mBoolProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mBoolProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 1285
    :goto_0
    return v2

    :cond_0
    move v2, v4

    .line 1278
    goto :goto_0

    .line 1281
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mBoolProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mBoolProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    .line 1283
    .local v0, a:Z
    :goto_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mBoolProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mBoolProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v3

    .line 1285
    .local v1, b:Z
    :goto_2
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    move v2, v4

    goto :goto_0

    .end local v0           #a:Z
    .end local v1           #b:Z
    :cond_4
    move v0, v4

    .line 1281
    goto :goto_1

    .restart local v0       #a:Z
    :cond_5
    move v1, v4

    .line 1283
    goto :goto_2
.end method

.method private getItemRect(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 8
    .parameter "tn"
    .parameter "pos"
    .parameter "rect"

    .prologue
    const/high16 v7, 0x3f00

    .line 883
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/ui/Strip;->getPosition(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Point;)V

    .line 884
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurSize:Lcom/scalado/base/Size;

    invoke-direct {p0, p1, v6}, Lcom/oppo/camera/rewind/ui/Strip;->getItemSize(Lcom/oppo/camera/rewind/ui/Item;Lcom/scalado/base/Size;)V

    .line 885
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurSize:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 886
    .local v1, w:I
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurSize:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 887
    .local v0, h:I
    iget v6, p2, Landroid/graphics/Point;->x:I

    sub-int v2, v6, v1

    .line 888
    .local v2, x0:I
    iget v6, p2, Landroid/graphics/Point;->y:I

    sub-int v4, v6, v0

    .line 889
    .local v4, y0:I
    iget v6, p2, Landroid/graphics/Point;->x:I

    add-int v3, v6, v1

    .line 890
    .local v3, x1:I
    iget v6, p2, Landroid/graphics/Point;->y:I

    add-int v5, v6, v0

    .line 891
    .local v5, y1:I
    invoke-virtual {p3, v2, v4, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 892
    return-void
.end method

.method private getItemSize(Lcom/oppo/camera/rewind/ui/Item;Lcom/scalado/base/Size;)V
    .locals 6
    .parameter "item"
    .parameter "size"

    .prologue
    const/high16 v5, 0x3f80

    .line 1220
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mThumbDims:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1221
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v2, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mThumbDims:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1222
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-direct {p0, p1, p2, v2}, Lcom/oppo/camera/rewind/ui/Strip;->scaleItemSize(Lcom/oppo/camera/rewind/ui/Item;Lcom/scalado/base/Size;Lcom/oppo/camera/rewind/ui/StripLayout;)V

    .line 1223
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-eqz v2, :cond_0

    .line 1224
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurTmpSize:Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v3, v3, Lcom/oppo/camera/rewind/ui/StripLayout;->mThumbDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1225
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurTmpSize:Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v3, v3, Lcom/oppo/camera/rewind/ui/StripLayout;->mThumbDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1226
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurTmpSize:Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-direct {p0, p1, v2, v3}, Lcom/oppo/camera/rewind/ui/Strip;->scaleItemSize(Lcom/oppo/camera/rewind/ui/Item;Lcom/scalado/base/Size;Lcom/oppo/camera/rewind/ui/StripLayout;)V

    .line 1227
    iget v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    sub-float v2, v5, v2

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurTmpSize:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 1229
    .local v1, w:F
    iget v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    sub-float v2, v5, v2

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurTmpSize:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 1231
    .local v0, h:F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1232
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1235
    .end local v0           #h:F
    .end local v1           #w:F
    :cond_0
    iget-object v2, p1, Lcom/oppo/camera/rewind/ui/Item;->mStartSize:Lcom/scalado/base/Size;

    if-eqz v2, :cond_1

    .line 1236
    invoke-virtual {p1, p2}, Lcom/oppo/camera/rewind/ui/Item;->animationSize(Lcom/scalado/base/Size;)V

    .line 1238
    :cond_1
    return-void
.end method

.method private final getPaintProp(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 1290
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-nez v1, :cond_1

    .line 1291
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v1, v1, Lcom/oppo/camera/rewind/ui/StripLayout;->mPaintProps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1300
    :cond_0
    :goto_0
    return-object v0

    .line 1295
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v1, v1, Lcom/oppo/camera/rewind/ui/StripLayout;->mPaintProps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v1, v1, Lcom/oppo/camera/rewind/ui/StripLayout;->mPaintProps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1300
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/StripLayout;->mPaintProps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    goto :goto_0
.end method

.method private getPathPosition(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Point;)V
    .locals 7
    .parameter "tn"
    .parameter "pos"

    .prologue
    const/high16 v6, 0x3f80

    .line 1183
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-nez v3, :cond_1

    .line 1184
    invoke-virtual {p1}, Lcom/oppo/camera/rewind/ui/Item;->index()F

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 1185
    .local v2, index:F
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v3, p1, v2, p2}, Lcom/oppo/camera/rewind/ui/StripLayout;->getPosition(Lcom/oppo/camera/rewind/ui/Item;FLandroid/graphics/Point;)V

    .line 1199
    :goto_0
    iget-object v3, p1, Lcom/oppo/camera/rewind/ui/Item;->mStartPos:Landroid/graphics/Point;

    if-eqz v3, :cond_0

    .line 1200
    invoke-virtual {p1, p2}, Lcom/oppo/camera/rewind/ui/Item;->animationPos(Landroid/graphics/Point;)V

    .line 1202
    :cond_0
    return-void

    .line 1187
    .end local v2           #index:F
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/camera/rewind/ui/Item;->index()F

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 1188
    .local v0, i0:F
    iget v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPos:F

    .line 1189
    .restart local v2       #index:F
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v5, p1, Lcom/oppo/camera/rewind/ui/Item;->mIndex:I

    invoke-virtual {v4, v5}, Lcom/oppo/camera/rewind/ui/StripLayout;->getOffset(I)F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/ui/StripLayout;->wrapIndex(F)F

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 1192
    .local v1, i1:F
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransP0:Landroid/graphics/Point;

    invoke-virtual {v3, p1, v0, v4}, Lcom/oppo/camera/rewind/ui/StripLayout;->getPosition(Lcom/oppo/camera/rewind/ui/Item;FLandroid/graphics/Point;)V

    .line 1193
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransP1:Landroid/graphics/Point;

    invoke-virtual {v3, p1, v1, v4}, Lcom/oppo/camera/rewind/ui/StripLayout;->getPosition(Lcom/oppo/camera/rewind/ui/Item;FLandroid/graphics/Point;)V

    .line 1194
    iget v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    sub-float v3, v6, v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransP0:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransP1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p2, Landroid/graphics/Point;->x:I

    .line 1196
    iget v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    sub-float v3, v6, v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransP0:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransP1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p2, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private getPosition(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Point;)V
    .locals 4
    .parameter "tn"
    .parameter "pos"

    .prologue
    const/high16 v3, 0x3f80

    .line 1208
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/ui/Strip;->getPathPosition(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Point;)V

    .line 1209
    iget-object v1, p1, Lcom/oppo/camera/rewind/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    if-eqz v1, :cond_1

    .line 1210
    iget-object v1, p1, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/Interpolation;->param()F

    move-result v0

    .line 1211
    .local v0, s:F
    sub-float v1, v3, v0

    iget-object v2, p1, Lcom/oppo/camera/rewind/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 1212
    sub-float v1, v3, v0

    iget-object v2, p1, Lcom/oppo/camera/rewind/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p2, Landroid/graphics/Point;->y:I

    .line 1217
    .end local v0           #s:F
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    iget-object v1, p1, Lcom/oppo/camera/rewind/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    .line 1214
    iget-object v1, p1, Lcom/oppo/camera/rewind/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 1215
    iget-object v1, p1, Lcom/oppo/camera/rewind/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p2, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private final isVisible(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-nez v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/ui/StripLayout;->isVisible(I)Z

    move-result v0

    .line 1271
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/ui/StripLayout;->isVisible(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/ui/StripLayout;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private itemFromPoint(II)Lcom/oppo/camera/rewind/ui/Item;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 536
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/ui/Item;

    .line 537
    .local v1, tmpItem:Lcom/oppo/camera/rewind/ui/Item;
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/camera/rewind/ui/Strip;->getItemRect(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 538
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    .end local v1           #tmpItem:Lcom/oppo/camera/rewind/ui/Item;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onDown(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 578
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelTrapper:Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #calls: Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;->start(J)V
    invoke-static {v0, v1, v2}, Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;->access$700(Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;J)V

    .line 579
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    .line 580
    iput v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    .line 581
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 582
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 583
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedOnDownItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 584
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/Strip;->privateSelectNone()V

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mPrevItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 586
    iput v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVisited:I

    .line 587
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    .line 588
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mHasAnimItem:Z

    .line 589
    return-void
.end method

.method private final onStop()V
    .locals 2

    .prologue
    .line 1264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mIdleTime:J

    .line 1265
    return-void
.end method

.method private final pivotDist(F)F
    .locals 4
    .parameter "pos"

    .prologue
    .line 1006
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v3, v3, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1007
    .local v0, d:F
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/StripLayout;->isCyclic()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1012
    .end local v0           #d:F
    :goto_0
    return v0

    .line 1010
    .restart local v0       #d:F
    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    int-to-float v2, v3

    .line 1011
    .local v2, size:F
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v3, v3, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    add-float/2addr v3, v2

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1012
    .local v1, dWrapped:F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method private final pivotPosition(Lcom/oppo/camera/rewind/ui/Item;)F
    .locals 3
    .parameter "item"

    .prologue
    .line 1000
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v1, v1, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    iget v2, p1, Lcom/oppo/camera/rewind/ui/Item;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/oppo/camera/rewind/ui/Strip;->getOffset(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/oppo/camera/rewind/ui/Strip;->updateIndex(F)F

    move-result v0

    .line 1001
    .local v0, index:F
    return v0
.end method

.method private final prepareTransition(Lcom/oppo/camera/rewind/ui/StripLayout;J)V
    .locals 2
    .parameter "layout"
    .parameter "t"

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mNextSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 1331
    iput-object p1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    .line 1332
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iput-object p0, v0, Lcom/oppo/camera/rewind/ui/StripLayout;->mStrip:Lcom/oppo/camera/rewind/ui/Strip;

    .line 1333
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/StripLayout;->prepareShowing()V

    .line 1334
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    .line 1335
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransT0:J

    .line 1336
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransT0:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransT1:J

    .line 1337
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    .line 1338
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/StripLayout;->onSelected()V

    .line 1339
    return-void
.end method

.method private privateSelect(Lcom/oppo/camera/rewind/ui/Item;)V
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 1124
    if-nez p1, :cond_0

    .line 1125
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/Strip;->privateSelectNone()V

    .line 1141
    :goto_0
    return-void

    .line 1128
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    if-eqz v2, :cond_1

    .line 1129
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    invoke-virtual {v2, v4}, Lcom/oppo/camera/rewind/ui/Item;->setSelected(Z)V

    .line 1131
    :cond_1
    iput-object p1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 1132
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oppo/camera/rewind/ui/Item;->setSelected(Z)V

    .line 1133
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1134
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/ui/Item;

    .line 1135
    .local v1, tmpItem:Lcom/oppo/camera/rewind/ui/Item;
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    if-eq v1, v2, :cond_2

    .line 1136
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1139
    .end local v1           #tmpItem:Lcom/oppo/camera/rewind/ui/Item;
    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDrawOrder:Ljava/util/Vector;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1140
    iput-boolean v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mIdentityDrawOrder:Z

    goto :goto_0
.end method

.method private privateSelectNone()V
    .locals 4

    .prologue
    .line 1144
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    if-eqz v2, :cond_0

    .line 1145
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oppo/camera/rewind/ui/Item;->setSelected(Z)V

    .line 1147
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 1148
    iget-boolean v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mIdentityDrawOrder:Z

    if-nez v2, :cond_2

    .line 1149
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1150
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/ui/Item;

    .line 1151
    .local v1, tmpItem:Lcom/oppo/camera/rewind/ui/Item;
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1153
    .end local v1           #tmpItem:Lcom/oppo/camera/rewind/ui/Item;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mIdentityDrawOrder:Z

    .line 1155
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private scaleItemSize(Lcom/oppo/camera/rewind/ui/Item;Lcom/scalado/base/Size;Lcom/oppo/camera/rewind/ui/StripLayout;)V
    .locals 4
    .parameter "item"
    .parameter "size"
    .parameter "layout"

    .prologue
    .line 1241
    invoke-direct {p0, p3, p1}, Lcom/oppo/camera/rewind/ui/Strip;->sizeFactor(Lcom/oppo/camera/rewind/ui/StripLayout;Lcom/oppo/camera/rewind/ui/Item;)F

    move-result v1

    .line 1242
    .local v1, s:F
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1243
    .local v2, w:I
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1244
    .local v0, h:I
    invoke-virtual {p2, v2}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1245
    invoke-virtual {p2, v0}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1246
    return-void
.end method

.method private final selectedLayout(Lcom/oppo/camera/rewind/ui/StripLayout;)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 1314
    iput-object p1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    .line 1315
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v0, v0, Lcom/oppo/camera/rewind/ui/StripLayout;->mAlpha:I

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItemAlpha:I

    .line 1316
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v0, v0, Lcom/oppo/camera/rewind/ui/StripLayout;->mBgAlpha:I

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBgAlpha:I

    .line 1317
    return-void
.end method

.method private final setBlendPoint(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Point;F)V
    .locals 3
    .parameter "tn"
    .parameter "p"
    .parameter "param"

    .prologue
    .line 1171
    iget-object v0, p1, Lcom/oppo/camera/rewind/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 1172
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p1, Lcom/oppo/camera/rewind/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    .line 1174
    :cond_0
    iget-object v0, p1, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    if-nez v0, :cond_1

    .line 1175
    new-instance v0, Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-direct {v0, p3}, Lcom/oppo/camera/rewind/ui/Interpolation;-><init>(F)V

    iput-object v0, p1, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    .line 1177
    :cond_1
    iget-object v0, p1, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v0, p3}, Lcom/oppo/camera/rewind/ui/Interpolation;->setConstant(F)V

    .line 1178
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    iget-object v0, v0, Lcom/oppo/camera/rewind/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1179
    return-void
.end method

.method private final setPostionFor(Lcom/oppo/camera/rewind/ui/StripLayout;Lcom/oppo/camera/rewind/ui/Item;)V
    .locals 2
    .parameter "layout"
    .parameter "item"

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    .line 1305
    .local v0, backup:Lcom/oppo/camera/rewind/ui/StripLayout;
    iput-object p1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    .line 1306
    invoke-direct {p0, p2}, Lcom/oppo/camera/rewind/ui/Strip;->privateSelect(Lcom/oppo/camera/rewind/ui/Item;)V

    .line 1307
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/StripLayout;->prepareShowing()V

    .line 1308
    invoke-direct {p0, p2, p1}, Lcom/oppo/camera/rewind/ui/Strip;->updatePositionForSelected(Lcom/oppo/camera/rewind/ui/Item;Lcom/oppo/camera/rewind/ui/StripLayout;)V

    .line 1309
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/StripLayout;->onSelected()V

    .line 1310
    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    .line 1311
    return-void
.end method

.method private final signedPivotDist(F)F
    .locals 4
    .parameter "pos"

    .prologue
    .line 1018
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v3, v3, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    sub-float v0, p1, v3

    .line 1019
    .local v0, d:F
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/StripLayout;->isCyclic()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    .line 1026
    .end local v0           #d:F
    .local v1, d:F
    :goto_0
    return v1

    .line 1022
    .end local v1           #d:F
    .restart local v0       #d:F
    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    int-to-float v2, v3

    .line 1023
    .local v2, size:F
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 1024
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    neg-float v0, v3

    :cond_1
    move v1, v0

    .line 1026
    .end local v0           #d:F
    .restart local v1       #d:F
    goto :goto_0
.end method

.method private final sizeFactor(Lcom/oppo/camera/rewind/ui/StripLayout;Lcom/oppo/camera/rewind/ui/Item;)F
    .locals 6
    .parameter "layout"
    .parameter "item"

    .prologue
    .line 1249
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTnScale:F

    .line 1250
    .local v0, factor:F
    invoke-virtual {p2}, Lcom/oppo/camera/rewind/ui/Item;->index()F

    move-result v1

    .line 1252
    .local v1, i:F
    invoke-direct {p0, v1}, Lcom/oppo/camera/rewind/ui/Strip;->pivotDist(F)F

    move-result v2

    .line 1253
    .local v2, pivotDist:F
    iget v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTnScaleMaxDist:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    iget-boolean v3, p1, Lcom/oppo/camera/rewind/ui/StripLayout;->mScaleFromPivot:Z

    if-eqz v3, :cond_0

    .line 1254
    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTnScaleMaxDist:F

    sub-float/2addr v4, v2

    iget v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTnScaleMaxDist:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTnMaxScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v0, v3

    .line 1256
    :cond_0
    return v0
.end method

.method private updateAnims(J)V
    .locals 6
    .parameter "t"

    .prologue
    const/4 v5, 0x0

    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, hasAnimItem:Z
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/rewind/ui/Item;

    .line 830
    .local v2, iterTn:Lcom/oppo/camera/rewind/ui/Item;
    iget-object v3, v2, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    if-eqz v3, :cond_0

    .line 831
    iget-object v3, v2, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v3, p1, p2}, Lcom/oppo/camera/rewind/ui/Interpolation;->update(J)V

    .line 832
    iget-object v3, v2, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/Interpolation;->done()Z

    move-result v3

    if-nez v3, :cond_1

    .line 833
    const/4 v0, 0x1

    .line 835
    :cond_1
    iget-object v3, v2, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/Interpolation;->param()F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 836
    iput-object v5, v2, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    .line 837
    iput-object v5, v2, Lcom/oppo/camera/rewind/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    goto :goto_0

    .line 841
    .end local v2           #iterTn:Lcom/oppo/camera/rewind/ui/Item;
    :cond_2
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mHasAnimItem:Z

    .line 842
    return-void
.end method

.method private updateIdle()V
    .locals 6

    .prologue
    .line 810
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMinLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMinLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-ne v2, v3, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-wide v2, p0, Lcom/oppo/camera/rewind/ui/Widget;->mMinimizeTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 817
    iget-boolean v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchDown:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    if-nez v2, :cond_0

    .line 820
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mIdleTime:J

    sub-long v0, v2, v4

    .line 821
    .local v0, delta:J
    iget-wide v2, p0, Lcom/oppo/camera/rewind/ui/Widget;->mMinimizeTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/ui/Strip;->minimize()V

    goto :goto_0
.end method

.method private final updateIndex(F)F
    .locals 1
    .parameter "index"

    .prologue
    .line 979
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/StripLayout;->isCyclic()Z

    move-result v0

    if-nez v0, :cond_2

    .line 980
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-boolean v0, v0, Lcom/oppo/camera/rewind/ui/StripLayout;->mClamped:Z

    if-eqz v0, :cond_1

    .line 981
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v0, v0, Lcom/oppo/camera/rewind/ui/StripLayout;->mMaxOffset:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget p1, v0, Lcom/oppo/camera/rewind/ui/StripLayout;->mMaxOffset:F

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v0, v0, Lcom/oppo/camera/rewind/ui/StripLayout;->mMinOffset:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget p1, v0, Lcom/oppo/camera/rewind/ui/StripLayout;->mMinOffset:F

    .line 996
    :cond_1
    :goto_0
    return p1

    .line 989
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    .line 990
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 992
    :cond_3
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    goto :goto_0
.end method

.method private final updatePositionForSelected(Lcom/oppo/camera/rewind/ui/Item;Lcom/oppo/camera/rewind/ui/StripLayout;)V
    .locals 3
    .parameter "item"
    .parameter "layout"

    .prologue
    .line 1320
    iget-boolean v1, p2, Lcom/oppo/camera/rewind/ui/StripLayout;->mSlidable:Z

    if-eqz v1, :cond_0

    .line 1321
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    invoke-direct {p0, v1}, Lcom/oppo/camera/rewind/ui/Strip;->pivotPosition(Lcom/oppo/camera/rewind/ui/Item;)F

    move-result v1

    iput v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPos:F

    .line 1327
    :goto_0
    return-void

    .line 1324
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/ui/Item;

    .line 1325
    .local v0, middle:Lcom/oppo/camera/rewind/ui/Item;
    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/ui/Strip;->pivotPosition(Lcom/oppo/camera/rewind/ui/Item;)F

    move-result v1

    iput v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPos:F

    goto :goto_0
.end method

.method private updateTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 562
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 575
    :goto_0
    :pswitch_0
    return-void

    .line 564
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    .line 565
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedOnDownItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 566
    iput v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVisited:I

    .line 567
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mHasAnimItem:Z

    goto :goto_0

    .line 572
    :pswitch_2
    iput v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateTransition()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f80

    .line 769
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 770
    .local v2, t:J
    iget-wide v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransT0:J

    sub-long v0, v2, v5

    .line 771
    .local v0, delta:J
    long-to-float v5, v0

    iget-wide v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransT1:J

    iget-wide v8, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransT0:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    .line 772
    iget v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    sub-float v5, v10, v5

    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v6, v6, Lcom/oppo/camera/rewind/ui/StripLayout;->mAlpha:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v7, v7, Lcom/oppo/camera/rewind/ui/StripLayout;->mAlpha:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItemAlpha:I

    .line 774
    iget v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    sub-float v5, v10, v5

    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v6, v6, Lcom/oppo/camera/rewind/ui/StripLayout;->mBgAlpha:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget v7, v7, Lcom/oppo/camera/rewind/ui/StripLayout;->mBgAlpha:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBgAlpha:I

    .line 776
    iget-wide v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransT1:J

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    .line 777
    iget-wide v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransT1:J

    .line 778
    iput v10, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F

    .line 779
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mQueuedTransitions:Ljava/util/Vector;

    monitor-enter v6

    .line 780
    :try_start_0
    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mQueuedTransitions:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mQueuedTransitions:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/camera/rewind/ui/Strip$Transition;

    iget-object v5, v5, Lcom/oppo/camera/rewind/ui/Strip$Transition;->mDst:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-eq v5, v7, :cond_1

    .line 782
    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mQueuedTransitions:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/ui/Strip$Transition;

    .line 783
    .local v4, transition:Lcom/oppo/camera/rewind/ui/Strip$Transition;
    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mQueuedTransitions:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 784
    iget-object v5, v4, Lcom/oppo/camera/rewind/ui/Strip$Transition;->mDst:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-wide v7, v4, Lcom/oppo/camera/rewind/ui/Strip$Transition;->mT:J

    invoke-direct {p0, v5, v7, v8}, Lcom/oppo/camera/rewind/ui/Strip;->prepareTransition(Lcom/oppo/camera/rewind/ui/StripLayout;J)V

    .line 802
    .end local v4           #transition:Lcom/oppo/camera/rewind/ui/Strip$Transition;
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/Strip;->onStop()V

    .line 803
    monitor-exit v6

    .line 807
    :cond_0
    return-void

    .line 786
    :cond_1
    const/4 v5, 0x0

    iput v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    .line 787
    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-direct {p0, v5}, Lcom/oppo/camera/rewind/ui/Strip;->selectedLayout(Lcom/oppo/camera/rewind/ui/StripLayout;)V

    .line 788
    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMaxLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-ne v5, v7, :cond_3

    .line 790
    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mNextSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    invoke-direct {p0, v5}, Lcom/oppo/camera/rewind/ui/Strip;->privateSelect(Lcom/oppo/camera/rewind/ui/Item;)V

    .line 791
    invoke-super {p0}, Lcom/oppo/camera/rewind/ui/Widget;->maximize()V

    .line 798
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iput-object p0, v5, Lcom/oppo/camera/rewind/ui/StripLayout;->mStrip:Lcom/oppo/camera/rewind/ui/Strip;

    .line 799
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    .line 800
    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v5}, Lcom/oppo/camera/rewind/ui/UiManager;->requestDraw()V

    goto :goto_0

    .line 803
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 792
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMinLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-ne v5, v7, :cond_2

    .line 793
    invoke-super {p0}, Lcom/oppo/camera/rewind/ui/Widget;->minimize()V

    .line 794
    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Widget;->mPopupParent:Lcom/oppo/camera/rewind/ui/Widget;

    if-eqz v5, :cond_2

    .line 795
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/ui/Strip;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private final updateVisited()V
    .locals 3

    .prologue
    .line 910
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/ui/Strip;->closestItem()Lcom/oppo/camera/rewind/ui/Item;

    move-result-object v0

    .line 911
    .local v0, item:Lcom/oppo/camera/rewind/ui/Item;
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mPrevItem:Lcom/oppo/camera/rewind/ui/Item;

    if-eq v1, v0, :cond_0

    .line 912
    iget v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVisited:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVisited:I

    .line 913
    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mPrevItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 914
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-boolean v1, v1, Lcom/oppo/camera/rewind/ui/StripLayout;->mContinuousSelection:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTargetItem:Lcom/oppo/camera/rewind/ui/Item;

    if-nez v1, :cond_0

    .line 918
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    iget v2, v0, Lcom/oppo/camera/rewind/ui/Item;->mIndex:I

    invoke-virtual {v1, p0, v2}, Lcom/oppo/camera/rewind/ui/UiManager;->onIndexFocused(Lcom/oppo/camera/rewind/ui/Widget;I)V

    .line 921
    :cond_0
    return-void
.end method


# virtual methods
.method boundingBox(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bbox"

    .prologue
    const/16 v0, -0x14

    .line 854
    invoke-virtual {p0, p1, v0, v0}, Lcom/oppo/camera/rewind/ui/Strip;->getBBox(Landroid/graphics/Rect;II)V

    .line 855
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBgDrawer:Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBgDrawer:Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;

    #getter for: Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mMaxRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->access$1000(Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 857
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/ui/StripLayout;->increaseBoundingBox(Landroid/graphics/Rect;)V

    .line 863
    return-void
.end method

.method protected final closestItem()Lcom/oppo/camera/rewind/ui/Item;
    .locals 7

    .prologue
    .line 1071
    const v5, 0x7f7fffff

    .line 1072
    .local v5, minDist:F
    const/4 v0, 0x0

    .line 1073
    .local v0, closest:Lcom/oppo/camera/rewind/ui/Item;
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/ui/Item;

    .line 1074
    .local v4, iterItem:Lcom/oppo/camera/rewind/ui/Item;
    iget-boolean v6, v4, Lcom/oppo/camera/rewind/ui/Item;->mInteractible:Z

    if-eqz v6, :cond_0

    .line 1075
    invoke-virtual {v4}, Lcom/oppo/camera/rewind/ui/Item;->index()F

    move-result v3

    .line 1076
    .local v3, index:F
    invoke-direct {p0, v3}, Lcom/oppo/camera/rewind/ui/Strip;->pivotDist(F)F

    move-result v1

    .line 1077
    .local v1, dist:F
    cmpg-float v6, v1, v5

    if-gez v6, :cond_0

    .line 1078
    move v5, v1

    .line 1079
    move-object v0, v4

    goto :goto_0

    .line 1083
    .end local v1           #dist:F
    .end local v3           #index:F
    .end local v4           #iterItem:Lcom/oppo/camera/rewind/ui/Item;
    :cond_1
    return-object v0
.end method

.method curPos()F
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPos:F

    return v0
.end method

.method distance(II)F
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 962
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    instance-of v4, v4, Lcom/oppo/camera/rewind/ui/ButtonLayout;

    if-eqz v4, :cond_0

    .line 964
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/Strip;->getBBox()V

    .line 965
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int v4, p1, v4

    int-to-float v2, v4

    .line 966
    .local v2, dx:F
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int v4, p2, v4

    int-to-float v3, v4

    .line 967
    .local v3, dy:F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float v0, v4, v5

    .line 968
    .local v0, d2:F
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v1, v4

    .line 970
    .local v1, dMax2:F
    cmpg-float v4, v0, v1

    if-gtz v4, :cond_0

    .line 974
    .end local v0           #d2:F
    .end local v1           #dMax2:F
    .end local v2           #dx:F
    .end local v3           #dy:F
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f7fffff

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v3, 0x1

    .line 602
    iget-boolean v4, p0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    if-nez v4, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-nez v4, :cond_2

    .line 608
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v4, p1}, Lcom/oppo/camera/rewind/ui/StripLayout;->drawBackground(Landroid/graphics/Canvas;)V

    .line 610
    :cond_2
    const-string v4, "bbox"

    invoke-direct {p0, v4}, Lcom/oppo/camera/rewind/ui/Strip;->getPaintProp(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 611
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/Strip;->getBBox()V

    .line 612
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBBox:Landroid/graphics/Rect;

    const-string v5, "bbox"

    invoke-direct {p0, v5}, Lcom/oppo/camera/rewind/ui/Strip;->getPaintProp(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 619
    :cond_3
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBgDrawer:Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;

    if-eqz v4, :cond_5

    .line 620
    iget v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/oppo/camera/rewind/ui/Widget;->mMinMaxState:I

    if-ne v4, v3, :cond_8

    .line 621
    :cond_4
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBgDrawer:Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;

    #calls: Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->drawMax(Landroid/graphics/Canvas;)V
    invoke-static {v4, p1}, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->access$800(Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;Landroid/graphics/Canvas;)V

    .line 636
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/ui/Item;

    .line 640
    .local v1, item:Lcom/oppo/camera/rewind/ui/Item;
    iget v4, v1, Lcom/oppo/camera/rewind/ui/Item;->mIndex:I

    invoke-direct {p0, v4}, Lcom/oppo/camera/rewind/ui/Strip;->isVisible(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 643
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPoint:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v4, v5}, Lcom/oppo/camera/rewind/ui/Strip;->getItemRect(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 644
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    if-ne v1, v4, :cond_9

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-boolean v4, v4, Lcom/oppo/camera/rewind/ui/StripLayout;->mIndicateSelected:Z

    if-eqz v4, :cond_9

    move v2, v3

    .line 645
    .local v2, selected:Z
    :goto_3
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-boolean v4, v4, Lcom/oppo/camera/rewind/ui/StripLayout;->mDrawFrame:Z

    if-eqz v4, :cond_7

    .line 646
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, p1, v5, v2}, Lcom/oppo/camera/rewind/ui/StripLayout;->drawItemFrame(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 648
    :cond_7
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItemPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItemAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 649
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItemPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1, p1, v5, v6}, Lcom/oppo/camera/rewind/ui/StripLayout;->drawItem(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 650
    iget-boolean v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDrawTxt:Z

    if-eqz v4, :cond_6

    .line 651
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/oppo/camera/rewind/ui/Item;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTxtDx:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTxtDy:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 623
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/oppo/camera/rewind/ui/Item;
    .end local v2           #selected:Z
    :cond_8
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mBgDrawer:Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;

    #calls: Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->drawMin(Landroid/graphics/Canvas;)V
    invoke-static {v4, p1}, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->access$900(Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 644
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #item:Lcom/oppo/camera/rewind/ui/Item;
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 655
    .end local v1           #item:Lcom/oppo/camera/rewind/ui/Item;
    :cond_a
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-nez v3, :cond_0

    .line 656
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v3, p1}, Lcom/oppo/camera/rewind/ui/StripLayout;->drawForeground(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public getArea(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    const/16 v0, -0x14

    .line 866
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 867
    invoke-virtual {p0, p1, v0, v0}, Lcom/oppo/camera/rewind/ui/Strip;->getBBox(Landroid/graphics/Rect;II)V

    .line 868
    return-void
.end method

.method final getBBox(Landroid/graphics/Rect;II)V
    .locals 4
    .parameter "bbox"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 946
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 955
    :goto_0
    return-void

    .line 950
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 951
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/ui/Item;

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/camera/rewind/ui/Strip;->getItemRect(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 952
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 950
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 954
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_0
.end method

.method public getLayout()Lcom/oppo/camera/rewind/ui/StripLayout;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    return-object v0
.end method

.method getOffset(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/ui/StripLayout;->getOffset(I)F

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-boolean v2, p0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    if-eqz v2, :cond_1

    .line 187
    const/4 v2, 0x0

    iput v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    .line 188
    const/4 v2, 0x0

    iput v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    .line 189
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iput-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    .line 192
    :cond_0
    iput-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    .line 193
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/ui/Item;

    .line 194
    .local v1, tn:Lcom/oppo/camera/rewind/ui/Item;
    iput-object v3, v1, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    .line 195
    iput-object v3, v1, Lcom/oppo/camera/rewind/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    goto :goto_0

    .line 199
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #tn:Lcom/oppo/camera/rewind/ui/Item;
    :cond_1
    invoke-super {p0}, Lcom/oppo/camera/rewind/ui/Widget;->hide()V

    .line 200
    return-void
.end method

.method public isMoving()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 661
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/ui/Item;

    .line 662
    .local v1, item:Lcom/oppo/camera/rewind/ui/Item;
    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/Item;->isMoving()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 666
    .end local v1           #item:Lcom/oppo/camera/rewind/ui/Item;
    :cond_1
    :goto_0
    return v2

    :cond_2
    iget v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mHasAnimItem:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/StripLayout;->isMoving()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMaxLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/oppo/camera/rewind/ui/Widget;->mMinimizeTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public maximize()V
    .locals 3

    .prologue
    .line 256
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mMinMaxState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 257
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMaxLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMaxLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMaxLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/rewind/ui/Strip;->setPostionFor(Lcom/oppo/camera/rewind/ui/StripLayout;Lcom/oppo/camera/rewind/ui/Item;)V

    .line 260
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMaxLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-wide v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransT:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/camera/rewind/ui/Strip;->transitionTo(Lcom/oppo/camera/rewind/ui/StripLayout;J)V

    .line 265
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMaxModal:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/rewind/ui/UiManager;->putOnTop(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 269
    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/rewind/ui/Widget;->maximize()V

    .line 274
    :cond_1
    :goto_1
    return-void

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMaxLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    goto :goto_0

    .line 270
    :cond_3
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMaxLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/rewind/ui/Strip;->setPostionFor(Lcom/oppo/camera/rewind/ui/StripLayout;Lcom/oppo/camera/rewind/ui/Item;)V

    .line 272
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMaxLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/ui/Strip;->selectedLayout(Lcom/oppo/camera/rewind/ui/StripLayout;)V

    goto :goto_1
.end method

.method public minimize()V
    .locals 3

    .prologue
    .line 234
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mMinMaxState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 235
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMinLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMinLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-boolean v0, v0, Lcom/oppo/camera/rewind/ui/StripLayout;->mSlidable:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/ui/Strip;->closestItem()Lcom/oppo/camera/rewind/ui/Item;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/ui/Strip;->privateSelect(Lcom/oppo/camera/rewind/ui/Item;)V

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMinLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-wide v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTransT:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/camera/rewind/ui/Strip;->transitionTo(Lcom/oppo/camera/rewind/ui/StripLayout;J)V

    .line 245
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMaxModal:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/rewind/ui/UiManager;->removeModal(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 249
    :cond_1
    invoke-super {p0}, Lcom/oppo/camera/rewind/ui/Widget;->minimize()V

    .line 253
    :cond_2
    :goto_1
    return-void

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMinLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    goto :goto_0

    .line 250
    :cond_4
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    if-nez v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mMinLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/ui/Strip;->selectedLayout(Lcom/oppo/camera/rewind/ui/StripLayout;)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .parameter "event"

    .prologue
    .line 329
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mLocked:Z

    if-eqz v12, :cond_1

    .line 330
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->beforeUp()V

    .line 331
    const/4 v12, 0x0

    .line 501
    :goto_0
    return v12

    .line 333
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 334
    .local v10, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 336
    .local v11, y:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 337
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    if-nez v12, :cond_2

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->beforeUp()V

    .line 339
    const/4 v12, 0x0

    goto :goto_0

    .line 341
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 342
    const/4 v12, 0x1

    goto :goto_0

    .line 346
    :cond_3
    const/4 v8, 0x0

    .line 347
    .local v8, tn:Lcom/oppo/camera/rewind/ui/Item;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mHasAnimItem:Z

    if-eqz v12, :cond_4

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/oppo/camera/rewind/ui/Strip;->updateAnims(J)V

    .line 350
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_9

    .line 351
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTargetItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 352
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/oppo/camera/rewind/ui/Strip;->itemFromPoint(II)Lcom/oppo/camera/rewind/ui/Item;

    move-result-object v8

    .line 353
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 354
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v12}, Lcom/oppo/camera/rewind/ui/UiManager;->isForcedDown()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 355
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchDown:Z

    .line 367
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchDown:Z

    if-nez v12, :cond_a

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->beforeUp()V

    .line 369
    const/4 v12, 0x0

    goto :goto_0

    .line 356
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    if-nez v12, :cond_5

    const-string v12, "bbox_selection"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/oppo/camera/rewind/ui/Strip;->getBoolProp(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 357
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchDown:Z

    .line 358
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->getBBox()V

    .line 359
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mBgDrawer:Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mBgDrawer:Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;

    #getter for: Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mLastDrawn:Landroid/graphics/Rect;
    invoke-static {v12}, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->access$200(Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 360
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchDown:Z

    goto :goto_1

    .line 361
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 362
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchDown:Z

    goto :goto_1

    .line 364
    :cond_8
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchDown:Z

    goto :goto_1

    .line 371
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchDown:Z

    if-nez v12, :cond_a

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->beforeUp()V

    .line 374
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 376
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v12}, Lcom/oppo/camera/rewind/ui/UiManager;->requestDraw()V

    .line 377
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/oppo/camera/rewind/ui/StripLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 379
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/rewind/ui/Strip;->updateTouch(Landroid/view/MotionEvent;)V

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 390
    :goto_2
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 382
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedOnDownItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 383
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->privateSelectNone()V

    goto :goto_2

    .line 387
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->beforeUp()V

    goto :goto_2

    .line 392
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_1

    .line 501
    :cond_c
    :goto_3
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 394
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/oppo/camera/rewind/ui/Strip;->onDown(II)V

    goto :goto_3

    .line 397
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iput v10, v12, Landroid/graphics/Point;->x:I

    .line 398
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iput v11, v12, Landroid/graphics/Point;->y:I

    .line 399
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    if-ne v12, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    if-eq v12, v13, :cond_c

    .line 402
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-boolean v12, v12, Lcom/oppo/camera/rewind/ui/StripLayout;->mSlidable:Z

    if-eqz v12, :cond_13

    .line 403
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v12, v13, v14}, Lcom/oppo/camera/rewind/ui/StripLayout;->getDelta(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v3

    .line 404
    .local v3, delta:D
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    .line 405
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mVelTrapper:Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;

    double-to-float v13, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    #calls: Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;->add(FJ)V
    invoke-static {v12, v13, v14, v15}, Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;->access$300(Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;FJ)V

    .line 407
    const/4 v9, 0x1

    .line 408
    .local v9, updatePos:Z
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->getDNDEnabled()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 410
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedOnDownItem:Lcom/oppo/camera/rewind/ui/Item;

    if-ne v12, v13, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->closestItem()Lcom/oppo/camera/rewind/ui/Item;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    if-ne v12, v13, :cond_12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mVisited:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_12

    .line 412
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oppo/camera/rewind/ui/Strip;->getDNDTarget(Landroid/graphics/Point;)Lcom/oppo/camera/rewind/ui/Widget;

    move-result-object v5

    .line 413
    .local v5, dndTrg:Lcom/oppo/camera/rewind/ui/Widget;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/oppo/camera/rewind/ui/Strip;->getPathPosition(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Point;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPoint:Landroid/graphics/Point;

    invoke-virtual {v5, v12}, Lcom/oppo/camera/rewind/ui/Widget;->dndDistance(Landroid/graphics/Point;)F

    move-result v1

    .line 415
    .local v1, dPath:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v5, v12}, Lcom/oppo/camera/rewind/ui/Widget;->dndDistance(Landroid/graphics/Point;)F

    move-result v2

    .line 416
    .local v2, dPos:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v12, v13}, Lcom/oppo/camera/rewind/ui/StripLayout;->contains(Landroid/graphics/Point;)Z

    move-result v7

    .line 420
    .local v7, layoutContains:Z
    cmpg-float v12, v2, v1

    if-gez v12, :cond_11

    .line 421
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/oppo/camera/rewind/ui/Strip;->setBlendPoint(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Point;F)V

    .line 423
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v5, v12}, Lcom/oppo/camera/rewind/ui/Widget;->dndContains(Landroid/graphics/Point;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 424
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    .line 428
    :cond_e
    :goto_4
    const/4 v9, 0x0

    .line 443
    .end local v1           #dPath:F
    .end local v2           #dPos:F
    .end local v5           #dndTrg:Lcom/oppo/camera/rewind/ui/Widget;
    .end local v7           #layoutContains:Z
    :cond_f
    :goto_5
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    const/4 v13, 0x4

    if-eq v12, v13, :cond_c

    .line 444
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPos:F

    double-to-float v13, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/oppo/camera/rewind/ui/Strip;->updateIndex(F)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPos:F

    .line 445
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->updateVisited()V

    goto/16 :goto_3

    .line 425
    .restart local v1       #dPath:F
    .restart local v2       #dPos:F
    .restart local v5       #dndTrg:Lcom/oppo/camera/rewind/ui/Widget;
    .restart local v7       #layoutContains:Z
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    const/4 v13, 0x4

    if-eq v12, v13, :cond_e

    .line 426
    const/4 v12, 0x3

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    goto :goto_4

    .line 429
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    iget-object v12, v12, Lcom/oppo/camera/rewind/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    if-eqz v12, :cond_f

    .line 430
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    const/high16 v14, 0x3f00

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/oppo/camera/rewind/ui/Strip;->setBlendPoint(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Point;F)V

    .line 433
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    goto :goto_5

    .line 438
    .end local v1           #dPath:F
    .end local v2           #dPos:F
    .end local v5           #dndTrg:Lcom/oppo/camera/rewind/ui/Widget;
    .end local v7           #layoutContains:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/oppo/camera/rewind/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    .line 439
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    .line 440
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    goto :goto_5

    .line 448
    .end local v3           #delta:D
    .end local v9           #updatePos:Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-boolean v12, v12, Lcom/oppo/camera/rewind/ui/StripLayout;->mContinuousSelection:Z

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-boolean v12, v12, Lcom/oppo/camera/rewind/ui/StripLayout;->mSelectable:Z

    if-eqz v12, :cond_c

    .line 449
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/oppo/camera/rewind/ui/Strip;->closestItemFromPoint(II)Lcom/oppo/camera/rewind/ui/Item;

    move-result-object v6

    .line 450
    .local v6, item:Lcom/oppo/camera/rewind/ui/Item;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/oppo/camera/rewind/ui/Strip;->focusItemOnTouchNonSlidable(Lcom/oppo/camera/rewind/ui/Item;)V

    goto/16 :goto_3

    .line 455
    .end local v6           #item:Lcom/oppo/camera/rewind/ui/Item;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iput v10, v12, Landroid/graphics/Point;->x:I

    .line 456
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    iput v11, v12, Landroid/graphics/Point;->y:I

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->getDNDEnabled()Z

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchState:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_14

    .line 460
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oppo/camera/rewind/ui/Strip;->getDNDTarget(Landroid/graphics/Point;)Lcom/oppo/camera/rewind/ui/Widget;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13, v14}, Lcom/oppo/camera/rewind/ui/UiManager;->onDND(Lcom/oppo/camera/rewind/ui/Widget;Lcom/oppo/camera/rewind/ui/Item;Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->hide()V

    .line 463
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    iget-object v12, v12, Lcom/oppo/camera/rewind/ui/Item;->mOffsetPos:Landroid/graphics/Point;

    if-eqz v12, :cond_15

    .line 464
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    iget-object v12, v12, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    if-nez v12, :cond_18

    .line 465
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    new-instance v13, Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-direct {v13}, Lcom/oppo/camera/rewind/ui/Interpolation;-><init>()V

    iput-object v13, v12, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    .line 466
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    iget-object v12, v12, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    const-wide/16 v13, 0xc8

    invoke-virtual {v12, v13, v14}, Lcom/oppo/camera/rewind/ui/Interpolation;->startTimed(J)V

    .line 470
    :goto_6
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mHasAnimItem:Z

    .line 473
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-boolean v12, v12, Lcom/oppo/camera/rewind/ui/StripLayout;->mSlidable:Z

    if-nez v12, :cond_19

    .line 474
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->beforeUp()V

    .line 475
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-boolean v12, v12, Lcom/oppo/camera/rewind/ui/StripLayout;->mSelectable:Z

    if-eqz v12, :cond_c

    .line 476
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/oppo/camera/rewind/ui/Strip;->closestItemFromPoint(II)Lcom/oppo/camera/rewind/ui/Item;

    move-result-object v6

    .line 477
    .restart local v6       #item:Lcom/oppo/camera/rewind/ui/Item;
    if-nez v6, :cond_16

    .line 478
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oppo/camera/rewind/ui/Strip;->mPrevItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 480
    :cond_16
    if-nez v6, :cond_17

    .line 481
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedOnDownItem:Lcom/oppo/camera/rewind/ui/Item;

    .line 483
    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/oppo/camera/rewind/ui/Strip;->privateSelect(Lcom/oppo/camera/rewind/ui/Item;)V

    .line 484
    if-eqz v6, :cond_c

    .line 485
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    iget v13, v6, Lcom/oppo/camera/rewind/ui/Item;->mIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Lcom/oppo/camera/rewind/ui/UiManager;->onIndexSelected(Lcom/oppo/camera/rewind/ui/Widget;I)V

    goto/16 :goto_3

    .line 468
    .end local v6           #item:Lcom/oppo/camera/rewind/ui/Item;
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    iget-object v12, v12, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    const-wide/16 v13, 0xc8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownItem:Lcom/oppo/camera/rewind/ui/Item;

    iget-object v15, v15, Lcom/oppo/camera/rewind/ui/Item;->mAnim:Lcom/oppo/camera/rewind/ui/Interpolation;

    invoke-virtual {v15}, Lcom/oppo/camera/rewind/ui/Interpolation;->param()F

    move-result v15

    invoke-virtual {v12, v13, v14, v15}, Lcom/oppo/camera/rewind/ui/Interpolation;->startTimed(JF)V

    goto :goto_6

    .line 490
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/camera/rewind/ui/Strip;->mDownPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/camera/rewind/ui/Strip;->mTouchTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v12, v13, v14}, Lcom/oppo/camera/rewind/ui/StripLayout;->getDelta(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v3

    .line 491
    .restart local v3       #delta:D
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mVelTrapper:Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;

    double-to-float v13, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    #calls: Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;->add(FJ)V
    invoke-static {v12, v13, v14, v15}, Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;->access$300(Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;FJ)V

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->updateVisited()V

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->calculateVelocity()V

    .line 495
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mVelTrapper:Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;

    #calls: Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;->reset()V
    invoke-static {v12}, Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;->access$400(Lcom/oppo/camera/rewind/ui/Strip$VelocityTrapper;)V

    .line 496
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    .line 497
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/oppo/camera/rewind/ui/Strip;->mT0:J

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/rewind/ui/Strip;->beforeUp()V

    goto/16 :goto_3

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 392
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public show()V
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    .line 180
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/StripLayout;->prepareShowing()V

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/rewind/ui/Widget;->show()V

    .line 183
    return-void
.end method

.method size()F
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public transitionTo(Lcom/oppo/camera/rewind/ui/StripLayout;J)V
    .locals 3
    .parameter "layout"
    .parameter "t"

    .prologue
    .line 315
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip;->mQueuedTransitions:Ljava/util/Vector;

    monitor-enter v1

    .line 317
    :try_start_0
    iget v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    .line 319
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/rewind/ui/Strip;->prepareTransition(Lcom/oppo/camera/rewind/ui/StripLayout;J)V

    .line 325
    :cond_0
    monitor-exit v1

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(J)V
    .locals 3
    .parameter "t"

    .prologue
    .line 676
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v2, p1, p2}, Lcom/oppo/camera/rewind/ui/StripLayout;->update(J)V

    .line 677
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/ui/Item;

    .line 678
    .local v1, item:Lcom/oppo/camera/rewind/ui/Item;
    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/Item;->isMoving()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 679
    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/rewind/ui/Item;->update(J)V

    goto :goto_0

    .line 682
    .end local v1           #item:Lcom/oppo/camera/rewind/ui/Item;
    :cond_1
    iget v2, p0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 693
    :goto_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/ui/UiManager;->requestDraw()V

    .line 694
    return-void

    .line 684
    :pswitch_0
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/Strip;->updateIdle()V

    goto :goto_1

    .line 687
    :pswitch_1
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/ui/Strip;->updateMotion()V

    goto :goto_1

    .line 690
    :pswitch_2
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/Strip;->updateTransition()V

    goto :goto_1

    .line 682
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateMotion()V
    .locals 15

    .prologue
    .line 697
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 698
    .local v7, t1:J
    iget-wide v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mT0:J

    sub-long v5, v7, v12

    .line 699
    .local v5, t:J
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    long-to-float v13, v5

    mul-float/2addr v12, v13

    iget-object v13, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    int-to-float v13, v13

    mul-float v1, v12, v13

    .line 700
    .local v1, delta:F
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    const/high16 v11, -0x4080

    .line 701
    .local v11, vSign:F
    :goto_0
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPos:F

    add-float/2addr v12, v1

    invoke-direct {p0, v12}, Lcom/oppo/camera/rewind/ui/Strip;->updateIndex(F)F

    move-result v3

    .line 702
    .local v3, newPos:F
    const/4 v10, 0x1

    .line 703
    .local v10, updateVelocity:Z
    const/4 v4, 0x0

    .line 704
    .local v4, stop:Z
    const/4 v9, 0x0

    .line 705
    .local v9, tn:Lcom/oppo/camera/rewind/ui/Item;
    const/4 v0, 0x0

    .line 706
    .local v0, closest:Lcom/oppo/camera/rewind/ui/Item;
    iget-object v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    int-to-float v2, v12

    .line 708
    .local v2, minDist:F
    invoke-direct {p0, v11}, Lcom/oppo/camera/rewind/ui/Strip;->closestItemDirect(F)Lcom/oppo/camera/rewind/ui/Item;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/Item;->index()F

    move-result v12

    invoke-direct {p0, v12, v11}, Lcom/oppo/camera/rewind/ui/Strip;->directedPivotDist(FF)F

    move-result v2

    .line 712
    invoke-direct {p0, v7, v8}, Lcom/oppo/camera/rewind/ui/Strip;->updateAnims(J)V

    .line 715
    iget-object v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTargetItem:Lcom/oppo/camera/rewind/ui/Item;

    if-eqz v12, :cond_7

    .line 716
    iget-object v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mTargetItem:Lcom/oppo/camera/rewind/ui/Item;

    if-ne v0, v12, :cond_0

    .line 718
    iget v12, v0, Lcom/oppo/camera/rewind/ui/Item;->mIndex:I

    invoke-virtual {p0, v12}, Lcom/oppo/camera/rewind/ui/Strip;->getOffset(I)F

    move-result v12

    add-float/2addr v12, v3

    invoke-virtual {p0, v12}, Lcom/oppo/camera/rewind/ui/Strip;->wrapIndex(F)F

    move-result v12

    invoke-direct {p0, v12, v11}, Lcom/oppo/camera/rewind/ui/Strip;->directedPivotDist(FF)F

    move-result v12

    cmpl-float v12, v12, v2

    if-lez v12, :cond_6

    const/4 v4, 0x1

    .line 721
    :cond_0
    :goto_1
    const/4 v10, 0x0

    .line 727
    :cond_1
    :goto_2
    if-eqz v4, :cond_9

    .line 728
    const/4 v12, 0x0

    iput v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    .line 729
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPos:F

    mul-float v13, v11, v2

    add-float/2addr v12, v13

    invoke-direct {p0, v12}, Lcom/oppo/camera/rewind/ui/Strip;->updateIndex(F)F

    move-result v12

    iput v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPos:F

    .line 733
    :goto_3
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/Strip;->borderReached()Z

    move-result v12

    if-eqz v12, :cond_2

    if-nez v4, :cond_2

    .line 734
    const/4 v12, 0x0

    iput v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    .line 737
    :cond_2
    if-eqz v10, :cond_3

    .line 738
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_a

    .line 739
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    iget v13, p0, Lcom/oppo/camera/rewind/ui/Strip;->mAcc:F

    long-to-float v14, v5

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    .line 740
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3

    .line 741
    const/4 v12, 0x0

    iput v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    .line 750
    :cond_3
    :goto_4
    iput-wide v7, p0, Lcom/oppo/camera/rewind/ui/Strip;->mT0:J

    .line 751
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/ui/Strip;->closestItem()Lcom/oppo/camera/rewind/ui/Item;

    move-result-object v9

    .line 752
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_b

    .line 753
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/ui/Strip;->closestItem()Lcom/oppo/camera/rewind/ui/Item;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/oppo/camera/rewind/ui/Strip;->privateSelect(Lcom/oppo/camera/rewind/ui/Item;)V

    .line 754
    const/4 v12, 0x0

    iput v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mState:I

    .line 755
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/Strip;->onStop()V

    .line 762
    :goto_5
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/Strip;->updateVisited()V

    .line 763
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_4

    iget-object v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    if-eqz v12, :cond_4

    .line 764
    iget-object v12, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    iget-object v13, p0, Lcom/oppo/camera/rewind/ui/Strip;->mSelectedItem:Lcom/oppo/camera/rewind/ui/Item;

    iget v13, v13, Lcom/oppo/camera/rewind/ui/Item;->mIndex:I

    invoke-virtual {v12, p0, v13}, Lcom/oppo/camera/rewind/ui/UiManager;->onIndexSelected(Lcom/oppo/camera/rewind/ui/Widget;I)V

    .line 766
    :cond_4
    return-void

    .line 700
    .end local v0           #closest:Lcom/oppo/camera/rewind/ui/Item;
    .end local v2           #minDist:F
    .end local v3           #newPos:F
    .end local v4           #stop:Z
    .end local v9           #tn:Lcom/oppo/camera/rewind/ui/Item;
    .end local v10           #updateVelocity:Z
    .end local v11           #vSign:F
    :cond_5
    const/high16 v11, 0x3f80

    goto/16 :goto_0

    .line 718
    .restart local v0       #closest:Lcom/oppo/camera/rewind/ui/Item;
    .restart local v2       #minDist:F
    .restart local v3       #newPos:F
    .restart local v4       #stop:Z
    .restart local v9       #tn:Lcom/oppo/camera/rewind/ui/Item;
    .restart local v10       #updateVelocity:Z
    .restart local v11       #vSign:F
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 722
    :cond_7
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelStopLimit:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 724
    iget v12, v0, Lcom/oppo/camera/rewind/ui/Item;->mIndex:I

    invoke-virtual {p0, v12}, Lcom/oppo/camera/rewind/ui/Strip;->getOffset(I)F

    move-result v12

    add-float/2addr v12, v3

    invoke-virtual {p0, v12}, Lcom/oppo/camera/rewind/ui/Strip;->wrapIndex(F)F

    move-result v12

    invoke-direct {p0, v12, v11}, Lcom/oppo/camera/rewind/ui/Strip;->directedPivotDist(FF)F

    move-result v12

    cmpl-float v12, v12, v2

    if-lez v12, :cond_8

    const/4 v4, 0x1

    .line 725
    :goto_6
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 724
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 731
    :cond_9
    iput v3, p0, Lcom/oppo/camera/rewind/ui/Strip;->mCurPos:F

    goto/16 :goto_3

    .line 744
    :cond_a
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    iget v13, p0, Lcom/oppo/camera/rewind/ui/Strip;->mAcc:F

    long-to-float v14, v5

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    .line 745
    iget v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    .line 746
    const/4 v12, 0x0

    iput v12, p0, Lcom/oppo/camera/rewind/ui/Strip;->mVelocity:F

    goto :goto_4

    .line 760
    :cond_b
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/Strip;->privateSelectNone()V

    goto :goto_5
.end method

.method final wrapIndex(F)F
    .locals 1
    .parameter "index"

    .prologue
    .line 958
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/ui/StripLayout;->wrapIndex(F)F

    move-result v0

    return v0
.end method
