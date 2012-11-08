.class Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "OppoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/OppoCamera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoCamera;

    .line 1548
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1549
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 1554
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 1558
    :cond_1
    invoke-static {p1}, Lcom/oppo/camera/utils/ImageUtil;->roundOrientation(I)I

    move-result v0

    .line 1559
    .local v0, currentOrientation:I
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mOrientation:I
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$5400(Lcom/oppo/camera/OppoCamera;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1560
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mOrientation:I
    invoke-static {v2, v0}, Lcom/oppo/camera/OppoCamera;->access$5402(Lcom/oppo/camera/OppoCamera;I)I

    .line 1564
    const/4 v1, 0x0

    .line 1565
    .local v1, orientationCompensation:I
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mOrientation:I
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$5400(Lcom/oppo/camera/OppoCamera;)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-static {v3}, Lcom/oppo/camera/utils/ImageUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    add-int v1, v2, v3

    .line 1566
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$5500(Lcom/oppo/camera/OppoCamera;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1567
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mOrientationCompensation:I
    invoke-static {v2, v1}, Lcom/oppo/camera/OppoCamera;->access$5502(Lcom/oppo/camera/OppoCamera;I)I

    .line 1568
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$5500(Lcom/oppo/camera/OppoCamera;)I

    move-result v3

    #calls: Lcom/oppo/camera/OppoCamera;->setOrientationIndicator(I)V
    invoke-static {v2, v3}, Lcom/oppo/camera/OppoCamera;->access$5600(Lcom/oppo/camera/OppoCamera;I)V

    .line 1569
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$5700(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/views/RotateZoomView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1570
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$5700(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/views/RotateZoomView;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$5500(Lcom/oppo/camera/OppoCamera;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oppo/camera/views/RotateZoomView;->setDegree(I)V

    goto :goto_0
.end method
