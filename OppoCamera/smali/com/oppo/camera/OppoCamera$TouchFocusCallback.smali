.class final Lcom/oppo/camera/OppoCamera$TouchFocusCallback;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2791
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$TouchFocusCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/OppoCamera;Lcom/oppo/camera/OppoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2791
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera$TouchFocusCallback;-><init>(Lcom/oppo/camera/OppoCamera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5
    .parameter "focused"
    .parameter "camera"

    .prologue
    const/4 v4, 0x0

    .line 2793
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$TouchFocusCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mFocusState:I
    invoke-static {v0, v4}, Lcom/oppo/camera/OppoCamera;->access$6902(Lcom/oppo/camera/OppoCamera;I)I

    .line 2794
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$TouchFocusCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->playFocusSound(Z)V
    invoke-static {v0, p1}, Lcom/oppo/camera/OppoCamera;->access$8900(Lcom/oppo/camera/OppoCamera;Z)V

    .line 2795
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$TouchFocusCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->doSnapAfterFocusFinished()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$7000(Lcom/oppo/camera/OppoCamera;)V

    .line 2796
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$TouchFocusCallback;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$2700(Lcom/oppo/camera/OppoCamera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2797
    const-string v0, "OppoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoFocus focused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2798
    return-void
.end method
