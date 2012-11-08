.class Lcom/oppo/camera/OppoCamera$3;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;


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
    .line 423
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 432
    const-string v1, "OppoCamera"

    const-string v2, "Animation end !"

    invoke-static {v1, v2, v4}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 433
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mPausing:Z
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1400(Lcom/oppo/camera/OppoCamera;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v1, v1, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    .line 465
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mFeatureMode:I
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1500(Lcom/oppo/camera/OppoCamera;)I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraId:I
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1600(Lcom/oppo/camera/OppoCamera;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->enableUI()V
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1700(Lcom/oppo/camera/OppoCamera;)V

    .line 439
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mImageHasSaved:Z
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1800(Lcom/oppo/camera/OppoCamera;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 440
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mDisableKey:[I
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$1900(Lcom/oppo/camera/OppoCamera;)[I

    move-result-object v2

    #calls: Lcom/oppo/camera/OppoCamera;->fixKeyEventInterceptorInProcess([I)Z
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoCamera;->access$2000(Lcom/oppo/camera/OppoCamera;[I)Z

    .line 443
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$2100(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$2100(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 444
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraId:I
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1600(Lcom/oppo/camera/OppoCamera;)I

    move-result v1

    if-nez v1, :cond_6

    .line 445
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$2100(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mRotation:I
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$2200(Lcom/oppo/camera/OppoCamera;)I

    move-result v3

    invoke-static {v2, v3, v5}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/oppo/camera/OppoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoCamera;->access$2102(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 449
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$2300(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$2100(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 454
    :goto_2
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->recycleBitmap()V
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$2400(Lcom/oppo/camera/OppoCamera;)V

    .line 456
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v1, v1, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    .line 457
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mAnimationIsActive:Z
    invoke-static {v1, v5}, Lcom/oppo/camera/OppoCamera;->access$2502(Lcom/oppo/camera/OppoCamera;Z)Z

    .line 458
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mFeatureMode:I
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1500(Lcom/oppo/camera/OppoCamera;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraId:I
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1600(Lcom/oppo/camera/OppoCamera;)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 459
    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z
    invoke-static {v1, v4}, Lcom/oppo/camera/OppoCamera;->access$302(Lcom/oppo/camera/OppoCamera;Z)Z

    .line 462
    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->removeMsg(I)V
    invoke-static {v1, v4}, Lcom/oppo/camera/OppoCamera;->access$2600(Lcom/oppo/camera/OppoCamera;I)V

    .line 463
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$2700(Lcom/oppo/camera/OppoCamera;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 446
    :cond_6
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mCameraId:I
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1600(Lcom/oppo/camera/OppoCamera;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 447
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$2100(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mRotation:I
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$2200(Lcom/oppo/camera/OppoCamera;)I

    move-result v3

    rsub-int v3, v3, 0xb4

    invoke-static {v2, v3, v4}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/oppo/camera/OppoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoCamera;->access$2102(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 451
    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-virtual {v1}, Lcom/oppo/camera/OppoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 452
    .local v0, thumbnail:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$3;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$2300(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/views/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public onAnimationStart()V
    .locals 3

    .prologue
    .line 427
    const-string v0, "OppoCamera"

    const-string v1, "Animation start !"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 428
    return-void
.end method
