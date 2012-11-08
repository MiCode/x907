.class Lcom/oppo/camera/utils/TimerSnapShotManager$1;
.super Landroid/os/Handler;
.source "TimerSnapShotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/utils/TimerSnapShotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;


# direct methods
.method constructor <init>(Lcom/oppo/camera/utils/TimerSnapShotManager;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-wide/16 v5, 0x3e8

    const/high16 v2, 0x3fc0

    const/high16 v4, 0x3f80

    .line 47
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTime:I
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$000(Lcom/oppo/camera/utils/TimerSnapShotManager;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 50
    .local v0, index:I
    if-gez v0, :cond_1

    .line 51
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    invoke-virtual {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->reset()V

    .line 52
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerOutListener:Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$100(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerOutListener:Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$100(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;->onTimeOut()V

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$200(Lcom/oppo/camera/utils/TimerSnapShotManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerOutListener:Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$100(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerOutListener:Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$100(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;->onTimeChanged()V

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    invoke-static {}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$300()[I

    move-result-object v2

    aget v2, v2, v0

    #calls: Lcom/oppo/camera/utils/TimerSnapShotManager;->setImageResource(I)V
    invoke-static {v1, v2}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$400(Lcom/oppo/camera/utils/TimerSnapShotManager;I)V

    .line 62
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$010(Lcom/oppo/camera/utils/TimerSnapShotManager;)I

    .line 63
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$200(Lcom/oppo/camera/utils/TimerSnapShotManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 66
    .end local v0           #index:I
    :pswitch_1
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$500(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/oppo/camera/views/RotateImageView;->setScaleX(F)V

    .line 67
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$500(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/oppo/camera/views/RotateImageView;->setScaleY(F)V

    .line 68
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$500(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/oppo/camera/views/RotateImageView;->setAlpha(F)V

    .line 69
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$500(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/views/RotateImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 72
    :pswitch_2
    const-string v1, "TimerSnapShotManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTimerIndicator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v3}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$500(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$500(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/views/RotateImageView;->clearAnimation()V

    .line 74
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$500(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/oppo/camera/views/RotateImageView;->setScaleX(F)V

    .line 75
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$500(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/oppo/camera/views/RotateImageView;->setScaleY(F)V

    .line 76
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$500(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/oppo/camera/views/RotateImageView;->setAlpha(F)V

    .line 77
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$500(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/RotateImageView;->setImageResource(I)V

    .line 78
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$200(Lcom/oppo/camera/utils/TimerSnapShotManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 81
    :pswitch_3
    iget-object v1, p0, Lcom/oppo/camera/utils/TimerSnapShotManager$1;->this$0:Lcom/oppo/camera/utils/TimerSnapShotManager;

    #getter for: Lcom/oppo/camera/utils/TimerSnapShotManager;->mTimerIndicator:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->access$500(Lcom/oppo/camera/utils/TimerSnapShotManager;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    const v2, 0x7f02003d

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
