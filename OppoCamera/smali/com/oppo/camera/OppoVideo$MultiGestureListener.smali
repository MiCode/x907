.class Lcom/oppo/camera/OppoVideo$MultiGestureListener;
.super Ljava/lang/Object;
.source "OppoVideo.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoVideo;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 2036
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/OppoVideo;Lcom/oppo/camera/OppoVideo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2036
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo$MultiGestureListener;-><init>(Lcom/oppo/camera/OppoVideo;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "detector"

    .prologue
    const/4 v6, 0x1

    .line 2038
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 2039
    .local v1, scale:F
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2046
    :cond_0
    :goto_0
    return v6

    .line 2042
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    .line 2043
    .local v0, currentSpan:F
    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mStartSpan:F
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$6000(Lcom/oppo/camera/OppoVideo;)F

    move-result v4

    sub-float v4, v0, v4

    const/high16 v5, 0x43c8

    div-float v2, v4, v5

    .line 2044
    .local v2, scaleTotal:F
    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mStartZoomValue:I
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$6100(Lcom/oppo/camera/OppoVideo;)I

    move-result v4

    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mZoomMax:I
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$6200(Lcom/oppo/camera/OppoVideo;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    add-int v3, v4, v5

    .line 2045
    .local v3, zoomValue:I
    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->setZoomValue(I)V
    invoke-static {v4, v3}, Lcom/oppo/camera/OppoVideo;->access$6300(Lcom/oppo/camera/OppoVideo;I)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    const/4 v2, 0x1

    .line 2050
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecording:Z
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$200(Lcom/oppo/camera/OppoVideo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2051
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->turnOffContinuousAF()V
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$6400(Lcom/oppo/camera/OppoVideo;)V

    .line 2053
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->clearFocusView()V
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$6500(Lcom/oppo/camera/OppoVideo;)V

    .line 2054
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->mIsScaling:Z
    invoke-static {v0, v2}, Lcom/oppo/camera/OppoVideo;->access$6602(Lcom/oppo/camera/OppoVideo;Z)Z

    .line 2055
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    #setter for: Lcom/oppo/camera/OppoVideo;->mStartSpan:F
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoVideo;->access$6002(Lcom/oppo/camera/OppoVideo;F)F

    .line 2056
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mZoomValue:I
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$6700(Lcom/oppo/camera/OppoVideo;)I

    move-result v1

    #setter for: Lcom/oppo/camera/OppoVideo;->mStartZoomValue:I
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoVideo;->access$6102(Lcom/oppo/camera/OppoVideo;I)I

    .line 2057
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    const/4 v1, 0x3

    #setter for: Lcom/oppo/camera/OppoVideo;->mMoveType:I
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoVideo;->access$6802(Lcom/oppo/camera/OppoVideo;I)I

    .line 2058
    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/camera/OppoVideo;->mIsScaling:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoVideo;->access$6602(Lcom/oppo/camera/OppoVideo;Z)Z

    .line 2063
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$6900(Lcom/oppo/camera/OppoVideo;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$6900(Lcom/oppo/camera/OppoVideo;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2066
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecording:Z
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$200(Lcom/oppo/camera/OppoVideo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2067
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->turnOnContinuousAF()V
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$2500(Lcom/oppo/camera/OppoVideo;)V

    .line 2069
    :cond_1
    return-void
.end method
