.class Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCamera;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1473
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1476
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "vX"
    .parameter "vY"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1481
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$MoveType;->FLING:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mMoveType:Lcom/oppo/camera/lomo/LomoCamera$MoveType;
    invoke-static {v2, v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$7102(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$MoveType;)Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    .line 1482
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    move-result-object v2

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->FILTER:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1496
    :cond_0
    :goto_0
    return v0

    .line 1485
    :cond_1
    const/high16 v2, 0x447a

    cmpl-float v2, p4, v2

    if-lez v2, :cond_2

    .line 1486
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->updateEffect(Z)V
    invoke-static {v2, v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$7200(Lcom/oppo/camera/lomo/LomoCamera;Z)V

    .line 1487
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mFlingUp:Z
    invoke-static {v2, v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$7302(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    .line 1488
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mDoFling:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$7402(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    move v0, v1

    .line 1489
    goto :goto_0

    .line 1490
    :cond_2
    const/high16 v2, -0x3b86

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->updateEffect(Z)V
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$7200(Lcom/oppo/camera/lomo/LomoCamera;Z)V

    .line 1492
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mFlingUp:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$7302(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    .line 1493
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mDoFling:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$7402(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    move v0, v1

    .line 1494
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1502
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 1506
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1511
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x1

    .line 1515
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$1200(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v2

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    move-result-object v2

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-ne v2, v3, :cond_1

    .line 1572
    :cond_0
    :goto_0
    return v5

    .line 1518
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    move-result-object v2

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mBurstCount:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$4700(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 1521
    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$3000(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mIsDofTouchFocus:Z
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$7500(Lcom/oppo/camera/lomo/LomoCamera;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1524
    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMoveType:Lcom/oppo/camera/lomo/LomoCamera$MoveType;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$7100(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    move-result-object v2

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$MoveType;->NOT_MOVE:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$5200(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/BurstHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/lomo/BurstHandler;->getmIsImageReviewerShow()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1527
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$6900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    move-result-object v2

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->AF:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    if-eq v2, v3, :cond_0

    .line 1530
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$7600(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$7600(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 1531
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$7600(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1532
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    move-result-object v2

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v2, v3, :cond_4

    .line 1533
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->turnOnContiniousAF()V
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$3300(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 1536
    :cond_4
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$800(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1538
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$7700(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/views/FocusSurfaceView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1539
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    move-result-object v2

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v2, v3, :cond_5

    .line 1542
    :cond_5
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$7600(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$7600(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 1543
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$7600(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1545
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1546
    .local v0, x:F
    invoke-static {}, Lcom/oppo/camera/lomo/LomoCamera;->access$7800()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 1549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1550
    .local v1, y:F
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$7700(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/views/FocusSurfaceView;

    move-result-object v2

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/oppo/camera/views/FocusSurfaceView;->setPosition(II)V

    .line 1551
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$5400(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1552
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$5400(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$7902(Lcom/oppo/camera/lomo/LomoCamera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 1553
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$7900(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "touch-on"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 1554
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->calculateTapArea(Landroid/view/MotionEvent;)V
    invoke-static {v2, p1}, Lcom/oppo/camera/lomo/LomoCamera;->access$8000(Lcom/oppo/camera/lomo/LomoCamera;Landroid/view/MotionEvent;)V

    .line 1555
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusAreaSupported:Z
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$8100(Lcom/oppo/camera/lomo/LomoCamera;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1556
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$7900(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusArea:Ljava/util/List;
    invoke-static {v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$8200(Lcom/oppo/camera/lomo/LomoCamera;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1558
    :cond_7
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMeteringAreaSupported:Z
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$8300(Lcom/oppo/camera/lomo/LomoCamera;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1559
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$7900(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMeteringArea:Ljava/util/List;
    invoke-static {v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$8400(Lcom/oppo/camera/lomo/LomoCamera;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 1561
    :cond_8
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->doSafeSetParameters()V
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$8500(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 1562
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->AF:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;
    invoke-static {v2, v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$6902(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$FocusState;)Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    .line 1563
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mIsTouchAf:Z
    invoke-static {v2, v5}, Lcom/oppo/camera/lomo/LomoCamera;->access$8602(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    .line 1568
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$5400(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_0
.end method
