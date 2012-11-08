.class final Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$ContinuousAfCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContinuousAfCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2718
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/OppoCamera;Lcom/oppo/camera/OppoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2718
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;-><init>(Lcom/oppo/camera/OppoCamera;)V

    return-void
.end method


# virtual methods
.method public onContinuousAf(ILandroid/hardware/Camera;)V
    .locals 6
    .parameter "cafState"
    .parameter "camera"

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2720
    packed-switch p1, :pswitch_data_0

    .line 2758
    :cond_0
    :goto_0
    return-void

    .line 2722
    :pswitch_0
    const-string v1, "OppoCamera"

    const-string v2, "Focuse state = start"

    invoke-static {v1, v2, v3}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2723
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->removeMsg(I)V
    invoke-static {v1, v5}, Lcom/oppo/camera/OppoCamera;->access$2600(Lcom/oppo/camera/OppoCamera;I)V

    .line 2724
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$2700(Lcom/oppo/camera/OppoCamera;)Landroid/os/Handler;

    move-result-object v3

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mDoSnapAfterFocusComplete:Z
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$8600(Lcom/oppo/camera/OppoCamera;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0xbb8

    :goto_1
    invoke-virtual {v3, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2725
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mIsTouchAf:Z
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$8700(Lcom/oppo/camera/OppoCamera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2728
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mFocusState:I
    invoke-static {v1, v4}, Lcom/oppo/camera/OppoCamera;->access$6902(Lcom/oppo/camera/OppoCamera;I)I

    .line 2729
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$8800(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/views/FocusView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/views/FocusView;->isFocusing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2730
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->clearFocusView()V
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$8100(Lcom/oppo/camera/OppoCamera;)V

    .line 2731
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$8800(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/views/FocusView;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0xf0

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/views/FocusView;->setPosition(II)V

    .line 2732
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$8800(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/views/FocusView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/views/FocusView;->showStart()V

    goto :goto_0

    .line 2724
    :cond_1
    const-wide/16 v1, 0xfa0

    goto :goto_1

    .line 2738
    :pswitch_1
    const/4 v0, 0x0

    .line 2739
    .local v0, focused:Z
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 2740
    const/4 v0, 0x1

    .line 2741
    const-string v1, "OppoCamera"

    const-string v2, "Focuse state = success"

    invoke-static {v1, v2, v3}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2745
    :goto_2
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mIsTouchAf:Z
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$8700(Lcom/oppo/camera/OppoCamera;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2746
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mIsTouchAf:Z
    invoke-static {v1, v3}, Lcom/oppo/camera/OppoCamera;->access$8702(Lcom/oppo/camera/OppoCamera;Z)Z

    .line 2747
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->playFocusSound(Z)V
    invoke-static {v1, v0}, Lcom/oppo/camera/OppoCamera;->access$8900(Lcom/oppo/camera/OppoCamera;Z)V

    .line 2750
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mFocusState:I
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$6900(Lcom/oppo/camera/OppoCamera;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 2751
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->playFocusSound(Z)V
    invoke-static {v1, v0}, Lcom/oppo/camera/OppoCamera;->access$8900(Lcom/oppo/camera/OppoCamera;Z)V

    .line 2754
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->doSnapAfterFocusFinished()V
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$7000(Lcom/oppo/camera/OppoCamera;)V

    .line 2755
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mFocusState:I
    invoke-static {v1, v3}, Lcom/oppo/camera/OppoCamera;->access$6902(Lcom/oppo/camera/OppoCamera;I)I

    goto/16 :goto_0

    .line 2743
    :cond_4
    const-string v1, "OppoCamera"

    const-string v2, "Focuse state = fail"

    invoke-static {v1, v2, v3}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 2720
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
