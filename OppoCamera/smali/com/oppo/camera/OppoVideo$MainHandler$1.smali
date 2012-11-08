.class Lcom/oppo/camera/OppoVideo$MainHandler$1;
.super Ljava/lang/Object;
.source "OppoVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/OppoVideo$MainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/camera/OppoVideo$MainHandler;


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoVideo$MainHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1508
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->getLastVideoName()Ljava/lang/String;
    invoke-static {v3}, Lcom/oppo/camera/OppoVideo;->access$4500(Lcom/oppo/camera/OppoVideo;)Ljava/lang/String;

    move-result-object v1

    .line 1509
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1510
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v4, v4, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/oppo/camera/OppoVideo;->mTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/oppo/camera/OppoVideo;->access$4602(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v4, v4, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mSavePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$4700(Lcom/oppo/camera/OppoVideo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1512
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;
    invoke-static {v3}, Lcom/oppo/camera/OppoVideo;->access$4800(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/utils/StorageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oppo/camera/utils/StorageManager;->fileScan(Ljava/lang/String;)V

    .line 1513
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->getLastVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v3, v2}, Lcom/oppo/camera/OppoVideo;->access$4900(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1514
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 1515
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->removeMessage(I)V
    invoke-static {v3, v9}, Lcom/oppo/camera/OppoVideo;->access$4200(Lcom/oppo/camera/OppoVideo;I)V

    .line 1516
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->removeMessage(I)V
    invoke-static {v3, v7}, Lcom/oppo/camera/OppoVideo;->access$4200(Lcom/oppo/camera/OppoVideo;I)V

    .line 1517
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->mAttemptGetThumbnailCount:I
    invoke-static {v3, v6}, Lcom/oppo/camera/OppoVideo;->access$4302(Lcom/oppo/camera/OppoVideo;I)I

    .line 1518
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v4, v4, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->getSmallShotAnimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v4, v0}, Lcom/oppo/camera/OppoVideo;->access$5000(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/oppo/camera/OppoVideo;->access$4002(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1519
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mCameraId:I
    invoke-static {v3}, Lcom/oppo/camera/OppoVideo;->access$1100(Lcom/oppo/camera/OppoVideo;)I

    move-result v3

    if-ne v3, v8, :cond_1

    .line 1520
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v3}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    .line 1521
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v4, v4, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v5, v5, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v5

    add-int/lit8 v5, v5, 0x5a

    invoke-static {v4, v5, v6}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/oppo/camera/OppoVideo;->access$4002(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1528
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/oppo/camera/utils/ImageUtil;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 1529
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->isGetThumbnailSuccess:Z
    invoke-static {v3, v8}, Lcom/oppo/camera/OppoVideo;->access$4102(Lcom/oppo/camera/OppoVideo;Z)Z

    .line 1530
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/OppoVideo;->access$800(Lcom/oppo/camera/OppoVideo;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1541
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #path:Ljava/lang/String;
    :goto_1
    return-void

    .line 1523
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #path:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mCameraId:I
    invoke-static {v3}, Lcom/oppo/camera/OppoVideo;->access$1100(Lcom/oppo/camera/OppoVideo;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1524
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v3}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_0

    .line 1525
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v4, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v4, v4, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v5, v5, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v5

    add-int/lit8 v5, v5, 0x5a

    invoke-static {v4, v5, v6}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/oppo/camera/OppoVideo;->access$4002(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1532
    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->isGetThumbnailSuccess:Z
    invoke-static {v3, v6}, Lcom/oppo/camera/OppoVideo;->access$4102(Lcom/oppo/camera/OppoVideo;Z)Z

    .line 1533
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-static {v3}, Lcom/oppo/camera/OppoVideo;->access$4308(Lcom/oppo/camera/OppoVideo;)I

    .line 1534
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/OppoVideo;->access$800(Lcom/oppo/camera/OppoVideo;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v9, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1537
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #path:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->removeMessage(I)V
    invoke-static {v3, v7}, Lcom/oppo/camera/OppoVideo;->access$4200(Lcom/oppo/camera/OppoVideo;I)V

    .line 1538
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$MainHandler$1;->this$1:Lcom/oppo/camera/OppoVideo$MainHandler;

    iget-object v3, v3, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/camera/OppoVideo;->access$800(Lcom/oppo/camera/OppoVideo;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
