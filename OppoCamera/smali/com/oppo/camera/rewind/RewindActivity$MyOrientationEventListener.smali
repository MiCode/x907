.class Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "RewindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    .line 1074
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1075
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1079
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->roundOrientation(I)I
    invoke-static {v2, p1}, Lcom/oppo/camera/rewind/RewindActivity;->access$4700(Lcom/oppo/camera/rewind/RewindActivity;I)I

    move-result v2

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mOrientation:I
    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/RewindActivity;->access$3002(Lcom/oppo/camera/rewind/RewindActivity;I)I

    .line 1080
    const/4 v0, 0x0

    .line 1081
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mOrientation:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$3000(Lcom/oppo/camera/rewind/RewindActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-static {v2}, Lcom/oppo/camera/rewind/RewindActivity;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int v0, v1, v2

    .line 1082
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$4800(Lcom/oppo/camera/rewind/RewindActivity;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #setter for: Lcom/oppo/camera/rewind/RewindActivity;->mOrientationCompensation:I
    invoke-static {v1, v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$4802(Lcom/oppo/camera/rewind/RewindActivity;I)I

    .line 1084
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/RewindActivity;->access$4800(Lcom/oppo/camera/rewind/RewindActivity;)I

    move-result v2

    #calls: Lcom/oppo/camera/rewind/RewindActivity;->setOrientationIndicator(I)V
    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/RewindActivity;->access$4900(Lcom/oppo/camera/rewind/RewindActivity;I)V

    .line 1085
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;
    invoke-static {v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$5000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/views/RotateZoomView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;
    invoke-static {v1}, Lcom/oppo/camera/rewind/RewindActivity;->access$5000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/views/RotateZoomView;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/RewindActivity;->access$4800(Lcom/oppo/camera/rewind/RewindActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/RotateZoomView;->setDegree(I)V

    .line 1089
    :cond_0
    return-void
.end method
