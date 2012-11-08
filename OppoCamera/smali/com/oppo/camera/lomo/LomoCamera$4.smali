.class Lcom/oppo/camera/lomo/LomoCamera$4;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;


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
    .line 391
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 399
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPausing:Z
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$900(Lcom/oppo/camera/lomo/LomoCamera;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v1, v1, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v1, v5}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    .line 401
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z
    invoke-static {v1, v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$1000(Lcom/oppo/camera/lomo/LomoCamera;[I)Z

    .line 428
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$1100(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$1100(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 405
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$1200(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v1

    if-nez v1, :cond_2

    .line 406
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$1100(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mRotation:I
    invoke-static {v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$1300(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v3

    invoke-static {v2, v3, v7}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$1102(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 410
    :goto_1
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBtn:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$1400(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$1100(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 415
    :goto_2
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$1500(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$1500(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$1500(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 417
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$1502(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$800(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 420
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->updateLastPictureUri()V
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$1600(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 421
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mDoingAnimation:Z
    invoke-static {v1, v7}, Lcom/oppo/camera/lomo/LomoCamera;->access$1702(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    .line 422
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mIsPictureTaken:Z
    invoke-static {v1, v8}, Lcom/oppo/camera/lomo/LomoCamera;->access$1802(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    .line 423
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z
    invoke-static {v1, v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$1900(Lcom/oppo/camera/lomo/LomoCamera;[I)Z

    .line 425
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$800(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 426
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    sget-object v2, Lcom/oppo/camera/lomo/LomoCamera;->OFF:Ljava/lang/String;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mContinuousAfState:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$2002(Lcom/oppo/camera/lomo/LomoCamera;Ljava/lang/String;)Ljava/lang/String;

    .line 427
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$800(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 408
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$1100(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mRotation:I
    invoke-static {v3}, Lcom/oppo/camera/lomo/LomoCamera;->access$1300(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v2, v3, v8}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$1102(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 412
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-virtual {v1}, Lcom/oppo/camera/lomo/LomoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 413
    .local v0, thumbnail:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$4;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBtn:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$1400(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/views/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method
