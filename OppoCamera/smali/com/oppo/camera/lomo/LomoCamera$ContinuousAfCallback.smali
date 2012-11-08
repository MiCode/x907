.class final Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$ContinuousAfCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContinuousAfCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCamera;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2665
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2665
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    return-void
.end method


# virtual methods
.method public onContinuousAf(ILandroid/hardware/Camera;)V
    .locals 5
    .parameter "cafState"
    .parameter "camera"

    .prologue
    const/16 v4, 0x8

    .line 2667
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$5200(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/BurstHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/lomo/BurstHandler;->getmIsImageReviewerShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2708
    :cond_0
    :goto_0
    return-void

    .line 2670
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2672
    :pswitch_0
    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera;->OFF:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mContinuousAfState:Ljava/lang/String;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$2000(Lcom/oppo/camera/lomo/LomoCamera;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2673
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$6900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    move-result-object v1

    sget-object v2, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->AF:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    if-ne v1, v2, :cond_0

    .line 2674
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    sget-object v2, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->FINISH:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;
    invoke-static {v1, v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$6902(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$FocusState;)Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    .line 2675
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->turnOnContiniousAF()V
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$3300(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 2680
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$800(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2681
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    move-result-object v1

    sget-object v2, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v1, v2, :cond_3

    .line 2682
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$800(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/os/Handler;

    move-result-object v3

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mDoSnapAfterFocusComplete:Z
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$11600(Lcom/oppo/camera/lomo/LomoCamera;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x3e8

    :goto_1
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2684
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mIsTouchAf:Z
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$8600(Lcom/oppo/camera/lomo/LomoCamera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2687
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    sget-object v2, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->CAF:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;
    invoke-static {v1, v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$6902(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$FocusState;)Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    .line 2688
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$7700(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/views/FocusSurfaceView;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0xf0

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/views/FocusSurfaceView;->setPosition(II)V

    goto :goto_0

    .line 2682
    :cond_4
    const-wide/16 v1, 0xfa0

    goto :goto_1

    .line 2692
    :pswitch_1
    const/4 v0, 0x0

    .line 2693
    .local v0, focused:Z
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 2694
    const/4 v0, 0x1

    .line 2697
    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mIsTouchAf:Z
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$8600(Lcom/oppo/camera/lomo/LomoCamera;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2698
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    const/4 v2, 0x0

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mIsTouchAf:Z
    invoke-static {v1, v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$8602(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    .line 2699
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->playFocusSound(Z)V
    invoke-static {v1, v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$11700(Lcom/oppo/camera/lomo/LomoCamera;Z)V

    .line 2701
    :cond_6
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$6900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    move-result-object v1

    sget-object v2, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->CAF:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    if-ne v1, v2, :cond_7

    .line 2702
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->playFocusSound(Z)V
    invoke-static {v1, v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$11700(Lcom/oppo/camera/lomo/LomoCamera;Z)V

    .line 2704
    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->doSnapAfterFocusFinished()V
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$7000(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 2705
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    sget-object v2, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->FINISH:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;
    invoke-static {v1, v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$6902(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$FocusState;)Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    goto/16 :goto_0

    .line 2670
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
