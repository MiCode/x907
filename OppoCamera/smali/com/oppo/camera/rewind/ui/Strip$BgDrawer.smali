.class Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;
.super Ljava/lang/Object;
.source "Strip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/ui/Strip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BgDrawer"
.end annotation


# instance fields
.field private mCurMinRect:Landroid/graphics/Rect;

.field private mCurRect:Landroid/graphics/Rect;

.field private mDrawRectF:Landroid/graphics/RectF;

.field private mFillPaint:Landroid/graphics/Paint;

.field private mInteriorFillPaint:Landroid/graphics/Paint;

.field private mLastDrawn:Landroid/graphics/Rect;

.field private mMaxRect:Landroid/graphics/Rect;

.field private mMinRect:Landroid/graphics/Rect;

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/oppo/camera/rewind/ui/Strip;


# direct methods
.method static synthetic access$1000(Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mMaxRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mLastDrawn:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1420
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->drawMax(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1420
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->drawMin(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawMax(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/high16 v2, 0x4120

    .line 1471
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->this$0:Lcom/oppo/camera/rewind/ui/Strip;

    #getter for: Lcom/oppo/camera/rewind/ui/Strip;->mTransParam:F
    invoke-static {v0}, Lcom/oppo/camera/rewind/ui/Strip;->access$1200(Lcom/oppo/camera/rewind/ui/Strip;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->update(F)V

    .line 1472
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mCurRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1473
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1474
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1475
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1476
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mInteriorFillPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->this$0:Lcom/oppo/camera/rewind/ui/Strip;

    #getter for: Lcom/oppo/camera/rewind/ui/Strip;->mItemAlpha:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/ui/Strip;->access$1300(Lcom/oppo/camera/rewind/ui/Strip;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1477
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mInteriorFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1478
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mLastDrawn:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mCurRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1479
    return-void
.end method

.method private drawMin(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/high16 v2, 0x4120

    .line 1482
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mMinRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1483
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1484
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1485
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mLastDrawn:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mMinRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1486
    return-void
.end method

.method private update(F)V
    .locals 4
    .parameter "t"

    .prologue
    .line 1454
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->this$0:Lcom/oppo/camera/rewind/ui/Strip;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/rewind/ui/Strip;->getArea(Landroid/graphics/Rect;)V

    .line 1455
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mCurMinRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1456
    const/4 v0, 0x0

    .line 1457
    .local v0, src:Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 1458
    .local v1, trg:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->this$0:Lcom/oppo/camera/rewind/ui/Strip;

    #getter for: Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;
    invoke-static {v2}, Lcom/oppo/camera/rewind/ui/Strip;->access$1100(Lcom/oppo/camera/rewind/ui/Strip;)Lcom/oppo/camera/rewind/ui/StripLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1459
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mCurMinRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->this$0:Lcom/oppo/camera/rewind/ui/Strip;

    iget-object v3, v3, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v3, v3, Lcom/oppo/camera/rewind/ui/StripLayout;->mExtendedArea:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1460
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->this$0:Lcom/oppo/camera/rewind/ui/Strip;

    #getter for: Lcom/oppo/camera/rewind/ui/Strip;->mDstLayout:Lcom/oppo/camera/rewind/ui/StripLayout;
    invoke-static {v2}, Lcom/oppo/camera/rewind/ui/Strip;->access$1100(Lcom/oppo/camera/rewind/ui/Strip;)Lcom/oppo/camera/rewind/ui/StripLayout;

    move-result-object v2

    iget-object v1, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mExtendedArea:Landroid/graphics/Rect;

    .line 1467
    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mCurMinRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->mCurRect:Landroid/graphics/Rect;

    invoke-static {v2, v1, p1, v3}, Lcom/oppo/camera/rewind/ui/AnimUtils;->interpolateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 1468
    return-void

    .line 1462
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Strip$BgDrawer;->this$0:Lcom/oppo/camera/rewind/ui/Strip;

    iget-object v2, v2, Lcom/oppo/camera/rewind/ui/Strip;->mLayout:Lcom/oppo/camera/rewind/ui/StripLayout;

    iget-object v1, v2, Lcom/oppo/camera/rewind/ui/StripLayout;->mExtendedArea:Landroid/graphics/Rect;

    .line 1463
    const/high16 p1, 0x3f80

    goto :goto_0
.end method
