.class Lcom/oppo/camera/lomo/PanelView$FlingRunnable;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/PanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private IsEndFling:Z

.field private mLastFlingY:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/oppo/camera/lomo/PanelView;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/lomo/PanelView;)V
    .locals 3
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 597
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->IsEndFling:Z

    .line 605
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    .line 606
    .local v0, interpolator:Landroid/view/animation/Interpolator;
    new-instance v1, Landroid/widget/Scroller;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/oppo/camera/lomo/PanelView;->access$900(Lcom/oppo/camera/lomo/PanelView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 607
    return-void
.end method

.method private endFling()V
    .locals 6

    .prologue
    const/16 v1, 0x19

    const/4 v5, -0x5

    const/16 v4, -0x19

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 620
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$1000(Lcom/oppo/camera/lomo/PanelView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$1100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 624
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    if-le v0, v2, :cond_2

    .line 625
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->IsEndFling:Z

    .line 626
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    const/high16 v1, 0x40a0

    iget-object v2, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mPixelToDegree:F
    invoke-static {v2}, Lcom/oppo/camera/lomo/PanelView;->access$1200(Lcom/oppo/camera/lomo/PanelView;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    #calls: Lcom/oppo/camera/lomo/PanelView;->onDealActionMove(I)V
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/PanelView;->access$1300(Lcom/oppo/camera/lomo/PanelView;I)V

    .line 627
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/lomo/PanelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 629
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/camera/lomo/PanelView;->access$1002(Lcom/oppo/camera/lomo/PanelView;Z)Z

    .line 630
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->IsEndFling:Z

    .line 631
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/camera/lomo/PanelView;->access$102(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 632
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #calls: Lcom/oppo/camera/lomo/PanelView;->onDealActionUp(I)V
    invoke-static {v0, v3}, Lcom/oppo/camera/lomo/PanelView;->access$1400(Lcom/oppo/camera/lomo/PanelView;I)V

    goto :goto_0

    .line 633
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    .line 635
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/camera/lomo/PanelView;->access$1002(Lcom/oppo/camera/lomo/PanelView;Z)Z

    .line 636
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->IsEndFling:Z

    .line 637
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/camera/lomo/PanelView;->access$102(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 638
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/PanelView;->access$400(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/PanelView;->access$1500(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/PanelView;->access$1500(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/PanelView;->access$402(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 639
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #calls: Lcom/oppo/camera/lomo/PanelView;->onDealActionUp(I)V
    invoke-static {v0, v3}, Lcom/oppo/camera/lomo/PanelView;->access$1400(Lcom/oppo/camera/lomo/PanelView;I)V

    goto/16 :goto_0

    .line 643
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$1100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 644
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    if-le v0, v4, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    if-ge v0, v5, :cond_5

    .line 646
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->IsEndFling:Z

    .line 647
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    const/high16 v1, -0x3f60

    iget-object v2, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mPixelToDegree:F
    invoke-static {v2}, Lcom/oppo/camera/lomo/PanelView;->access$1200(Lcom/oppo/camera/lomo/PanelView;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    #calls: Lcom/oppo/camera/lomo/PanelView;->onDealActionMove(I)V
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/PanelView;->access$1300(Lcom/oppo/camera/lomo/PanelView;I)V

    .line 648
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/lomo/PanelView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 649
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    if-lt v0, v5, :cond_6

    .line 650
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/camera/lomo/PanelView;->access$1002(Lcom/oppo/camera/lomo/PanelView;Z)Z

    .line 651
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->IsEndFling:Z

    .line 652
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/camera/lomo/PanelView;->access$102(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 653
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #calls: Lcom/oppo/camera/lomo/PanelView;->onDealActionUp(I)V
    invoke-static {v0, v3}, Lcom/oppo/camera/lomo/PanelView;->access$1400(Lcom/oppo/camera/lomo/PanelView;I)V

    goto/16 :goto_0

    .line 654
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    if-gt v0, v4, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    const/16 v1, -0x1d

    if-lt v0, v1, :cond_0

    .line 656
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/camera/lomo/PanelView;->access$1002(Lcom/oppo/camera/lomo/PanelView;Z)Z

    .line 657
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->IsEndFling:Z

    .line 658
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/PanelView;->access$400(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/PanelView;->access$1500(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/PanelView;->access$1500(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/PanelView;->access$402(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 659
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/camera/lomo/PanelView;->access$102(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 660
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #calls: Lcom/oppo/camera/lomo/PanelView;->onDealActionUp(I)V
    invoke-static {v0, v3}, Lcom/oppo/camera/lomo/PanelView;->access$1400(Lcom/oppo/camera/lomo/PanelView;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0xc8

    .line 667
    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mIsStopRun:Z
    invoke-static {v4}, Lcom/oppo/camera/lomo/PanelView;->access$1600(Lcom/oppo/camera/lomo/PanelView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 668
    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    const/4 v5, 0x2

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mDrawTpye:I
    invoke-static {v4, v5}, Lcom/oppo/camera/lomo/PanelView;->access$702(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 669
    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    invoke-virtual {v4}, Lcom/oppo/camera/lomo/PanelView;->postInvalidate()V

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z
    invoke-static {v4}, Lcom/oppo/camera/lomo/PanelView;->access$1000(Lcom/oppo/camera/lomo/PanelView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 676
    iget-boolean v4, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->IsEndFling:Z

    if-eqz v4, :cond_2

    .line 677
    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;
    invoke-static {v4}, Lcom/oppo/camera/lomo/PanelView;->access$500(Lcom/oppo/camera/lomo/PanelView;)Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;->OnAnimationStart(I)V

    .line 678
    invoke-direct {p0}, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 681
    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 683
    .local v2, scroller:Landroid/widget/Scroller;
    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 684
    .local v1, more:Z
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 685
    .local v3, y:I
    iget v4, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->mLastFlingY:I

    sub-int v0, v4, v3

    .line 686
    .local v0, delta:I
    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #calls: Lcom/oppo/camera/lomo/PanelView;->onDealActionMove(I)V
    invoke-static {v4, v0}, Lcom/oppo/camera/lomo/PanelView;->access$1300(Lcom/oppo/camera/lomo/PanelView;I)V

    .line 687
    if-eqz v1, :cond_3

    .line 688
    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    invoke-virtual {v4}, Lcom/oppo/camera/lomo/PanelView;->postInvalidate()V

    .line 689
    iput v3, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->mLastFlingY:I

    .line 690
    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    invoke-virtual {v4, p0}, Lcom/oppo/camera/lomo/PanelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 692
    :cond_3
    iget-object v4, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;
    invoke-static {v4}, Lcom/oppo/camera/lomo/PanelView;->access$500(Lcom/oppo/camera/lomo/PanelView;)Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;->OnAnimationStart(I)V

    .line 693
    invoke-direct {p0}, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->endFling()V

    goto :goto_0
.end method

.method public start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 610
    if-gez p1, :cond_0

    move v2, v6

    .line 611
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->mLastFlingY:I

    .line 612
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 614
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    const/4 v3, 0x1

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/camera/lomo/PanelView;->access$1002(Lcom/oppo/camera/lomo/PanelView;Z)Z

    .line 615
    iput-boolean v1, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->IsEndFling:Z

    .line 616
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$FlingRunnable;->this$0:Lcom/oppo/camera/lomo/PanelView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/lomo/PanelView;->post(Ljava/lang/Runnable;)Z

    .line 617
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 610
    goto :goto_0
.end method
