.class Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;
.super Landroid/os/Handler;
.source "AsyncTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;Lcom/oppo/camera/rewind/app/AsyncTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;-><init>(Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 123
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 157
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 128
    :sswitch_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mCompleted:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$400(Lcom/oppo/camera/rewind/app/AsyncTracker;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mJobListener:Lcom/oppo/camera/rewind/app/JobListener;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$500(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/JobListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mJobListener:Lcom/oppo/camera/rewind/app/JobListener;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$500(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/JobListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v2, v2, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mJobId:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$600(Lcom/oppo/camera/rewind/app/AsyncTracker;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/oppo/camera/rewind/app/JobListener;->onJobStarted(I)V

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$700(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/RectTracker;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->trackImage(I)V

    .line 132
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mToUiHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$800(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;

    move-result-object v1

    const/4 v2, 0x2

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, backMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mToUiHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$800(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$408(Lcom/oppo/camera/rewind/app/AsyncTracker;)I

    .line 135
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mCompleted:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$400(Lcom/oppo/camera/rewind/app/AsyncTracker;)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v2, v2, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mSize:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$900(Lcom/oppo/camera/rewind/app/AsyncTracker;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 136
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$700(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/RectTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->analyzeImages()Lcom/oppo/camera/rewind/app/RectTracker$State;

    .line 137
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mJobListener:Lcom/oppo/camera/rewind/app/JobListener;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$500(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/JobListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mJobListener:Lcom/oppo/camera/rewind/app/JobListener;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$500(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/JobListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v2, v2, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mJobId:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$600(Lcom/oppo/camera/rewind/app/AsyncTracker;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/oppo/camera/rewind/app/JobListener;->onJobEnded(I)V

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mToUiHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$800(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mToUiHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$800(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 145
    .end local v0           #backMsg:Landroid/os/Message;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/oppo/camera/rewind/app/RectTracker;

    if-nez v1, :cond_4

    .line 146
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad object."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v2, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oppo/camera/rewind/app/RectTracker;

    #setter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;
    invoke-static {v2, v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$702(Lcom/oppo/camera/rewind/app/AsyncTracker;Lcom/oppo/camera/rewind/app/RectTracker;)Lcom/oppo/camera/rewind/app/RectTracker;

    goto/16 :goto_0

    .line 151
    :sswitch_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 152
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$700(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/RectTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->recycle()V

    .line 153
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    const/4 v2, 0x0

    #setter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;
    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$702(Lcom/oppo/camera/rewind/app/AsyncTracker;Lcom/oppo/camera/rewind/app/RectTracker;)Lcom/oppo/camera/rewind/app/RectTracker;

    .line 154
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mToUiHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$800(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x32 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method
