.class Lcom/oppo/widget/OppoListView$PerformMoveCheck;
.super Ljava/lang/Object;
.source "OppoListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformMoveCheck"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoListView;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/oppo/widget/OppoListView$PerformMoveCheck;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoListView;Lcom/oppo/widget/OppoListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1166
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoListView$PerformMoveCheck;-><init>(Lcom/oppo/widget/OppoListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1168
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$PerformMoveCheck;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoListView;->getScrollY()I

    move-result v0

    .line 1171
    .local v0, scrollY:I
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$PerformMoveCheck;->this$0:Lcom/oppo/widget/OppoListView;

    #getter for: Lcom/oppo/widget/OppoListView;->mLastScrollY:I
    invoke-static {v1}, Lcom/oppo/widget/OppoListView;->access$400(Lcom/oppo/widget/OppoListView;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$PerformMoveCheck;->this$0:Lcom/oppo/widget/OppoListView;

    const/4 v2, 0x1

    #setter for: Lcom/oppo/widget/OppoListView;->mMovePaused:Z
    invoke-static {v1, v2}, Lcom/oppo/widget/OppoListView;->access$502(Lcom/oppo/widget/OppoListView;Z)Z

    .line 1173
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$PerformMoveCheck;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoListView;->invalidate()V

    .line 1176
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$PerformMoveCheck;->this$0:Lcom/oppo/widget/OppoListView;

    #setter for: Lcom/oppo/widget/OppoListView;->mLastScrollY:I
    invoke-static {v1, v0}, Lcom/oppo/widget/OppoListView;->access$402(Lcom/oppo/widget/OppoListView;I)I

    .line 1177
    return-void
.end method
