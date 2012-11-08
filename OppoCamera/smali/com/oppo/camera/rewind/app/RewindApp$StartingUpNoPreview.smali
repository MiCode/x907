.class Lcom/oppo/camera/rewind/app/RewindApp$StartingUpNoPreview;
.super Lcom/oppo/camera/rewind/app/RewindApp$State;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartingUpNoPreview"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindApp;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 811
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpNoPreview;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/rewind/app/RewindApp$State;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 811
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpNoPreview;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected start()V
    .locals 3

    .prologue
    .line 813
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpNoPreview;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v1, 0x0

    const/4 v2, 0x4

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->setViewVisibilities(II)V
    invoke-static {v0, v1, v2}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1900(Lcom/oppo/camera/rewind/app/RewindApp;II)V

    .line 814
    return-void
.end method

.method protected surfaceChanged(Landroid/view/SurfaceView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpNoPreview;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1100(Lcom/oppo/camera/rewind/app/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpNoPreview;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mCameraInterface:Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$2000(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;->startWithoutPreview()V

    .line 820
    :cond_0
    return-void
.end method
