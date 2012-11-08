.class Lcom/oppo/camera/OppoCamera$GestureDetectorListener;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1903
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/OppoCamera;Lcom/oppo/camera/OppoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1903
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;-><init>(Lcom/oppo/camera/OppoCamera;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 1907
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1912
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$4500(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/utils/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->isStoragePlaceEnough()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$3700(Lcom/oppo/camera/OppoCamera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1919
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->enableUI()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$1700(Lcom/oppo/camera/OppoCamera;)V

    .line 1935
    :cond_0
    :goto_0
    return-void

    .line 1923
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mIsEnable:Z
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$7100(Lcom/oppo/camera/OppoCamera;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mTimerSnapShotManager:Lcom/oppo/camera/utils/TimerSnapShotManager;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$7200(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/utils/TimerSnapShotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/utils/TimerSnapShotManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mTimerModeBackId:Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$7300(Lcom/oppo/camera/OppoCamera;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_timer_on_5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraId:I
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$1600(Lcom/oppo/camera/OppoCamera;)I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mTimerModeFrontId:Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$7400(Lcom/oppo/camera/OppoCamera;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_timer_on_5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraId:I
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$1600(Lcom/oppo/camera/OppoCamera;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1929
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;->this$0:Lcom/oppo/camera/OppoCamera;

    const/4 v1, 0x0

    #calls: Lcom/oppo/camera/OppoCamera;->setTimerBtnEnable(Z)V
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoCamera;->access$7500(Lcom/oppo/camera/OppoCamera;Z)V

    .line 1930
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mTimerSnapShotManager:Lcom/oppo/camera/utils/TimerSnapShotManager;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$7200(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/utils/TimerSnapShotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/utils/TimerSnapShotManager;->startTakePicDelay()V

    goto :goto_0

    .line 1932
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->handleTakePicture()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$2800(Lcom/oppo/camera/OppoCamera;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 1939
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1944
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->doAutoFocus(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/oppo/camera/OppoCamera;->access$7600(Lcom/oppo/camera/OppoCamera;Landroid/view/MotionEvent;)V

    .line 1949
    const/4 v0, 0x1

    return v0
.end method
