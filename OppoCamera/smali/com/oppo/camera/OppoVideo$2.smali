.class Lcom/oppo/camera/OppoVideo$2;
.super Ljava/lang/Object;
.source "OppoVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/OppoVideo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mTlatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/oppo/camera/OppoVideo;


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoVideo;)V
    .locals 1
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$2;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$2;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mDevlatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$900(Lcom/oppo/camera/OppoVideo;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo$2;->mTlatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 301
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/OppoVideo$2;->this$0:Lcom/oppo/camera/OppoVideo;

    const/4 v3, 0x0

    #setter for: Lcom/oppo/camera/OppoVideo;->mStartPreviewFail:Z
    invoke-static {v2, v3}, Lcom/oppo/camera/OppoVideo;->access$1002(Lcom/oppo/camera/OppoVideo;Z)Z

    .line 302
    iget-object v2, p0, Lcom/oppo/camera/OppoVideo$2;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$2;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mCameraId:I
    invoke-static {v3}, Lcom/oppo/camera/OppoVideo;->access$1100(Lcom/oppo/camera/OppoVideo;)I

    move-result v3

    #calls: Lcom/oppo/camera/OppoVideo;->ensureCameraDevice(I)V
    invoke-static {v2, v3}, Lcom/oppo/camera/OppoVideo;->access$1200(Lcom/oppo/camera/OppoVideo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 305
    :try_start_1
    iget-object v2, p0, Lcom/oppo/camera/OppoVideo$2;->mTlatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 310
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/oppo/camera/OppoVideo$2;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->startPreview()V
    invoke-static {v2}, Lcom/oppo/camera/OppoVideo;->access$1300(Lcom/oppo/camera/OppoVideo;)V

    .line 315
    :goto_1
    return-void

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, ie:Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/oppo/camera/OppoVideo$2;->this$0:Lcom/oppo/camera/OppoVideo;

    const/4 v3, 0x1

    #setter for: Lcom/oppo/camera/OppoVideo;->mStartPreviewFail:Z
    invoke-static {v2, v3}, Lcom/oppo/camera/OppoVideo;->access$1002(Lcom/oppo/camera/OppoVideo;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 311
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    iget-object v2, p0, Lcom/oppo/camera/OppoVideo$2;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->mStartPreviewFail:Z
    invoke-static {v2, v4}, Lcom/oppo/camera/OppoVideo;->access$1002(Lcom/oppo/camera/OppoVideo;Z)Z

    goto :goto_1
.end method
