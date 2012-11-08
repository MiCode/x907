.class Lcom/oppo/camera/views/FocusView$1;
.super Landroid/os/Handler;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/views/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/views/FocusView;


# direct methods
.method constructor <init>(Lcom/oppo/camera/views/FocusView;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oppo/camera/views/FocusView$1;->this$0:Lcom/oppo/camera/views/FocusView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/views/FocusView$1;->this$0:Lcom/oppo/camera/views/FocusView;

    #getter for: Lcom/oppo/camera/views/FocusView;->mSize:I
    invoke-static {v0}, Lcom/oppo/camera/views/FocusView;->access$000(Lcom/oppo/camera/views/FocusView;)I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/oppo/camera/views/FocusView$1;->this$0:Lcom/oppo/camera/views/FocusView;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/camera/views/FocusView;->mIsDoingAnimation:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/views/FocusView;->access$102(Lcom/oppo/camera/views/FocusView;Z)Z

    .line 38
    iget-object v0, p0, Lcom/oppo/camera/views/FocusView$1;->this$0:Lcom/oppo/camera/views/FocusView;

    #getter for: Lcom/oppo/camera/views/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/camera/views/FocusView;->access$200(Lcom/oppo/camera/views/FocusView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/views/FocusView$1;->this$0:Lcom/oppo/camera/views/FocusView;

    #getter for: Lcom/oppo/camera/views/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/camera/views/FocusView;->access$200(Lcom/oppo/camera/views/FocusView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 42
    iget-object v0, p0, Lcom/oppo/camera/views/FocusView$1;->this$0:Lcom/oppo/camera/views/FocusView;

    iget-object v1, p0, Lcom/oppo/camera/views/FocusView$1;->this$0:Lcom/oppo/camera/views/FocusView;

    #getter for: Lcom/oppo/camera/views/FocusView;->mSize:I
    invoke-static {v1}, Lcom/oppo/camera/views/FocusView;->access$000(Lcom/oppo/camera/views/FocusView;)I

    move-result v1

    #calls: Lcom/oppo/camera/views/FocusView;->reLayout(I)V
    invoke-static {v0, v1}, Lcom/oppo/camera/views/FocusView;->access$300(Lcom/oppo/camera/views/FocusView;I)V

    .line 43
    iget-object v0, p0, Lcom/oppo/camera/views/FocusView$1;->this$0:Lcom/oppo/camera/views/FocusView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/oppo/camera/views/FocusView;->access$020(Lcom/oppo/camera/views/FocusView;I)I

    goto :goto_0

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/views/FocusView$1;->this$0:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->clear()V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
