.class Lcom/oppo/camera/setting/IconsPanelController$4;
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
    .line 377
    iput-object p1, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/high16 v9, 0x4190

    const/4 v8, 0x0

    const/high16 v5, -0x3da8

    const/4 v7, 0x1

    const/4 v6, 0x5

    .line 382
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mCameraWheelMenu:Lcom/oppo/camera/setting/CameraSettingsMenu;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$700(Lcom/oppo/camera/setting/IconsPanelController;)Lcom/oppo/camera/setting/CameraSettingsMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/setting/CameraSettingsMenu;->isExpand()Z

    move-result v3

    if-nez v3, :cond_0

    .line 383
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$800(Lcom/oppo/camera/setting/IconsPanelController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mIsMoveUpTrigger:Z
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$900(Lcom/oppo/camera/setting/IconsPanelController;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 388
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mWheelHeadDegree:F
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1000(Lcom/oppo/camera/setting/IconsPanelController;)F

    move-result v3

    cmpg-float v3, v3, v8

    if-gez v3, :cond_5

    .line 389
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #setter for: Lcom/oppo/camera/setting/IconsPanelController;->isRunning:Z
    invoke-static {v3, v7}, Lcom/oppo/camera/setting/IconsPanelController;->access$1102(Lcom/oppo/camera/setting/IconsPanelController;Z)Z

    .line 390
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    invoke-static {v3, v9}, Lcom/oppo/camera/setting/IconsPanelController;->access$1016(Lcom/oppo/camera/setting/IconsPanelController;F)F

    .line 392
    const/4 v0, -0x2

    .local v0, i:I
    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_4

    .line 393
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    iget-object v4, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

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

    .line 394
    .local v1, iconPosition:Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$500(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    add-int v2, v3, v0

    .line 395
    .local v2, index:I
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getFirstItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1300(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    sub-int v3, v2, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 396
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getLastItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1400(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v2

    .line 402
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1500(Lcom/oppo/camera/setting/IconsPanelController;)Lcom/oppo/camera/setting/IconsPanelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/setting/IconsPanelView;->getIconPositionsList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 397
    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getFirstItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1300(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    sub-int v3, v2, v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3

    .line 398
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getLastItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1400(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_2

    .line 399
    :cond_3
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getLastItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1400(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 400
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getFirstItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1300(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v2

    goto :goto_2

    .line 405
    .end local v1           #iconPosition:Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    .end local v2           #index:I
    :cond_4
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$800(Lcom/oppo/camera/setting/IconsPanelController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 446
    .end local v0           #i:I
    :goto_3
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1500(Lcom/oppo/camera/setting/IconsPanelController;)Lcom/oppo/camera/setting/IconsPanelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/setting/IconsPanelView;->refresh()V

    goto/16 :goto_0

    .line 407
    :cond_5
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #setter for: Lcom/oppo/camera/setting/IconsPanelController;->mWheelHeadDegree:F
    invoke-static {v3, v5}, Lcom/oppo/camera/setting/IconsPanelController;->access$1002(Lcom/oppo/camera/setting/IconsPanelController;F)F

    .line 408
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$510(Lcom/oppo/camera/setting/IconsPanelController;)I

    .line 409
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$500(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getFirstItem()I
    invoke-static {v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$1300(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 410
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    iget-object v4, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getLastItem()I
    invoke-static {v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$1400(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v4

    #setter for: Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I
    invoke-static {v3, v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$502(Lcom/oppo/camera/setting/IconsPanelController;I)I

    .line 412
    :cond_6
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$800(Lcom/oppo/camera/setting/IconsPanelController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 413
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$800(Lcom/oppo/camera/setting/IconsPanelController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 414
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    const/4 v4, 0x0

    #setter for: Lcom/oppo/camera/setting/IconsPanelController;->isRunning:Z
    invoke-static {v3, v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$1102(Lcom/oppo/camera/setting/IconsPanelController;Z)Z

    goto :goto_3

    .line 418
    :cond_7
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mWheelHeadDegree:F
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1000(Lcom/oppo/camera/setting/IconsPanelController;)F

    move-result v3

    const/high16 v4, 0x42d8

    add-float/2addr v3, v4

    cmpl-float v3, v3, v8

    if-lez v3, :cond_c

    .line 419
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #setter for: Lcom/oppo/camera/setting/IconsPanelController;->isRunning:Z
    invoke-static {v3, v7}, Lcom/oppo/camera/setting/IconsPanelController;->access$1102(Lcom/oppo/camera/setting/IconsPanelController;Z)Z

    .line 420
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    invoke-static {v3, v9}, Lcom/oppo/camera/setting/IconsPanelController;->access$1024(Lcom/oppo/camera/setting/IconsPanelController;F)F

    .line 422
    const/4 v0, -0x1

    .restart local v0       #i:I
    :goto_4
    const/4 v3, 0x3

    if-ge v0, v3, :cond_b

    .line 423
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    iget-object v4, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

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

    .line 424
    .restart local v1       #iconPosition:Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$500(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    add-int v2, v3, v0

    .line 425
    .restart local v2       #index:I
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getLastItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1400(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    sub-int v3, v2, v3

    if-ne v3, v7, :cond_9

    .line 426
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getFirstItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1300(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v2

    .line 432
    :cond_8
    :goto_5
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1500(Lcom/oppo/camera/setting/IconsPanelController;)Lcom/oppo/camera/setting/IconsPanelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/setting/IconsPanelView;->getIconPositionsList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 427
    :cond_9
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getLastItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1400(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    sub-int v3, v2, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    .line 428
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getFirstItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1300(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    goto :goto_5

    .line 429
    :cond_a
    if-gez v2, :cond_8

    .line 430
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getLastItem()I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$1400(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v2

    goto :goto_5

    .line 434
    .end local v1           #iconPosition:Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    .end local v2           #index:I
    :cond_b
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$800(Lcom/oppo/camera/setting/IconsPanelController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 436
    .end local v0           #i:I
    :cond_c
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$508(Lcom/oppo/camera/setting/IconsPanelController;)I

    .line 437
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #setter for: Lcom/oppo/camera/setting/IconsPanelController;->mWheelHeadDegree:F
    invoke-static {v3, v5}, Lcom/oppo/camera/setting/IconsPanelController;->access$1002(Lcom/oppo/camera/setting/IconsPanelController;F)F

    .line 438
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$500(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getLastItem()I
    invoke-static {v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$1400(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v4

    if-le v3, v4, :cond_d

    .line 439
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    iget-object v4, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #calls: Lcom/oppo/camera/setting/IconsPanelController;->getFirstItem()I
    invoke-static {v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$1300(Lcom/oppo/camera/setting/IconsPanelController;)I

    move-result v4

    #setter for: Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I
    invoke-static {v3, v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$502(Lcom/oppo/camera/setting/IconsPanelController;I)I

    .line 441
    :cond_d
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    const/4 v4, 0x0

    #setter for: Lcom/oppo/camera/setting/IconsPanelController;->isRunning:Z
    invoke-static {v3, v4}, Lcom/oppo/camera/setting/IconsPanelController;->access$1102(Lcom/oppo/camera/setting/IconsPanelController;Z)Z

    .line 442
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$800(Lcom/oppo/camera/setting/IconsPanelController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 443
    iget-object v3, p0, Lcom/oppo/camera/setting/IconsPanelController$4;->this$0:Lcom/oppo/camera/setting/IconsPanelController;

    #getter for: Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/setting/IconsPanelController;->access$800(Lcom/oppo/camera/setting/IconsPanelController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_3
.end method
