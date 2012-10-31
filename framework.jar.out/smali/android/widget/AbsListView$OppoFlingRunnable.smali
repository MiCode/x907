.class Landroid/widget/AbsListView$OppoFlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppoFlingRunnable"
.end annotation


# static fields
.field private static final SCROLL_DURATION:I = 0x320


# instance fields
.field private count:I

.field private mLastFlingY:I

.field private final mScroller:Lcom/oppo/widget/OppoScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter

    .prologue
    .line 5066
    iput-object p1, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5059
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->count:I

    .line 5067
    new-instance v0, Lcom/oppo/widget/OppoScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    .line 5068
    return-void
.end method

.method static synthetic access$200(Landroid/widget/AbsListView$OppoFlingRunnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5052
    invoke-direct {p0}, Landroid/widget/AbsListView$OppoFlingRunnable;->endFling()V

    return-void
.end method

.method private endFling()V
    .locals 2

    .prologue
    .line 5171
    iget-object v0, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5173
    iget-object v0, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5174
    iget-object v0, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2400(Landroid/widget/AbsListView;)V

    .line 5176
    iget-object v0, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5178
    iget-object v0, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5179
    iget-object v0, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v1}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5181
    :cond_0
    return-void
.end method

.method private isEnding(ZI)V
    .locals 1
    .parameter "more"
    .parameter "y"

    .prologue
    .line 5327
    if-eqz p1, :cond_0

    .line 5328
    iput p2, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->mLastFlingY:I

    .line 5329
    iget-object v0, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5340
    :goto_0
    return-void

    .line 5332
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView$OppoFlingRunnable;->endFling()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 5184
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 5323
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 5188
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 5189
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView$OppoFlingRunnable;->endFling()V

    goto :goto_0

    .line 5193
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    .line 5195
    .local v15, scroller:Lcom/oppo/widget/OppoScroller;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->count:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->count:I

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoScroller;->setCount(I)V

    .line 5197
    invoke-virtual {v15}, Lcom/oppo/widget/OppoScroller;->computeScrollOffset()Z

    move-result v12

    .line 5198
    .local v12, more:Z
    invoke-virtual {v15}, Lcom/oppo/widget/OppoScroller;->getCurrY()I

    move-result v17

    .line 5202
    .local v17, y:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mLastFlingY:I

    sub-int v9, v2, v17

    .line 5205
    .local v9, delta:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    .line 5206
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/widget/AbsListView;->scrollTo(II)V

    .line 5207
    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$4500(Landroid/widget/AbsListView;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 5208
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$4600(Landroid/widget/AbsListView;)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)I

    move-result v6

    neg-int v6, v6

    const/16 v7, 0x320

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/widget/OppoScroller;->startScroll(IIIII)V

    .line 5209
    const/4 v12, 0x1

    .line 5211
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1}, Landroid/widget/AbsListView$OppoFlingRunnable;->isEnding(ZI)V

    goto :goto_0

    .line 5214
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)I

    move-result v2

    if-gez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mSpringEnabled:Z

    if-eqz v2, :cond_8

    .line 5215
    if-gez v9, :cond_6

    .line 5216
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$4900(Landroid/widget/AbsListView;)I

    move-result v2

    if-ge v2, v9, :cond_5

    .line 5217
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    neg-int v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/widget/AbsListView;->scrollBy(II)V

    .line 5218
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1}, Landroid/widget/AbsListView$OppoFlingRunnable;->isEnding(ZI)V

    goto/16 :goto_0

    .line 5222
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$5000(Landroid/widget/AbsListView;)I

    move-result v2

    sub-int/2addr v9, v2

    .line 5223
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/AbsListView;->scrollTo(II)V

    .line 5224
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x4

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5244
    :cond_6
    :goto_1
    if-lez v9, :cond_a

    .line 5246
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5247
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5248
    .local v10, firstView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5251
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$5400(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$5500(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 5266
    .end local v10           #firstView:Landroid/view/View;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v9, v9}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v8

    .line 5269
    .local v8, atEnd:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 5270
    .local v13, motionView:Landroid/view/View;
    if-eqz v13, :cond_7

    .line 5273
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    if-eq v2, v3, :cond_7

    .line 5275
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoScroller;->getCurrVY()I

    move-result v16

    .line 5276
    .local v16, velocity:I
    const/16 v2, 0x2710

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 5278
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mSpringEnabled:Z

    if-eqz v2, :cond_c

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$5800(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    if-le v2, v3, :cond_c

    .line 5280
    if-lez v16, :cond_b

    .line 5281
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v6, v6, v18

    const-wide/high16 v18, 0x4069

    div-double v6, v6, v18

    double-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/oppo/widget/OppoScroller;->startScroll(IIII)V

    .line 5286
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x7

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5294
    .end local v16           #velocity:I
    :cond_7
    :goto_4
    if-eqz v12, :cond_d

    if-nez v8, :cond_d

    .line 5295
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 5296
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$OppoFlingRunnable;->mLastFlingY:I

    .line 5297
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5228
    .end local v8           #atEnd:Z
    .end local v13           #motionView:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;)I

    move-result v2

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mSpringEnabled:Z

    if-eqz v2, :cond_6

    .line 5229
    if-lez v9, :cond_6

    .line 5230
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$5200(Landroid/widget/AbsListView;)I

    move-result v2

    if-le v2, v9, :cond_9

    .line 5231
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    neg-int v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/widget/AbsListView;->scrollBy(II)V

    .line 5232
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1}, Landroid/widget/AbsListView$OppoFlingRunnable;->isEnding(ZI)V

    goto/16 :goto_0

    .line 5236
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$5300(Landroid/widget/AbsListView;)I

    move-result v2

    add-int/2addr v9, v2

    .line 5237
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/AbsListView;->scrollTo(II)V

    .line 5238
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x4

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    goto/16 :goto_1

    .line 5254
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .line 5255
    .local v14, offsetToLast:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v14

    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5257
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 5258
    .local v11, lastView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5261
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$5600(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$5700(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_2

    .line 5284
    .end local v11           #lastView:Landroid/view/View;
    .end local v14           #offsetToLast:I
    .restart local v8       #atEnd:Z
    .restart local v13       #motionView:Landroid/view/View;
    .restart local v16       #velocity:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v6, v6, v18

    const-wide/high16 v18, 0x4069

    div-double v6, v6, v18

    double-to-int v6, v6

    neg-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/oppo/widget/OppoScroller;->startScroll(IIII)V

    goto/16 :goto_3

    .line 5289
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 5299
    .end local v16           #velocity:I
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView$OppoFlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 5313
    .end local v8           #atEnd:Z
    .end local v9           #delta:I
    .end local v12           #more:Z
    .end local v13           #motionView:Landroid/view/View;
    .end local v15           #scroller:Lcom/oppo/widget/OppoScroller;
    .end local v17           #y:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mSpringEnabled:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$5900(Landroid/widget/AbsListView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 5315
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$OppoFlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 5184
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public start(I)V
    .locals 16
    .parameter "initialVelocity"

    .prologue
    .line 5071
    if-gez p1, :cond_1

    const v3, 0x7fffffff

    .line 5072
    .local v3, initialY:I
    :goto_0
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mLastFlingY:I

    .line 5076
    const/4 v13, 0x0

    .line 5077
    .local v13, friction:F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 5078
    .local v10, absVelocity:I
    const/16 v1, 0x320

    if-gt v10, v1, :cond_2

    .line 5079
    const v13, 0x3c23d70a

    .line 5095
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    invoke-virtual {v1, v13}, Lcom/oppo/widget/OppoScroller;->setFriction(F)V

    .line 5097
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$3300(Landroid/widget/AbsListView;)I

    move-result v1

    if-gez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mSpringEnabled:Z

    if-eqz v1, :cond_a

    .line 5100
    if-gtz p1, :cond_9

    .line 5101
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$3400(Landroid/widget/AbsListView;)I

    move-result v3

    .end local v3           #initialY:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$3500(Landroid/widget/AbsListView;)I

    move-result v5

    neg-int v5, v5

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/widget/OppoScroller;->startScroll(IIIII)V

    .line 5102
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x7

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5152
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5160
    return-void

    .line 5071
    .end local v10           #absVelocity:I
    .end local v13           #friction:F
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 5080
    .restart local v3       #initialY:I
    .restart local v10       #absVelocity:I
    .restart local v13       #friction:F
    :cond_2
    const/16 v1, 0x320

    if-le v10, v1, :cond_3

    const/16 v1, 0x578

    if-gt v10, v1, :cond_3

    .line 5081
    const v13, 0x3ccccccd

    goto :goto_1

    .line 5082
    :cond_3
    const/16 v1, 0x578

    if-le v10, v1, :cond_4

    const/16 v1, 0xa28

    if-gt v10, v1, :cond_4

    .line 5083
    const v13, 0x3d3851ec

    goto :goto_1

    .line 5084
    :cond_4
    const/16 v1, 0xa28

    if-le v10, v1, :cond_5

    const/16 v1, 0x1194

    if-gt v10, v1, :cond_5

    .line 5085
    const v13, 0x3dcccccd

    goto :goto_1

    .line 5086
    :cond_5
    const/16 v1, 0x1194

    if-le v10, v1, :cond_6

    const/16 v1, 0x1964

    if-gt v10, v1, :cond_6

    .line 5087
    const v13, 0x3e19999a

    goto :goto_1

    .line 5088
    :cond_6
    const/16 v1, 0x1964

    if-le v10, v1, :cond_7

    const/16 v1, 0x2134

    if-gt v10, v1, :cond_7

    .line 5089
    const v13, 0x3e4ccccd

    goto/16 :goto_1

    .line 5090
    :cond_7
    const/16 v1, 0x2134

    if-le v10, v1, :cond_8

    const/16 v1, 0x2e7c

    if-gt v10, v1, :cond_8

    .line 5091
    const v13, 0x3e99999a

    goto/16 :goto_1

    .line 5093
    :cond_8
    const v13, 0x3ed70a3d

    goto/16 :goto_1

    .line 5104
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move/from16 v5, p1

    invoke-virtual/range {v1 .. v9}, Lcom/oppo/widget/OppoScroller;->fling(IIIIIIII)V

    .line 5106
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x4

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5107
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoScroller;->getFinalY()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoScroller;->getStartY()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3600(Landroid/widget/AbsListView;)I

    move-result v2

    add-int/2addr v1, v2

    if-gtz v1, :cond_0

    .line 5108
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$3700(Landroid/widget/AbsListView;)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$3800(Landroid/widget/AbsListView;)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/oppo/widget/OppoScroller;->startScroll(IIII)V

    .line 5109
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x7

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto/16 :goto_2

    .line 5113
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$3900(Landroid/widget/AbsListView;)I

    move-result v1

    if-lez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mSpringEnabled:Z

    if-eqz v1, :cond_c

    .line 5116
    if-ltz p1, :cond_b

    .line 5117
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$4000(Landroid/widget/AbsListView;)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$4100(Landroid/widget/AbsListView;)I

    move-result v1

    neg-int v8, v1

    const/16 v9, 0x320

    invoke-virtual/range {v4 .. v9}, Lcom/oppo/widget/OppoScroller;->startScroll(IIIII)V

    .line 5118
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x7

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto/16 :goto_2

    .line 5120
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move/from16 v5, p1

    invoke-virtual/range {v1 .. v9}, Lcom/oppo/widget/OppoScroller;->fling(IIIIIIII)V

    .line 5122
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x4

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5123
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoScroller;->getFinalY()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoScroller;->getStartY()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$4200(Landroid/widget/AbsListView;)I

    move-result v2

    add-int/2addr v1, v2

    if-ltz v1, :cond_0

    .line 5124
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$4300(Landroid/widget/AbsListView;)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$4400(Landroid/widget/AbsListView;)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/oppo/widget/OppoScroller;->startScroll(IIII)V

    .line 5125
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x7

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto/16 :goto_2

    .line 5130
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mSpringEnabled:Z

    if-eqz v1, :cond_d

    .line 5134
    move/from16 v0, p1

    int-to-double v1, v0

    move/from16 v0, p1

    int-to-double v4, v0

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v15, v1

    .line 5135
    .local v15, velocity:F
    const/high16 v1, 0x447a

    mul-float/2addr v1, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    iget v2, v2, Lcom/oppo/widget/OppoScroller;->mDeceleration:F

    div-float/2addr v1, v2

    float-to-int v12, v1

    .line 5136
    .local v12, duration:I
    mul-float v1, v15, v15

    const/high16 v2, 0x4000

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    iget v4, v4, Lcom/oppo/widget/OppoScroller;->mDeceleration:F

    mul-float/2addr v2, v4

    div-float/2addr v1, v2

    float-to-int v14, v1

    .line 5137
    .local v14, totalDistance:I
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int v11, v1, p1

    .line 5138
    .local v11, coeffY:I
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->count:I

    .line 5139
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    mul-int v5, v14, v11

    add-int/lit16 v6, v12, 0xbb8

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/widget/OppoScroller;->startScrollList(IIIII)V

    .line 5149
    .end local v11           #coeffY:I
    .end local v12           #duration:I
    .end local v14           #totalDistance:I
    .end local v15           #velocity:F
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x4

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto/16 :goto_2

    .line 5145
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move/from16 v5, p1

    invoke-virtual/range {v1 .. v9}, Lcom/oppo/widget/OppoScroller;->fling(IIIIIIII)V

    goto :goto_3
.end method

.method startScroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 5163
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 5164
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->mLastFlingY:I

    .line 5165
    iget-object v0, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->mScroller:Lcom/oppo/widget/OppoScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoScroller;->startScroll(IIIII)V

    .line 5166
    iget-object v0, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5167
    iget-object v0, p0, Landroid/widget/AbsListView$OppoFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5168
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 5163
    goto :goto_0
.end method
