.class Lcom/oppo/camera/OppoVideo$10;
.super Ljava/lang/Object;
.source "OppoVideo.java"

# interfaces
.implements Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoVideo;


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 2604
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$10;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageMounted()V
    .locals 1

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$10;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->refreshThumbnail()V
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$8000(Lcom/oppo/camera/OppoVideo;)V

    .line 2619
    return-void
.end method

.method public onStorageUnmount()V
    .locals 4

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$10;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecording:Z
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$200(Lcom/oppo/camera/OppoVideo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2609
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$10;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->onStopVideoRecording()Z
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$400(Lcom/oppo/camera/OppoVideo;)Z

    .line 2611
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$10;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$7900(Lcom/oppo/camera/OppoVideo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2612
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$10;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$800(Lcom/oppo/camera/OppoVideo;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2614
    :cond_1
    return-void
.end method
