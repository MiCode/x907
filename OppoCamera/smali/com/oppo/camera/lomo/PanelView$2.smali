.class Lcom/oppo/camera/lomo/PanelView$2;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/PanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/PanelView;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/PanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 790
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$1708(Lcom/oppo/camera/lomo/PanelView;)I

    .line 792
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mCurrClickAnimStep:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$1700(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mClickAnimStep:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/PanelView;->access$1800(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 793
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$800(Lcom/oppo/camera/lomo/PanelView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 794
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$800(Lcom/oppo/camera/lomo/PanelView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 823
    :goto_0
    return-void

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mDrawTpye:I
    invoke-static {v0, v2}, Lcom/oppo/camera/lomo/PanelView;->access$702(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 798
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mCurrClickAnimStep:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$1700(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mClickAnimStep:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/PanelView;->access$1800(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 799
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mDrawTpye:I
    invoke-static {v0, v3}, Lcom/oppo/camera/lomo/PanelView;->access$702(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$1100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 802
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/PanelView;->access$100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mClickAnimPerStep:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/PanelView;->access$1900(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/PanelView;->access$102(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 803
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_3

    .line 804
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0, v4}, Lcom/oppo/camera/lomo/PanelView;->access$102(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 805
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$410(Lcom/oppo/camera/lomo/PanelView;)I

    .line 806
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$400(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    if-gez v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    const/4 v1, 0x4

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/PanelView;->access$402(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/PanelView;->access$400(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v1

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mCurrItemNum:I
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/PanelView;->access$2002(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 819
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$800(Lcom/oppo/camera/lomo/PanelView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 820
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/PanelView;->postInvalidate()V

    goto :goto_0

    .line 811
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mFlingDerection:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$1100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 812
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/PanelView;->access$100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mClickAnimPerStep:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/PanelView;->access$1900(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v2

    sub-int/2addr v1, v2

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/PanelView;->access$102(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 813
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$100(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v0

    const/16 v1, -0x1e

    if-ne v0, v1, :cond_3

    .line 814
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0, v4}, Lcom/oppo/camera/lomo/PanelView;->access$102(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 815
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/PanelView;->access$400(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x5

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/PanelView;->access$402(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 816
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView$2;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/PanelView;->access$400(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v1

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mCurrItemNum:I
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/PanelView;->access$2002(Lcom/oppo/camera/lomo/PanelView;I)I

    goto :goto_1
.end method
