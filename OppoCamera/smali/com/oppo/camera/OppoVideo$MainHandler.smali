.class Lcom/oppo/camera/OppoVideo$MainHandler;
.super Landroid/os/Handler;
.source "OppoVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoVideo;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 1463
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/OppoVideo;Lcom/oppo/camera/OppoVideo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1463
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo$MainHandler;-><init>(Lcom/oppo/camera/OppoVideo;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x6

    const/16 v6, 0xb4

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1466
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1640
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1468
    :pswitch_1
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->updateRecordingTime()V
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$3800(Lcom/oppo/camera/OppoVideo;)V

    goto :goto_0

    .line 1471
    :pswitch_2
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-virtual {v5}, Lcom/oppo/camera/OppoVideo;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 1472
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-virtual {v5}, Lcom/oppo/camera/OppoVideo;->finish()V

    goto :goto_0

    .line 1475
    :pswitch_3
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->restartPreview()Z
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$3900(Lcom/oppo/camera/OppoVideo;)Z

    goto :goto_0

    .line 1478
    :pswitch_4
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->isGetThumbnailSuccess:Z
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$4100(Lcom/oppo/camera/OppoVideo;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$2000(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1479
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$2000(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oppo/camera/views/RotateImageView;->invalidate()V

    .line 1480
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$2000(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oppo/camera/views/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1481
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->recycleBitmap()V
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$2200(Lcom/oppo/camera/OppoVideo;)V

    goto :goto_0

    .line 1483
    :cond_1
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$2000(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1484
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-virtual {v5}, Lcom/oppo/camera/OppoVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1485
    .local v4, thumbnail:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$2000(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/oppo/camera/views/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1490
    .end local v4           #thumbnail:Landroid/graphics/drawable/Drawable;
    :pswitch_5
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    const/16 v7, 0x9

    #calls: Lcom/oppo/camera/OppoVideo;->removeMessage(I)V
    invoke-static {v6, v7}, Lcom/oppo/camera/OppoVideo;->access$4200(Lcom/oppo/camera/OppoVideo;I)V

    .line 1491
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->isGetThumbnailSuccess:Z
    invoke-static {v6, v5}, Lcom/oppo/camera/OppoVideo;->access$4102(Lcom/oppo/camera/OppoVideo;Z)Z

    .line 1493
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mAttemptGetThumbnailCount:I
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$4300(Lcom/oppo/camera/OppoVideo;)I

    move-result v6

    if-le v6, v3, :cond_2

    .line 1494
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->mAttemptGetThumbnailCount:I
    invoke-static {v6, v5}, Lcom/oppo/camera/OppoVideo;->access$4302(Lcom/oppo/camera/OppoVideo;I)I

    .line 1495
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->fixKeyEventInterceptorInProcess([I)Z
    invoke-static {v5, v8}, Lcom/oppo/camera/OppoVideo;->access$4400(Lcom/oppo/camera/OppoVideo;[I)Z

    .line 1496
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->enableUI()V
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$2300(Lcom/oppo/camera/OppoVideo;)V

    .line 1497
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$2000(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1498
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-virtual {v5}, Lcom/oppo/camera/OppoVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1499
    .restart local v4       #thumbnail:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$2000(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/oppo/camera/views/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1504
    .end local v4           #thumbnail:Landroid/graphics/drawable/Drawable;
    :cond_2
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/oppo/camera/OppoVideo$MainHandler$1;

    invoke-direct {v6, p0}, Lcom/oppo/camera/OppoVideo$MainHandler$1;-><init>(Lcom/oppo/camera/OppoVideo$MainHandler;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1545
    :pswitch_6
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->enableUI()V
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$2300(Lcom/oppo/camera/OppoVideo;)V

    .line 1546
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->fixKeyEventInterceptorInProcess([I)Z
    invoke-static {v5, v8}, Lcom/oppo/camera/OppoVideo;->access$5100(Lcom/oppo/camera/OppoVideo;[I)Z

    goto/16 :goto_0

    .line 1549
    :pswitch_7
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->mClickBackCount:I
    invoke-static {v6, v5}, Lcom/oppo/camera/OppoVideo;->access$5202(Lcom/oppo/camera/OppoVideo;I)I

    goto/16 :goto_0

    .line 1552
    :pswitch_8
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mAttemptGetThumbnailCount:I
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$4300(Lcom/oppo/camera/OppoVideo;)I

    move-result v7

    if-le v7, v3, :cond_4

    .line 1553
    const-string v6, "OppoVideo"

    const-string v7, "Attempt to get thumbnial fail !!"

    invoke-static {v6, v7, v3}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1554
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecording:Z
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$200(Lcom/oppo/camera/OppoVideo;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1555
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->enableUI()V
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$2300(Lcom/oppo/camera/OppoVideo;)V

    .line 1556
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->fixKeyEventInterceptorInProcess([I)Z
    invoke-static {v6, v8}, Lcom/oppo/camera/OppoVideo;->access$5300(Lcom/oppo/camera/OppoVideo;[I)Z

    .line 1558
    :cond_3
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->mAttemptGetThumbnailCount:I
    invoke-static {v6, v5}, Lcom/oppo/camera/OppoVideo;->access$4302(Lcom/oppo/camera/OppoVideo;I)I

    .line 1559
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$800(Lcom/oppo/camera/OppoVideo;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1560
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecording:Z
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$200(Lcom/oppo/camera/OppoVideo;)Z

    move-result v7

    #calls: Lcom/oppo/camera/OppoVideo;->changeRecordingControlBar(Z)V
    invoke-static {v6, v7}, Lcom/oppo/camera/OppoVideo;->access$5400(Lcom/oppo/camera/OppoVideo;Z)V

    .line 1561
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->mStoping:Z
    invoke-static {v6, v5}, Lcom/oppo/camera/OppoVideo;->access$2102(Lcom/oppo/camera/OppoVideo;Z)Z

    goto/16 :goto_0

    .line 1564
    :cond_4
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v8, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v8

    #setter for: Lcom/oppo/camera/OppoVideo;->mTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/oppo/camera/OppoVideo;->access$4602(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1565
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v8, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v9, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;
    invoke-static {v9}, Lcom/oppo/camera/OppoVideo;->access$5500(Lcom/oppo/camera/OppoVideo;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/oppo/camera/OppoVideo;->getLastVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/oppo/camera/OppoVideo;->access$4900(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    #setter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/oppo/camera/OppoVideo;->access$4002(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1566
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 1567
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$800(Lcom/oppo/camera/OppoVideo;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1568
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->mAttemptGetThumbnailCount:I
    invoke-static {v7, v5}, Lcom/oppo/camera/OppoVideo;->access$4302(Lcom/oppo/camera/OppoVideo;I)I

    .line 1569
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v7, v7, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1570
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v8, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v9, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v9

    #calls: Lcom/oppo/camera/OppoVideo;->getSmallShotAnimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/oppo/camera/OppoVideo;->access$5000(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    #setter for: Lcom/oppo/camera/OppoVideo;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/oppo/camera/OppoVideo;->access$1802(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1571
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v7, v7, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v7, v5}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    .line 1572
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mCameraId:I
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$1100(Lcom/oppo/camera/OppoVideo;)I

    move-result v7

    if-ne v7, v3, :cond_9

    .line 1573
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v7

    if-ne v7, v6, :cond_7

    .line 1574
    :cond_5
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, v6, v3}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    #setter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/oppo/camera/OppoVideo;->access$4002(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1587
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v5, v5, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$1800(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->show(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1588
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v5, v5, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v5}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->startAnimation()V

    .line 1589
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecording:Z
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$200(Lcom/oppo/camera/OppoVideo;)Z

    move-result v6

    #calls: Lcom/oppo/camera/OppoVideo;->changeRecordingControlBar(Z)V
    invoke-static {v5, v6}, Lcom/oppo/camera/OppoVideo;->access$5400(Lcom/oppo/camera/OppoVideo;Z)V

    goto/16 :goto_0

    .line 1575
    :cond_7
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v7

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_8

    .line 1576
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, v5, v3}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6, v5}, Lcom/oppo/camera/OppoVideo;->access$4002(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1577
    :cond_8
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v7

    const/16 v8, 0x5a

    if-ne v7, v8, :cond_6

    .line 1578
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v8, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8, v6, v3}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v8

    #setter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/oppo/camera/OppoVideo;->access$4002(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1579
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v8, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/oppo/camera/OppoVideo;->access$1800(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8, v6, v5}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/oppo/camera/OppoVideo;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v7, v5}, Lcom/oppo/camera/OppoVideo;->access$1802(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1582
    :cond_9
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v7

    const/16 v8, 0x5a

    if-ne v7, v8, :cond_6

    .line 1583
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v8, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8, v6, v5}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v8

    #setter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/oppo/camera/OppoVideo;->access$4002(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1584
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v8, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/oppo/camera/OppoVideo;->access$1800(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8, v6, v5}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/oppo/camera/OppoVideo;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v7, v5}, Lcom/oppo/camera/OppoVideo;->access$1802(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 1592
    :cond_a
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$4308(Lcom/oppo/camera/OppoVideo;)I

    .line 1593
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$800(Lcom/oppo/camera/OppoVideo;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v10, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1598
    :pswitch_9
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v5, v5, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-eqz v5, :cond_0

    .line 1599
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v5, v5, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1603
    :pswitch_a
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mAttemptGetThumbnailCount:I
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$4300(Lcom/oppo/camera/OppoVideo;)I

    move-result v7

    if-le v7, v3, :cond_b

    .line 1605
    :try_start_0
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$5600(Lcom/oppo/camera/OppoVideo;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->lock()V

    .line 1606
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$5600(Lcom/oppo/camera/OppoVideo;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1615
    :cond_b
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$5500(Lcom/oppo/camera/OppoVideo;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1616
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v8, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v8

    #setter for: Lcom/oppo/camera/OppoVideo;->mTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/oppo/camera/OppoVideo;->access$4602(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1617
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v8, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v9, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;
    invoke-static {v9}, Lcom/oppo/camera/OppoVideo;->access$5500(Lcom/oppo/camera/OppoVideo;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/oppo/camera/OppoVideo;->getLastVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/oppo/camera/OppoVideo;->access$4900(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    #setter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/oppo/camera/OppoVideo;->access$4002(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1618
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 1619
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->mAttemptGetThumbnailCount:I
    invoke-static {v7, v5}, Lcom/oppo/camera/OppoVideo;->access$4302(Lcom/oppo/camera/OppoVideo;I)I

    .line 1620
    invoke-static {}, Lcom/oppo/camera/CameraHolder;->instance()Lcom/oppo/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oppo/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 1621
    .local v1, info:[Landroid/hardware/Camera$CameraInfo;
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mCameraId:I
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$1100(Lcom/oppo/camera/OppoVideo;)I

    move-result v7

    aget-object v7, v1, v7

    iget v7, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v7, v3, :cond_d

    move v2, v3

    .line 1622
    .local v2, mirror:Z
    :goto_2
    if-eqz v2, :cond_e

    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v7

    if-ne v7, v6, :cond_e

    .line 1623
    .local v3, needRotate:Z
    :cond_c
    :goto_3
    const-string v7, "OppoVideo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mOrientation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v9}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1624
    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v8, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v9, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientationCompensation:I
    invoke-static {v9}, Lcom/oppo/camera/OppoVideo;->access$3300(Lcom/oppo/camera/OppoVideo;)I

    move-result v9

    neg-int v9, v9

    if-eqz v3, :cond_f

    :goto_4
    add-int/2addr v6, v9

    invoke-static {v8, v6, v2}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    #setter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v6}, Lcom/oppo/camera/OppoVideo;->access$4002(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1626
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$5900(Lcom/oppo/camera/OppoVideo;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/oppo/camera/OppoVideo;->access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1627
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/oppo/camera/OppoVideo;->access$5900(Lcom/oppo/camera/OppoVideo;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1607
    .end local v1           #info:[Landroid/hardware/Camera$CameraInfo;
    .end local v2           #mirror:Z
    .end local v3           #needRotate:Z
    :catch_0
    move-exception v0

    .line 1608
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->closeCamera()V
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$5700(Lcom/oppo/camera/OppoVideo;)V

    .line 1609
    const-string v5, "OppoVideo"

    const-string v6, "MainHandler, MSG_SHOW_ALERT exception"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->showCameraErrorAndFinish()V
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$5800(Lcom/oppo/camera/OppoVideo;)V

    .line 1611
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "failed to connect camera service"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_d
    move v2, v5

    .line 1621
    goto :goto_2

    .restart local v2       #mirror:Z
    :cond_e
    move v3, v5

    .line 1622
    goto :goto_3

    .restart local v3       #needRotate:Z
    :cond_f
    move v6, v5

    .line 1624
    goto :goto_4

    .line 1629
    .end local v1           #info:[Landroid/hardware/Camera$CameraInfo;
    .end local v2           #mirror:Z
    .end local v3           #needRotate:Z
    :cond_10
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$4308(Lcom/oppo/camera/OppoVideo;)I

    .line 1630
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$800(Lcom/oppo/camera/OppoVideo;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xa

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1635
    :pswitch_b
    iget-object v5, p0, Lcom/oppo/camera/OppoVideo$MainHandler;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->turnOnContinuousAF()V
    invoke-static {v5}, Lcom/oppo/camera/OppoVideo;->access$2500(Lcom/oppo/camera/OppoVideo;)V

    goto/16 :goto_0

    .line 1466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method
