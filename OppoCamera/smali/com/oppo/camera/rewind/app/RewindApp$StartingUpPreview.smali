.class Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;
.super Lcom/oppo/camera/rewind/app/RewindApp$State;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartingUpPreview"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindApp;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/rewind/app/RewindApp$State;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 823
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected start()V
    .locals 4

    .prologue
    .line 831
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mIsPreviewSurfaceDestoryed:Z
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$600(Lcom/oppo/camera/rewind/app/RewindApp;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    new-instance v1, Lcom/oppo/camera/rewind/app/RewindApp$Previewing;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/oppo/camera/rewind/app/RewindApp$Previewing;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1500(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$State;)V

    .line 837
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v1, 0x0

    const/4 v2, 0x4

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->setViewVisibilities(II)V
    invoke-static {v0, v1, v2}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1900(Lcom/oppo/camera/rewind/app/RewindApp;II)V

    .line 835
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->hideTopbar()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1800(Lcom/oppo/camera/rewind/app/RewindApp;)V

    goto :goto_0
.end method

.method protected surfaceChanged(Landroid/view/SurfaceView;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 840
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1100(Lcom/oppo/camera/rewind/app/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    new-instance v1, Lcom/oppo/camera/rewind/app/RewindApp$Previewing;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/oppo/camera/rewind/app/RewindApp$Previewing;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1500(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$State;)V

    .line 843
    :cond_0
    return-void
.end method
