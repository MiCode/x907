.class Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCamera;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1694
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "detector"

    .prologue
    const/4 v6, 0x1

    .line 1696
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 1697
    .local v1, scale:F
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1704
    :cond_0
    :goto_0
    return v6

    .line 1700
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    .line 1701
    .local v0, currentSpan:F
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mStartSpan:F
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$9000(Lcom/oppo/camera/lomo/LomoCamera;)F

    move-result v4

    sub-float v4, v0, v4

    const/high16 v5, 0x43c8

    div-float v2, v4, v5

    .line 1702
    .local v2, scaleTotal:F
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mStartZoomValue:I
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$9100(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v4

    iget-object v5, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomMax:I
    invoke-static {v5}, Lcom/oppo/camera/lomo/LomoCamera;->access$9200(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    add-int v3, v4, v5

    .line 1703
    .local v3, zoomValue:I
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->setZoomValue(I)V
    invoke-static {v4, v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$9300(Lcom/oppo/camera/lomo/LomoCamera;I)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->cancelAutoFocus()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$9400(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 1709
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->turnOffContiniousAF()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$9500(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 1710
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->FINISH:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$6902(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$FocusState;)Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    .line 1711
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$7700(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/views/FocusSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$7700(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/views/FocusSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusSurfaceView;->clear()V

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$MoveType;->SCALE:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mMoveType:Lcom/oppo/camera/lomo/LomoCamera$MoveType;
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$7102(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$MoveType;)Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    .line 1715
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mStartSpan:F
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$9002(Lcom/oppo/camera/lomo/LomoCamera;F)F

    .line 1716
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomValue:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$8700(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v1

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mStartZoomValue:I
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$9102(Lcom/oppo/camera/lomo/LomoCamera;I)I

    .line 1717
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$7600(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1722
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$7600(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    move-result-object v0

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v0, v1, :cond_1

    .line 1725
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->turnOnContiniousAF()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$3300(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 1727
    :cond_1
    return-void
.end method
