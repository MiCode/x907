.class public Lcom/oppo/widget/OppoListView;
.super Landroid/widget/ListView;
.source "OppoListView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoListView$AccelerationListener;,
        Lcom/oppo/widget/OppoListView$SavedState;,
        Lcom/oppo/widget/OppoListView$ScaleGestureListener;,
        Lcom/oppo/widget/OppoListView$PerformMoveCheck;,
        Lcom/oppo/widget/OppoListView$ChildHeightCallback;,
        Lcom/oppo/widget/OppoListView$RemoveListener;,
        Lcom/oppo/widget/OppoListView$DropListener;,
        Lcom/oppo/widget/OppoListView$DragListener;
    }
.end annotation


# static fields
.field private static final AT_SCREEN_BOTTOM:I = -0x2

.field private static final AT_SCREEN_TOP:I = -0x1

.field private static final COLLAPS_STEP:I = 0x4

.field private static final INVALID_ADJUSTY:I = -0x2710

.field private static final TAG:Ljava/lang/String; = "OppoListView"


# instance fields
.field private final LOGD:Z

.field private mAccelerationEnable:Z

.field private mAccelerationListener:Lcom/oppo/widget/OppoListView$AccelerationListener;

.field private mChildHeightCallback:Lcom/oppo/widget/OppoListView$ChildHeightCallback;

.field private mClipShadow:Z

.field private mCollapsEnable:Z

.field private mCollapsItemBg:Landroid/graphics/drawable/Drawable;

.field protected mCollapsStatus:Z

.field private mCollapsStep:I

.field private mCoordOffset:I

.field private mDisableDrag:Z

.field private mDividerItemHeight:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragItemBackground:Landroid/graphics/drawable/Drawable;

.field private mDragItemBackgroundResource:I

.field private mDragItemPos:I

.field private mDragListener:Lcom/oppo/widget/OppoListView$DragListener;

.field private mDragOffset:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/oppo/widget/OppoListView$DropListener;

.field private mFillDivider:Z

.field private mFirstDragItemPos:I

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightNormal:I

.field private mItemHeightNormalHalf:I

.field private mLastAdjustY:I

.field private mLastScrollY:I

.field private mListPreferredItemHeight:I

.field private mLowerBound:I

.field private final mMaxSpeedDown:I

.field private final mMaxSpeedUp:I

.field private final mMinSpeedDown:I

.field private final mMinSpeedUp:I

.field private mMovePaused:Z

.field private mNeedDrawDivider:Z

.field private mNeedDrawSelector:Z

.field private mPerformMoveCheck:Lcom/oppo/widget/OppoListView$PerformMoveCheck;

.field private mRemoveListener:Lcom/oppo/widget/OppoListView$RemoveListener;

.field private mScale:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mShadeDivider:Landroid/graphics/drawable/Drawable;

.field private mShadow:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x4

    const/4 v9, 0x0

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-boolean v9, p0, Lcom/oppo/widget/OppoListView;->LOGD:Z

    .line 86
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/oppo/widget/OppoListView;->mTempRect:Landroid/graphics/Rect;

    .line 98
    iput v8, p0, Lcom/oppo/widget/OppoListView;->mMaxSpeedUp:I

    .line 99
    iput v7, p0, Lcom/oppo/widget/OppoListView;->mMinSpeedUp:I

    .line 101
    const/16 v6, 0x20

    iput v6, p0, Lcom/oppo/widget/OppoListView;->mMaxSpeedDown:I

    .line 102
    iput v8, p0, Lcom/oppo/widget/OppoListView;->mMinSpeedDown:I

    .line 105
    iput-boolean v9, p0, Lcom/oppo/widget/OppoListView;->mCollapsEnable:Z

    .line 106
    iput-boolean v9, p0, Lcom/oppo/widget/OppoListView;->mCollapsStatus:Z

    .line 107
    iput v7, p0, Lcom/oppo/widget/OppoListView;->mCollapsStep:I

    .line 109
    const/4 v6, 0x0

    iput v6, p0, Lcom/oppo/widget/OppoListView;->mScale:F

    .line 138
    const/16 v6, -0x2710

    iput v6, p0, Lcom/oppo/widget/OppoListView;->mLastAdjustY:I

    .line 139
    iput-boolean v9, p0, Lcom/oppo/widget/OppoListView;->mDisableDrag:Z

    .line 151
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoListView;->mTouchSlop:I

    .line 157
    sget-object v6, Lcom/android/internal/R$styleable;->OppoListView:[I

    invoke-virtual {p1, p2, v6, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 169
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 175
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoListView;->setDragItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :goto_0
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 188
    .local v1, collapsEnable:Z
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoListView;->setCollapsEnable(Z)V

    .line 190
    new-instance v6, Landroid/view/ScaleGestureDetector;

    new-instance v7, Lcom/oppo/widget/OppoListView$ScaleGestureListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/oppo/widget/OppoListView$ScaleGestureListener;-><init>(Lcom/oppo/widget/OppoListView;Lcom/oppo/widget/OppoListView$1;)V

    invoke-direct {v6, p1, v7}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v6, p0, Lcom/oppo/widget/OppoListView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 192
    new-instance v6, Lcom/oppo/widget/OppoListView$1;

    invoke-direct {v6, p0, p1}, Lcom/oppo/widget/OppoListView$1;-><init>(Lcom/oppo/widget/OppoListView;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/oppo/widget/OppoListView;->mAccelerationListener:Lcom/oppo/widget/OppoListView$AccelerationListener;

    .line 206
    iput-boolean v9, p0, Lcom/oppo/widget/OppoListView;->mAccelerationEnable:Z

    .line 210
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 211
    .local v4, fillDivider:Z
    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoListView;->setFillDivider(Z)V

    .line 213
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 214
    .local v3, dividerItemHeight:I
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoListView;->setDividerItemHeight(I)V

    .line 216
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    sget-object v6, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 219
    .local v5, typedArray:Landroid/content/res/TypedArray;
    const/16 v6, 0x1d

    const/16 v7, 0x5a

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoListView;->mListPreferredItemHeight:I

    .line 220
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080295

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoListView;->mShadeDivider:Landroid/graphics/drawable/Drawable;

    .line 223
    invoke-virtual {p0, p0}, Lcom/oppo/widget/OppoListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 224
    return-void

    .line 181
    .end local v1           #collapsEnable:Z
    .end local v3           #dividerItemHeight:I
    .end local v4           #fillDivider:Z
    .end local v5           #typedArray:Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10802f3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 182
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoListView;->setDragItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mCollapsStep:I

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/oppo/widget/OppoListView;->mCollapsStep:I

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/oppo/widget/OppoListView;->getCollapsStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoListView;->setCollapsStatus(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mLastScrollY:I

    return v0
.end method

.method static synthetic access$402(Lcom/oppo/widget/OppoListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/oppo/widget/OppoListView;->mLastScrollY:I

    return p1
.end method

.method static synthetic access$502(Lcom/oppo/widget/OppoListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mMovePaused:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mScale:F

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/widget/OppoListView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/oppo/widget/OppoListView;->mScale:F

    return p1
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 653
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 655
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mUpperBound:I

    .line 657
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 659
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mLowerBound:I

    .line 661
    :cond_1
    return-void
.end method

.method private clearItmeHeight()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 485
    iput v0, p0, Lcom/oppo/widget/OppoListView;->mItemHeightNormal:I

    .line 486
    iput v0, p0, Lcom/oppo/widget/OppoListView;->mItemHeightExpanded:I

    .line 487
    iput v0, p0, Lcom/oppo/widget/OppoListView;->mItemHeightNormalHalf:I

    .line 488
    return-void
.end method

.method private doExpansion()V
    .locals 10

    .prologue
    .line 682
    iget v8, p0, Lcom/oppo/widget/OppoListView;->mDragItemPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v0, v8, v9

    .line 688
    .local v0, childNumToExpand:I
    iget v8, p0, Lcom/oppo/widget/OppoListView;->mFirstDragItemPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v1, v8, v9

    .line 694
    .local v1, childNumToHide:I
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 696
    .local v3, hideView:Landroid/view/View;
    const/4 v4, 0x0

    .line 698
    .local v4, i:I
    :goto_0
    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 699
    .local v7, vv:Landroid/view/View;
    if-nez v7, :cond_0

    .line 743
    return-void

    .line 704
    :cond_0
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mItemHeightNormal:I

    .line 705
    .local v2, height:I
    const/4 v6, 0x0

    .line 707
    .local v6, visibility:I
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 710
    iget v8, p0, Lcom/oppo/widget/OppoListView;->mDragItemPos:I

    iget v9, p0, Lcom/oppo/widget/OppoListView;->mFirstDragItemPos:I

    if-ne v8, v9, :cond_2

    .line 713
    const/4 v6, 0x4

    .line 737
    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 738
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 739
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 741
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 696
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 722
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/4 v2, 0x1

    .line 723
    const/4 v6, 0x4

    goto :goto_1

    .line 730
    :cond_3
    if-ne v4, v0, :cond_1

    .line 732
    iget v8, p0, Lcom/oppo/widget/OppoListView;->mDragItemPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-gt v8, v9, :cond_1

    .line 734
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mItemHeightExpanded:I

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 966
    iget-object v0, p0, Lcom/oppo/widget/OppoListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/oppo/widget/OppoListView;->mCoordOffset:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/oppo/widget/OppoListView;->mDragOffset:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 967
    iget-object v0, p0, Lcom/oppo/widget/OppoListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mDragView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    return-void
.end method

.method private drawShadeDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 1378
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mShadeDivider:Landroid/graphics/drawable/Drawable;

    .line 1379
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    instance-of v0, v1, Landroid/graphics/drawable/ColorDrawable;

    .line 1381
    .local v0, clipDivider:Z
    if-nez v0, :cond_1

    .line 1382
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1388
    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1390
    if-eqz v0, :cond_0

    .line 1391
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1393
    :cond_0
    return-void

    .line 1384
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1385
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method private drawShadow(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 1528
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mShadow:Landroid/graphics/drawable/Drawable;

    .line 1529
    .local v1, shadow:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mClipShadow:Z

    .line 1530
    .local v0, clipShadow:Z
    if-nez v0, :cond_1

    .line 1531
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1537
    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1539
    if-eqz v0, :cond_0

    .line 1540
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1542
    :cond_0
    return-void

    .line 1533
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1534
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method private getCollapsOffset(ILandroid/view/View;Z)I
    .locals 5
    .parameter "position"
    .parameter "child"
    .parameter "flowDown"

    .prologue
    .line 1494
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 1495
    .local v1, h:I
    :goto_0
    const/4 v2, 0x0

    .line 1496
    .local v2, offset:I
    const/4 v0, 0x0

    .line 1498
    .local v0, collapsHeight:I
    if-eqz p3, :cond_1

    if-gez p1, :cond_1

    .line 1499
    const/4 v0, 0x0

    .line 1506
    :goto_1
    if-eqz p3, :cond_4

    .line 1507
    invoke-direct {p0}, Lcom/oppo/widget/OppoListView;->getCollapsStatus()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1508
    div-int/lit8 v3, v0, 0x2

    neg-int v3, v3

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mCollapsStep:I

    mul-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x4

    .line 1520
    :goto_2
    return v2

    .line 1494
    .end local v0           #collapsHeight:I
    .end local v1           #h:I
    .end local v2           #offset:I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    .line 1500
    .restart local v0       #collapsHeight:I
    .restart local v1       #h:I
    .restart local v2       #offset:I
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoListView;->mChildHeightCallback:Lcom/oppo/widget/OppoListView$ChildHeightCallback;

    if-eqz v3, :cond_2

    .line 1501
    iget-object v3, p0, Lcom/oppo/widget/OppoListView;->mChildHeightCallback:Lcom/oppo/widget/OppoListView$ChildHeightCallback;

    invoke-interface {v3, p1}, Lcom/oppo/widget/OppoListView$ChildHeightCallback;->getHeaderHeight(I)I

    move-result v3

    sub-int v0, v1, v3

    goto :goto_1

    .line 1503
    :cond_2
    move v0, v1

    goto :goto_1

    .line 1510
    :cond_3
    div-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mCollapsStep:I

    add-int/lit8 v4, v4, -0x4

    mul-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x4

    goto :goto_2

    .line 1513
    :cond_4
    invoke-direct {p0}, Lcom/oppo/widget/OppoListView;->getCollapsStatus()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1514
    div-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mCollapsStep:I

    mul-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x4

    goto :goto_2

    .line 1516
    :cond_5
    div-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mCollapsStep:I

    rsub-int/lit8 v4, v4, 0x4

    mul-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x4

    goto :goto_2
.end method

.method private getCollapsStatus()Z
    .locals 1

    .prologue
    .line 1150
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mCollapsStatus:Z

    return v0
.end method

.method private getItemForPosition(I)I
    .locals 8
    .parameter "y"

    .prologue
    .line 784
    iget v6, p0, Lcom/oppo/widget/OppoListView;->mDragOffset:I

    sub-int v6, p1, v6

    iget v7, p0, Lcom/oppo/widget/OppoListView;->mItemHeightNormalHalf:I

    add-int v0, v6, v7

    .line 785
    .local v0, adjustedy:I
    const/16 v6, -0x2710

    iget v7, p0, Lcom/oppo/widget/OppoListView;->mLastAdjustY:I

    if-ne v6, v7, :cond_0

    .line 787
    iput v0, p0, Lcom/oppo/widget/OppoListView;->mLastAdjustY:I

    .line 796
    :cond_0
    const/4 v6, 0x0

    invoke-direct {p0, v6, v0}, Lcom/oppo/widget/OppoListView;->myPointToPosition(II)I

    move-result v4

    .line 802
    .local v4, pos:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v2

    .line 803
    .local v2, childCount:I
    if-ltz v4, :cond_3

    .line 810
    iget v6, p0, Lcom/oppo/widget/OppoListView;->mLastAdjustY:I

    if-le v0, v6, :cond_2

    .line 812
    iget v6, p0, Lcom/oppo/widget/OppoListView;->mFirstDragItemPos:I

    if-eq v6, v4, :cond_1

    .line 814
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 815
    .local v3, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 816
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 818
    invoke-virtual {v1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 819
    iget v6, p0, Lcom/oppo/widget/OppoListView;->mItemHeightNormalHalf:I

    add-int/2addr v6, v0

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v7, :cond_1

    .line 821
    add-int/lit8 v4, v4, 0x1

    .line 871
    .end local v1           #child:Landroid/view/View;
    .end local v3           #frame:Landroid/graphics/Rect;
    :cond_1
    :goto_0
    iput v0, p0, Lcom/oppo/widget/OppoListView;->mLastAdjustY:I

    .line 876
    return v4

    .line 828
    :cond_2
    iget v6, p0, Lcom/oppo/widget/OppoListView;->mFirstDragItemPos:I

    if-eq v6, v4, :cond_1

    .line 830
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 831
    .restart local v3       #frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 832
    .restart local v1       #child:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 834
    invoke-virtual {v1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 835
    iget v6, p0, Lcom/oppo/widget/OppoListView;->mItemHeightNormalHalf:I

    sub-int v6, v0, v6

    iget v7, v3, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_1

    .line 837
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 843
    .end local v1           #child:Landroid/view/View;
    .end local v3           #frame:Landroid/graphics/Rect;
    :cond_3
    if-gez v0, :cond_4

    .line 845
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v4

    goto :goto_0

    .line 851
    :cond_4
    const/4 v6, -0x2

    if-ne v6, v4, :cond_1

    .line 853
    iget v6, p0, Lcom/oppo/widget/OppoListView;->mDragOffset:I

    sub-int v5, p1, v6

    .line 854
    .local v5, top:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 855
    .restart local v3       #frame:Landroid/graphics/Rect;
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 856
    .restart local v1       #child:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 858
    invoke-virtual {v1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 859
    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-gt v5, v6, :cond_1

    .line 861
    add-int/lit8 v4, v2, -0x1

    goto :goto_0
.end method

.method private getShadowHeight()I
    .locals 3

    .prologue
    .line 1117
    const/4 v0, 0x0

    .line 1118
    .local v0, shadowHeight:I
    invoke-direct {p0}, Lcom/oppo/widget/OppoListView;->getCollapsStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    iget v1, p0, Lcom/oppo/widget/OppoListView;->mShadowHeight:I

    iget v2, p0, Lcom/oppo/widget/OppoListView;->mCollapsStep:I

    mul-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x4

    .line 1123
    :goto_0
    return v0

    .line 1121
    :cond_0
    iget v1, p0, Lcom/oppo/widget/OppoListView;->mShadowHeight:I

    iget v2, p0, Lcom/oppo/widget/OppoListView;->mCollapsStep:I

    rsub-int/lit8 v2, v2, 0x4

    mul-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x4

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 751
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mTempRect:Landroid/graphics/Rect;

    .line 752
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v1

    .line 753
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 755
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 756
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 757
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    .line 779
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v5

    .line 753
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 764
    .end local v0           #child:Landroid/view/View;
    :cond_1
    if-lez v1, :cond_2

    .line 766
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 767
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 772
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-lt p2, v5, :cond_2

    .line 774
    const/4 v5, -0x2

    goto :goto_1

    .line 779
    .end local v4           #lastChild:Landroid/view/View;
    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private setCollapsItemBackgroud(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "itemBg"

    .prologue
    .line 1131
    if-eqz p1, :cond_0

    .line 1132
    iput-object p1, p0, Lcom/oppo/widget/OppoListView;->mCollapsItemBg:Landroid/graphics/drawable/Drawable;

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->requestLayoutIfNecessary()V

    .line 1135
    return-void
.end method

.method private setCollapsShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "shadow"

    .prologue
    const/4 v0, 0x0

    .line 1101
    if-eqz p1, :cond_0

    .line 1102
    iput-object p1, p0, Lcom/oppo/widget/OppoListView;->mShadow:Landroid/graphics/drawable/Drawable;

    .line 1103
    const/4 v0, 0x6

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mShadowHeight:I

    .line 1104
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mClipShadow:Z

    .line 1109
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->requestLayoutIfNecessary()V

    .line 1110
    return-void

    .line 1106
    :cond_0
    iput v0, p0, Lcom/oppo/widget/OppoListView;->mShadowHeight:I

    .line 1107
    iput-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mClipShadow:Z

    goto :goto_0
.end method

.method private setCollapsStatus(Z)V
    .locals 0
    .parameter "collapsStatus"

    .prologue
    .line 1142
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mCollapsStatus:Z

    .line 1143
    return-void
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 5
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 933
    invoke-direct {p0}, Lcom/oppo/widget/OppoListView;->stopDragging()V

    .line 935
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 936
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 937
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 938
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/oppo/widget/OppoListView;->mCoordOffset:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mDragOffset:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 940
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 941
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 942
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x198

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 947
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 948
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 950
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 951
    .local v0, v:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mDragItemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 953
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mDragItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 956
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 957
    iput-object p1, p0, Lcom/oppo/widget/OppoListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 959
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oppo/widget/OppoListView;->mWindowManager:Landroid/view/WindowManager;

    .line 960
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    iput-object v0, p0, Lcom/oppo/widget/OppoListView;->mDragView:Landroid/widget/ImageView;

    .line 962
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 972
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 975
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 976
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 977
    iput-object v3, p0, Lcom/oppo/widget/OppoListView;->mDragView:Landroid/widget/ImageView;

    .line 979
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 981
    iget-object v1, p0, Lcom/oppo/widget/OppoListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 982
    iput-object v3, p0, Lcom/oppo/widget/OppoListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 984
    :cond_1
    const/16 v1, -0x2710

    iput v1, p0, Lcom/oppo/widget/OppoListView;->mLastAdjustY:I

    .line 985
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .parameter "deletion"

    .prologue
    const/4 v6, 0x0

    .line 885
    const/4 v0, 0x0

    .line 887
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 888
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    .line 895
    if-eqz p1, :cond_0

    .line 898
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v2

    .line 899
    .local v2, position:I
    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 900
    .local v4, y:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 901
    invoke-virtual {p0, v2, v4}, Lcom/oppo/widget/OppoListView;->setSelectionFromTop(II)V

    .line 904
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->layoutChildren()V

    .line 905
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 910
    if-nez v3, :cond_1

    .line 929
    return-void

    .line 916
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 917
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/oppo/widget/OppoListView;->mItemHeightNormal:I

    if-eqz v5, :cond_2

    .line 919
    iget v5, p0, Lcom/oppo/widget/OppoListView;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 926
    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 927
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 885
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 1182
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getCollapsEnable()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1185
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v6

    .line 1186
    .local v6, childCount:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1188
    .local v4, bounds:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getPaddingLeft()I

    move-result v18

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1189
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getRight()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getLeft()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getPaddingRight()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1191
    const/4 v13, 0x1

    .local v13, i:I
    :goto_0
    if-ge v13, v6, :cond_2

    .line 1192
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1193
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1194
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getDividerHeight()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1196
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 1197
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoListView;->mNeedDrawDivider:Z

    .line 1198
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v13}, Lcom/oppo/widget/OppoListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 1199
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoListView;->mNeedDrawDivider:Z

    .line 1202
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getShadowHeight()I

    move-result v18

    if-lez v18, :cond_1

    .line 1204
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1205
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getShadowHeight()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoListView;->mShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1207
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v13}, Lcom/oppo/widget/OppoListView;->drawShadow(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 1191
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1214
    .end local v4           #bounds:Landroid/graphics/Rect;
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childCount:I
    .end local v13           #i:I
    :cond_2
    const/4 v14, 0x0

    .line 1215
    .local v14, isFullScreen:Z
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v8

    .line 1216
    .local v8, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getScrollY()I

    move-result v17

    .line 1217
    .local v17, scrollY:I
    const/4 v5, 0x0

    .line 1218
    .restart local v5       #child:Landroid/view/View;
    if-lez v8, :cond_3

    .line 1219
    add-int/lit8 v18, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1222
    :cond_3
    if-eqz v5, :cond_4

    .line 1227
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 1229
    const/4 v14, 0x1

    .line 1233
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getFillDivider()Z

    move-result v18

    if-eqz v18, :cond_12

    if-nez v14, :cond_12

    .line 1234
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getBottom()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getTop()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getListPaddingBottom()I

    move-result v19

    sub-int v15, v18, v19

    .line 1235
    .local v15, listBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getDividerHeight()I

    move-result v9

    .line 1236
    .local v9, dividerHeight:I
    const/4 v12, 0x0

    .line 1237
    .local v12, fillBottom:I
    const/4 v10, 0x0

    .line 1239
    .local v10, dividerItemHeight:I
    const/16 v16, 0x0

    .line 1241
    .local v16, needCheck:Z
    if-lez v8, :cond_5

    .line 1242
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1245
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getDividerItemHeight()I

    move-result v10

    .line 1246
    if-nez v10, :cond_6

    .line 1247
    if-lez v8, :cond_b

    .line 1248
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 1253
    :goto_1
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ge v10, v0, :cond_6

    .line 1254
    move-object/from16 v0, p0

    iget v10, v0, Lcom/oppo/widget/OppoListView;->mListPreferredItemHeight:I

    .line 1263
    :cond_6
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1264
    .restart local v4       #bounds:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getPaddingLeft()I

    move-result v18

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1265
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getRight()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getLeft()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getPaddingRight()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1267
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoListView;->mItemDrawable:Landroid/graphics/drawable/Drawable;

    .line 1269
    .local v11, fillBackground:Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_7

    .line 1271
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10600c5

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1274
    :cond_7
    instance-of v7, v11, Landroid/graphics/drawable/ColorDrawable;

    .line 1275
    .local v7, clip:Z
    iput v12, v4, Landroid/graphics/Rect;->top:I

    .line 1276
    add-int v18, v15, v17

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1277
    if-nez v7, :cond_c

    .line 1278
    invoke-virtual {v11, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1283
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1284
    if-eqz v7, :cond_8

    .line 1285
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1289
    :cond_8
    if-lez v8, :cond_d

    .line 1290
    if-nez v12, :cond_9

    .line 1291
    add-int v18, v12, v10

    add-int v12, v18, v9

    .line 1299
    :cond_9
    :goto_3
    if-lez v10, :cond_10

    add-int v18, v15, v17

    move/from16 v0, v18

    if-ge v12, v0, :cond_10

    .line 1300
    iput v12, v4, Landroid/graphics/Rect;->top:I

    .line 1301
    add-int v18, v12, v9

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1302
    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoListView;->mShadeDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    move/from16 v0, v18

    if-eq v9, v0, :cond_e

    .line 1303
    :cond_a
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoListView;->mNeedDrawDivider:Z

    .line 1304
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v4, v2}, Lcom/oppo/widget/OppoListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 1305
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoListView;->mNeedDrawDivider:Z

    .line 1314
    :goto_4
    add-int v18, v12, v10

    add-int v12, v18, v9

    goto :goto_3

    .line 1250
    .end local v4           #bounds:Landroid/graphics/Rect;
    .end local v7           #clip:Z
    .end local v11           #fillBackground:Landroid/graphics/drawable/Drawable;
    :cond_b
    move-object/from16 v0, p0

    iget v10, v0, Lcom/oppo/widget/OppoListView;->mListPreferredItemHeight:I

    goto/16 :goto_1

    .line 1280
    .restart local v4       #bounds:Landroid/graphics/Rect;
    .restart local v7       #clip:Z
    .restart local v11       #fillBackground:Landroid/graphics/drawable/Drawable;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1281
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_2

    .line 1294
    :cond_d
    if-nez v12, :cond_9

    .line 1295
    neg-int v12, v9

    goto :goto_3

    .line 1306
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoListView;->mMovePaused:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 1307
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoListView;->mNeedDrawDivider:Z

    .line 1308
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v4, v2}, Lcom/oppo/widget/OppoListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 1309
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoListView;->mNeedDrawDivider:Z

    goto :goto_4

    .line 1311
    :cond_f
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v4, v2}, Lcom/oppo/widget/OppoListView;->drawShadeDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 1312
    const/16 v16, 0x1

    goto :goto_4

    .line 1317
    :cond_10
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoListView;->mMovePaused:Z

    .line 1319
    if-eqz v16, :cond_12

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoListView;->mPerformMoveCheck:Lcom/oppo/widget/OppoListView$PerformMoveCheck;

    move-object/from16 v18, v0

    if-nez v18, :cond_11

    .line 1321
    new-instance v18, Lcom/oppo/widget/OppoListView$PerformMoveCheck;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoListView$PerformMoveCheck;-><init>(Lcom/oppo/widget/OppoListView;Lcom/oppo/widget/OppoListView$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoListView;->mPerformMoveCheck:Lcom/oppo/widget/OppoListView$PerformMoveCheck;

    .line 1323
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoListView;->mPerformMoveCheck:Lcom/oppo/widget/OppoListView$PerformMoveCheck;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/widget/OppoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1328
    .end local v4           #bounds:Landroid/graphics/Rect;
    .end local v7           #clip:Z
    .end local v9           #dividerHeight:I
    .end local v10           #dividerItemHeight:I
    .end local v11           #fillBackground:Landroid/graphics/drawable/Drawable;
    .end local v12           #fillBottom:I
    .end local v15           #listBottom:I
    .end local v16           #needCheck:Z
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getCollapsEnable()Z

    move-result v18

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoListView;->mCollapsStep:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_13

    .line 1329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoListView;->mCollapsStep:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoListView;->mCollapsStep:I

    .line 1330
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->requestLayout()V

    .line 1332
    :cond_13
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 1336
    const/4 v3, 0x0

    .line 1338
    .local v3, result:Z
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCollapsEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1339
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1340
    .local v2, rect:Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 1342
    .local v1, collapsBackground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1343
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080956

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1344
    instance-of v0, v1, Landroid/graphics/drawable/ColorDrawable;

    .line 1345
    .local v0, clip:Z
    if-nez v0, :cond_2

    .line 1346
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1351
    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1352
    if-eqz v0, :cond_0

    .line 1353
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1356
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getSelectorRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1357
    .local v4, selRect:Landroid/graphics/Rect;
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1358
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/oppo/widget/OppoListView;->mNeedDrawSelector:Z

    .line 1359
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1360
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oppo/widget/OppoListView;->mNeedDrawSelector:Z

    .line 1364
    .end local v0           #clip:Z
    .end local v1           #collapsBackground:Landroid/graphics/drawable/Drawable;
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v4           #selRect:Landroid/graphics/Rect;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 1366
    return v3

    .line 1348
    .restart local v0       #clip:Z
    .restart local v1       #collapsBackground:Landroid/graphics/drawable/Drawable;
    .restart local v2       #rect:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1349
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method protected drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 1372
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCollapsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mNeedDrawDivider:Z

    if-eqz v0, :cond_1

    .line 1373
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 1375
    :cond_1
    return-void
.end method

.method protected drawSelector(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCollapsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mNeedDrawSelector:Z

    if-eqz v0, :cond_1

    .line 1398
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1400
    :cond_1
    return-void
.end method

.method public exitDragging()V
    .locals 1

    .prologue
    .line 994
    invoke-direct {p0}, Lcom/oppo/widget/OppoListView;->stopDragging()V

    .line 997
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoListView;->unExpandViews(Z)V

    .line 998
    invoke-direct {p0}, Lcom/oppo/widget/OppoListView;->clearItmeHeight()V

    .line 999
    return-void
.end method

.method protected fillDown(II)Landroid/view/View;
    .locals 11
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 1451
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCollapsEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1452
    const/4 v10, 0x0

    .line 1453
    .local v10, selectedView:Landroid/view/View;
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mBottom:I

    iget v1, p0, Lcom/oppo/widget/OppoListView;->mTop:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getListPaddingBottom()I

    move-result v1

    sub-int v8, v0, v1

    .line 1454
    .local v8, end:I
    const/4 v9, 0x0

    .line 1455
    .local v9, lastChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v7

    .line 1456
    .local v7, childCount:I
    if-lez v7, :cond_0

    .line 1457
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1460
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1461
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCurSelectedPosition()I

    move-result v0

    if-ne p1, v0, :cond_2

    move v5, v3

    .line 1462
    .local v5, selected:Z
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getListPaddingLeft()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 1464
    .local v6, child:Landroid/view/View;
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0, v9, v3}, Lcom/oppo/widget/OppoListView;->getCollapsOffset(ILandroid/view/View;Z)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1466
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    if-le v0, v8, :cond_3

    .line 1467
    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoListView;->detachViewFromParent(Landroid/view/View;)V

    .line 1485
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    .end local v7           #childCount:I
    .end local v8           #end:I
    .end local v9           #lastChild:Landroid/view/View;
    .end local v10           #selectedView:Landroid/view/View;
    :cond_1
    :goto_2
    return-object v10

    .line 1461
    .restart local v7       #childCount:I
    .restart local v8       #end:I
    .restart local v9       #lastChild:Landroid/view/View;
    .restart local v10       #selectedView:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 1471
    .restart local v5       #selected:Z
    .restart local v6       #child:Landroid/view/View;
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDividerHeight()I

    move-result v1

    add-int p2, v0, v1

    .line 1472
    invoke-direct {p0}, Lcom/oppo/widget/OppoListView;->getShadowHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 1474
    move-object v9, v6

    .line 1476
    if-eqz v5, :cond_4

    .line 1477
    move-object v10, v6

    .line 1480
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 1481
    goto :goto_0

    .line 1485
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    .end local v7           #childCount:I
    .end local v8           #end:I
    .end local v9           #lastChild:Landroid/view/View;
    .end local v10           #selectedView:Landroid/view/View;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v10

    goto :goto_2
.end method

.method protected fillUp(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 1416
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCollapsEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1417
    const/4 v8, 0x0

    .line 1418
    .local v8, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getListPaddingTop()I

    move-result v7

    .line 1420
    .local v7, end:I
    :goto_0
    if-ltz p1, :cond_0

    .line 1421
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCurSelectedPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    .line 1422
    .local v5, selected:Z
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getListPaddingLeft()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 1424
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, p1, v6, v3}, Lcom/oppo/widget/OppoListView;->getCollapsOffset(ILandroid/view/View;Z)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1426
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ge v0, v7, :cond_2

    .line 1427
    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoListView;->detachViewFromParent(Landroid/view/View;)V

    .line 1441
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->setFirstPosition(I)V

    .line 1445
    .end local v7           #end:I
    .end local v8           #selectedView:Landroid/view/View;
    :goto_2
    return-object v8

    .restart local v7       #end:I
    .restart local v8       #selectedView:Landroid/view/View;
    :cond_1
    move v5, v3

    .line 1421
    goto :goto_1

    .line 1431
    .restart local v5       #selected:Z
    .restart local v6       #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDividerHeight()I

    move-result v1

    sub-int p2, v0, v1

    .line 1432
    invoke-direct {p0}, Lcom/oppo/widget/OppoListView;->getShadowHeight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 1434
    if-eqz v5, :cond_3

    .line 1435
    move-object v8, v6

    .line 1438
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 1439
    goto :goto_0

    .line 1445
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    .end local v7           #end:I
    .end local v8           #selectedView:Landroid/view/View;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v8

    goto :goto_2
.end method

.method public getCollapsEnable()Z
    .locals 1

    .prologue
    .line 1053
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mCollapsEnable:Z

    return v0
.end method

.method public getDividerItemHeight()I
    .locals 1

    .prologue
    .line 1085
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mDividerItemHeight:I

    return v0
.end method

.method public getFillDivider()Z
    .locals 1

    .prologue
    .line 1069
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mFillDivider:Z

    return v0
.end method

.method protected isFillDivider()Z
    .locals 1

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFillDivider()Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "ev"

    .prologue
    .line 308
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoListView;->mDisableDrag:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoListView;->mDragListener:Lcom/oppo/widget/OppoListView$DragListener;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoListView;->mDropListener:Lcom/oppo/widget/OppoListView$DropListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 310
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 480
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    :goto_1
    return v17

    .line 314
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v4

    .line 315
    .local v4, childCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getHeaderViewsCount()I

    move-result v7

    .line 321
    .local v7, headerViewCount:I
    if-le v4, v7, :cond_4

    .line 323
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 324
    .local v9, itemHeight:I
    add-int/lit8 v17, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 326
    .local v11, lastChildHeight:I
    if-eq v9, v11, :cond_3

    .line 328
    if-le v9, v11, :cond_2

    .end local v9           #itemHeight:I
    :goto_2
    move-object/from16 v0, p0

    iput v9, v0, Lcom/oppo/widget/OppoListView;->mItemHeightNormal:I

    .line 334
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoListView;->mItemHeightNormal:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoListView;->mItemHeightExpanded:I

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoListView;->mItemHeightNormal:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoListView;->mItemHeightNormalHalf:I

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 348
    .local v15, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 349
    .local v16, y:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/oppo/widget/OppoListView;->pointToPosition(II)I

    move-result v10

    .line 354
    .local v10, itemnum:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_5

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->clearItmeHeight()V

    goto :goto_0

    .end local v10           #itemnum:I
    .end local v15           #x:I
    .end local v16           #y:I
    .restart local v9       #itemHeight:I
    :cond_2
    move v9, v11

    .line 328
    goto :goto_2

    .line 332
    :cond_3
    move-object/from16 v0, p0

    iput v9, v0, Lcom/oppo/widget/OppoListView;->mItemHeightNormal:I

    goto :goto_3

    .line 344
    .end local v9           #itemHeight:I
    .end local v11           #lastChildHeight:I
    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    .line 365
    .restart local v10       #itemnum:I
    .restart local v11       #lastChildHeight:I
    .restart local v15       #x:I
    .restart local v16       #y:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v17

    sub-int v17, v10, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 366
    .local v8, item:Landroid/view/ViewGroup;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTop()I

    move-result v17

    sub-int v17, v16, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoListView;->mDragOffset:I

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v17, v17, v16

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoListView;->mCoordOffset:I

    .line 378
    const-string v17, "drag_view"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 379
    .local v6, dragger:Landroid/view/View;
    if-nez v6, :cond_6

    .line 381
    const-string v17, "OppoListView"

    const-string v18, "OppoListView ---- null == dragger"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->clearItmeHeight()V

    goto/16 :goto_0

    .line 386
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-eqz v17, :cond_7

    .line 389
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->clearItmeHeight()V

    goto/16 :goto_0

    .line 393
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoListView;->mTempRect:Landroid/graphics/Rect;

    .line 395
    .local v12, r:Landroid/graphics/Rect;
    invoke-virtual {v6, v12}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 404
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v15, v0, :cond_9

    .line 406
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 407
    .local v2, bg:Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    invoke-virtual {v8}, Landroid/view/ViewGroup;->willNotCacheDrawing()Z

    move-result v14

    .line 410
    .local v14, willNotCache:Z
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setWillNotCacheDrawing(Z)V

    .line 412
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getDrawingCacheBackgroundColor()I

    move-result v5

    .line 417
    .local v5, color:I
    if-eqz v5, :cond_8

    .line 419
    invoke-virtual {v8}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 421
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setDrawingCacheBackgroundColor(I)V

    .line 426
    invoke-virtual {v8}, Landroid/view/ViewGroup;->buildDrawingCache()V

    .line 430
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 437
    .local v3, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 438
    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->setWillNotCacheDrawing(Z)V

    .line 439
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->setDrawingCacheBackgroundColor(I)V

    .line 440
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 442
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/oppo/widget/OppoListView;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 444
    move-object/from16 v0, p0

    iput v10, v0, Lcom/oppo/widget/OppoListView;->mDragItemPos:I

    .line 445
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoListView;->mDragItemPos:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoListView;->mFirstDragItemPos:I

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoListView;->mHeight:I

    .line 453
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoListView;->mTouchSlop:I

    .line 454
    .local v13, touchSlop:I
    sub-int v17, v16, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoListView;->mHeight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x3

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoListView;->mUpperBound:I

    .line 455
    add-int v17, v16, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoListView;->mHeight:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    div-int/lit8 v18, v18, 0x3

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoListView;->mLowerBound:I

    .line 464
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 467
    .end local v2           #bg:Landroid/graphics/drawable/Drawable;
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #color:I
    .end local v13           #touchSlop:I
    .end local v14           #willNotCache:Z
    :cond_9
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoListView;->mDragView:Landroid/widget/ImageView;

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoListView;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoListView;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 471
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 473
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoListView;->clearItmeHeight()V

    goto/16 :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 236
    .local v1, params1:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 238
    if-eqz p1, :cond_0

    .line 240
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 248
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mItemHeightNormal:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/oppo/widget/OppoListView;->mItemHeightNormal:I

    if-eqz v2, :cond_0

    .line 250
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mItemHeightNormal:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 251
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1630
    instance-of v2, p1, Lcom/oppo/widget/OppoListView$SavedState;

    if-nez v2, :cond_0

    .line 1631
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 1635
    check-cast v1, Lcom/oppo/widget/OppoListView$SavedState;

    .line 1637
    .local v1, ss:Lcom/oppo/widget/OppoListView$SavedState;
    invoke-virtual {v1}, Lcom/oppo/widget/OppoListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1639
    iget-object v2, v1, Lcom/oppo/widget/OppoListView$SavedState;->collapsState:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1

    .line 1640
    iget-object v0, v1, Lcom/oppo/widget/OppoListView$SavedState;->collapsState:Landroid/util/SparseBooleanArray;

    .line 1641
    .local v0, collapsStates:Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoListView;->setCollapsStatus(Z)V

    .line 1643
    .end local v0           #collapsStates:Landroid/util/SparseBooleanArray;
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 1621
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1622
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1623
    .local v0, collapsStates:Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/oppo/widget/OppoListView;->getCollapsStatus()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1624
    new-instance v2, Lcom/oppo/widget/OppoListView$SavedState;

    invoke-direct {v2, v1, v0}, Lcom/oppo/widget/OppoListView$SavedState;-><init>(Landroid/os/Parcelable;Landroid/util/SparseBooleanArray;)V

    return-object v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v12, -0x2

    .line 492
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCollapsEnable()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 493
    iget-object v10, p0, Lcom/oppo/widget/OppoListView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v10, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 495
    iget-object v10, p0, Lcom/oppo/widget/OppoListView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v10}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v9

    .line 501
    :cond_1
    iget-boolean v10, p0, Lcom/oppo/widget/OppoListView;->mDisableDrag:Z

    if-nez v10, :cond_10

    iget-object v10, p0, Lcom/oppo/widget/OppoListView;->mDragListener:Lcom/oppo/widget/OppoListView$DragListener;

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/oppo/widget/OppoListView;->mDropListener:Lcom/oppo/widget/OppoListView$DropListener;

    if-eqz v10, :cond_10

    :cond_2
    iget-object v10, p0, Lcom/oppo/widget/OppoListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v10, :cond_10

    .line 503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 504
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 537
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v7, v10

    .line 538
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v8, v10

    .line 539
    .local v8, y:I
    invoke-direct {p0, v7, v8}, Lcom/oppo/widget/OppoListView;->dragView(II)V

    .line 541
    invoke-direct {p0, v8}, Lcom/oppo/widget/OppoListView;->getItemForPosition(I)I

    move-result v2

    .line 549
    .local v2, itemnum:I
    if-gez v2, :cond_3

    if-ne v2, v12, :cond_0

    .line 551
    :cond_3
    if-eqz v0, :cond_4

    iget v10, p0, Lcom/oppo/widget/OppoListView;->mDragItemPos:I

    if-eq v2, v10, :cond_6

    .line 554
    :cond_4
    iget-object v10, p0, Lcom/oppo/widget/OppoListView;->mDragListener:Lcom/oppo/widget/OppoListView$DragListener;

    if-eqz v10, :cond_5

    .line 556
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCount()I

    move-result v1

    .line 557
    .local v1, itemCount:I
    if-ne v2, v12, :cond_b

    .line 559
    iget v10, p0, Lcom/oppo/widget/OppoListView;->mDragItemPos:I

    add-int/lit8 v11, v1, -0x1

    if-eq v10, v11, :cond_5

    .line 561
    iget-object v10, p0, Lcom/oppo/widget/OppoListView;->mDragListener:Lcom/oppo/widget/OppoListView$DragListener;

    iget v11, p0, Lcom/oppo/widget/OppoListView;->mDragItemPos:I

    add-int/lit8 v12, v1, -0x1

    invoke-interface {v10, v11, v12}, Lcom/oppo/widget/OppoListView$DragListener;->drag(II)V

    .line 577
    .end local v1           #itemCount:I
    :cond_5
    :goto_1
    iput v2, p0, Lcom/oppo/widget/OppoListView;->mDragItemPos:I

    .line 578
    invoke-direct {p0}, Lcom/oppo/widget/OppoListView;->doExpansion()V

    .line 581
    :cond_6
    const/4 v5, 0x0

    .line 582
    .local v5, speed:I
    invoke-direct {p0, v8}, Lcom/oppo/widget/OppoListView;->adjustScrollBounds(I)V

    .line 583
    iget v10, p0, Lcom/oppo/widget/OppoListView;->mLowerBound:I

    if-le v8, v10, :cond_e

    .line 586
    iget v10, p0, Lcom/oppo/widget/OppoListView;->mHeight:I

    iget v11, p0, Lcom/oppo/widget/OppoListView;->mLowerBound:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    if-le v8, v10, :cond_d

    const/16 v5, 0x20

    .line 607
    :cond_7
    :goto_2
    if-eqz v5, :cond_0

    .line 609
    invoke-virtual {p0, v13, v13}, Lcom/oppo/widget/OppoListView;->pointToPosition(II)I

    move-result v4

    .line 614
    .local v4, ref:I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_8

    .line 617
    iget v10, p0, Lcom/oppo/widget/OppoListView;->mHeight:I

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDividerHeight()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/oppo/widget/OppoListView;->mItemHeightNormal:I

    add-int/2addr v10, v11

    invoke-virtual {p0, v13, v10}, Lcom/oppo/widget/OppoListView;->pointToPosition(II)I

    move-result v4

    .line 625
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p0, v10}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 626
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 628
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v3

    .line 634
    .local v3, pos:I
    sub-int v10, v3, v5

    invoke-virtual {p0, v4, v10}, Lcom/oppo/widget/OppoListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 514
    .end local v2           #itemnum:I
    .end local v3           #pos:I
    .end local v4           #ref:I
    .end local v5           #speed:I
    .end local v6           #v:Landroid/view/View;
    .end local v7           #x:I
    .end local v8           #y:I
    :pswitch_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoListView;->stopDragging()V

    .line 517
    iget-object v10, p0, Lcom/oppo/widget/OppoListView;->mDropListener:Lcom/oppo/widget/OppoListView$DropListener;

    if-eqz v10, :cond_9

    .line 519
    iget v10, p0, Lcom/oppo/widget/OppoListView;->mDragItemPos:I

    if-ltz v10, :cond_a

    iget v10, p0, Lcom/oppo/widget/OppoListView;->mDragItemPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 521
    iget-object v10, p0, Lcom/oppo/widget/OppoListView;->mDropListener:Lcom/oppo/widget/OppoListView$DropListener;

    iget v11, p0, Lcom/oppo/widget/OppoListView;->mFirstDragItemPos:I

    iget v12, p0, Lcom/oppo/widget/OppoListView;->mDragItemPos:I

    invoke-interface {v10, v11, v12}, Lcom/oppo/widget/OppoListView$DropListener;->drop(II)V

    .line 529
    :cond_9
    :goto_3
    invoke-direct {p0, v13}, Lcom/oppo/widget/OppoListView;->unExpandViews(Z)V

    .line 530
    invoke-direct {p0}, Lcom/oppo/widget/OppoListView;->clearItmeHeight()V

    goto/16 :goto_0

    .line 523
    :cond_a
    iget v10, p0, Lcom/oppo/widget/OppoListView;->mDragItemPos:I

    if-ne v10, v12, :cond_9

    .line 525
    iget-object v10, p0, Lcom/oppo/widget/OppoListView;->mDropListener:Lcom/oppo/widget/OppoListView$DropListener;

    iget v11, p0, Lcom/oppo/widget/OppoListView;->mFirstDragItemPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v10, v11, v12}, Lcom/oppo/widget/OppoListView$DropListener;->drop(II)V

    goto :goto_3

    .line 564
    .restart local v1       #itemCount:I
    .restart local v2       #itemnum:I
    .restart local v7       #x:I
    .restart local v8       #y:I
    :cond_b
    iget v10, p0, Lcom/oppo/widget/OppoListView;->mDragItemPos:I

    if-ne v10, v12, :cond_c

    .line 566
    add-int/lit8 v10, v1, -0x1

    if-eq v2, v10, :cond_5

    .line 568
    iget-object v10, p0, Lcom/oppo/widget/OppoListView;->mDragListener:Lcom/oppo/widget/OppoListView$DragListener;

    add-int/lit8 v11, v1, -0x1

    invoke-interface {v10, v11, v2}, Lcom/oppo/widget/OppoListView$DragListener;->drag(II)V

    goto/16 :goto_1

    .line 573
    :cond_c
    iget-object v10, p0, Lcom/oppo/widget/OppoListView;->mDragListener:Lcom/oppo/widget/OppoListView$DragListener;

    iget v11, p0, Lcom/oppo/widget/OppoListView;->mDragItemPos:I

    invoke-interface {v10, v11, v2}, Lcom/oppo/widget/OppoListView$DragListener;->drag(II)V

    goto/16 :goto_1

    .line 586
    .end local v1           #itemCount:I
    .restart local v5       #speed:I
    :cond_d
    const/16 v5, 0x10

    goto/16 :goto_2

    .line 592
    :cond_e
    iget v10, p0, Lcom/oppo/widget/OppoListView;->mUpperBound:I

    if-ge v8, v10, :cond_7

    .line 595
    iget v10, p0, Lcom/oppo/widget/OppoListView;->mUpperBound:I

    div-int/lit8 v10, v10, 0x2

    if-ge v8, v10, :cond_f

    const/16 v5, -0x10

    :goto_4
    goto/16 :goto_2

    :cond_f
    const/4 v5, -0x4

    goto :goto_4

    .line 643
    .end local v0           #action:I
    .end local v2           #itemnum:I
    .end local v5           #speed:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    const/4 v1, 0x1

    .line 1647
    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowVisibilityChanged(I)V

    .line 1649
    if-nez p1, :cond_1

    .line 1650
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mAccelerationEnable:Z

    if-nez v0, :cond_0

    .line 1651
    iput-boolean v1, p0, Lcom/oppo/widget/OppoListView;->mAccelerationEnable:Z

    .line 1652
    iget-object v0, p0, Lcom/oppo/widget/OppoListView;->mAccelerationListener:Lcom/oppo/widget/OppoListView$AccelerationListener;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoListView$AccelerationListener;->enable()V

    .line 1660
    :cond_0
    :goto_0
    return-void

    .line 1655
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mAccelerationEnable:Z

    if-ne v0, v1, :cond_0

    .line 1656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mAccelerationEnable:Z

    .line 1657
    iget-object v0, p0, Lcom/oppo/widget/OppoListView;->mAccelerationListener:Lcom/oppo/widget/OppoListView$AccelerationListener;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoListView$AccelerationListener;->disable()V

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1155
    const/4 v0, 0x0

    .line 1157
    .local v0, handled:Z
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCollapsEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoListView;->mCollapsStep:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 1158
    const/4 v0, 0x1

    .line 1163
    :goto_0
    return v0

    .line 1160
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public setChildHeightCallback(Lcom/oppo/widget/OppoListView$ChildHeightCallback;)V
    .locals 0
    .parameter "childHeightCallback"

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/oppo/widget/OppoListView;->mChildHeightCallback:Lcom/oppo/widget/OppoListView$ChildHeightCallback;

    .line 1094
    return-void
.end method

.method public setCollapsEnable(Z)V
    .locals 3
    .parameter "collapsEnable"

    .prologue
    .line 1032
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mCollapsEnable:Z

    .line 1033
    if-eqz p1, :cond_0

    .line 1034
    const/4 v0, 0x0

    .line 1035
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080956

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1036
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1037
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoListView;->setCollapsItemBackgroud(Landroid/graphics/drawable/Drawable;)V

    .line 1043
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080296

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1044
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoListView;->setCollapsShadow(Landroid/graphics/drawable/Drawable;)V

    .line 1046
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public setDisableDragFlag(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mDisableDrag:Z

    .line 303
    return-void
.end method

.method public setDividerItemHeight(I)V
    .locals 0
    .parameter "itemHeight"

    .prologue
    .line 1077
    iput p1, p0, Lcom/oppo/widget/OppoListView;->mDividerItemHeight:I

    .line 1078
    return-void
.end method

.method public setDragItemBackground(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 271
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->setDragItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    return-void
.end method

.method public setDragItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mDragItemBackgroundResource:I

    .line 293
    iget-object v0, p0, Lcom/oppo/widget/OppoListView;->mDragItemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/oppo/widget/OppoListView;->mDragItemBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 297
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoListView;->mDragItemBackground:Landroid/graphics/drawable/Drawable;

    .line 298
    return-void
.end method

.method public setDragItemBackgroundResource(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 276
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoListView;->mDragItemBackgroundResource:I

    if-ne p1, v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    .line 282
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 286
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->setDragItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iput p1, p0, Lcom/oppo/widget/OppoListView;->mDragItemBackgroundResource:I

    goto :goto_0
.end method

.method public setDragListener(Lcom/oppo/widget/OppoListView$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/oppo/widget/OppoListView;->mDragListener:Lcom/oppo/widget/OppoListView$DragListener;

    .line 1004
    return-void
.end method

.method public setDropListener(Lcom/oppo/widget/OppoListView$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/oppo/widget/OppoListView;->mDropListener:Lcom/oppo/widget/OppoListView$DropListener;

    .line 1008
    return-void
.end method

.method public setFillDivider(Z)V
    .locals 0
    .parameter "fillDivider"

    .prologue
    .line 1061
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mFillDivider:Z

    .line 1062
    return-void
.end method

.method public setRemoveListener(Lcom/oppo/widget/OppoListView$RemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/oppo/widget/OppoListView;->mRemoveListener:Lcom/oppo/widget/OppoListView$RemoveListener;

    .line 1012
    return-void
.end method

.method protected setupChild(Landroid/view/View;IIZIZZ)V
    .locals 0
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1405
    invoke-super/range {p0 .. p7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 1412
    return-void
.end method
