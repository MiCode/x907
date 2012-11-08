.class public abstract Lcom/oppo/camera/rewind/ui/StripLayout;
.super Ljava/lang/Object;
.source "StripLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/ui/StripLayout$LayoutItem;
    }
.end annotation


# instance fields
.field protected mAlpha:I

.field protected mBgAlpha:I

.field protected mBoolProps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mClamped:Z

.field protected mContinuousSelection:Z

.field protected mCyclic:Z

.field protected mDrawBgColor:Z

.field protected mDrawFrame:Z

.field protected mExtendedArea:Landroid/graphics/Rect;

.field protected mIndicateSelected:Z

.field protected mItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/ui/StripLayout$LayoutItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mMaxOffset:F

.field protected mMinOffset:F

.field protected mPaintProps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field protected mPivot:F

.field protected mScaleFromPivot:Z

.field protected mSelectByBBox:Z

.field protected mSelectable:Z

.field protected mSlidable:Z

.field protected mStrip:Lcom/oppo/camera/rewind/ui/Strip;

.field protected mThumbDims:Lcom/scalado/base/Size;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mClamped:Z

    .line 175
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mIndicateSelected:Z

    .line 176
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mScaleFromPivot:Z

    .line 177
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mContinuousSelection:Z

    .line 178
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mSelectByBBox:Z

    .line 179
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mSlidable:Z

    .line 180
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mSelectable:Z

    .line 182
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mDrawFrame:Z

    .line 184
    const/16 v0, 0xff

    iput v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mAlpha:I

    .line 185
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mDrawBgColor:Z

    .line 187
    iput v1, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mBgAlpha:I

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mBoolProps:Ljava/util/HashMap;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mPaintProps:Ljava/util/HashMap;

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    .line 199
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mItems:Ljava/util/Vector;

    .line 201
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mExtendedArea:Landroid/graphics/Rect;

    .line 203
    return-void
.end method


# virtual methods
.method protected contains(Landroid/graphics/Point;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 126
    return-void
.end method

.method protected drawForeground(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 129
    return-void
.end method

.method protected drawItem(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "item"
    .parameter "canvas"
    .parameter "rect"
    .parameter "paint"

    .prologue
    .line 132
    invoke-virtual {p1, p2, p3, p4}, Lcom/oppo/camera/rewind/ui/Item;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 133
    return-void
.end method

.method protected drawItemFrame(Lcom/oppo/camera/rewind/ui/Item;Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 0
    .parameter "item"
    .parameter "canvas"
    .parameter "rect"
    .parameter "selected"

    .prologue
    .line 136
    invoke-virtual {p1, p2, p3, p4}, Lcom/oppo/camera/rewind/ui/Item;->drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 137
    return-void
.end method

.method protected abstract getDelta(Landroid/graphics/Point;Landroid/graphics/Point;)D
.end method

.method protected getOffset(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/ui/StripLayout$LayoutItem;

    iget v0, v0, Lcom/oppo/camera/rewind/ui/StripLayout$LayoutItem;->mOffset:F

    return v0
.end method

.method protected abstract getPosition(Lcom/oppo/camera/rewind/ui/Item;FLandroid/graphics/Point;)V
.end method

.method protected increaseBoundingBox(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 168
    return-void
.end method

.method protected isCyclic()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mCyclic:Z

    return v0
.end method

.method protected isMoving()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method protected isVisible(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/ui/StripLayout$LayoutItem;

    iget-boolean v0, v0, Lcom/oppo/camera/rewind/ui/StripLayout$LayoutItem;->mVisible:Z

    return v0
.end method

.method protected onSelected()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareShowing()V
    .locals 5

    .prologue
    .line 108
    const/high16 v3, 0x7f80

    .line 109
    .local v3, minOffset:F
    const/high16 v2, -0x80

    .line 110
    .local v2, maxOffset:F
    iget-object v4, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mStrip:Lcom/oppo/camera/rewind/ui/Strip;

    iget-object v4, v4, Lcom/oppo/camera/rewind/ui/Strip;->mItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/ui/Item;

    .line 111
    .local v1, iterItem:Lcom/oppo/camera/rewind/ui/Item;
    iget v4, v1, Lcom/oppo/camera/rewind/ui/Item;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/oppo/camera/rewind/ui/StripLayout;->getOffset(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 112
    iget v4, v1, Lcom/oppo/camera/rewind/ui/Item;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/oppo/camera/rewind/ui/StripLayout;->getOffset(I)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0

    .line 114
    .end local v1           #iterItem:Lcom/oppo/camera/rewind/ui/Item;
    :cond_0
    iget v4, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    sub-float/2addr v4, v2

    add-float/2addr v4, v3

    iput v4, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mMinOffset:F

    .line 115
    iget v4, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mPivot:F

    sub-float/2addr v4, v3

    iput v4, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mMaxOffset:F

    .line 116
    return-void
.end method

.method protected update(J)V
    .locals 0
    .parameter "t"

    .prologue
    .line 105
    return-void
.end method

.method protected final wrapIndex(F)F
    .locals 1
    .parameter "index"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/ui/StripLayout;->isCyclic()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mClamped:Z

    if-eqz v0, :cond_0

    .line 151
    :cond_0
    :goto_0
    return p1

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mStrip:Lcom/oppo/camera/rewind/ui/Strip;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/Strip;->size()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mStrip:Lcom/oppo/camera/rewind/ui/Strip;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/Strip;->size()F

    move-result v0

    sub-float/2addr p1, v0

    .line 147
    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/StripLayout;->mStrip:Lcom/oppo/camera/rewind/ui/Strip;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/Strip;->size()F

    move-result v0

    add-float/2addr p1, v0

    goto :goto_0
.end method
