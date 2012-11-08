.class Lcom/oppo/camera/OppoCamera$8$1;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/OppoCamera$8;->onPictureTaken([BLcom/scalado/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/camera/OppoCamera$8;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoCamera$8;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iput-object p2, p0, Lcom/oppo/camera/OppoCamera$8$1;->val$data:[B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1350
    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v3, v3, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mFeatureMode:I
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$1500(Lcom/oppo/camera/OppoCamera;)I

    move-result v3

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v3, v3, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraId:I
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$1600(Lcom/oppo/camera/OppoCamera;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1351
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v2, v2, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->enableUI()V
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$1700(Lcom/oppo/camera/OppoCamera;)V

    .line 1372
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v3, v3, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mHasDoAnimationWithPostView:Z
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$3600(Lcom/oppo/camera/OppoCamera;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1357
    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v3, v3, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v3, v3, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-eqz v3, :cond_4

    .line 1358
    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v3, v3, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v4, v4, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$3900(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/oppo/camera/OppoCamera;->mTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/oppo/camera/OppoCamera;->access$3802(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1359
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1360
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/16 v3, 0x8

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1361
    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v3, v3, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8$1;->val$data:[B

    iget-object v5, p0, Lcom/oppo/camera/OppoCamera$8$1;->val$data:[B

    array-length v5, v5

    invoke-static {v4, v2, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/oppo/camera/OppoCamera;->access$3902(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1362
    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v3, v3, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraId:I
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$1600(Lcom/oppo/camera/OppoCamera;)I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 1363
    .local v0, isNeedMirror:Z
    :goto_1
    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v4, v3, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v3, v3, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$3900(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v3, v3, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mRotation:I
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$2200(Lcom/oppo/camera/OppoCamera;)I

    move-result v3

    rsub-int v3, v3, 0x168

    rem-int/lit16 v6, v3, 0x168

    if-eqz v0, :cond_3

    const/16 v3, 0xb4

    :goto_2
    add-int/2addr v3, v6

    invoke-static {v5, v3, v0}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v3}, Lcom/oppo/camera/OppoCamera;->access$3902(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1364
    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v3, v3, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v4, v4, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v5, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v5, v5, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/oppo/camera/OppoCamera;->access$3900(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v5

    #calls: Lcom/oppo/camera/OppoCamera;->getSmallShotAnimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/oppo/camera/OppoCamera;->access$4000(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/oppo/camera/OppoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/oppo/camera/OppoCamera;->access$2102(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1365
    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v3, v3, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v3, v3, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v3, v2}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    .line 1366
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v2, v2, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v2, v2, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v3, v3, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$3900(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v4, v4, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oppo/camera/OppoCamera;->access$2100(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->show(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1367
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v2, v2, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$2700(Lcom/oppo/camera/OppoCamera;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xb

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .end local v0           #isNeedMirror:Z
    :cond_2
    move v0, v2

    .line 1362
    goto :goto_1

    .restart local v0       #isNeedMirror:Z
    :cond_3
    move v3, v2

    .line 1363
    goto :goto_2

    .line 1369
    .end local v0           #isNeedMirror:Z
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$8$1;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v2, v2, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->enableUI()V
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$1700(Lcom/oppo/camera/OppoCamera;)V

    goto/16 :goto_0
.end method
