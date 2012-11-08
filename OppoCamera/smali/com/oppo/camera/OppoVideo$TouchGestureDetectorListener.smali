.class Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;
.super Ljava/lang/Object;
.source "OppoVideo.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoVideo;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 2075
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/OppoVideo;Lcom/oppo/camera/OppoVideo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2075
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;-><init>(Lcom/oppo/camera/OppoVideo;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2135
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 2140
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2146
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 2150
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2156
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "m"

    .prologue
    const/4 v13, 0x4

    const/high16 v12, 0x43c8

    const/high16 v11, 0x4370

    const/4 v10, 0x1

    .line 2079
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mFocusState:I
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$7000(Lcom/oppo/camera/OppoVideo;)I

    move-result v6

    if-eq v6, v10, :cond_0

    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mFocusView:Lcom/oppo/camera/views/FocusView;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$7100(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/FocusView;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mFocusView:Lcom/oppo/camera/views/FocusView;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$7100(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/FocusView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/camera/views/FocusView;->isFocusing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2080
    :cond_0
    const-string v6, "OppoVideo"

    const-string v7, "Focus state is focuing !! return."

    invoke-static {v6, v7, v10}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2130
    :cond_1
    :goto_0
    return v10

    .line 2083
    :cond_2
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mFocusView:Lcom/oppo/camera/views/FocusView;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$7100(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/FocusView;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mMoveType:I
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$6800(Lcom/oppo/camera/OppoVideo;)I

    move-result v6

    if-nez v6, :cond_1

    .line 2084
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mFocusView:Lcom/oppo/camera/views/FocusView;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$7100(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/FocusView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/camera/views/FocusView;->clear()V

    .line 2085
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$6900(Lcom/oppo/camera/OppoVideo;)Landroid/widget/RelativeLayout;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$6900(Lcom/oppo/camera/OppoVideo;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 2086
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$6900(Lcom/oppo/camera/OppoVideo;)Landroid/widget/RelativeLayout;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2088
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 2089
    .local v4, x:F
    invoke-static {}, Lcom/oppo/camera/OppoVideo;->access$7200()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-gtz v6, :cond_1

    invoke-static {}, Lcom/oppo/camera/OppoVideo;->access$7300()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-ltz v6, :cond_1

    .line 2092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2093
    .local v0, currentTime:J
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-wide v6, v6, Lcom/oppo/camera/OppoVideo;->mPreTouchFocusTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 2096
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    iput-wide v0, v6, Lcom/oppo/camera/OppoVideo;->mPreTouchFocusTime:J

    .line 2098
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->mFocusState:I
    invoke-static {v6, v10}, Lcom/oppo/camera/OppoVideo;->access$7002(Lcom/oppo/camera/OppoVideo;I)I

    .line 2099
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecording:Z
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$200(Lcom/oppo/camera/OppoVideo;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$5900(Lcom/oppo/camera/OppoVideo;)Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$5900(Lcom/oppo/camera/OppoVideo;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-ne v6, v13, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mStoping:Z
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$2100(Lcom/oppo/camera/OppoVideo;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2100
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->turnOffContinuousAF()V
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$6400(Lcom/oppo/camera/OppoVideo;)V

    .line 2102
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 2104
    .local v5, y:F
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mFocusView:Lcom/oppo/camera/views/FocusView;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$7100(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/FocusView;

    move-result-object v6

    float-to-int v7, v4

    float-to-int v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/oppo/camera/views/FocusView;->setPosition(II)V

    .line 2105
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mFocusView:Lcom/oppo/camera/views/FocusView;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$7100(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/FocusView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/camera/views/FocusView;->showStart()V

    .line 2106
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$5600(Lcom/oppo/camera/OppoVideo;)Landroid/hardware/Camera;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2107
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$5600(Lcom/oppo/camera/OppoVideo;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    #setter for: Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6, v7}, Lcom/oppo/camera/OppoVideo;->access$7402(Lcom/oppo/camera/OppoVideo;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 2108
    const-wide v6, 0x3fe3333333333333L

    iget-object v8, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v8, v8, Lcom/oppo/camera/OppoVideo;->mZoomRatios:[F

    iget-object v9, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mZoomValue:I
    invoke-static {v9}, Lcom/oppo/camera/OppoVideo;->access$6700(Lcom/oppo/camera/OppoVideo;)I

    move-result v9

    aget v8, v8, v9

    float-to-double v8, v8

    mul-double v2, v6, v8

    .line 2109
    .local v2, tempValue:D
    const-wide/high16 v6, 0x3ff0

    cmpg-double v6, v2, v6

    if-gez v6, :cond_6

    .line 2110
    const-wide/high16 v2, 0x3ff0

    .line 2112
    :cond_6
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$7400(Lcom/oppo/camera/OppoVideo;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    sub-float v7, v4, v12

    float-to-double v7, v7

    div-double/2addr v7, v2

    double-to-int v7, v7

    add-int/lit16 v7, v7, 0x190

    sub-float v8, v5, v11

    float-to-double v8, v8

    div-double/2addr v8, v2

    double-to-int v8, v8

    add-int/lit16 v8, v8, 0xf0

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setTouchIndexAec(II)V

    .line 2113
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$7400(Lcom/oppo/camera/OppoVideo;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    sub-float v7, v4, v12

    float-to-double v7, v7

    div-double/2addr v7, v2

    double-to-int v7, v7

    add-int/lit16 v7, v7, 0x190

    sub-float v8, v5, v11

    float-to-double v8, v8

    div-double/2addr v8, v2

    double-to-int v8, v8

    add-int/lit16 v8, v8, 0xf0

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setTouchIndexAf(II)V

    .line 2114
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$7400(Lcom/oppo/camera/OppoVideo;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const-string v7, "touch-on"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 2115
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecording:Z
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$200(Lcom/oppo/camera/OppoVideo;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$7500(Lcom/oppo/camera/OppoVideo;)Landroid/media/MediaRecorder;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 2118
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->setParametersUnSafe()V
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$7600(Lcom/oppo/camera/OppoVideo;)V

    .line 2122
    :goto_1
    const-string v6, "OppoVideo"

    const-string v7, "Start auto focus!"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2123
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$5600(Lcom/oppo/camera/OppoVideo;)Landroid/hardware/Camera;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2124
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecording:Z
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$200(Lcom/oppo/camera/OppoVideo;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$5900(Lcom/oppo/camera/OppoVideo;)Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$5900(Lcom/oppo/camera/OppoVideo;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-ne v6, v13, :cond_8

    :cond_7
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mStoping:Z
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$2100(Lcom/oppo/camera/OppoVideo;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 2125
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->turnOnContinuousAFDelayed()V
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$7700(Lcom/oppo/camera/OppoVideo;)V

    .line 2127
    :cond_8
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    const/4 v7, 0x2

    #setter for: Lcom/oppo/camera/OppoVideo;->mFocusState:I
    invoke-static {v6, v7}, Lcom/oppo/camera/OppoVideo;->access$7002(Lcom/oppo/camera/OppoVideo;I)I

    goto/16 :goto_0

    .line 2120
    :cond_9
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->setParametersUnSafe()V
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$7600(Lcom/oppo/camera/OppoVideo;)V

    goto :goto_1
.end method
