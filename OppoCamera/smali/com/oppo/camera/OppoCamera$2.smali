.class Lcom/oppo/camera/OppoCamera$2;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/OppoCamera;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mTlatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoCamera;)V
    .locals 1
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$2;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$2;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mDevlatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$900(Lcom/oppo/camera/OppoCamera;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera$2;->mTlatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 344
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$2;->this$0:Lcom/oppo/camera/OppoCamera;

    const/4 v3, 0x0

    #setter for: Lcom/oppo/camera/OppoCamera;->mStartPreviewFail:Z
    invoke-static {v2, v3}, Lcom/oppo/camera/OppoCamera;->access$1002(Lcom/oppo/camera/OppoCamera;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 346
    :try_start_1
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$2;->mTlatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 351
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$2;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->startPreview()V
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$1100(Lcom/oppo/camera/OppoCamera;)V

    .line 357
    :goto_1
    return-void

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, ie:Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$2;->this$0:Lcom/oppo/camera/OppoCamera;

    const/4 v3, 0x1

    #setter for: Lcom/oppo/camera/OppoCamera;->mStartPreviewFail:Z
    invoke-static {v2, v3}, Lcom/oppo/camera/OppoCamera;->access$1002(Lcom/oppo/camera/OppoCamera;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 352
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$2;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mStartPreviewFail:Z
    invoke-static {v2, v4}, Lcom/oppo/camera/OppoCamera;->access$1002(Lcom/oppo/camera/OppoCamera;Z)Z

    goto :goto_1
.end method
