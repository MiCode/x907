.class Lcom/oppo/camera/OppoVideo$ErrorCallback;
.super Ljava/lang/Object;
.source "OppoVideo.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoVideo;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 2538
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$ErrorCallback;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/OppoVideo;Lcom/oppo/camera/OppoVideo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2538
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo$ErrorCallback;-><init>(Lcom/oppo/camera/OppoVideo;)V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 3
    .parameter "error"
    .parameter "camera"

    .prologue
    const/4 v2, 0x1

    .line 2540
    sparse-switch p1, :sswitch_data_0

    .line 2559
    :goto_0
    return-void

    .line 2542
    :sswitch_0
    const-string v0, "OppoVideo"

    const-string v1, "ErrorCallback: CAMERA_ERROR_SERVER_DIED !!!"

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2546
    :sswitch_1
    const-string v0, "OppoVideo"

    const-string v1, "ErrorCallback: CAMERA_ERROR_UNKNOWN !!!"

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2547
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$ErrorCallback;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecording:Z
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$200(Lcom/oppo/camera/OppoVideo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2548
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$ErrorCallback;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->onStopVideoRecording()Z
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$400(Lcom/oppo/camera/OppoVideo;)Z

    .line 2550
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$ErrorCallback;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRestartCounter:I
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$7800(Lcom/oppo/camera/OppoVideo;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2551
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$ErrorCallback;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->closeCamera()V
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$5700(Lcom/oppo/camera/OppoVideo;)V

    .line 2552
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$ErrorCallback;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$800(Lcom/oppo/camera/OppoVideo;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2553
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$ErrorCallback;->this$0:Lcom/oppo/camera/OppoVideo;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/camera/OppoVideo;->mRestartCounter:I
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoVideo;->access$7802(Lcom/oppo/camera/OppoVideo;I)I

    goto :goto_0

    .line 2555
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$ErrorCallback;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-virtual {v0}, Lcom/oppo/camera/OppoVideo;->finish()V

    goto :goto_0

    .line 2540
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
