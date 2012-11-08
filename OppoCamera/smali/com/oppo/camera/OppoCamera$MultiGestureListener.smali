.class Lcom/oppo/camera/OppoCamera$MultiGestureListener;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1959
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/OppoCamera;Lcom/oppo/camera/OppoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1959
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera$MultiGestureListener;-><init>(Lcom/oppo/camera/OppoCamera;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "detector"

    .prologue
    const/4 v6, 0x1

    .line 1961
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 1962
    .local v1, scale:F
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1970
    :cond_0
    :goto_0
    return v6

    .line 1965
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    .line 1966
    .local v0, currentSpan:F
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mStartSpan:F
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$7700(Lcom/oppo/camera/OppoCamera;)F

    move-result v4

    sub-float v4, v0, v4

    const/high16 v5, 0x43c8

    div-float v2, v4, v5

    .line 1967
    .local v2, scaleTotal:F
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mStartZoomValue:I
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$7800(Lcom/oppo/camera/OppoCamera;)I

    move-result v4

    iget-object v5, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mZoomMax:I
    invoke-static {v5}, Lcom/oppo/camera/OppoCamera;->access$7900(Lcom/oppo/camera/OppoCamera;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    add-int v3, v4, v5

    .line 1969
    .local v3, zoomValue:I
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->setZoomValue(I)V
    invoke-static {v4, v3}, Lcom/oppo/camera/OppoCamera;->access$8000(Lcom/oppo/camera/OppoCamera;I)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-virtual {v0}, Lcom/oppo/camera/OppoCamera;->keepScreenOnAwhile()V

    .line 1975
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->clearFocusView()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$8100(Lcom/oppo/camera/OppoCamera;)V

    .line 1976
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->cancelAutoFocus()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$8200(Lcom/oppo/camera/OppoCamera;)V

    .line 1977
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->turnOffContiniousAF()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$8300(Lcom/oppo/camera/OppoCamera;)V

    .line 1978
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    const/4 v1, 0x3

    #setter for: Lcom/oppo/camera/OppoCamera;->mMoveType:I
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoCamera;->access$8402(Lcom/oppo/camera/OppoCamera;I)I

    .line 1979
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    #setter for: Lcom/oppo/camera/OppoCamera;->mStartSpan:F
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoCamera;->access$7702(Lcom/oppo/camera/OppoCamera;F)F

    .line 1980
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mZoomValue:I
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$5200(Lcom/oppo/camera/OppoCamera;)I

    move-result v1

    #setter for: Lcom/oppo/camera/OppoCamera;->mStartZoomValue:I
    invoke-static {v0, v1}, Lcom/oppo/camera/OppoCamera;->access$7802(Lcom/oppo/camera/OppoCamera;I)I

    .line 1981
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$8500(Lcom/oppo/camera/OppoCamera;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1986
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$8500(Lcom/oppo/camera/OppoCamera;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1988
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->turnOnContiniousAF()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$6000(Lcom/oppo/camera/OppoCamera;)V

    .line 1989
    return-void
.end method
