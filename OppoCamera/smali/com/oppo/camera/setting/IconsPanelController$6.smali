.class Lcom/oppo/camera/setting/IconsPanelController$6;
.super Ljava/lang/Object;
.source "IconsPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/setting/IconsPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/setting/IconsPanelController;


# direct methods
.method constructor <init>(Lcom/oppo/camera/setting/IconsPanelController;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 494
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mWheelHeadDegree:F
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1000(Lcom/oppo/camera/setting/IconsPanelController;)F

    move-result v3

    const/high16 v4, 0x42d8

    add-float/2addr v3, v4

    const/high16 v4, -0x3d4c

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 495
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    const/high16 v4, 0x4190

    invoke-static {v3, v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$1024(Lcom/oppo/camera/setting/IconsPanelController;F)F

    .line 496
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    const/4 v4, 0x1

    #setter for: Lcom/oppo/camera/setting/IconsPanelController;->isRunning:Z
    invoke-static {v3, v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$1102(Lcom/oppo/camera/setting/IconsPanelController;Z)Z

    .line 498
    const/4 v0, -0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_2

    .line 499
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    iget-object v4, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mWheelHeadDegree:F
    invoke-static {v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$1000(Lcom/oppo/camera/setting/IconsPanelController;)F

    move-result v4

    add-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x36

    int-to-float v5, v5

    add-float/2addr v4, v5

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->searchPosition(F)Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    invoke-static {v3, v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$1200(Lcom/oppo/camera/setting/IconsPanelController;F)Lcom/oppo/camera/setting/IconsPanelController$IconPosition;

    move-result-object v1

    .line 500
    .local v1, iconPosition:Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$500(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    add-int v2, v3, v0

    .line 501
    .local v2, index:I
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getFirstItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1300(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 502
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getLastItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1400(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v2

    .line 506
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1500(Lcom/oppo/camera/setting/IconsPanelController;)Lcom/oppo/camera/setting/IconsPanelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/setting/IconsPanelView;->getIconPositionsList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getLastItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1400(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 504
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getFirstItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1300(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v2

    goto :goto_1

    .line 509
    .end local v1           #iconPosition:Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    .end local v2           #index:I
    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1500(Lcom/oppo/camera/setting/IconsPanelController;)Lcom/oppo/camera/setting/IconsPanelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/setting/IconsPanelView;->refresh()V

    .line 510
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$800(Lcom/oppo/camera/setting/IconsPanelController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 517
    .end local v0           #i:I
    :goto_2
    return-void

    .line 512
    :cond_3
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    const/4 v4, 0x0

    #setter for: Lcom/oppo/camera/setting/IconsPanelController;->isRunning:Z
    invoke-static {v3, v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$1102(Lcom/oppo/camera/setting/IconsPanelController;Z)Z

    .line 513
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->resetIconPosition()V
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1700(Lcom/oppo/camera/setting/IconsPanelController;)V

    .line 514
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$800(Lcom/oppo/camera/setting/IconsPanelController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 515
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$6;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$800(Lcom/oppo/camera/setting/IconsPanelController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
