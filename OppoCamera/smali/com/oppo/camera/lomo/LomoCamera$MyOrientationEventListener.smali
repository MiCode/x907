.class Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "LomoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCamera;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    .line 1255
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1256
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 1260
    invoke-static {p1}, Lcom/oppo/camera/utils/ImageUtil;->roundOrientation(I)I

    move-result v0

    .line 1261
    .local v0, currentOrientation:I
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOrientation:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$5100(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1262
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mOrientation:I
    invoke-static {v2, v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$5102(Lcom/oppo/camera/lomo/LomoCamera;I)I

    .line 1264
    :cond_0
    const/4 v1, 0x0

    .line 1265
    .local v1, orientationCompensation:I
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOrientation:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$5100(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-static {v3}, Lcom/oppo/camera/utils/ImageUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    add-int v1, v2, v3

    .line 1266
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$6100(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 1267
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mOrientationCompensation:I
    invoke-static {v2, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$6102(Lcom/oppo/camera/lomo/LomoCamera;I)I

    .line 1268
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->intentStart:Z
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$6200(Lcom/oppo/camera/lomo/LomoCamera;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1269
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$6100(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v3

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->setOrientationIndicator(I)V
    invoke-static {v2, v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$6300(Lcom/oppo/camera/lomo/LomoCamera;I)V

    .line 1272
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$6400(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/views/RotateZoomView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1273
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$6400(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/views/RotateZoomView;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$6100(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oppo/camera/views/RotateZoomView;->setDegree(I)V

    .line 1278
    :cond_2
    return-void
.end method
