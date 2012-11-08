.class Lcom/oppo/camera/OppoCamera$ErrorCallback;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Lcom/scalado/camera/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1632
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$ErrorCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/OppoCamera;Lcom/oppo/camera/OppoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1632
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera$ErrorCallback;-><init>(Lcom/oppo/camera/OppoCamera;)V

    return-void
.end method


# virtual methods
.method public onError(ILcom/scalado/camera/Camera;)V
    .locals 4
    .parameter "error"
    .parameter "camera"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1636
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$ErrorCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mPreviewing:Z
    invoke-static {v0, v2}, Lcom/oppo/camera/OppoCamera;->access$4802(Lcom/oppo/camera/OppoCamera;Z)Z

    .line 1637
    sparse-switch p1, :sswitch_data_0

    .line 1652
    :goto_0
    :sswitch_0
    return-void

    .line 1641
    :sswitch_1
    const-string v0, "OppoCamera"

    const-string v1, "CAMERA_ERROR_UNKNOWN !! "

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1642
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$ErrorCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mRestartCounter:I
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$5800(Lcom/oppo/camera/OppoCamera;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$ErrorCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->closeCamera()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$5900(Lcom/oppo/camera/OppoCamera;)V

    .line 1644
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$ErrorCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$2700(Lcom/oppo/camera/OppoCamera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1645
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$ErrorCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mRestartCounter:I
    invoke-static {v0, v2}, Lcom/oppo/camera/OppoCamera;->access$5802(Lcom/oppo/camera/OppoCamera;I)I

    goto :goto_0

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$ErrorCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-virtual {v0}, Lcom/oppo/camera/OppoCamera;->finish()V

    goto :goto_0

    .line 1637
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
