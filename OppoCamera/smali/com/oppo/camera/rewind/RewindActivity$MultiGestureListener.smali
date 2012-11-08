.class Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1341
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;-><init>(Lcom/oppo/camera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "detector"

    .prologue
    .line 1343
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 1344
    .local v1, scale:F
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1345
    :cond_0
    const/4 v4, 0x0

    .line 1351
    :goto_0
    return v4

    .line 1347
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    .line 1348
    .local v0, currentSpan:F
    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mStartSpan:F
    invoke-static {v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$5100(Lcom/oppo/camera/rewind/RewindActivity;)F

    move-result v4

    sub-float v4, v0, v4

    const/high16 v5, 0x43c8

    div-float v2, v4, v5

    .line 1349
    .local v2, scaleTotal:F
    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mStartZoomValue:I
    invoke-static {v4}, Lcom/oppo/camera/rewind/RewindActivity;->access$5200(Lcom/oppo/camera/rewind/RewindActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mZoomMax:I
    invoke-static {v5}, Lcom/oppo/camera/rewind/RewindActivity;->access$5300(Lcom/oppo/camera/rewind/RewindActivity;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    add-int v3, v4, v5

    .line 1350
    .local v3, zoomValue:I
    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->setZoomValue(I)V
    invoke-static {v4, v3}, Lcom/oppo/camera/rewind/RewindActivity;->access$5400(Lcom/oppo/camera/rewind/RewindActivity;I)V

    .line 1351
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/RewindActivity;->keepScreenOnAwhile()V

    .line 1356
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->turnOffContiniousAF()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$2500(Lcom/oppo/camera/rewind/RewindActivity;)V

    .line 1357
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    const/4 v1, 0x3

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mMoveType:I
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$5502(Lcom/oppo/camera/rewind/RewindActivity;I)I

    .line 1358
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mStartSpan:F
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$5102(Lcom/oppo/camera/rewind/RewindActivity;F)F

    .line 1359
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mZoomValue:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$5600(Lcom/oppo/camera/rewind/RewindActivity;)I

    move-result v1

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mStartZoomValue:I
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$5202(Lcom/oppo/camera/rewind/RewindActivity;I)I

    .line 1360
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$5700(Lcom/oppo/camera/rewind/RewindActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$5700(Lcom/oppo/camera/rewind/RewindActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->turnOnContiniousAF()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$2300(Lcom/oppo/camera/rewind/RewindActivity;)V

    .line 1368
    return-void
.end method
