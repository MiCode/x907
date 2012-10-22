.class Lcom/oppo/widget/OppoMonthView$FlingRunnable;
.super Ljava/lang/Object;
.source "OppoMonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private IsEndFling:Z

.field private mLastFlingY:I

.field final synthetic this$0:Lcom/oppo/widget/OppoMonthView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoMonthView;)V
    .locals 1
    .parameter

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 995
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->IsEndFling:Z

    .line 1003
    return-void
.end method

.method private endFling()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v2, -0x5

    const/4 v3, 0x0

    .line 1018
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoMonthView;->access$100(Lcom/oppo/widget/OppoMonthView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mFlingDerection:I
    invoke-static {v0}, Lcom/oppo/widget/OppoMonthView;->access$200(Lcom/oppo/widget/OppoMonthView;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1025
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoMonthView;->access$300(Lcom/oppo/widget/OppoMonthView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoMonthView;->access$300(Lcom/oppo/widget/OppoMonthView;)I

    move-result v0

    if-le v0, v5, :cond_2

    .line 1027
    iput-boolean v4, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->IsEndFling:Z

    .line 1028
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v0, v5}, Lcom/oppo/widget/OppoMonthView;->onDealActionMove(I)V

    .line 1029
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoMonthView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1031
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoMonthView;->access$300(Lcom/oppo/widget/OppoMonthView;)I

    move-result v0

    if-gt v0, v5, :cond_3

    .line 1033
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #setter for: Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoMonthView;->access$102(Lcom/oppo/widget/OppoMonthView;Z)Z

    .line 1034
    iput-boolean v3, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->IsEndFling:Z

    .line 1035
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #setter for: Lcom/oppo/widget/OppoMonthView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoMonthView;->access$302(Lcom/oppo/widget/OppoMonthView;I)I

    .line 1036
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoMonthView;->onDealActionUp(I)V

    goto :goto_0

    .line 1038
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoMonthView;->access$300(Lcom/oppo/widget/OppoMonthView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoMonthView;->access$300(Lcom/oppo/widget/OppoMonthView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #setter for: Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoMonthView;->access$102(Lcom/oppo/widget/OppoMonthView;Z)Z

    .line 1041
    iput-boolean v3, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->IsEndFling:Z

    .line 1042
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/widget/OppoMonthView;->access$500(Lcom/oppo/widget/OppoMonthView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoMonthView;->access$600(Lcom/oppo/widget/OppoMonthView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoMonthView;->access$600(Lcom/oppo/widget/OppoMonthView;)I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/oppo/widget/OppoMonthView;->mStartIndex:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoMonthView;->access$502(Lcom/oppo/widget/OppoMonthView;I)I

    .line 1043
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #setter for: Lcom/oppo/widget/OppoMonthView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoMonthView;->access$302(Lcom/oppo/widget/OppoMonthView;I)I

    .line 1044
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoMonthView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 1047
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mFlingDerection:I
    invoke-static {v0}, Lcom/oppo/widget/OppoMonthView;->access$200(Lcom/oppo/widget/OppoMonthView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoMonthView;->access$300(Lcom/oppo/widget/OppoMonthView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x5

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoMonthView;->access$300(Lcom/oppo/widget/OppoMonthView;)I

    move-result v0

    if-ge v0, v2, :cond_5

    .line 1051
    iput-boolean v4, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->IsEndFling:Z

    .line 1052
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoMonthView;->onDealActionMove(I)V

    .line 1053
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoMonthView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1055
    :cond_5
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoMonthView;->access$300(Lcom/oppo/widget/OppoMonthView;)I

    move-result v0

    if-lt v0, v2, :cond_6

    .line 1057
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #setter for: Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoMonthView;->access$102(Lcom/oppo/widget/OppoMonthView;Z)Z

    .line 1058
    iput-boolean v3, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->IsEndFling:Z

    .line 1059
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #setter for: Lcom/oppo/widget/OppoMonthView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoMonthView;->access$302(Lcom/oppo/widget/OppoMonthView;I)I

    .line 1060
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoMonthView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 1062
    :cond_6
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoMonthView;->access$300(Lcom/oppo/widget/OppoMonthView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x5

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoMonthView;->access$300(Lcom/oppo/widget/OppoMonthView;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v1}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #setter for: Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoMonthView;->access$102(Lcom/oppo/widget/OppoMonthView;Z)Z

    .line 1065
    iput-boolean v3, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->IsEndFling:Z

    .line 1066
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/widget/OppoMonthView;->access$500(Lcom/oppo/widget/OppoMonthView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoMonthView;->access$600(Lcom/oppo/widget/OppoMonthView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTotalCount:I
    invoke-static {v2}, Lcom/oppo/widget/OppoMonthView;->access$600(Lcom/oppo/widget/OppoMonthView;)I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/oppo/widget/OppoMonthView;->mStartIndex:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoMonthView;->access$502(Lcom/oppo/widget/OppoMonthView;I)I

    .line 1067
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #setter for: Lcom/oppo/widget/OppoMonthView;->mOffset:I
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoMonthView;->access$302(Lcom/oppo/widget/OppoMonthView;I)I

    .line 1068
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoMonthView;->onDealActionUp(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x2a

    const/16 v6, -0x2a

    .line 1075
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mIsStopRun:Z
    invoke-static {v5}, Lcom/oppo/widget/OppoMonthView;->access$700(Lcom/oppo/widget/OppoMonthView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1077
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    const/4 v6, 0x3

    #setter for: Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I
    invoke-static {v5, v6}, Lcom/oppo/widget/OppoMonthView;->access$802(Lcom/oppo/widget/OppoMonthView;I)I

    .line 1078
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoMonthView;->invalidate()V

    .line 1079
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #calls: Lcom/oppo/widget/OppoMonthView;->notifyChange()V
    invoke-static {v5}, Lcom/oppo/widget/OppoMonthView;->access$900(Lcom/oppo/widget/OppoMonthView;)V

    .line 1080
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I
    invoke-static {v6}, Lcom/oppo/widget/OppoMonthView;->access$1000(Lcom/oppo/widget/OppoMonthView;)I

    move-result v6

    #setter for: Lcom/oppo/widget/OppoMonthView;->mStartIndex:I
    invoke-static {v5, v6}, Lcom/oppo/widget/OppoMonthView;->access$502(Lcom/oppo/widget/OppoMonthView;I)I

    .line 1081
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    const/4 v6, 0x0

    #setter for: Lcom/oppo/widget/OppoMonthView;->mIsStopRun:Z
    invoke-static {v5, v6}, Lcom/oppo/widget/OppoMonthView;->access$702(Lcom/oppo/widget/OppoMonthView;Z)Z

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z
    invoke-static {v5}, Lcom/oppo/widget/OppoMonthView;->access$100(Lcom/oppo/widget/OppoMonthView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1090
    iget-boolean v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->IsEndFling:Z

    if-eqz v5, :cond_2

    .line 1092
    invoke-direct {p0}, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 1096
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v5}, Lcom/oppo/widget/OppoMonthView;->access$000(Lcom/oppo/widget/OppoMonthView;)Landroid/widget/Scroller;

    move-result-object v3

    .line 1097
    .local v3, scroller:Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    .line 1098
    .local v2, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1099
    .local v4, y:I
    iget v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->mLastFlingY:I

    sub-int v1, v5, v4

    .line 1101
    .local v1, delta:I
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v5

    float-to-int v5, v5

    div-int v0, v1, v5

    .line 1102
    .local v0, countdelta:I
    if-le v1, v7, :cond_5

    .line 1104
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-le v5, v7, :cond_3

    .line 1106
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, 0x2a

    .line 1109
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    const/16 v6, 0x1a

    if-ge v5, v6, :cond_4

    .line 1111
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, 0x1a

    .line 1127
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v5, v1}, Lcom/oppo/widget/OppoMonthView;->onDealActionMove(I)V

    .line 1129
    if-eqz v2, :cond_7

    .line 1131
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoMonthView;->invalidate()V

    .line 1132
    iput v4, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->mLastFlingY:I

    .line 1133
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v5, p0}, Lcom/oppo/widget/OppoMonthView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1114
    :cond_5
    if-ge v1, v6, :cond_4

    .line 1116
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-ge v5, v6, :cond_6

    .line 1118
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, -0x2a

    .line 1121
    :cond_6
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    if-gez v5, :cond_4

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v5

    float-to-int v5, v5

    rem-int v5, v1, v5

    const/16 v6, -0x1a

    if-le v5, v6, :cond_4

    .line 1123
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mTextHeight:F
    invoke-static {v5}, Lcom/oppo/widget/OppoMonthView;->access$400(Lcom/oppo/widget/OppoMonthView;)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v0

    add-int/lit8 v1, v5, -0x1a

    goto :goto_1

    .line 1137
    :cond_7
    invoke-direct {p0}, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 1007
    if-gez p1, :cond_0

    move v2, v6

    .line 1008
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->mLastFlingY:I

    .line 1009
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    #getter for: Lcom/oppo/widget/OppoMonthView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/oppo/widget/OppoMonthView;->access$000(Lcom/oppo/widget/OppoMonthView;)Landroid/widget/Scroller;

    move-result-object v0

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1011
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    const/4 v3, 0x1

    #setter for: Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z
    invoke-static {v0, v3}, Lcom/oppo/widget/OppoMonthView;->access$102(Lcom/oppo/widget/OppoMonthView;Z)Z

    .line 1012
    iput-boolean v1, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->IsEndFling:Z

    .line 1013
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->this$0:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoMonthView;->post(Ljava/lang/Runnable;)Z

    .line 1014
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 1007
    goto :goto_0
.end method
