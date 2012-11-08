.class Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;
.super Landroid/os/Handler;
.source "ShutterWaitProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/views/ShutterWaitProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/views/ShutterWaitProgressView;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/views/ShutterWaitProgressView;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->this$0:Lcom/oppo/camera/views/ShutterWaitProgressView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/views/ShutterWaitProgressView;Lcom/oppo/camera/views/ShutterWaitProgressView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;-><init>(Lcom/oppo/camera/views/ShutterWaitProgressView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x43b4

    const/4 v1, 0x0

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->this$0:Lcom/oppo/camera/views/ShutterWaitProgressView;

    const/high16 v1, 0x41f0

    invoke-static {v0, v1}, Lcom/oppo/camera/views/ShutterWaitProgressView;->access$016(Lcom/oppo/camera/views/ShutterWaitProgressView;F)F

    .line 49
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->this$0:Lcom/oppo/camera/views/ShutterWaitProgressView;

    iget-object v1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->this$0:Lcom/oppo/camera/views/ShutterWaitProgressView;

    #getter for: Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftAnimDegree:F
    invoke-static {v1}, Lcom/oppo/camera/views/ShutterWaitProgressView;->access$000(Lcom/oppo/camera/views/ShutterWaitProgressView;)F

    move-result v1

    rem-float/2addr v1, v2

    #setter for: Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftAnimDegree:F
    invoke-static {v0, v1}, Lcom/oppo/camera/views/ShutterWaitProgressView;->access$002(Lcom/oppo/camera/views/ShutterWaitProgressView;F)F

    .line 50
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->this$0:Lcom/oppo/camera/views/ShutterWaitProgressView;

    const/high16 v1, 0x4120

    invoke-static {v0, v1}, Lcom/oppo/camera/views/ShutterWaitProgressView;->access$124(Lcom/oppo/camera/views/ShutterWaitProgressView;F)F

    .line 51
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->this$0:Lcom/oppo/camera/views/ShutterWaitProgressView;

    iget-object v1, p0, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->this$0:Lcom/oppo/camera/views/ShutterWaitProgressView;

    #getter for: Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightAnimDegree:F
    invoke-static {v1}, Lcom/oppo/camera/views/ShutterWaitProgressView;->access$100(Lcom/oppo/camera/views/ShutterWaitProgressView;)F

    move-result v1

    rem-float/2addr v1, v2

    #setter for: Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightAnimDegree:F
    invoke-static {v0, v1}, Lcom/oppo/camera/views/ShutterWaitProgressView;->access$102(Lcom/oppo/camera/views/ShutterWaitProgressView;F)F

    .line 52
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->this$0:Lcom/oppo/camera/views/ShutterWaitProgressView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/ShutterWaitProgressView;->invalidate()V

    .line 53
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->this$0:Lcom/oppo/camera/views/ShutterWaitProgressView;

    #getter for: Lcom/oppo/camera/views/ShutterWaitProgressView;->mHandler:Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;
    invoke-static {v0}, Lcom/oppo/camera/views/ShutterWaitProgressView;->access$200(Lcom/oppo/camera/views/ShutterWaitProgressView;)Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v2}, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->this$0:Lcom/oppo/camera/views/ShutterWaitProgressView;

    #setter for: Lcom/oppo/camera/views/ShutterWaitProgressView;->mLeftAnimDegree:F
    invoke-static {v0, v1}, Lcom/oppo/camera/views/ShutterWaitProgressView;->access$002(Lcom/oppo/camera/views/ShutterWaitProgressView;F)F

    .line 57
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->this$0:Lcom/oppo/camera/views/ShutterWaitProgressView;

    #setter for: Lcom/oppo/camera/views/ShutterWaitProgressView;->mRightAnimDegree:F
    invoke-static {v0, v1}, Lcom/oppo/camera/views/ShutterWaitProgressView;->access$102(Lcom/oppo/camera/views/ShutterWaitProgressView;F)F

    .line 58
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->this$0:Lcom/oppo/camera/views/ShutterWaitProgressView;

    #getter for: Lcom/oppo/camera/views/ShutterWaitProgressView;->mHandler:Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;
    invoke-static {v0}, Lcom/oppo/camera/views/ShutterWaitProgressView;->access$200(Lcom/oppo/camera/views/ShutterWaitProgressView;)Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->removeMessages(I)V

    .line 59
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->this$0:Lcom/oppo/camera/views/ShutterWaitProgressView;

    #getter for: Lcom/oppo/camera/views/ShutterWaitProgressView;->mHandler:Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;
    invoke-static {v0}, Lcom/oppo/camera/views/ShutterWaitProgressView;->access$200(Lcom/oppo/camera/views/ShutterWaitProgressView;)Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->removeMessages(I)V

    .line 60
    iget-object v0, p0, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->this$0:Lcom/oppo/camera/views/ShutterWaitProgressView;

    #getter for: Lcom/oppo/camera/views/ShutterWaitProgressView;->mHandler:Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;
    invoke-static {v0}, Lcom/oppo/camera/views/ShutterWaitProgressView;->access$200(Lcom/oppo/camera/views/ShutterWaitProgressView;)Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/ShutterWaitProgressView$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
