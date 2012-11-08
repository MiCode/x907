.class Lcom/oppo/camera/setting/IconsPanelController$5;
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
    .line 457
    iput-object p1, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 461
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mWheelHeadDegree:F
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1000(Lcom/oppo/camera/setting/IconsPanelController;)F

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mToDegree:F
    invoke-static {v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$1600(Lcom/oppo/camera/setting/IconsPanelController;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 462
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    const/high16 v4, 0x4190

    invoke-static {v3, v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$1024(Lcom/oppo/camera/setting/IconsPanelController;F)F

    .line 463
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #setter for: Lcom/oppo/camera/setting/IconsPanelController;->isRunning:Z
    invoke-static {v3, v6}, Lcom/oppo/camera/setting/IconsPanelController;->access$1102(Lcom/oppo/camera/setting/IconsPanelController;Z)Z

    .line 464
    const/4 v0, -0x1

    .local v0, i:I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    .line 465
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    iget-object v4, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

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

    .line 466
    .local v1, iconPosition:Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$500(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    add-int v2, v3, v0

    .line 467
    .local v2, index:I
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getFirstItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1300(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 468
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getLastItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1400(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v2

    .line 472
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1500(Lcom/oppo/camera/setting/IconsPanelController;)Lcom/oppo/camera/setting/IconsPanelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/setting/IconsPanelView;->getIconPositionsList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getLastItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1400(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 470
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getFirstItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1300(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v2

    goto :goto_1

    .line 474
    .end local v1           #iconPosition:Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    .end local v2           #index:I
    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$800(Lcom/oppo/camera/setting/IconsPanelController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 480
    .end local v0           #i:I
    :goto_2
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1500(Lcom/oppo/camera/setting/IconsPanelController;)Lcom/oppo/camera/setting/IconsPanelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/setting/IconsPanelView;->refresh()V

    .line 481
    return-void

    .line 476
    :cond_3
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    const/4 v4, 0x0

    #setter for: Lcom/oppo/camera/setting/IconsPanelController;->isRunning:Z
    invoke-static {v3, v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$1102(Lcom/oppo/camera/setting/IconsPanelController;Z)Z

    .line 477
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$800(Lcom/oppo/camera/setting/IconsPanelController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 478
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$5;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$800(Lcom/oppo/camera/setting/IconsPanelController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method
