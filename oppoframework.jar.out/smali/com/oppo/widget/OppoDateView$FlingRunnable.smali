.class Lcom/oppo/widget/OppoDateView$FlingRunnable;
.super Ljava/lang/Object;
.source "OppoDateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private IsEndFling:Z

.field private mLastFlingY:I

.field final synthetic this$0:Lcom/oppo/widget/OppoDateView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoDateView;)V
    .locals 1
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->IsEndFling:Z

    .line 599
    return-void
.end method

.method private endFling()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v2, -0x5

    const/4 v3, 0x0

    .line 614
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mIsFilling:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoDateView;->access$100(Lcom/oppo/widget/OppoDateView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mFlingDerection:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDateView;->access$200(Lcom/oppo/widget/OppoDateView;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 621
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDateView;->access$300(Lcom/oppo/widget/OppoDateView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDateView;->access$300(Lcom/oppo/widget/OppoDateView;)I

    move-result v0

    if-le v0, v5, :cond_2

    .line 623
    iput-boolean v4, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->IsEndFling:Z

    .line 624
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v0, v5}, Lcom/oppo/widget/OppoDateView;->onDealActionMove(I)V

    .line 625
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoDateView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDateView;->access$300(Lcom/oppo/widget/OppoDateView;)I

    move-result v0

    if-gt v0, v5, :cond_3

    .line 638
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #setter for: Lcom/oppo/widget/OppoDateView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoDateView;->access$102(Lcom/oppo/widget/OppoDateView;Z)Z

    .line 639
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->IsEndFling:Z

    .line 640
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #setter for: Lcom/oppo/widget/OppoDateView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoDateView;->access$302(Lcom/oppo/widget/OppoDateView;I)I

    .line 641
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoDateView;->onDealActionUp(I)V

    goto :goto_0

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDateView;->access$300(Lcom/oppo/widget/OppoDateView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDateView;->access$300(Lcom/oppo/widget/OppoDateView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #setter for: Lcom/oppo/widget/OppoDateView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoDateView;->access$102(Lcom/oppo/widget/OppoDateView;Z)Z

    .line 646
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->IsEndFling:Z

    .line 647
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/widget/OppoDateView;->access$500(Lcom/oppo/widget/OppoDateView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDateView;->access$600(Lcom/oppo/widget/OppoDateView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDateView;->access$600(Lcom/oppo/widget/OppoDateView;)I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/oppo/widget/OppoDateView;->mStartIndex:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoDateView;->access$502(Lcom/oppo/widget/OppoDateView;I)I

    .line 648
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #setter for: Lcom/oppo/widget/OppoDateView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoDateView;->access$302(Lcom/oppo/widget/OppoDateView;I)I

    .line 649
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoDateView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 653
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mFlingDerection:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDateView;->access$200(Lcom/oppo/widget/OppoDateView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 655
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDateView;->access$300(Lcom/oppo/widget/OppoDateView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x5

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDateView;->access$300(Lcom/oppo/widget/OppoDateView;)I

    move-result v0

    if-ge v0, v2, :cond_5

    .line 657
    iput-boolean v4, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->IsEndFling:Z

    .line 658
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoDateView;->onDealActionMove(I)V

    .line 659
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoDateView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 669
    :cond_5
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDateView;->access$300(Lcom/oppo/widget/OppoDateView;)I

    move-result v0

    if-lt v0, v2, :cond_6

    .line 671
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #setter for: Lcom/oppo/widget/OppoDateView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoDateView;->access$102(Lcom/oppo/widget/OppoDateView;Z)Z

    .line 672
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->IsEndFling:Z

    .line 673
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #setter for: Lcom/oppo/widget/OppoDateView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoDateView;->access$302(Lcom/oppo/widget/OppoDateView;I)I

    .line 674
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoDateView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 676
    :cond_6
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDateView;->access$300(Lcom/oppo/widget/OppoDateView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x5

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDateView;->access$300(Lcom/oppo/widget/OppoDateView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    .line 678
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #setter for: Lcom/oppo/widget/OppoDateView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoDateView;->access$102(Lcom/oppo/widget/OppoDateView;Z)Z

    .line 679
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->IsEndFling:Z

    .line 680
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/widget/OppoDateView;->access$500(Lcom/oppo/widget/OppoDateView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDateView;->access$600(Lcom/oppo/widget/OppoDateView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDateView;->access$600(Lcom/oppo/widget/OppoDateView;)I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/oppo/widget/OppoDateView;->mStartIndex:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoDateView;->access$502(Lcom/oppo/widget/OppoDateView;I)I

    .line 681
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #setter for: Lcom/oppo/widget/OppoDateView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoDateView;->access$302(Lcom/oppo/widget/OppoDateView;I)I

    .line 682
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoDateView;->onDealActionUp(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x2a

    const/16 v6, -0x2a

    .line 690
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mIsStopRun:Z
    invoke-static {v5}, Lcom/oppo/widget/OppoDateView;->access$700(Lcom/oppo/widget/OppoDateView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 692
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    const/4 v6, 0x3

    #setter for: Lcom/oppo/widget/OppoDateView;->mDrawTpye:I
    invoke-static {v5, v6}, Lcom/oppo/widget/OppoDateView;->access$802(Lcom/oppo/widget/OppoDateView;I)I

    .line 693
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoDateView;->invalidate()V

    .line 694
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #calls: Lcom/oppo/widget/OppoDateView;->notifyChange()V
    invoke-static {v5}, Lcom/oppo/widget/OppoDateView;->access$900(Lcom/oppo/widget/OppoDateView;)V

    .line 695
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    const/4 v6, 0x0

    #setter for: Lcom/oppo/widget/OppoDateView;->mIsStopRun:Z
    invoke-static {v5, v6}, Lcom/oppo/widget/OppoDateView;->access$702(Lcom/oppo/widget/OppoDateView;Z)Z

    .line 696
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    iget-object v6, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mCurrentIndex:I
    invoke-static {v6}, Lcom/oppo/widget/OppoDateView;->access$1000(Lcom/oppo/widget/OppoDateView;)I

    move-result v6

    #setter for: Lcom/oppo/widget/OppoDateView;->mStartIndex:I
    invoke-static {v5, v6}, Lcom/oppo/widget/OppoDateView;->access$502(Lcom/oppo/widget/OppoDateView;I)I

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mIsFilling:Z
    invoke-static {v5}, Lcom/oppo/widget/OppoDateView;->access$100(Lcom/oppo/widget/OppoDateView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 705
    iget-boolean v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->IsEndFling:Z

    if-eqz v5, :cond_2

    .line 707
    invoke-direct {p0}, Lcom/oppo/widget/OppoDateView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 711
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v5}, Lcom/oppo/widget/OppoDateView;->access$000(Lcom/oppo/widget/OppoDateView;)Landroid/widget/Scroller;

    move-result-object v3

    .line 712
    .local v3, scroller:Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    .line 713
    .local v2, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 714
    .local v4, y:I
    iget v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->mLastFlingY:I

    sub-int v1, v5, v4

    .line 716
    .local v1, delta:I
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v5

    float-to-int v5, v5

    div-int v0, v1, v5

    .line 718
    .local v0, countdelta:I
    if-le v1, v7, :cond_5

    .line 720
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-le v5, v7, :cond_3

    .line 722
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, 0x2a

    .line 725
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    const/16 v6, 0x1a

    if-ge v5, v6, :cond_4

    .line 727
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, 0x1a

    .line 743
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v5, v1}, Lcom/oppo/widget/OppoDateView;->onDealActionMove(I)V

    .line 745
    if-eqz v2, :cond_7

    .line 747
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoDateView;->invalidate()V

    .line 748
    iput v4, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->mLastFlingY:I

    .line 749
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v5, p0}, Lcom/oppo/widget/OppoDateView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 730
    :cond_5
    if-ge v1, v6, :cond_4

    .line 732
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-ge v5, v6, :cond_6

    .line 734
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, -0x2a

    .line 737
    :cond_6
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-gez v5, :cond_4

    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    const/16 v6, -0x1a

    if-le v5, v6, :cond_4

    .line 739
    iget-object v5, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoDateView;->access$400(Lcom/oppo/widget/OppoDateView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, -0x1a

    goto :goto_1

    .line 753
    :cond_7
    invoke-direct {p0}, Lcom/oppo/widget/OppoDateView$FlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 603
    if-gez p1, :cond_0

    move v2, v6

    .line 604
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->mLastFlingY:I

    .line 605
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    #getter for: Lcom/oppo/widget/OppoDateView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/oppo/widget/OppoDateView;->access$000(Lcom/oppo/widget/OppoDateView;)Landroid/widget/Scroller;

    move-result-object v0

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 607
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    const/4 v3, 0x1

    #setter for: Lcom/oppo/widget/OppoDateView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoDateView;->access$102(Lcom/oppo/widget/OppoDateView;Z)Z

    .line 608
    iput-boolean v1, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->IsEndFling:Z

    .line 609
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoDateView;->post(Ljava/lang/Runnable;)Z

    .line 610
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 603
    goto :goto_0
.end method
