.class Lcom/oppo/widget/OppoListView$ScaleGestureListener;
.super Ljava/lang/Object;
.source "OppoListView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoListView;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1548
    iput-object p1, p0, Lcom/oppo/widget/OppoListView$ScaleGestureListener;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoListView;Lcom/oppo/widget/OppoListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1548
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoListView$ScaleGestureListener;-><init>(Lcom/oppo/widget/OppoListView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/oppo/widget/OppoListView$ScaleGestureListener;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    #setter for: Lcom/oppo/widget/OppoListView;->mScale:F
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoListView;->access$702(Lcom/oppo/widget/OppoListView;F)F

    .line 1551
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/oppo/widget/OppoListView$ScaleGestureListener;->this$0:Lcom/oppo/widget/OppoListView;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/widget/OppoListView;->mScale:F
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoListView;->access$702(Lcom/oppo/widget/OppoListView;F)F

    .line 1556
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "detector"

    .prologue
    const/4 v3, 0x0

    .line 1560
    const/4 v0, 0x0

    .line 1561
    .local v0, collapsStatus:Z
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$ScaleGestureListener;->this$0:Lcom/oppo/widget/OppoListView;

    #getter for: Lcom/oppo/widget/OppoListView;->mScale:F
    invoke-static {v1}, Lcom/oppo/widget/OppoListView;->access$700(Lcom/oppo/widget/OppoListView;)F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1562
    const/4 v0, 0x0

    .line 1567
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$ScaleGestureListener;->this$0:Lcom/oppo/widget/OppoListView;

    #getter for: Lcom/oppo/widget/OppoListView;->mScale:F
    invoke-static {v1}, Lcom/oppo/widget/OppoListView;->access$700(Lcom/oppo/widget/OppoListView;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoListView$ScaleGestureListener;->this$0:Lcom/oppo/widget/OppoListView;

    #calls: Lcom/oppo/widget/OppoListView;->getCollapsStatus()Z
    invoke-static {v1}, Lcom/oppo/widget/OppoListView;->access$200(Lcom/oppo/widget/OppoListView;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1568
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$ScaleGestureListener;->this$0:Lcom/oppo/widget/OppoListView;

    #calls: Lcom/oppo/widget/OppoListView;->setCollapsStatus(Z)V
    invoke-static {v1, v0}, Lcom/oppo/widget/OppoListView;->access$300(Lcom/oppo/widget/OppoListView;Z)V

    .line 1569
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$ScaleGestureListener;->this$0:Lcom/oppo/widget/OppoListView;

    const/4 v2, 0x1

    #setter for: Lcom/oppo/widget/OppoListView;->mCollapsStep:I
    invoke-static {v1, v2}, Lcom/oppo/widget/OppoListView;->access$102(Lcom/oppo/widget/OppoListView;I)I

    .line 1570
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$ScaleGestureListener;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoListView;->requestLayout()V

    .line 1572
    :cond_1
    return-void

    .line 1563
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$ScaleGestureListener;->this$0:Lcom/oppo/widget/OppoListView;

    #getter for: Lcom/oppo/widget/OppoListView;->mScale:F
    invoke-static {v1}, Lcom/oppo/widget/OppoListView;->access$700(Lcom/oppo/widget/OppoListView;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 1564
    const/4 v0, 0x1

    goto :goto_0
.end method
