.class final Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCamera;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1653
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1653
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "value"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomValue:I
    invoke-static {v0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->access$8702(Lcom/oppo/camera/lomo/LomoCamera;I)I

    .line 1658
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$7900(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1661
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomState:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$8800(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mTargetZoomValue:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$8900(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1663
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$5400(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mTargetZoomValue:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$8900(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 1664
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    const/4 v1, 0x1

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$8802(Lcom/oppo/camera/lomo/LomoCamera;I)I

    .line 1669
    :cond_0
    :goto_0
    return-void

    .line 1666
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$8802(Lcom/oppo/camera/lomo/LomoCamera;I)I

    goto :goto_0
.end method
