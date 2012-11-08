.class Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "OppoVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoVideo;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/OppoVideo;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoVideo;

    .line 1232
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1233
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1238
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-static {p1}, Lcom/oppo/camera/utils/ImageUtil;->roundOrientation(I)I

    move-result v2

    #setter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoVideo;->access$1902(Lcom/oppo/camera/OppoVideo;I)I

    .line 1243
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-static {v2}, Lcom/oppo/camera/utils/ImageUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int v0, v1, v2

    .line 1245
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$3300(Lcom/oppo/camera/OppoVideo;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1246
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->mOrientationCompensation:I
    invoke-static {v1, v0}, Lcom/oppo/camera/OppoVideo;->access$3302(Lcom/oppo/camera/OppoVideo;I)I

    .line 1247
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mIntentStart:Z
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$3400(Lcom/oppo/camera/OppoVideo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1248
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/oppo/camera/OppoVideo;->access$3300(Lcom/oppo/camera/OppoVideo;)I

    move-result v2

    #calls: Lcom/oppo/camera/OppoVideo;->setOrientationIndicator(I)V
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoVideo;->access$3500(Lcom/oppo/camera/OppoVideo;I)V

    .line 1251
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$3600(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/RotateZoomView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1252
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$3600(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/RotateZoomView;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/oppo/camera/OppoVideo;->access$3300(Lcom/oppo/camera/OppoVideo;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/RotateZoomView;->setDegree(I)V

    goto :goto_0
.end method
