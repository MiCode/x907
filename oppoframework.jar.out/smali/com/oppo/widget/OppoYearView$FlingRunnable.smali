.class Lcom/oppo/widget/OppoYearView$FlingRunnable;
.super Ljava/lang/Object;
.source "OppoYearView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoYearView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private IsEndFling:Z

.field private mLastFlingY:I

.field final synthetic this$0:Lcom/oppo/widget/OppoYearView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoYearView;)V
    .locals 1
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->IsEndFling:Z

    .line 683
    return-void
.end method

.method private endFling()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v2, -0x5

    const/4 v3, 0x0

    .line 698
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mIsFilling:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoYearView;->access$100(Lcom/oppo/widget/OppoYearView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mFlingDerection:I
    invoke-static {v0}, Lcom/oppo/widget/OppoYearView;->access$200(Lcom/oppo/widget/OppoYearView;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 705
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoYearView;->access$300(Lcom/oppo/widget/OppoYearView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoYearView;->access$300(Lcom/oppo/widget/OppoYearView;)I

    move-result v0

    if-le v0, v5, :cond_2

    .line 707
    iput-boolean v4, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->IsEndFling:Z

    .line 708
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v0, v5}, Lcom/oppo/widget/OppoYearView;->onDealActionMove(I)V

    .line 709
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoYearView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 711
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoYearView;->access$300(Lcom/oppo/widget/OppoYearView;)I

    move-result v0

    if-gt v0, v5, :cond_3

    .line 713
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #setter for: Lcom/oppo/widget/OppoYearView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoYearView;->access$102(Lcom/oppo/widget/OppoYearView;Z)Z

    .line 714
    iput-boolean v3, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->IsEndFling:Z

    .line 715
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #setter for: Lcom/oppo/widget/OppoYearView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoYearView;->access$302(Lcom/oppo/widget/OppoYearView;I)I

    .line 716
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoYearView;->onDealActionUp(I)V

    goto :goto_0

    .line 718
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoYearView;->access$300(Lcom/oppo/widget/OppoYearView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoYearView;->access$300(Lcom/oppo/widget/OppoYearView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 720
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #setter for: Lcom/oppo/widget/OppoYearView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoYearView;->access$102(Lcom/oppo/widget/OppoYearView;Z)Z

    .line 721
    iput-boolean v3, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->IsEndFling:Z

    .line 722
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #setter for: Lcom/oppo/widget/OppoYearView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoYearView;->access$302(Lcom/oppo/widget/OppoYearView;I)I

    .line 723
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    iget-object v1, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/widget/OppoYearView;->access$500(Lcom/oppo/widget/OppoYearView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoYearView;->access$600(Lcom/oppo/widget/OppoYearView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoYearView;->access$600(Lcom/oppo/widget/OppoYearView;)I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/oppo/widget/OppoYearView;->mStartIndex:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoYearView;->access$502(Lcom/oppo/widget/OppoYearView;I)I

    .line 724
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoYearView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 727
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mFlingDerection:I
    invoke-static {v0}, Lcom/oppo/widget/OppoYearView;->access$200(Lcom/oppo/widget/OppoYearView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 729
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoYearView;->access$300(Lcom/oppo/widget/OppoYearView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x5

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoYearView;->access$300(Lcom/oppo/widget/OppoYearView;)I

    move-result v0

    if-ge v0, v2, :cond_5

    .line 731
    iput-boolean v4, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->IsEndFling:Z

    .line 732
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoYearView;->onDealActionMove(I)V

    .line 733
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoYearView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 735
    :cond_5
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoYearView;->access$300(Lcom/oppo/widget/OppoYearView;)I

    move-result v0

    if-lt v0, v2, :cond_6

    .line 737
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #setter for: Lcom/oppo/widget/OppoYearView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoYearView;->access$102(Lcom/oppo/widget/OppoYearView;Z)Z

    .line 738
    iput-boolean v3, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->IsEndFling:Z

    .line 739
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #setter for: Lcom/oppo/widget/OppoYearView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoYearView;->access$302(Lcom/oppo/widget/OppoYearView;I)I

    .line 740
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoYearView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 742
    :cond_6
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoYearView;->access$300(Lcom/oppo/widget/OppoYearView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x5

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoYearView;->access$300(Lcom/oppo/widget/OppoYearView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    .line 744
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #setter for: Lcom/oppo/widget/OppoYearView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoYearView;->access$102(Lcom/oppo/widget/OppoYearView;Z)Z

    .line 745
    iput-boolean v3, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->IsEndFling:Z

    .line 746
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    iget-object v1, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/widget/OppoYearView;->access$500(Lcom/oppo/widget/OppoYearView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoYearView;->access$600(Lcom/oppo/widget/OppoYearView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoYearView;->access$600(Lcom/oppo/widget/OppoYearView;)I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/oppo/widget/OppoYearView;->mStartIndex:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoYearView;->access$502(Lcom/oppo/widget/OppoYearView;I)I

    .line 747
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #setter for: Lcom/oppo/widget/OppoYearView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoYearView;->access$302(Lcom/oppo/widget/OppoYearView;I)I

    .line 748
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoYearView;->onDealActionUp(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x2a

    const/16 v6, -0x2a

    .line 756
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mIsStopRun:Z
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$700(Lcom/oppo/widget/OppoYearView;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 758
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    const/4 v6, 0x3

    #setter for: Lcom/oppo/widget/OppoYearView;->mDrawTpye:I
    invoke-static {v5, v6}, Lcom/oppo/widget/OppoYearView;->access$802(Lcom/oppo/widget/OppoYearView;I)I

    .line 759
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoYearView;->invalidate()V

    .line 760
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    iget-object v6, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mCurrentIndex:I
    invoke-static {v6}, Lcom/oppo/widget/OppoYearView;->access$1000(Lcom/oppo/widget/OppoYearView;)I

    move-result v6

    iget-object v7, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mStart:I
    invoke-static {v7}, Lcom/oppo/widget/OppoYearView;->access$1100(Lcom/oppo/widget/OppoYearView;)I

    move-result v7

    add-int/2addr v6, v7

    #setter for: Lcom/oppo/widget/OppoYearView;->mCurrentResult:I
    invoke-static {v5, v6}, Lcom/oppo/widget/OppoYearView;->access$902(Lcom/oppo/widget/OppoYearView;I)I

    .line 762
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #calls: Lcom/oppo/widget/OppoYearView;->notifyChange()V
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$1200(Lcom/oppo/widget/OppoYearView;)V

    .line 763
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    const/4 v6, 0x0

    #setter for: Lcom/oppo/widget/OppoYearView;->mIsStopRun:Z
    invoke-static {v5, v6}, Lcom/oppo/widget/OppoYearView;->access$702(Lcom/oppo/widget/OppoYearView;Z)Z

    .line 764
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->debug:Z
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$1300(Lcom/oppo/widget/OppoYearView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 766
    const-string v5, "OppoYearView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "run -- mCurrentIndex -- == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mCurrentIndex:I
    invoke-static {v7}, Lcom/oppo/widget/OppoYearView;->access$1000(Lcom/oppo/widget/OppoYearView;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_0
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    iget-object v6, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mCurrentIndex:I
    invoke-static {v6}, Lcom/oppo/widget/OppoYearView;->access$1000(Lcom/oppo/widget/OppoYearView;)I

    move-result v6

    #setter for: Lcom/oppo/widget/OppoYearView;->mStartIndex:I
    invoke-static {v5, v6}, Lcom/oppo/widget/OppoYearView;->access$502(Lcom/oppo/widget/OppoYearView;I)I

    .line 825
    :cond_1
    :goto_0
    return-void

    .line 772
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mIsFilling:Z
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$100(Lcom/oppo/widget/OppoYearView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 777
    iget-boolean v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->IsEndFling:Z

    if-eqz v5, :cond_3

    .line 779
    invoke-direct {p0}, Lcom/oppo/widget/OppoYearView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 783
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$000(Lcom/oppo/widget/OppoYearView;)Landroid/widget/Scroller;

    move-result-object v3

    .line 784
    .local v3, scroller:Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    .line 785
    .local v2, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 786
    .local v4, y:I
    iget v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->mLastFlingY:I

    sub-int v1, v5, v4

    .line 788
    .local v1, delta:I
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v5

    float-to-int v5, v5

    div-int v0, v1, v5

    .line 789
    .local v0, countdelta:I
    if-le v1, v7, :cond_6

    .line 791
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-le v5, v7, :cond_4

    .line 793
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, 0x2a

    .line 795
    :cond_4
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    const/16 v6, 0x1a

    if-ge v5, v6, :cond_5

    .line 797
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, 0x1a

    .line 811
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v5, v1}, Lcom/oppo/widget/OppoYearView;->onDealActionMove(I)V

    .line 815
    if-eqz v2, :cond_8

    .line 817
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoYearView;->invalidate()V

    .line 818
    iput v4, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->mLastFlingY:I

    .line 819
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v5, p0}, Lcom/oppo/widget/OppoYearView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 800
    :cond_6
    if-ge v1, v6, :cond_5

    .line 802
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-ge v5, v6, :cond_7

    .line 804
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, -0x2a

    .line 806
    :cond_7
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-gez v5, :cond_5

    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    const/16 v6, -0x1a

    if-le v5, v6, :cond_5

    .line 808
    iget-object v5, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoYearView;->access$400(Lcom/oppo/widget/OppoYearView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, -0x1a

    goto :goto_1

    .line 823
    :cond_8
    invoke-direct {p0}, Lcom/oppo/widget/OppoYearView$FlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 687
    if-gez p1, :cond_0

    move v2, v6

    .line 688
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->mLastFlingY:I

    .line 689
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    #getter for: Lcom/oppo/widget/OppoYearView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/oppo/widget/OppoYearView;->access$000(Lcom/oppo/widget/OppoYearView;)Landroid/widget/Scroller;

    move-result-object v0

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 691
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    const/4 v3, 0x1

    #setter for: Lcom/oppo/widget/OppoYearView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoYearView;->access$102(Lcom/oppo/widget/OppoYearView;Z)Z

    .line 692
    iput-boolean v1, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->IsEndFling:Z

    .line 693
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoYearView;->post(Ljava/lang/Runnable;)Z

    .line 694
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 687
    goto :goto_0
.end method
