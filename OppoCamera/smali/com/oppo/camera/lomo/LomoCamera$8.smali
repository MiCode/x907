.class Lcom/oppo/camera/lomo/LomoCamera$8;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCamera;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 11
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x5

    .line 1032
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPausing:Z
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$900(Lcom/oppo/camera/lomo/LomoCamera;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1089
    :goto_0
    return-void

    .line 1036
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    move-result-object v2

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->FILTER:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1037
    new-instance v2, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct {v2, v3, v9}, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;-><init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V

    new-array v3, v7, [[B

    aput-object p1, v3, v10

    invoke-virtual {v2, v3}, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1038
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$4200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$4102(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1040
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$4100(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1041
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-virtual {v4}, Lcom/oppo/camera/lomo/LomoCamera;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/oppo/camera/lomo/LomoCamera;->access$4100(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$4302(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1043
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$4300(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1044
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$4100(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v4

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->getSmallShotAnimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$4400(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$1102(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1045
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v2, v2, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v2, v10}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    .line 1046
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v2, v2, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$4100(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$1100(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->show(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1047
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$800(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1054
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    move-result-object v2

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1055
    sget-object v2, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    invoke-virtual {v2, v6}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 1056
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$4708(Lcom/oppo/camera/lomo/LomoCamera;)I

    .line 1057
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mBurstCount:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$4700(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v2

    if-ge v2, v6, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$1200(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v2

    if-eq v2, v7, :cond_3

    .line 1058
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mIsPictureTaken:Z
    invoke-static {v2, v10}, Lcom/oppo/camera/lomo/LomoCamera;->access$1802(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    .line 1061
    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->getPictureName()Ljava/lang/String;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$4800(Lcom/oppo/camera/lomo/LomoCamera;)Ljava/lang/String;

    move-result-object v1

    .line 1062
    .local v1, fileName:Ljava/lang/String;
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->savePicture([BLjava/lang/String;)Z
    invoke-static {v2, p1, v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$4900(Lcom/oppo/camera/lomo/LomoCamera;[BLjava/lang/String;)Z

    .line 1063
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$5000(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/utils/StorageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oppo/camera/utils/StorageManager;->fileScan(Ljava/lang/String;)V

    .line 1064
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->refreshThumbNail()V
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$2300(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 1066
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$5200(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/BurstHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOrientation:I
    invoke-static {v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$5100(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-static {v4}, Lcom/oppo/camera/utils/ImageUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, p1, v3}, Lcom/oppo/camera/lomo/BurstHandler;->decodeBurstData([BI)V

    .line 1068
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$800(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mBurstCount:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$4700(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v2

    if-ge v2, v6, :cond_4

    .line 1069
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$800(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1070
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$800(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v8, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1073
    :cond_4
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mBurstCount:I
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$4700(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 1074
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mIsPictureTaken:Z
    invoke-static {v2, v7}, Lcom/oppo/camera/lomo/LomoCamera;->access$1802(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    .line 1075
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z
    invoke-static {v2, v9}, Lcom/oppo/camera/lomo/LomoCamera;->access$5300(Lcom/oppo/camera/lomo/LomoCamera;[I)Z

    .line 1077
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$800(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1082
    .end local v1           #fileName:Ljava/lang/String;
    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$5400(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :goto_2
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mIsImageCapture:Z
    invoke-static {v2, v7}, Lcom/oppo/camera/lomo/LomoCamera;->access$5702(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    goto/16 :goto_0

    .line 1049
    :cond_6
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z
    invoke-static {v2, v9}, Lcom/oppo/camera/lomo/LomoCamera;->access$4500(Lcom/oppo/camera/lomo/LomoCamera;[I)Z

    .line 1050
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->enableButtons()V
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$4600(Lcom/oppo/camera/lomo/LomoCamera;)V

    goto/16 :goto_1

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z
    invoke-static {v2, v9}, Lcom/oppo/camera/lomo/LomoCamera;->access$5500(Lcom/oppo/camera/lomo/LomoCamera;[I)Z

    .line 1085
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->closeCamera()V
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$2700(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 1086
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$8;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->showCameraErrorAndFinish()V
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$5600(Lcom/oppo/camera/lomo/LomoCamera;)V

    goto :goto_2
.end method
