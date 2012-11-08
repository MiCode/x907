.class abstract Lcom/oppo/camera/rewind/app/RewindApp$State;
.super Ljava/lang/Object;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "State"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindApp;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 0
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp$State;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 745
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp$State;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected acceptsImages()Z
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method protected beforeSwitching()V
    .locals 0

    .prologue
    .line 747
    return-void
.end method

.method protected end()V
    .locals 0

    .prologue
    .line 753
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 761
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$State;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewEnabled:Z
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1400(Lcom/oppo/camera/rewind/app/RewindApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    const/4 v0, 0x1

    .line 766
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 773
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$State;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewEnabled:Z
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1400(Lcom/oppo/camera/rewind/app/RewindApp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$State;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->reset()V

    .line 776
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$State;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mCurSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1000(Lcom/oppo/camera/rewind/app/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$State;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1300(Lcom/oppo/camera/rewind/app/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 777
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$State;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    new-instance v1, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp$State;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-direct {v1, v2, v3}, Lcom/oppo/camera/rewind/app/RewindApp$StartingUpPreview;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1500(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$State;)V

    .line 782
    :goto_0
    const/4 v0, 0x1

    .line 785
    :goto_1
    return v0

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$State;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    new-instance v1, Lcom/oppo/camera/rewind/app/RewindApp$PendingPreviewStartUp;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp$State;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-direct {v1, v2, v3}, Lcom/oppo/camera/rewind/app/RewindApp$PendingPreviewStartUp;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1500(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$State;)V

    goto :goto_0

    .line 785
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected start()V
    .locals 0

    .prologue
    .line 750
    return-void
.end method

.method protected surfaceChanged(Landroid/view/SurfaceView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 756
    return-void
.end method
