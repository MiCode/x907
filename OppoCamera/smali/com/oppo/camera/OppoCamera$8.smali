.class Lcom/oppo/camera/OppoCamera$8;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 10
    .parameter "data"
    .parameter "camera"

    .prologue
    const/16 v9, 0x12

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1339
    const-string v4, "OppoCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mJpegCallback onPictureTaken:data lenght = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; mHasDoAnimationWithPostView = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mHasDoAnimationWithPostView:Z
    invoke-static {v8}, Lcom/oppo/camera/OppoCamera;->access$3600(Lcom/oppo/camera/OppoCamera;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v5}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1340
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    const/16 v7, 0x17

    #calls: Lcom/oppo/camera/OppoCamera;->removeMsg(I)V
    invoke-static {v4, v7}, Lcom/oppo/camera/OppoCamera;->access$2600(Lcom/oppo/camera/OppoCamera;I)V

    .line 1341
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mPausing:Z
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$1400(Lcom/oppo/camera/OppoCamera;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1428
    :goto_0
    return-void

    .line 1344
    :cond_0
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$3700(Lcom/oppo/camera/OppoCamera;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1345
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    new-instance v6, Lcom/oppo/camera/OppoCamera$8$1;

    invoke-direct {v6, p0, p1}, Lcom/oppo/camera/OppoCamera$8$1;-><init>(Lcom/oppo/camera/OppoCamera$8;[B)V

    invoke-virtual {v4, v6}, Lcom/oppo/camera/OppoCamera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1375
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/oppo/camera/OppoCamera$8$2;

    invoke-direct {v4, p0, p1}, Lcom/oppo/camera/OppoCamera$8$2;-><init>(Lcom/oppo/camera/OppoCamera$8;[B)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1395
    .local v3, savePicThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1398
    :try_start_0
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$4700(Lcom/oppo/camera/OppoCamera;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/scalado/camera/FeatureCamera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    :goto_1
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mPreviewing:Z
    invoke-static {v4, v5}, Lcom/oppo/camera/OppoCamera;->access$4802(Lcom/oppo/camera/OppoCamera;Z)Z

    .line 1404
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mFeatureMode:I
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$1500(Lcom/oppo/camera/OppoCamera;)I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraId:I
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$1600(Lcom/oppo/camera/OppoCamera;)I

    move-result v4

    if-nez v4, :cond_1

    .line 1405
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z
    invoke-static {v4, v5}, Lcom/oppo/camera/OppoCamera;->access$302(Lcom/oppo/camera/OppoCamera;Z)Z

    .line 1426
    .end local v3           #savePicThread:Ljava/lang/Thread;
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mStatus:I
    invoke-static {v4, v5}, Lcom/oppo/camera/OppoCamera;->access$5102(Lcom/oppo/camera/OppoCamera;I)I

    goto :goto_0

    .line 1399
    .restart local v3       #savePicThread:Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 1400
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1401
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$2700(Lcom/oppo/camera/OppoCamera;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1408
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #savePicThread:Ljava/lang/Thread;
    :cond_2
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z
    invoke-static {v4, v5}, Lcom/oppo/camera/OppoCamera;->access$302(Lcom/oppo/camera/OppoCamera;Z)Z

    .line 1409
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mCaptureOnlyData:[B
    invoke-static {v4, p1}, Lcom/oppo/camera/OppoCamera;->access$4902(Lcom/oppo/camera/OppoCamera;[B)[B

    .line 1410
    const/4 v0, 0x0

    .line 1411
    .local v0, bitmap:Landroid/graphics/Bitmap;
    array-length v4, p1

    invoke-static {p1, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1412
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraId:I
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$1600(Lcom/oppo/camera/OppoCamera;)I

    move-result v4

    if-ne v4, v5, :cond_3

    move v2, v5

    .line 1413
    .local v2, mirror:Z
    :goto_3
    if-eqz v2, :cond_4

    const/16 v4, 0xb4

    :goto_4
    iget-object v7, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mRotation:I
    invoke-static {v7}, Lcom/oppo/camera/OppoCamera;->access$2200(Lcom/oppo/camera/OppoCamera;)I

    move-result v7

    sub-int/2addr v4, v7

    rem-int/lit16 v7, v4, 0x168

    if-eqz v2, :cond_5

    move v4, v5

    :goto_5
    invoke-static {v0, v7, v4}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1414
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v0}, Lcom/oppo/camera/OppoCamera;->access$3802(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1415
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mReviewFrame:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$5000(Lcom/oppo/camera/OppoCamera;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1416
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mReviewFrame:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$5000(Lcom/oppo/camera/OppoCamera;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1417
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-virtual {v4}, Lcom/oppo/camera/OppoCamera;->showPostCaptureAlert()Z

    .line 1419
    :try_start_1
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$4700(Lcom/oppo/camera/OppoCamera;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/scalado/camera/FeatureCamera;->stopPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1424
    :goto_6
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$2700(Lcom/oppo/camera/OppoCamera;)Landroid/os/Handler;

    move-result-object v4

    const/4 v6, 0x5

    const-wide/16 v7, 0x258

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .end local v2           #mirror:Z
    :cond_3
    move v2, v6

    .line 1412
    goto :goto_3

    .line 1413
    .restart local v2       #mirror:Z
    :cond_4
    const/16 v4, 0x168

    goto :goto_4

    :cond_5
    move v4, v6

    goto :goto_5

    .line 1420
    :catch_1
    move-exception v1

    .line 1421
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1422
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$2700(Lcom/oppo/camera/OppoCamera;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6
.end method
