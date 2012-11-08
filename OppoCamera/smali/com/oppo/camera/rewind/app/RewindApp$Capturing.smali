.class Lcom/oppo/camera/rewind/app/RewindApp$Capturing;
.super Lcom/oppo/camera/rewind/app/RewindApp$ReceivingImages;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Capturing"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindApp;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 881
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/rewind/app/RewindApp$ReceivingImages;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 881
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected end()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/camera/rewind/app/RewindApp;->mCapturing:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$2702(Lcom/oppo/camera/rewind/app/RewindApp;Z)Z

    .line 898
    return-void
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 901
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewEnabled:Z
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1400(Lcom/oppo/camera/rewind/app/RewindApp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->reset()V

    .line 904
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mCameraInterface:Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$2000(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;->release()V

    .line 905
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mCurSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1000(Lcom/oppo/camera/rewind/app/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1300(Lcom/oppo/camera/rewind/app/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 906
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    new-instance v1, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-direct {v1, v2, v3}, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1500(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$State;)V

    .line 911
    :goto_0
    const/4 v0, 0x1

    .line 914
    :goto_1
    return v0

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    new-instance v1, Lcom/oppo/camera/rewind/app/RewindApp$PendingPreviewStartUp;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-direct {v1, v2, v3}, Lcom/oppo/camera/rewind/app/RewindApp$PendingPreviewStartUp;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1500(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$State;)V

    goto :goto_0

    .line 914
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected start()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 883
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #setter for: Lcom/oppo/camera/rewind/app/RewindApp;->mIsRunning:Z
    invoke-static {v1, v3}, Lcom/oppo/camera/rewind/app/RewindApp;->access$2602(Lcom/oppo/camera/rewind/app/RewindApp;Z)Z

    .line 884
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v2, 0x1

    #setter for: Lcom/oppo/camera/rewind/app/RewindApp;->mCapturing:Z
    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/app/RewindApp;->access$2702(Lcom/oppo/camera/rewind/app/RewindApp;Z)Z

    .line 885
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #setter for: Lcom/oppo/camera/rewind/app/RewindApp;->mSourcesLoaded:Z
    invoke-static {v1, v3}, Lcom/oppo/camera/rewind/app/RewindApp;->access$2302(Lcom/oppo/camera/rewind/app/RewindApp;Z)Z

    .line 887
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const-string v2, ""

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->showLtw(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/app/RewindApp;->access$2400(Lcom/oppo/camera/rewind/app/RewindApp;Ljava/lang/String;)V

    .line 888
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mCameraInterface:Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$2000(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;->getPostview()[B

    move-result-object v0

    .line 889
    .local v0, postview:[B
    if-eqz v0, :cond_0

    .line 890
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3100(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer;

    move-result-object v1

    new-instance v2, Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewWidth:I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RewindApp;->access$2800(Lcom/oppo/camera/rewind/app/RewindApp;)I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewHeight:I
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RewindApp;->access$2900(Lcom/oppo/camera/rewind/app/RewindApp;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3000(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/scalado/base/Image$Config;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/oppo/camera/rewind/app/RewindViewer;->showPostview([BLcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 893
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mCameraInterface:Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$2000(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;->takeBurst()V

    .line 894
    return-void
.end method

.method protected surfaceChanged(Landroid/view/SurfaceView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 918
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1300(Lcom/oppo/camera/rewind/app/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 925
    :cond_0
    return-void
.end method
