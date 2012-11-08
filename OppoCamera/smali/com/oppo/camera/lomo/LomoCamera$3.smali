.class Lcom/oppo/camera/lomo/LomoCamera$3;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/lomo/LomoCamera;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCamera;

.field tlatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 1
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$3;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$3;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$500(Lcom/oppo/camera/lomo/LomoCamera;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$3;->tlatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 352
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$3;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    const/4 v3, 0x0

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mStartPreviewFail:Z
    invoke-static {v2, v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$602(Lcom/oppo/camera/lomo/LomoCamera;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 355
    :try_start_1
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$3;->tlatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$3;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->startPreview()V
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$700(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 366
    :goto_1
    return-void

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, ie:Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$3;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    const/4 v3, 0x1

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mStartPreviewFail:Z
    invoke-static {v2, v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$602(Lcom/oppo/camera/lomo/LomoCamera;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 361
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 363
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$3;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mStartPreviewFail:Z
    invoke-static {v2, v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$602(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    .line 364
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$3;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$800(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
