.class Lcom/oppo/widget/OppoTimeView$FlingRunnable;
.super Ljava/lang/Object;
.source "OppoTimeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private IsEndFling:Z

.field private mLastFlingY:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/oppo/widget/OppoTimeView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoTimeView;)V
    .locals 2
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->IsEndFling:Z

    .line 545
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/oppo/widget/OppoTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 546
    return-void
.end method

.method private endFling()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v2, -0x5

    const/4 v3, 0x0

    .line 559
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoTimeView;->access$000(Lcom/oppo/widget/OppoTimeView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mFlingDerection:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimeView;->access$100(Lcom/oppo/widget/OppoTimeView;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 564
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimeView;->access$200(Lcom/oppo/widget/OppoTimeView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimeView;->access$200(Lcom/oppo/widget/OppoTimeView;)I

    move-result v0

    if-le v0, v5, :cond_2

    .line 566
    iput-boolean v4, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->IsEndFling:Z

    .line 567
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v0, v5}, Lcom/oppo/widget/OppoTimeView;->onDealActionMove(I)V

    .line 568
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoTimeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimeView;->access$200(Lcom/oppo/widget/OppoTimeView;)I

    move-result v0

    if-gt v0, v5, :cond_3

    .line 572
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #setter for: Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoTimeView;->access$002(Lcom/oppo/widget/OppoTimeView;Z)Z

    .line 573
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->IsEndFling:Z

    .line 574
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #setter for: Lcom/oppo/widget/OppoTimeView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoTimeView;->access$202(Lcom/oppo/widget/OppoTimeView;I)I

    .line 575
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoTimeView;->onDealActionUp(I)V

    goto :goto_0

    .line 577
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimeView;->access$200(Lcom/oppo/widget/OppoTimeView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimeView;->access$200(Lcom/oppo/widget/OppoTimeView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #setter for: Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoTimeView;->access$002(Lcom/oppo/widget/OppoTimeView;Z)Z

    .line 580
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->IsEndFling:Z

    .line 581
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #setter for: Lcom/oppo/widget/OppoTimeView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoTimeView;->access$202(Lcom/oppo/widget/OppoTimeView;I)I

    .line 582
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/widget/OppoTimeView;->access$400(Lcom/oppo/widget/OppoTimeView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoTimeView;->access$500(Lcom/oppo/widget/OppoTimeView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoTimeView;->access$500(Lcom/oppo/widget/OppoTimeView;)I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/oppo/widget/OppoTimeView;->mStartIndex:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoTimeView;->access$402(Lcom/oppo/widget/OppoTimeView;I)I

    .line 583
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoTimeView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 586
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mFlingDerection:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimeView;->access$100(Lcom/oppo/widget/OppoTimeView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 588
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimeView;->access$200(Lcom/oppo/widget/OppoTimeView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x5

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimeView;->access$200(Lcom/oppo/widget/OppoTimeView;)I

    move-result v0

    if-ge v0, v2, :cond_5

    .line 590
    iput-boolean v4, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->IsEndFling:Z

    .line 591
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoTimeView;->onDealActionMove(I)V

    .line 592
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoTimeView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 594
    :cond_5
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimeView;->access$200(Lcom/oppo/widget/OppoTimeView;)I

    move-result v0

    if-lt v0, v2, :cond_6

    .line 596
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #setter for: Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoTimeView;->access$002(Lcom/oppo/widget/OppoTimeView;Z)Z

    .line 597
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->IsEndFling:Z

    .line 598
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #setter for: Lcom/oppo/widget/OppoTimeView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoTimeView;->access$202(Lcom/oppo/widget/OppoTimeView;I)I

    .line 599
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoTimeView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 601
    :cond_6
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimeView;->access$200(Lcom/oppo/widget/OppoTimeView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x5

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimeView;->access$200(Lcom/oppo/widget/OppoTimeView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #setter for: Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoTimeView;->access$002(Lcom/oppo/widget/OppoTimeView;Z)Z

    .line 604
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->IsEndFling:Z

    .line 605
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/widget/OppoTimeView;->access$400(Lcom/oppo/widget/OppoTimeView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoTimeView;->access$500(Lcom/oppo/widget/OppoTimeView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoTimeView;->access$500(Lcom/oppo/widget/OppoTimeView;)I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/oppo/widget/OppoTimeView;->mStartIndex:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoTimeView;->access$402(Lcom/oppo/widget/OppoTimeView;I)I

    .line 606
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #setter for: Lcom/oppo/widget/OppoTimeView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoTimeView;->access$202(Lcom/oppo/widget/OppoTimeView;I)I

    .line 607
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoTimeView;->onDealActionUp(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x2a

    const/16 v6, -0x2a

    .line 615
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mIsStopRun:Z
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$600(Lcom/oppo/widget/OppoTimeView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 617
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    const/4 v6, 0x3

    #setter for: Lcom/oppo/widget/OppoTimeView;->mDrawTpye:I
    invoke-static {v5, v6}, Lcom/oppo/widget/OppoTimeView;->access$702(Lcom/oppo/widget/OppoTimeView;I)I

    .line 618
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoTimeView;->invalidate()V

    .line 619
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #calls: Lcom/oppo/widget/OppoTimeView;->notifyChange()V
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$800(Lcom/oppo/widget/OppoTimeView;)V

    .line 620
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->debug:Z
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$900(Lcom/oppo/widget/OppoTimeView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 622
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$1000(Lcom/oppo/widget/OppoTimeView;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "this is called !!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$000(Lcom/oppo/widget/OppoTimeView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 630
    iget-boolean v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->IsEndFling:Z

    if-eqz v5, :cond_2

    .line 632
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 635
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 636
    .local v3, scroller:Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    .line 637
    .local v2, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 638
    .local v4, y:I
    iget v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->mLastFlingY:I

    sub-int v1, v5, v4

    .line 640
    .local v1, delta:I
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v5

    float-to-int v5, v5

    div-int v0, v1, v5

    .line 641
    .local v0, countdelta:I
    if-le v1, v7, :cond_5

    .line 643
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-le v5, v7, :cond_3

    .line 644
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, 0x2a

    .line 645
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    const/16 v6, 0x1a

    if-ge v5, v6, :cond_4

    .line 646
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, 0x1a

    .line 655
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v5, v1}, Lcom/oppo/widget/OppoTimeView;->onDealActionMove(I)V

    .line 659
    if-eqz v2, :cond_7

    .line 660
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoTimeView;->invalidate()V

    .line 661
    iput v4, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->mLastFlingY:I

    .line 662
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v5, p0}, Lcom/oppo/widget/OppoTimeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 648
    :cond_5
    if-ge v1, v6, :cond_4

    .line 650
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-ge v5, v6, :cond_6

    .line 651
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, -0x2a

    .line 652
    :cond_6
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-gez v5, :cond_4

    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    const/16 v6, -0x1a

    if-le v5, v6, :cond_4

    .line 653
    iget-object v5, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    #getter for: Lcom/oppo/widget/OppoTimeView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoTimeView;->access$300(Lcom/oppo/widget/OppoTimeView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, -0x1a

    goto :goto_1

    .line 664
    :cond_7
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 549
    if-gez p1, :cond_0

    move v2, v6

    .line 550
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->mLastFlingY:I

    .line 551
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 553
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    const/4 v3, 0x1

    #setter for: Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoTimeView;->access$002(Lcom/oppo/widget/OppoTimeView;Z)Z

    .line 554
    iput-boolean v1, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->IsEndFling:Z

    .line 555
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoTimeView;->post(Ljava/lang/Runnable;)Z

    .line 556
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 549
    goto :goto_0
.end method
