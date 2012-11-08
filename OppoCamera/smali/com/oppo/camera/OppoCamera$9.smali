.class Lcom/oppo/camera/OppoCamera$9;
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
    .line 1438
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 10
    .parameter "data"
    .parameter "camera"

    .prologue
    const/16 v3, 0x320

    const/16 v4, 0x1e0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1442
    array-length v1, p1

    if-nez v1, :cond_1

    .line 1443
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->enableUI()V
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1700(Lcom/oppo/camera/OppoCamera;)V

    .line 1470
    :cond_0
    :goto_0
    return-void

    .line 1446
    :cond_1
    const-string v1, "OppoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPostViewCallback onPictureTaken, data length = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v5, p1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1447
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$3700(Lcom/oppo/camera/OppoCamera;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mFeatureMode:I
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1500(Lcom/oppo/camera/OppoCamera;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mZoomValue:I
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$5200(Lcom/oppo/camera/OppoCamera;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraId:I
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1600(Lcom/oppo/camera/OppoCamera;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1450
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v1, v1, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-eqz v1, :cond_3

    .line 1452
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mHasDoAnimationWithPostView:Z
    invoke-static {v1, v9}, Lcom/oppo/camera/OppoCamera;->access$3602(Lcom/oppo/camera/OppoCamera;Z)Z

    .line 1453
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$3900(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/oppo/camera/OppoCamera;->mTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoCamera;->access$3802(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1455
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1456
    .local v7, rect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1457
    .local v0, img:Landroid/graphics/YuvImage;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1458
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x64

    invoke-virtual {v0, v7, v1, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1459
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {v2, v8, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoCamera;->access$3902(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1461
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$3900(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v3

    #calls: Lcom/oppo/camera/OppoCamera;->getSmallShotAnimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/oppo/camera/OppoCamera;->access$4000(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/oppo/camera/OppoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoCamera;->access$2102(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1462
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v1, v1, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v1, v8}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    .line 1463
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v1, v1, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$3900(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$2100(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->show(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1464
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$2700(Lcom/oppo/camera/OppoCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1466
    .end local v0           #img:Landroid/graphics/YuvImage;
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #rect:Landroid/graphics/Rect;
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$9;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->enableUI()V
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1700(Lcom/oppo/camera/OppoCamera;)V

    goto/16 :goto_0
.end method
