.class public Lcom/oppo/camera/rewind/ui/SelectionRect;
.super Lcom/oppo/camera/rewind/ui/Widget;
.source "SelectionRect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;
    }
.end annotation


# static fields
.field private static final mStateStrings:[Ljava/lang/String;


# instance fields
.field private mBBox:Landroid/graphics/Rect;

.field private mCorners:[[I

.field private mDownRect:Landroid/graphics/Rect;

.field private mDownState:I

.field private mDraw:Z

.field private mEnlargedArea:Landroid/graphics/Rect;

.field private mFlashAlpha:I

.field private mFlashDir:I

.field private mFlashPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

.field private mFlashPeriod:J

.field private mHasPrevRect:Z

.field private mInnerRect:Landroid/graphics/Rect;

.field private mLongPressed:Z

.field private mMinRect:Landroid/graphics/Rect;

.field private mOuterRect:Landroid/graphics/Rect;

.field private mP0:Lcom/scalado/base/Point;

.field private mP1:Lcom/scalado/base/Point;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaint2:Landroid/graphics/Paint;

.field private mPeriodCount:I

.field private mPrevRect:Landroid/graphics/Rect;

.field private mRect:Landroid/graphics/Rect;

.field private mRectListener:Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;

.field private mRectPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

.field private mRectWidth:I

.field private mSrcP0:Lcom/scalado/base/Point;

.field private mSrcP1:Lcom/scalado/base/Point;

.field private mSrcRect:Lcom/scalado/base/Rect;

.field private mSrcZoomRect:Landroid/graphics/Rect;

.field private mState:I

.field private mStatic:Z

.field private mT0:J

.field private mTEnd:J

.field private mTPrev:J

.field private mTTotal:J

.field private mTmpRect:Lcom/scalado/base/Rect;

.field private mTouchDown:Z

.field private mTransientMode:I

.field private mVertexes:[[I

.field private mZoomRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "INVISIBLE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "VISIBLE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SIZE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MOVE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CORRIDOR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mStateStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oppo/camera/rewind/ui/UiManager;)V
    .locals 7
    .parameter "uiManager"

    .prologue
    const/high16 v6, -0x4080

    const/16 v5, 0xff

    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/ui/Widget;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;)V

    .line 33
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP0:Lcom/scalado/base/Point;

    .line 34
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP1:Lcom/scalado/base/Point;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mEnlargedArea:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mMinRect:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mDownRect:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mInnerRect:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mOuterRect:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPrevRect:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mBBox:Landroid/graphics/Rect;

    .line 43
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mHasPrevRect:Z

    .line 44
    const/4 v0, 0x2

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mVertexes:[[I

    .line 45
    const/16 v0, 0x14

    iput v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectWidth:I

    .line 46
    new-instance v0, Lcom/oppo/camera/rewind/ui/PaintConfig;

    invoke-direct {v0}, Lcom/oppo/camera/rewind/ui/PaintConfig;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    .line 49
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mLongPressed:Z

    .line 51
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mStatic:Z

    .line 52
    iput-boolean v4, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mDraw:Z

    .line 60
    iput v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mState:I

    .line 61
    iput v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mDownState:I

    .line 63
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mSrcRect:Lcom/scalado/base/Rect;

    .line 64
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mSrcP0:Lcom/scalado/base/Point;

    .line 65
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mSrcP1:Lcom/scalado/base/Point;

    .line 67
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTmpRect:Lcom/scalado/base/Rect;

    .line 68
    const/4 v0, 0x4

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    .line 70
    iput v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTransientMode:I

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mSrcZoomRect:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mZoomRect:Landroid/graphics/Rect;

    .line 88
    new-instance v0, Lcom/oppo/camera/rewind/ui/PaintConfig;

    invoke-direct {v0}, Lcom/oppo/camera/rewind/ui/PaintConfig;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    .line 106
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mCfg:Lcom/oppo/camera/rewind/ui/Widget$Config;

    iput-boolean v4, v0, Lcom/oppo/camera/rewind/ui/Widget$Config;->mHideOnOut:Z

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPaint:Landroid/graphics/Paint;

    .line 109
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    iput-object v1, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mStyle:Landroid/graphics/Paint$Style;

    .line 110
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iput v3, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mStrokeWidth:F

    .line 111
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iput-boolean v4, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mAntiAlias:Z

    .line 112
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1, v6, v3, v2}, Lcom/oppo/camera/rewind/ui/PaintConfig;->setShadowLayer(FFFI)V

    .line 113
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    const/4 v1, -0x1

    iput v1, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mColor:I

    .line 114
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iput v5, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mAlpha:I

    .line 116
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    iput-object v1, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mStyle:Landroid/graphics/Paint$Style;

    .line 117
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iput v3, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mStrokeWidth:F

    .line 118
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iput-boolean v4, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mAntiAlias:Z

    .line 119
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1, v6, v3, v2}, Lcom/oppo/camera/rewind/ui/PaintConfig;->setShadowLayer(FFFI)V

    .line 120
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    const/4 v1, -0x1

    iput v1, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mColor:I

    .line 121
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iput v5, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mAlpha:I

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPaint2:Landroid/graphics/Paint;

    .line 124
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 125
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPaint2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPaint2:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 129
    return-void
.end method

.method private activateStrip()V
    .locals 11

    .prologue
    const v10, 0x3f4ccccd

    .line 556
    iget-object v8, p0, Lcom/oppo/camera/rewind/ui/Widget;->mChildren:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/camera/rewind/ui/Widget;

    .line 557
    .local v5, widget:Lcom/oppo/camera/rewind/ui/Widget;
    iget v8, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 558
    instance-of v8, v5, Lcom/oppo/camera/rewind/ui/Strip;

    if-eqz v8, :cond_0

    move-object v8, v5

    .line 559
    check-cast v8, Lcom/oppo/camera/rewind/ui/Strip;

    invoke-virtual {v8}, Lcom/oppo/camera/rewind/ui/Strip;->getLayout()Lcom/oppo/camera/rewind/ui/StripLayout;

    move-result-object v2

    .line 560
    .local v2, layout:Lcom/oppo/camera/rewind/ui/StripLayout;
    instance-of v8, v2, Lcom/oppo/camera/rewind/ui/EllipticStripLayout;

    if-eqz v8, :cond_0

    .line 561
    iget-object v8, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    div-int/lit8 v6, v8, 0x2

    .line 562
    .local v6, x:I
    iget-object v8, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    div-int/lit8 v7, v8, 0x2

    .line 563
    .local v7, y:I
    iget-object v8, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 564
    .local v4, w:I
    iget-object v8, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 565
    .local v0, h:I
    mul-int v8, v4, v4

    mul-int v9, v0, v0

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v3, v8

    .line 566
    .local v3, r:I
    check-cast v2, Lcom/oppo/camera/rewind/ui/EllipticStripLayout;

    .end local v2           #layout:Lcom/oppo/camera/rewind/ui/StripLayout;
    invoke-virtual {v2, v6, v7, v4, v0}, Lcom/oppo/camera/rewind/ui/EllipticStripLayout;->set(IIII)V

    .line 567
    invoke-virtual {v5}, Lcom/oppo/camera/rewind/ui/Widget;->show()V

    goto :goto_0

    .line 571
    .end local v0           #h:I
    .end local v3           #r:I
    .end local v4           #w:I
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_1
    invoke-virtual {v5}, Lcom/oppo/camera/rewind/ui/Widget;->hide()V

    goto :goto_0

    .line 574
    .end local v5           #widget:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_2
    return-void
.end method

.method private changeState(I)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 548
    iput p1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mState:I

    .line 549
    return-void
.end method

.method private final corridorContains(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mInnerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mOuterRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private flash(IJJ)V
    .locals 3
    .parameter "alpha"
    .parameter "time"
    .parameter "period"

    .prologue
    const/4 v2, 0x1

    .line 169
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mT0:J

    .line 170
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mT0:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTEnd:J

    .line 171
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mT0:J

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTPrev:J

    .line 172
    iput-wide p2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTTotal:J

    .line 173
    iput-wide p4, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashPeriod:J

    .line 174
    iput v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTransientMode:I

    .line 175
    iput p1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashAlpha:I

    .line 176
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 177
    iput v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashDir:I

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashDir:I

    goto :goto_0
.end method

.method private makeInvisible()V
    .locals 3

    .prologue
    .line 498
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/oppo/camera/rewind/ui/SelectionRect;->changeState(I)V

    .line 499
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Widget;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/ui/Widget;

    .line 500
    .local v1, w:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/Widget;->hide()V

    goto :goto_0

    .line 502
    .end local v1           #w:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_0
    return-void
.end method

.method private onUp()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 467
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTouchDown:Z

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, doUpdate:Z
    iget v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 481
    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectListener:Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-interface {v3, v4}, Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;->validateRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    const/4 v0, 0x1

    .line 484
    :cond_0
    if-eqz v0, :cond_1

    .line 485
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectListener:Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-interface {v3, v4}, Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;->onRectChanged(Landroid/graphics/Rect;)V

    .line 486
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/SelectionRect;->updateRect()V

    .line 487
    invoke-direct {p0, v6}, Lcom/oppo/camera/rewind/ui/SelectionRect;->changeState(I)V

    .line 488
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPrevRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 489
    iput-boolean v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mHasPrevRect:Z

    .line 490
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/SelectionRect;->activateStrip()V

    .line 495
    :goto_1
    return-void

    .line 472
    :pswitch_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP0:Lcom/scalado/base/Point;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP1:Lcom/scalado/base/Point;

    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4, v5}, Lcom/oppo/camera/rewind/ui/SelectionRect;->pointsToRect(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Landroid/graphics/Rect;)V

    .line 473
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mSrcP0:Lcom/scalado/base/Point;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mSrcP1:Lcom/scalado/base/Point;

    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mSrcRect:Lcom/scalado/base/Rect;

    invoke-direct {p0, v3, v4, v5}, Lcom/oppo/camera/rewind/ui/SelectionRect;->pointsToRect(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Lcom/scalado/base/Rect;)V

    goto :goto_0

    .line 476
    :pswitch_1
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP1:Lcom/scalado/base/Point;

    invoke-virtual {v3}, Lcom/scalado/base/Point;->getX()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP0:Lcom/scalado/base/Point;

    invoke-virtual {v4}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    sub-int v1, v3, v4

    .line 477
    .local v1, dx:I
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP1:Lcom/scalado/base/Point;

    invoke-virtual {v3}, Lcom/scalado/base/Point;->getY()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP0:Lcom/scalado/base/Point;

    invoke-virtual {v4}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    sub-int v2, v3, v4

    .line 478
    .local v2, dy:I
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 492
    .end local v1           #dx:I
    .end local v2           #dy:I
    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectListener:Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;->onRectChanged(Landroid/graphics/Rect;)V

    .line 493
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/SelectionRect;->makeInvisible()V

    goto :goto_1

    .line 470
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final pointsToRect(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "p0"
    .parameter "p1"
    .parameter "dstRect"

    .prologue
    .line 640
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getX()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 641
    .local v0, x0:I
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getY()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 642
    .local v2, y0:I
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v4

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getX()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 643
    .local v1, x1:I
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v4

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getY()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 644
    .local v3, y1:I
    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 645
    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 646
    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 647
    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    .line 648
    return-void
.end method

.method private final pointsToRect(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Lcom/scalado/base/Rect;)V
    .locals 8
    .parameter "p0"
    .parameter "p1"
    .parameter "rect"

    .prologue
    .line 615
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v6

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getX()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 616
    .local v2, x0:I
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v6

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getY()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 617
    .local v4, y0:I
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getX()I

    move-result v6

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getX()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 618
    .local v3, x1:I
    invoke-virtual {p1}, Lcom/scalado/base/Point;->getY()I

    move-result v6

    invoke-virtual {p2}, Lcom/scalado/base/Point;->getY()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 619
    .local v5, y1:I
    rem-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_0

    .line 620
    add-int/lit8 v2, v2, 0x1

    .line 622
    :cond_0
    rem-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_1

    .line 623
    add-int/lit8 v4, v4, 0x1

    .line 625
    :cond_1
    invoke-virtual {p3, v2}, Lcom/scalado/base/Rect;->setX(I)V

    .line 626
    invoke-virtual {p3, v4}, Lcom/scalado/base/Rect;->setY(I)V

    .line 627
    sub-int v1, v3, v2

    .line 628
    .local v1, w:I
    sub-int v0, v5, v4

    .line 629
    .local v0, h:I
    rem-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_2

    .line 630
    add-int/lit8 v1, v1, 0x1

    .line 632
    :cond_2
    rem-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_3

    .line 633
    add-int/lit8 v0, v0, 0x1

    .line 635
    :cond_3
    invoke-virtual {p3, v1}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 636
    invoke-virtual {p3, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 637
    return-void
.end method

.method private final rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 609
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v1

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 611
    return-void
.end method

.method private final setPoint(FFLcom/scalado/base/Point;)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "point"

    .prologue
    .line 602
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 603
    .local v0, newX:I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 604
    .local v1, newY:I
    invoke-virtual {p3, v0}, Lcom/scalado/base/Point;->setX(I)V

    .line 605
    invoke-virtual {p3, v1}, Lcom/scalado/base/Point;->setY(I)V

    .line 606
    return-void
.end method

.method private updateRect()V
    .locals 6

    .prologue
    const/16 v5, 0x14

    const/high16 v4, 0x3e80

    .line 527
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mMinRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 528
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 529
    .local v0, dx:I
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 530
    .local v1, dy:I
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mMinRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 531
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mMinRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, v5, :cond_0

    .line 532
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mMinRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 533
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mMinRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mMinRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v2, v5, :cond_1

    .line 536
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mMinRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 537
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mMinRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 540
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mInnerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 541
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mInnerRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectWidth:I

    iget v4, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectWidth:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 542
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mOuterRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 543
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mOuterRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectWidth:I

    neg-int v3, v3

    iget v4, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectWidth:I

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 544
    return-void
.end method


# virtual methods
.method boundingBox(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "bbox"

    .prologue
    .line 320
    iget v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTransientMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mBBox:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/ui/PaintConfig;->increaseRect(Landroid/graphics/Rect;)V

    .line 327
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mBBox:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 328
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mBBox:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method distance(II)F
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 347
    iget-boolean v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mStatic:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mEnlargedArea:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v0, v2

    .line 349
    .local v0, dx2:F
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v1, v2

    .line 350
    .local v1, dy2:F
    mul-float/2addr v0, v0

    .line 351
    mul-float/2addr v1, v1

    .line 352
    add-float v2, v0, v1

    .line 354
    .end local v0           #dx2:F
    .end local v1           #dy2:F
    :goto_0
    return v2

    :cond_0
    const v2, 0x7f7fffff

    goto :goto_0
.end method

.method dndContains(Landroid/graphics/Point;)Z
    .locals 3
    .parameter "p"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mMinRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x1

    .line 227
    iget v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTransientMode:I

    if-ne v0, v2, :cond_1

    .line 228
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iget v1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashAlpha:I

    iput v1, v0, Lcom/oppo/camera/rewind/ui/PaintConfig;->mAlpha:I

    .line 229
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/ui/PaintConfig;->apply(Landroid/graphics/Paint;)V

    .line 230
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTransientMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 233
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/ui/PaintConfig;->apply(Landroid/graphics/Paint;)V

    .line 234
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mZoomRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 237
    :cond_2
    iget v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mState:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mDraw:Z

    if-eqz v0, :cond_0

    .line 238
    iget v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mState:I

    if-ne v0, v2, :cond_3

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/ui/PaintConfig;->apply(Landroid/graphics/Paint;)V

    .line 243
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lcom/oppo/camera/rewind/ui/Widget;->hide()V

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTransientMode:I

    .line 220
    return-void
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTransientMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minimize()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/SelectionRect;->makeInvisible()V

    .line 267
    return-void
.end method

.method onOut()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 335
    iget-boolean v1, p0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    if-nez v1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Widget;->mCfg:Lcom/oppo/camera/rewind/ui/Widget$Config;

    iget-boolean v1, v1, Lcom/oppo/camera/rewind/ui/Widget$Config;->mHideOnOut:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mStatic:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mState:I

    if-eqz v1, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/SelectionRect;->makeInvisible()V

    .line 340
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 358
    iget-boolean v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mStatic:Z

    if-eqz v9, :cond_4

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP0:Lcom/scalado/base/Point;

    invoke-direct {p0, v9, v10, v11}, Lcom/oppo/camera/rewind/ui/SelectionRect;->setPoint(FFLcom/scalado/base/Point;)V

    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_1

    .line 362
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP0:Lcom/scalado/base/Point;

    invoke-virtual {v10}, Lcom/scalado/base/Point;->getX()I

    move-result v10

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP0:Lcom/scalado/base/Point;

    invoke-virtual {v11}, Lcom/scalado/base/Point;->getY()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    .line 363
    .local v7, inside:Z
    if-nez v7, :cond_0

    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v9}, Lcom/oppo/camera/rewind/ui/UiManager;->isForcedDown()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 364
    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTouchDown:Z

    .line 365
    const/4 v9, 0x1

    .line 462
    .end local v7           #inside:Z
    :goto_0
    return v9

    .line 367
    :cond_1
    iget-boolean v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTouchDown:Z

    if-eqz v9, :cond_3

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 369
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTouchDown:Z

    .line 370
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectListener:Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;

    if-eqz v9, :cond_2

    .line 371
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectListener:Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;

    invoke-interface {v9, p0}, Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;->onSelected(Lcom/oppo/camera/rewind/ui/SelectionRect;)V

    .line 374
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 376
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 379
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 462
    const/4 v9, 0x0

    goto :goto_0

    .line 381
    :pswitch_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mLongPressed:Z

    .line 382
    iget v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mState:I

    iput v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mDownState:I

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP0:Lcom/scalado/base/Point;

    invoke-direct {p0, v9, v10, v11}, Lcom/oppo/camera/rewind/ui/SelectionRect;->setPoint(FFLcom/scalado/base/Point;)V

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP1:Lcom/scalado/base/Point;

    invoke-direct {p0, v9, v10, v11}, Lcom/oppo/camera/rewind/ui/SelectionRect;->setPoint(FFLcom/scalado/base/Point;)V

    .line 385
    iget v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mState:I

    packed-switch v9, :pswitch_data_1

    .line 432
    :cond_5
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 387
    :pswitch_1
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/oppo/camera/rewind/ui/SelectionRect;->changeState(I)V

    .line 388
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTouchDown:Z

    goto :goto_1

    .line 391
    :pswitch_2
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP0:Lcom/scalado/base/Point;

    invoke-virtual {v9}, Lcom/scalado/base/Point;->getX()I

    move-result v9

    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP0:Lcom/scalado/base/Point;

    invoke-virtual {v10}, Lcom/scalado/base/Point;->getY()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/oppo/camera/rewind/ui/SelectionRect;->corridorContains(II)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 392
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    aput v11, v9, v10

    .line 393
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    aput v11, v9, v10

    .line 394
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    aput v11, v9, v10

    .line 395
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    aput v11, v9, v10

    .line 396
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    aput v11, v9, v10

    .line 397
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    aput v11, v9, v10

    .line 398
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    aput v11, v9, v10

    .line 399
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    aput v11, v9, v10

    .line 400
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget v9, v9, v10

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v1, v9, v10

    .line 402
    .local v1, dMin:F
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    aget v9, v9, v10

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v1, v9

    .line 404
    const/4 v6, 0x0

    .line 405
    .local v6, iMin:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    array-length v9, v9

    if-ge v4, v9, :cond_7

    .line 406
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    aget-object v9, v9, v4

    const/4 v10, 0x0

    aget v9, v9, v10

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    aget-object v10, v10, v4

    const/4 v11, 0x0

    aget v10, v10, v11

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v0, v9, v10

    .line 408
    .local v0, d:F
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    aget-object v9, v9, v4

    const/4 v10, 0x1

    aget v9, v9, v10

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mCorners:[[I

    aget-object v10, v10, v4

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v0, v9

    .line 410
    cmpg-float v9, v0, v1

    if-gez v9, :cond_6

    .line 411
    move v1, v0

    .line 412
    move v6, v4

    .line 405
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 415
    .end local v0           #d:F
    :cond_7
    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/oppo/camera/rewind/ui/SelectionRect;->changeState(I)V

    .line 416
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTouchDown:Z

    goto/16 :goto_1

    .line 417
    .end local v1           #dMin:F
    .end local v4           #i:I
    .end local v6           #iMin:I
    :cond_8
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP0:Lcom/scalado/base/Point;

    invoke-virtual {v10}, Lcom/scalado/base/Point;->getX()I

    move-result v10

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP0:Lcom/scalado/base/Point;

    invoke-virtual {v11}, Lcom/scalado/base/Point;->getY()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 418
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/oppo/camera/rewind/ui/SelectionRect;->changeState(I)V

    .line 419
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/Widget;->mChildren:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/camera/rewind/ui/Widget;

    .line 420
    .local v8, w:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {v8}, Lcom/oppo/camera/rewind/ui/Widget;->hide()V

    goto :goto_3

    .line 422
    .end local v8           #w:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_9
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mDownRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 423
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTouchDown:Z

    goto/16 :goto_1

    .line 425
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_a
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/SelectionRect;->makeInvisible()V

    .line 426
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectListener:Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;

    if-eqz v9, :cond_5

    .line 427
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectListener:Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;->onRectChanged(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 434
    :pswitch_3
    iget-boolean v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTouchDown:Z

    if-nez v9, :cond_b

    .line 435
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 437
    :cond_b
    iget v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mState:I

    packed-switch v9, :pswitch_data_2

    .line 451
    :goto_4
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 439
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP1:Lcom/scalado/base/Point;

    invoke-direct {p0, v9, v10, v11}, Lcom/oppo/camera/rewind/ui/SelectionRect;->setPoint(FFLcom/scalado/base/Point;)V

    .line 440
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP0:Lcom/scalado/base/Point;

    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP1:Lcom/scalado/base/Point;

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTmpRect:Lcom/scalado/base/Rect;

    invoke-direct {p0, v9, v10, v11}, Lcom/oppo/camera/rewind/ui/SelectionRect;->pointsToRect(Lcom/scalado/base/Point;Lcom/scalado/base/Point;Lcom/scalado/base/Rect;)V

    .line 441
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTmpRect:Lcom/scalado/base/Rect;

    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v9, v10}, Lcom/oppo/camera/rewind/ui/SelectionRect;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    goto :goto_4

    .line 444
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP1:Lcom/scalado/base/Point;

    invoke-direct {p0, v9, v10, v11}, Lcom/oppo/camera/rewind/ui/SelectionRect;->setPoint(FFLcom/scalado/base/Point;)V

    .line 445
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP1:Lcom/scalado/base/Point;

    invoke-virtual {v9}, Lcom/scalado/base/Point;->getX()I

    move-result v9

    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP0:Lcom/scalado/base/Point;

    invoke-virtual {v10}, Lcom/scalado/base/Point;->getX()I

    move-result v10

    sub-int v2, v9, v10

    .line 446
    .local v2, dx:I
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP1:Lcom/scalado/base/Point;

    invoke-virtual {v9}, Lcom/scalado/base/Point;->getY()I

    move-result v9

    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP0:Lcom/scalado/base/Point;

    invoke-virtual {v10}, Lcom/scalado/base/Point;->getY()I

    move-result v10

    sub-int v3, v9, v10

    .line 447
    .local v3, dy:I
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mDownRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 448
    iget-object v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    .line 453
    .end local v2           #dx:I
    .end local v3           #dy:I
    :pswitch_6
    iget-boolean v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTouchDown:Z

    if-nez v9, :cond_c

    .line 454
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTouchDown:Z

    .line 455
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 457
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget-object v11, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mP1:Lcom/scalado/base/Point;

    invoke-direct {p0, v9, v10, v11}, Lcom/oppo/camera/rewind/ui/SelectionRect;->setPoint(FFLcom/scalado/base/Point;)V

    .line 458
    invoke-direct {p0}, Lcom/oppo/camera/rewind/ui/SelectionRect;->onUp()V

    .line 459
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTouchDown:Z

    .line 460
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 385
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 437
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setDraw(Z)V
    .locals 0
    .parameter "draw"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mDraw:Z

    .line 161
    return-void
.end method

.method public setListener(Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectListener:Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;

    .line 133
    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "src"

    .prologue
    const/high16 v5, 0x42c8

    .line 253
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 254
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mEnlargedArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 255
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v0

    .line 256
    .local v0, dims:Lcom/scalado/base/Size;
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x44558000

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 257
    .local v2, minW:I
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x43f0

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 258
    .local v1, minH:I
    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mEnlargedArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/oppo/camera/rewind/ui/Layout;->ensureRectMinSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;II)V

    .line 259
    return-void
.end method

.method public setStatic(Z)V
    .locals 2
    .parameter "s"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mStatic:Z

    .line 146
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mCfg:Lcom/oppo/camera/rewind/ui/Widget$Config;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oppo/camera/rewind/ui/Widget$Config;->mHideOnOut:Z

    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/ui/SelectionRect;->changeState(I)V

    .line 148
    return-void
.end method

.method public update(J)V
    .locals 13
    .parameter "t"

    .prologue
    .line 274
    iget v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTransientMode:I

    if-nez v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mT0:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 278
    iput-wide p1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mT0:J

    .line 279
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mT0:J

    iget-wide v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTTotal:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTEnd:J

    .line 280
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mT0:J

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTPrev:J

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPeriodCount:I

    .line 283
    :cond_2
    move-wide v11, p1

    .line 284
    .local v11, t1:J
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTPrev:J

    sub-long v6, v11, v0

    .line 286
    .local v6, delta:J
    iget v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTransientMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 287
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashPeriod:J

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 289
    .local v8, dt:J
    iget v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashDir:I

    if-lez v0, :cond_5

    .line 290
    const-wide/16 v0, 0xff

    mul-long/2addr v0, v8

    iget-wide v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashPeriod:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashAlpha:I

    .line 294
    :cond_3
    :goto_1
    iget v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashAlpha:I

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashAlpha:I

    .line 295
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashPeriod:J

    cmp-long v0, v6, v0

    if-ltz v0, :cond_4

    .line 296
    iput-wide p1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTPrev:J

    .line 297
    iget v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashDir:I

    neg-int v0, v0

    iput v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashDir:I

    .line 298
    iget v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPeriodCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mPeriodCount:I

    .line 303
    :cond_4
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTEnd:J

    cmp-long v0, v11, v0

    if-lez v0, :cond_0

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTransientMode:I

    .line 305
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mT0:J

    goto :goto_0

    .line 291
    :cond_5
    iget v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashDir:I

    if-gez v0, :cond_3

    .line 292
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashPeriod:J

    sub-long/2addr v0, v8

    const-wide/16 v2, 0xff

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashPeriod:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mFlashAlpha:I

    goto :goto_1

    .line 307
    .end local v8           #dt:J
    :cond_6
    iget v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTransientMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 308
    long-to-float v0, v6

    iget-wide v1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTTotal:J

    long-to-float v1, v1

    div-float v10, v0, v1

    .line 309
    .local v10, s:F
    const/high16 v0, 0x3f80

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 311
    const/high16 v0, 0x3f00

    mul-float v1, v10, v10

    add-float/2addr v1, v10

    mul-float v10, v0, v1

    .line 312
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mSrcZoomRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mZoomRect:Landroid/graphics/Rect;

    invoke-static {v0, v1, v10, v2}, Lcom/oppo/camera/rewind/ui/AnimUtils;->interpolateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 313
    iget-wide v0, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTEnd:J

    cmp-long v0, v11, v0

    if-lez v0, :cond_0

    .line 314
    const/16 v1, 0xff

    const-wide/16 v2, 0x834

    const-wide/16 v4, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/rewind/ui/SelectionRect;->flash(IJJ)V

    goto/16 :goto_0
.end method

.method public updateLayout(II)V
    .locals 10
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v9, 0x4000

    const v7, 0x43e38000

    const/high16 v8, 0x3f80

    .line 205
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v0, v6

    .line 206
    .local v0, d:F
    mul-float v6, v9, v0

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 207
    .local v4, r:F
    div-float v6, v0, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 208
    .local v2, dxy:F
    neg-float v1, v2

    .line 209
    .local v1, dx:F
    move v3, v2

    .line 210
    .local v3, dy:F
    div-float v6, v0, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 211
    .local v5, strokeWidth:F
    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 212
    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 213
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v1, v3, v7}, Lcom/oppo/camera/rewind/ui/PaintConfig;->setShadowLayer(FFFI)V

    .line 214
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRectPaintCfg:Lcom/oppo/camera/rewind/ui/PaintConfig;

    iput v8, v6, Lcom/oppo/camera/rewind/ui/PaintConfig;->mStrokeWidth:F

    .line 215
    return-void
.end method

.method public zoomIn()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/high16 v13, 0x3f40

    const v12, 0x3f333333

    const/high16 v11, 0x3f00

    const/high16 v10, 0x3e80

    .line 185
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mT0:J

    .line 186
    iget-wide v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mT0:J

    const-wide/16 v8, 0x2bc

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTEnd:J

    .line 187
    iget-wide v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mT0:J

    iput-wide v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTPrev:J

    .line 188
    const-wide/16 v6, 0x2bc

    iput-wide v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTTotal:J

    .line 189
    const/4 v6, 0x2

    iput v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mTransientMode:I

    .line 190
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v6}, Lcom/oppo/camera/rewind/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    .line 191
    .local v3, w:I
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v6}, Lcom/oppo/camera/rewind/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    .line 192
    .local v2, h:I
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 193
    .local v0, cx:F
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .line 194
    .local v1, cy:F
    move v4, v0

    .line 195
    .local v4, x:F
    move v5, v1

    .line 196
    .local v5, y:F
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    mul-float/2addr v6, v13

    int-to-float v7, v3

    mul-float/2addr v7, v11

    mul-float/2addr v7, v10

    add-float v4, v6, v7

    .line 197
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    mul-float/2addr v6, v13

    int-to-float v7, v2

    mul-float/2addr v7, v11

    mul-float/2addr v7, v10

    add-float v5, v6, v7

    .line 198
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mSrcZoomRect:Landroid/graphics/Rect;

    int-to-float v7, v3

    mul-float/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v8, v2

    mul-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v6, v14, v14, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 200
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mSrcZoomRect:Landroid/graphics/Rect;

    invoke-static {v6, v4, v5}, Lcom/oppo/camera/rewind/ui/Layout;->centerRectOn(Landroid/graphics/Rect;FF)V

    .line 201
    iget-object v6, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mZoomRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/SelectionRect;->mSrcZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 202
    return-void
.end method
