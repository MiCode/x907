.class final Lcom/oppo/camera/lomo/LomoCamera$TouchFocusCallback;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCamera;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2711
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$TouchFocusCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2711
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera$TouchFocusCallback;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$TouchFocusCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->FINISH:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$6902(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$FocusState;)Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    .line 2715
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$TouchFocusCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->playFocusSound(Z)V
    invoke-static {v0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->access$11700(Lcom/oppo/camera/lomo/LomoCamera;Z)V

    .line 2716
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$TouchFocusCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->doSnapAfterFocusFinished()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$7000(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 2717
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$TouchFocusCallback;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$800(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2718
    return-void
.end method
