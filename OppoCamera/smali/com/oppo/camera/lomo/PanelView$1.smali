.class Lcom/oppo/camera/lomo/PanelView$1;
.super Landroid/os/Handler;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/PanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/PanelView;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/PanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/oppo/camera/lomo/PanelView$1;->this$0:Lcom/oppo/camera/lomo/PanelView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 124
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView$1;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mClickAnimRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/oppo/camera/lomo/PanelView;->access$000(Lcom/oppo/camera/lomo/PanelView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$1;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mOffset:I
    invoke-static {v0, v2}, Lcom/oppo/camera/lomo/PanelView;->access$102(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 128
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$1;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mIsClick:Z
    invoke-static {v0, v2}, Lcom/oppo/camera/lomo/PanelView;->access$202(Lcom/oppo/camera/lomo/PanelView;Z)Z

    .line 129
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$1;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->isEnableClick:Z
    invoke-static {v0, v2}, Lcom/oppo/camera/lomo/PanelView;->access$302(Lcom/oppo/camera/lomo/PanelView;Z)Z

    .line 130
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$1;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$500(Lcom/oppo/camera/lomo/PanelView;)Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView$1;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/PanelView;->access$400(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;->OnAnimationFinish(I)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$1;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$500(Lcom/oppo/camera/lomo/PanelView;)Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanelView$1;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/PanelView;->access$400(Lcom/oppo/camera/lomo/PanelView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;->OnAnimationFinish(I)V

    .line 135
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$1;->this$0:Lcom/oppo/camera/lomo/PanelView;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/PanelView;->postInvalidate()V

    goto :goto_0

    .line 138
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$1;->this$0:Lcom/oppo/camera/lomo/PanelView;

    const/4 v1, 0x1

    #setter for: Lcom/oppo/camera/lomo/PanelView;->isFirstEnterMenu:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/PanelView;->access$602(Lcom/oppo/camera/lomo/PanelView;Z)Z

    .line 139
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$1;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #setter for: Lcom/oppo/camera/lomo/PanelView;->mDrawTpye:I
    invoke-static {v0, v2}, Lcom/oppo/camera/lomo/PanelView;->access$702(Lcom/oppo/camera/lomo/PanelView;I)I

    .line 141
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$1;->this$0:Lcom/oppo/camera/lomo/PanelView;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/PanelView;->invalidate()V

    goto :goto_0

    .line 144
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$1;->this$0:Lcom/oppo/camera/lomo/PanelView;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/PanelView;->postInvalidate()V

    .line 145
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanelView$1;->this$0:Lcom/oppo/camera/lomo/PanelView;

    #getter for: Lcom/oppo/camera/lomo/PanelView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/camera/lomo/PanelView;->access$800(Lcom/oppo/camera/lomo/PanelView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
