.class public Lcom/oppo/widget/OppoToggle;
.super Landroid/view/View;
.source "OppoToggle.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoToggle$1;,
        Lcom/oppo/widget/OppoToggle$SavedState;,
        Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;,
        Lcom/oppo/widget/OppoToggle$ToggleInterpolator;,
        Lcom/oppo/widget/OppoToggle$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoToggle"


# instance fields
.field private STATE_BG_FOCUSED:Landroid/graphics/drawable/Drawable;

.field private STATE_BG_OFF:Landroid/graphics/Bitmap;

.field private STATE_BG_OFF_DISABLE:Landroid/graphics/Bitmap;

.field private STATE_BG_ON:Landroid/graphics/Bitmap;

.field private STATE_BG_ON_DISABLE:Landroid/graphics/Bitmap;

.field private STATE_BG_PINT:Landroid/graphics/drawable/Drawable;

.field final axisLeft:I

.field final axisRight:I

.field endRect:Landroid/graphics/Rect;

.field exactlyX:I

.field interval:I

.field leftStart:I

.field private mBroadcasting:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandled:Z

.field final mInnerHeight:I

.field final mInnerWidth:I

.field final mMaxScrollX:I

.field final mMinScrollX:I

.field mMotionX:I

.field mOnCheckedChangeListener:Lcom/oppo/widget/OppoToggle$OnCheckedChangeListener;

.field private mPendingEnabled:Z

.field private mRunning:Z

.field private mScrollable:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mSwitching:Z

.field private mToggleInterpolator:Lcom/oppo/widget/OppoToggle$ToggleInterpolator;

.field private mToggled:Z

.field final mTotalWidth:I

.field mWholeRect:Landroid/graphics/Rect;

.field offDrawRect:Landroid/graphics/Rect;

.field offSet:I

.field offTipRect:Landroid/graphics/Rect;

.field onDrawRect:Landroid/graphics/Rect;

.field onTipRect:Landroid/graphics/Rect;

.field originX:I

.field final padding:I

.field povit:I

.field final sideDistance:I

.field startRect:Landroid/graphics/Rect;

.field final tipBottom:I

.field final tipOffLeft:I

.field final tipOnLeft:I

.field final tipTop:I

.field final tipWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 170
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-boolean v9, p0, Lcom/oppo/widget/OppoToggle;->mHandled:Z

    .line 53
    iput-boolean v9, p0, Lcom/oppo/widget/OppoToggle;->mRunning:Z

    .line 54
    iput-boolean v9, p0, Lcom/oppo/widget/OppoToggle;->mScrolling:Z

    .line 55
    iput-boolean v9, p0, Lcom/oppo/widget/OppoToggle;->mScrollable:Z

    .line 56
    iput-boolean v9, p0, Lcom/oppo/widget/OppoToggle;->mSwitching:Z

    .line 57
    iput-object v10, p0, Lcom/oppo/widget/OppoToggle;->mScroller:Landroid/widget/Scroller;

    .line 58
    iput-object v10, p0, Lcom/oppo/widget/OppoToggle;->mToggleInterpolator:Lcom/oppo/widget/OppoToggle$ToggleInterpolator;

    .line 87
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    .line 88
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoToggle;->mMinScrollX:I

    .line 89
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoToggle;->mInnerHeight:I

    .line 90
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoToggle;->mInnerWidth:I

    .line 92
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoToggle;->sideDistance:I

    .line 93
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoToggle;->padding:I

    .line 95
    iget v4, p0, Lcom/oppo/widget/OppoToggle;->sideDistance:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->mInnerWidth:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/oppo/widget/OppoToggle;->mTotalWidth:I

    .line 96
    iget v4, p0, Lcom/oppo/widget/OppoToggle;->sideDistance:I

    iput v4, p0, Lcom/oppo/widget/OppoToggle;->axisLeft:I

    .line 97
    iget v4, p0, Lcom/oppo/widget/OppoToggle;->axisLeft:I

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/oppo/widget/OppoToggle;->axisRight:I

    .line 100
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500d6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoToggle;->tipTop:I

    .line 101
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoToggle;->tipBottom:I

    .line 102
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoToggle;->tipOnLeft:I

    .line 103
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoToggle;->tipOffLeft:I

    .line 104
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoToggle;->tipWidth:I

    .line 116
    iput-object v10, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    .line 117
    iput-object v10, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    .line 118
    iput-object v10, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON_DISABLE:Landroid/graphics/Bitmap;

    .line 119
    iput-object v10, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF_DISABLE:Landroid/graphics/Bitmap;

    .line 120
    iput-object v10, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_PINT:Landroid/graphics/drawable/Drawable;

    .line 121
    iput-object v10, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_FOCUSED:Landroid/graphics/drawable/Drawable;

    .line 124
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->mMinScrollX:I

    iget v6, p0, Lcom/oppo/widget/OppoToggle;->mMinScrollX:I

    iget v7, p0, Lcom/oppo/widget/OppoToggle;->sideDistance:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoToggle;->mInnerHeight:I

    invoke-direct {v4, v5, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    .line 125
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    iget v6, p0, Lcom/oppo/widget/OppoToggle;->mTotalWidth:I

    iget v7, p0, Lcom/oppo/widget/OppoToggle;->mMinScrollX:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoToggle;->mInnerHeight:I

    invoke-direct {v4, v5, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/oppo/widget/OppoToggle;->endRect:Landroid/graphics/Rect;

    .line 128
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->mMinScrollX:I

    iget v6, p0, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    iget v7, p0, Lcom/oppo/widget/OppoToggle;->sideDistance:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoToggle;->mInnerHeight:I

    invoke-direct {v4, v5, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/oppo/widget/OppoToggle;->onDrawRect:Landroid/graphics/Rect;

    .line 129
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    iget v6, p0, Lcom/oppo/widget/OppoToggle;->sideDistance:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/oppo/widget/OppoToggle;->mTotalWidth:I

    iget v7, p0, Lcom/oppo/widget/OppoToggle;->mMinScrollX:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoToggle;->mInnerHeight:I

    invoke-direct {v4, v5, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/oppo/widget/OppoToggle;->offDrawRect:Landroid/graphics/Rect;

    .line 132
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->mTotalWidth:I

    iget v6, p0, Lcom/oppo/widget/OppoToggle;->mInnerHeight:I

    invoke-direct {v4, v9, v9, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/oppo/widget/OppoToggle;->mWholeRect:Landroid/graphics/Rect;

    .line 136
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->tipOnLeft:I

    iget v6, p0, Lcom/oppo/widget/OppoToggle;->tipTop:I

    iget v7, p0, Lcom/oppo/widget/OppoToggle;->tipOnLeft:I

    iget v8, p0, Lcom/oppo/widget/OppoToggle;->tipWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/oppo/widget/OppoToggle;->tipBottom:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/oppo/widget/OppoToggle;->onTipRect:Landroid/graphics/Rect;

    .line 137
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->tipOffLeft:I

    iget v6, p0, Lcom/oppo/widget/OppoToggle;->tipTop:I

    iget v7, p0, Lcom/oppo/widget/OppoToggle;->tipOffLeft:I

    iget v8, p0, Lcom/oppo/widget/OppoToggle;->tipWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/oppo/widget/OppoToggle;->tipBottom:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/oppo/widget/OppoToggle;->offTipRect:Landroid/graphics/Rect;

    .line 142
    iput-object v10, p0, Lcom/oppo/widget/OppoToggle;->mOnCheckedChangeListener:Lcom/oppo/widget/OppoToggle$OnCheckedChangeListener;

    .line 172
    sget-object v4, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v4, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 176
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 178
    .local v1, checked:Z
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoToggle;->setChecked(Z)V

    .line 180
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    sget-object v4, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v4, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 185
    const/16 v4, 0x12

    invoke-virtual {v0, v4, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 187
    .local v3, focusable:Z
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoToggle;->setFocusable(Z)V

    .line 189
    const/16 v4, 0x1d

    invoke-virtual {v0, v4, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 191
    .local v2, clickable:Z
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoToggle;->setClickable(Z)V

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoToggle;->init(Landroid/content/Context;)V

    .line 197
    return-void
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoToggle;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/oppo/widget/OppoToggle;->mHandled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/oppo/widget/OppoToggle;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/oppo/widget/OppoToggle;->mScrolling:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoToggle;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mToggled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoToggle;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoToggle;->snapToPosition(II)V

    return-void
.end method

.method static synthetic access$502(Lcom/oppo/widget/OppoToggle;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/oppo/widget/OppoToggle;->mSwitching:Z

    return p1
.end method

.method private canHandleEvent()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mHandled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOffSet(I)I
    .locals 2
    .parameter "motionX"

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, offset:I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoToggle;->mToggled:Z

    if-nez v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v1

    .line 540
    :goto_0
    return v0

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->endRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v1

    goto :goto_0
.end method

.method private getOrigin(I)I
    .locals 2
    .parameter "motionX"

    .prologue
    .line 544
    const/4 v0, -0x1

    .line 545
    .local v0, origin:I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoToggle;->mToggled:Z

    if-nez v1, :cond_0

    .line 546
    move v0, p1

    .line 552
    :goto_0
    return v0

    .line 549
    :cond_0
    iget v1, p0, Lcom/oppo/widget/OppoToggle;->mTotalWidth:I

    sub-int v0, p1, v1

    goto :goto_0
.end method

.method private handleFling()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 496
    iget-boolean v1, p0, Lcom/oppo/widget/OppoToggle;->mToggled:Z

    if-nez v1, :cond_3

    .line 497
    iget v1, p0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->originX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoToggle;->interval:I

    .line 498
    iget v1, p0, Lcom/oppo/widget/OppoToggle;->interval:I

    if-gtz v1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget v1, p0, Lcom/oppo/widget/OppoToggle;->interval:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2

    .line 504
    iget v1, p0, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->interval:I

    sub-int v0, v1, v2

    .line 505
    .local v0, overplus:I
    iget v1, p0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoToggle;->snapToPosition(II)V

    .line 506
    iput-boolean v4, p0, Lcom/oppo/widget/OppoToggle;->mSwitching:Z

    goto :goto_0

    .line 510
    .end local v0           #overplus:I
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->mMinScrollX:I

    iget v3, p0, Lcom/oppo/widget/OppoToggle;->offSet:I

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoToggle;->snapToPosition(II)V

    goto :goto_0

    .line 514
    :cond_3
    iget v1, p0, Lcom/oppo/widget/OppoToggle;->originX:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    iget v3, p0, Lcom/oppo/widget/OppoToggle;->mTotalWidth:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoToggle;->interval:I

    .line 516
    iget v1, p0, Lcom/oppo/widget/OppoToggle;->interval:I

    if-lez v1, :cond_0

    .line 521
    iget v1, p0, Lcom/oppo/widget/OppoToggle;->interval:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_4

    .line 522
    iget v1, p0, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->interval:I

    sub-int v0, v1, v2

    .line 523
    .restart local v0       #overplus:I
    iget v1, p0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoToggle;->snapToPosition(II)V

    .line 524
    iput-boolean v4, p0, Lcom/oppo/widget/OppoToggle;->mSwitching:Z

    goto :goto_0

    .line 527
    .end local v0           #overplus:I
    :cond_4
    iget v1, p0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    iget v3, p0, Lcom/oppo/widget/OppoToggle;->offSet:I

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoToggle;->snapToPosition(II)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 201
    new-instance v0, Lcom/oppo/widget/OppoToggle$ToggleInterpolator;

    invoke-direct {v0}, Lcom/oppo/widget/OppoToggle$ToggleInterpolator;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->mToggleInterpolator:Lcom/oppo/widget/OppoToggle$ToggleInterpolator;

    .line 202
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->mToggleInterpolator:Lcom/oppo/widget/OppoToggle$ToggleInterpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->mScroller:Landroid/widget/Scroller;

    .line 203
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;-><init>(Lcom/oppo/widget/OppoToggle;Lcom/oppo/widget/OppoToggle$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->mGestureDetector:Landroid/view/GestureDetector;

    .line 206
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080615

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080613

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_PINT:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080617

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_PINT:Landroid/graphics/drawable/Drawable;

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_FOCUSED:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080612

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_FOCUSED:Landroid/graphics/drawable/Drawable;

    .line 222
    :cond_3
    return-void
.end method

.method private refreshToggleState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 834
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 837
    iput-boolean v1, p0, Lcom/oppo/widget/OppoToggle;->mRunning:Z

    .line 839
    :cond_0
    iput-boolean v1, p0, Lcom/oppo/widget/OppoToggle;->mScrolling:Z

    .line 841
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->invalidate()V

    .line 842
    return-void
.end method

.method private snapToPosition(II)V
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v2, 0x0

    .line 582
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    .line 598
    :goto_0
    return-void

    .line 586
    :cond_0
    sub-int v6, p1, p2

    .line 587
    .local v6, delta:I
    mul-int/lit8 v0, v6, 0x2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 589
    .local v5, duration:I
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    iput-boolean v2, p0, Lcom/oppo/widget/OppoToggle;->mSwitching:Z

    goto :goto_0

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mScroller:Landroid/widget/Scroller;

    neg-int v3, v6

    move v1, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mRunning:Z

    .line 597
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 558
    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/widget/OppoToggle;->mRunning:Z

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 560
    .local v0, more:Z
    if-eqz v0, :cond_1

    .line 561
    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    .line 562
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->invalidate()V

    .line 578
    .end local v0           #more:Z
    :cond_0
    :goto_0
    return-void

    .line 565
    .restart local v0       #more:Z
    :cond_1
    iput-boolean v2, p0, Lcom/oppo/widget/OppoToggle;->mRunning:Z

    .line 566
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewGroup;->setEventFlag(Ljava/lang/Boolean;)V

    .line 569
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/oppo/widget/OppoToggle;->mSwitching:Z

    if-eqz v1, :cond_2

    .line 570
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->performClick()Z

    goto :goto_0

    .line 573
    :cond_2
    iput-boolean v2, p0, Lcom/oppo/widget/OppoToggle;->mSwitching:Z

    .line 574
    invoke-direct {p0}, Lcom/oppo/widget/OppoToggle;->refreshToggleState()V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mToggled:Z

    return v0
.end method

.method public isPretendingEnabled()Z
    .locals 1

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mPendingEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 628
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 631
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080615

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON_DISABLE:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080616

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON_DISABLE:Landroid/graphics/Bitmap;

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 640
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080613

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    .line 643
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF_DISABLE:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 644
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080614

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF_DISABLE:Landroid/graphics/Bitmap;

    .line 647
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->invalidate()V

    .line 649
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 602
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 603
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 605
    iput-object v1, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON_DISABLE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON_DISABLE:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 610
    iput-object v1, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON_DISABLE:Landroid/graphics/Bitmap;

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 614
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 615
    iput-object v1, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF_DISABLE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 619
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF_DISABLE:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 620
    iput-object v1, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF_DISABLE:Landroid/graphics/Bitmap;

    .line 622
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->invalidate()V

    .line 623
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const v8, 0x1080615

    const v7, 0x1080613

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 226
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 228
    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mScrolling:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mRunning:Z

    if-nez v0, :cond_1b

    .line 230
    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mToggled:Z

    if-nez v0, :cond_e

    .line 231
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/oppo/widget/OppoToggle;->leftStart:I

    .line 232
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_PINT:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_PINT:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->onDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->sideDistance:I

    iget-object v3, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 237
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->offDrawRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oppo/widget/OppoToggle;->sideDistance:I

    add-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle;->endRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/oppo/widget/OppoToggle;->endRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/oppo/widget/OppoToggle;->endRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 238
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 241
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->onDrawRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle;->onDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 245
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 246
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->offDrawRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle;->offDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 315
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 317
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_FOCUSED:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 318
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080612

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_FOCUSED:Landroid/graphics/drawable/Drawable;

    .line 320
    :cond_5
    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mToggled:Z

    if-nez v0, :cond_1a

    .line 321
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_FOCUSED:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/oppo/widget/OppoToggle;->mMinScrollX:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->mTotalWidth:I

    iget v3, p0, Lcom/oppo/widget/OppoToggle;->padding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoToggle;->mInnerHeight:I

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 326
    :goto_1
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_FOCUSED:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 396
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_PINT:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 397
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_PINT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 399
    :cond_7
    :goto_3
    return-void

    .line 252
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->isPretendingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 253
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 254
    :cond_9
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    .line 256
    :cond_a
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->offDrawRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle;->offDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 259
    :cond_b
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF_DISABLE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF_DISABLE:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 260
    :cond_c
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080614

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF_DISABLE:Landroid/graphics/Bitmap;

    .line 265
    :cond_d
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF_DISABLE:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->mWholeRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle;->mWholeRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 273
    :cond_e
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->endRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/oppo/widget/OppoToggle;->leftStart:I

    .line 274
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_PINT:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 275
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_PINT:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->endRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 278
    :cond_f
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->onDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    iget v3, p0, Lcom/oppo/widget/OppoToggle;->sideDistance:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoToggle;->mInnerHeight:I

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 279
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->offDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->endRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->sideDistance:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle;->endRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/oppo/widget/OppoToggle;->endRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/oppo/widget/OppoToggle;->endRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 281
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 282
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 283
    :cond_10
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    .line 285
    :cond_11
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->offDrawRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle;->offDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 286
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 287
    :cond_12
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    .line 289
    :cond_13
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->onDrawRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle;->onDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 293
    :cond_14
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->isPretendingEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 294
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 295
    :cond_15
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    .line 297
    :cond_16
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->onDrawRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle;->onDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 300
    :cond_17
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON_DISABLE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON_DISABLE:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 301
    :cond_18
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080616

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON_DISABLE:Landroid/graphics/Bitmap;

    .line 306
    :cond_19
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON_DISABLE:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->mWholeRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle;->mWholeRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 324
    :cond_1a
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_FOCUSED:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/oppo/widget/OppoToggle;->mMinScrollX:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->padding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->mTotalWidth:I

    iget v3, p0, Lcom/oppo/widget/OppoToggle;->mInnerHeight:I

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 332
    :cond_1b
    iget v0, p0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    iget v1, p0, Lcom/oppo/widget/OppoToggle;->offSet:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoToggle;->leftStart:I

    .line 334
    iget v0, p0, Lcom/oppo/widget/OppoToggle;->leftStart:I

    iget v1, p0, Lcom/oppo/widget/OppoToggle;->mMinScrollX:I

    if-ge v0, v1, :cond_21

    iget v0, p0, Lcom/oppo/widget/OppoToggle;->mMinScrollX:I

    :goto_4
    iput v0, p0, Lcom/oppo/widget/OppoToggle;->leftStart:I

    .line 335
    iget v0, p0, Lcom/oppo/widget/OppoToggle;->leftStart:I

    iget v1, p0, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    if-le v0, v1, :cond_22

    iget v0, p0, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    :goto_5
    iput v0, p0, Lcom/oppo/widget/OppoToggle;->leftStart:I

    .line 338
    iget v0, p0, Lcom/oppo/widget/OppoToggle;->leftStart:I

    iget v1, p0, Lcom/oppo/widget/OppoToggle;->sideDistance:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoToggle;->povit:I

    .line 341
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->onDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->povit:I

    iget-object v3, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/oppo/widget/OppoToggle;->mInnerHeight:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 346
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->offDrawRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oppo/widget/OppoToggle;->povit:I

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/oppo/widget/OppoToggle;->mTotalWidth:I

    iget-object v4, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->mInnerHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 352
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_PINT:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 353
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_PINT:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/oppo/widget/OppoToggle;->leftStart:I

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/oppo/widget/OppoToggle;->leftStart:I

    iget v4, p0, Lcom/oppo/widget/OppoToggle;->sideDistance:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->mInnerHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 360
    :cond_1c
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 361
    :cond_1d
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    .line 363
    :cond_1e
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_ON:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->onDrawRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle;->onDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 365
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 366
    :cond_1f
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    .line 368
    :cond_20
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->STATE_BG_OFF:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->offDrawRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle;->offDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 334
    :cond_21
    iget v0, p0, Lcom/oppo/widget/OppoToggle;->leftStart:I

    goto/16 :goto_4

    .line 335
    :cond_22
    iget v0, p0, Lcom/oppo/widget/OppoToggle;->leftStart:I

    goto/16 :goto_5
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 654
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 655
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v1, 0x4000

    .line 404
    iget v0, p0, Lcom/oppo/widget/OppoToggle;->mTotalWidth:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 405
    iget v0, p0, Lcom/oppo/widget/OppoToggle;->mInnerHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 406
    invoke-virtual {p0, p1, p2}, Lcom/oppo/widget/OppoToggle;->setMeasuredDimension(II)V

    .line 407
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 408
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1007
    move-object v0, p1

    check-cast v0, Lcom/oppo/widget/OppoToggle$SavedState;

    .line 1009
    .local v0, ss:Lcom/oppo/widget/OppoToggle$SavedState;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoToggle$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1010
    iget-boolean v1, v0, Lcom/oppo/widget/OppoToggle$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoToggle;->setChecked(Z)V

    .line 1012
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->requestLayout()V

    .line 1013
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 996
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 998
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/oppo/widget/OppoToggle$SavedState;

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoToggle$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1000
    .local v0, ss:Lcom/oppo/widget/OppoToggle$SavedState;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/oppo/widget/OppoToggle$SavedState;->checked:Z

    .line 1002
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 439
    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mBroadcasting:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v4

    .line 442
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    .line 452
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_2

    .line 453
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;-><init>(Lcom/oppo/widget/OppoToggle;Lcom/oppo/widget/OppoToggle$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoToggle;->mGestureDetector:Landroid/view/GestureDetector;

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 459
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewGroup;->setEventFlag(Ljava/lang/Boolean;)V

    .line 460
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 461
    iget v0, p0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    iput v0, p0, Lcom/oppo/widget/OppoToggle;->exactlyX:I

    .line 462
    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mToggled:Z

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoToggle;->toggleTriggered(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget v0, p0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoToggle;->getOffSet(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoToggle;->offSet:I

    .line 464
    iget v0, p0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoToggle;->getOrigin(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoToggle;->originX:I

    goto :goto_0

    .line 469
    :pswitch_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoToggle;->canHandleEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mScrollable:Z

    if-eqz v0, :cond_0

    .line 472
    iput-boolean v4, p0, Lcom/oppo/widget/OppoToggle;->mScrolling:Z

    .line 474
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->invalidate()V

    goto :goto_0

    .line 479
    :pswitch_2
    iput-boolean v5, p0, Lcom/oppo/widget/OppoToggle;->mScrolling:Z

    .line 480
    invoke-direct {p0}, Lcom/oppo/widget/OppoToggle;->canHandleEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    invoke-direct {p0}, Lcom/oppo/widget/OppoToggle;->handleFling()V

    .line 484
    :cond_3
    iput-boolean v5, p0, Lcom/oppo/widget/OppoToggle;->mHandled:Z

    .line 485
    iput-boolean v5, p0, Lcom/oppo/widget/OppoToggle;->mScrollable:Z

    .line 486
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewGroup;->setEventFlag(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->toggle()V

    .line 868
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->performToggleClick()Z

    move-result v0

    return v0
.end method

.method public performToggleClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 873
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoToggle;->sendAccessibilityEvent(I)V

    .line 883
    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 884
    .local v0, listenerInfo:Landroid/view/View$ListenerInfo;
    iget-object v3, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoToggle;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 886
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoToggle;->playSoundEffect(I)V

    .line 887
    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 892
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    const/4 v2, 0x0

    .line 790
    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mToggled:Z

    if-eq v0, p1, :cond_0

    .line 791
    iput-boolean p1, p0, Lcom/oppo/widget/OppoToggle;->mToggled:Z

    .line 793
    invoke-direct {p0}, Lcom/oppo/widget/OppoToggle;->refreshToggleState()V

    .line 796
    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mBroadcasting:Z

    if-eqz v0, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mBroadcasting:Z

    .line 801
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mOnCheckedChangeListener:Lcom/oppo/widget/OppoToggle$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 803
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mOnCheckedChangeListener:Lcom/oppo/widget/OppoToggle$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/oppo/widget/OppoToggle;->mToggled:Z

    invoke-interface {v0, p0, v1}, Lcom/oppo/widget/OppoToggle$OnCheckedChangeListener;->onCheckedChanged(Landroid/view/View;Z)V

    .line 806
    :cond_2
    iput-boolean v2, p0, Lcom/oppo/widget/OppoToggle;->mBroadcasting:Z

    .line 807
    iput-boolean v2, p0, Lcom/oppo/widget/OppoToggle;->mSwitching:Z

    goto :goto_0
.end method

.method public setChecked_ext(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    .line 818
    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mToggled:Z

    if-eq v0, p1, :cond_0

    .line 819
    iput-boolean p1, p0, Lcom/oppo/widget/OppoToggle;->mToggled:Z

    .line 820
    invoke-direct {p0}, Lcom/oppo/widget/OppoToggle;->refreshToggleState()V

    .line 823
    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mBroadcasting:Z

    if-eqz v0, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mBroadcasting:Z

    .line 827
    iput-boolean v1, p0, Lcom/oppo/widget/OppoToggle;->mBroadcasting:Z

    .line 828
    iput-boolean v1, p0, Lcom/oppo/widget/OppoToggle;->mSwitching:Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 917
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mRunning:Z

    .line 920
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/oppo/widget/OppoToggle$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 904
    iput-object p1, p0, Lcom/oppo/widget/OppoToggle;->mOnCheckedChangeListener:Lcom/oppo/widget/OppoToggle$OnCheckedChangeListener;

    .line 905
    return-void
.end method

.method public setPretending(Z)V
    .locals 0
    .parameter "pretending"

    .prologue
    .line 940
    iput-boolean p1, p0, Lcom/oppo/widget/OppoToggle;->mPendingEnabled:Z

    .line 941
    return-void
.end method

.method public setPretendingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 930
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoToggle;->setPretending(Z)V

    .line 931
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoToggle;->setEnabled(Z)V

    .line 932
    return-void

    .line 930
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 846
    iget-boolean v0, p0, Lcom/oppo/widget/OppoToggle;->mToggled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoToggle;->setChecked(Z)V

    .line 847
    return-void

    .line 846
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toggleTriggered(Landroid/view/MotionEvent;Z)Z
    .locals 4
    .parameter "ev"
    .parameter "toggled"

    .prologue
    const/4 v2, 0x1

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 416
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 418
    .local v1, y:I
    if-nez p2, :cond_0

    .line 419
    iget-object v3, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v0, v3, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v1, v3, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoToggle;->startRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v3, :cond_1

    .line 421
    iput-boolean v2, p0, Lcom/oppo/widget/OppoToggle;->mScrollable:Z

    .line 433
    :goto_0
    return v2

    .line 426
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoToggle;->endRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v0, v3, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoToggle;->endRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoToggle;->endRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v1, v3, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoToggle;->endRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v3, :cond_1

    .line 428
    iput-boolean v2, p0, Lcom/oppo/widget/OppoToggle;->mScrollable:Z

    goto :goto_0

    .line 433
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
