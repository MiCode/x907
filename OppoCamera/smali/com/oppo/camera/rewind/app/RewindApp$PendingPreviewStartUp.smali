.class Lcom/oppo/camera/rewind/app/RewindApp$PendingPreviewStartUp;
.super Lcom/oppo/camera/rewind/app/RewindApp$State;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingPreviewStartUp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindApp;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 846
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp$PendingPreviewStartUp;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/rewind/app/RewindApp$State;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 846
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp$PendingPreviewStartUp;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 855
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 859
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected surfaceChanged(Landroid/view/SurfaceView;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$PendingPreviewStartUp;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1300(Lcom/oppo/camera/rewind/app/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$PendingPreviewStartUp;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    new-instance v1, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp$PendingPreviewStartUp;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1500(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$State;)V

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$PendingPreviewStartUp;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->hideTopbar()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1800(Lcom/oppo/camera/rewind/app/RewindApp;)V

    .line 852
    return-void
.end method
