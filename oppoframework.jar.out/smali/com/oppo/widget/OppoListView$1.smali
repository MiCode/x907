.class Lcom/oppo/widget/OppoListView$1;
.super Lcom/oppo/widget/OppoListView$AccelerationListener;
.source "OppoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoListView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoListView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoListView$AccelerationListener;-><init>(Lcom/oppo/widget/OppoListView;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAccelerationChanged(I)V
    .locals 4
    .parameter "acceleration"

    .prologue
    const/4 v2, 0x1

    .line 197
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoListView;->getCollapsEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    #getter for: Lcom/oppo/widget/OppoListView;->mCollapsStep:I
    invoke-static {v1}, Lcom/oppo/widget/OppoListView;->access$100(Lcom/oppo/widget/OppoListView;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 198
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    #calls: Lcom/oppo/widget/OppoListView;->getCollapsStatus()Z
    invoke-static {v1}, Lcom/oppo/widget/OppoListView;->access$200(Lcom/oppo/widget/OppoListView;)Z

    move-result v0

    .line 199
    .local v0, collapsStatus:Z
    iget-object v3, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    #calls: Lcom/oppo/widget/OppoListView;->setCollapsStatus(Z)V
    invoke-static {v3, v1}, Lcom/oppo/widget/OppoListView;->access$300(Lcom/oppo/widget/OppoListView;Z)V

    .line 200
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    #setter for: Lcom/oppo/widget/OppoListView;->mCollapsStep:I
    invoke-static {v1, v2}, Lcom/oppo/widget/OppoListView;->access$102(Lcom/oppo/widget/OppoListView;I)I

    .line 201
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoListView;->requestLayout()V

    .line 203
    .end local v0           #collapsStatus:Z
    :cond_0
    return-void

    .line 199
    .restart local v0       #collapsStatus:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
