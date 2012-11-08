.class public Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;
.super Landroid/os/Handler;
.source "AsyncTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/AsyncTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/rewind/app/AsyncTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mListener:Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$200(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mListener:Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$200(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;->onImageAnalyzed(I)V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mListener:Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$200(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker;->mListener:Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/AsyncTracker;->access$200(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;->onAnalyzeComplete()V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
