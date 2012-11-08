.class Lcom/oppo/camera/OppoVideo$3;
.super Ljava/lang/Object;
.source "OppoVideo.java"

# interfaces
.implements Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoVideo;


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 401
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    const/4 v2, 0x0

    #calls: Lcom/oppo/camera/OppoVideo;->fixKeyEventInterceptorInProcess([I)Z
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoVideo;->access$1600(Lcom/oppo/camera/OppoVideo;[I)Z

    .line 402
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mPausing:Z
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$1700(Lcom/oppo/camera/OppoVideo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v1, v1, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    .line 427
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$1800(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$1800(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 407
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mCameraId:I
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$1100(Lcom/oppo/camera/OppoVideo;)I

    move-result v1

    if-nez v1, :cond_2

    .line 408
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v1

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_1

    .line 409
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/camera/OppoVideo;->access$1800(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v3}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v3

    add-int/lit8 v3, v3, 0x5a

    invoke-static {v2, v3, v5}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/oppo/camera/OppoVideo;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoVideo;->access$1802(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 414
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$2000(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/camera/OppoVideo;->access$1800(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 419
    :goto_2
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->mStoping:Z
    invoke-static {v1, v5}, Lcom/oppo/camera/OppoVideo;->access$2102(Lcom/oppo/camera/OppoVideo;Z)Z

    .line 420
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->recycleBitmap()V
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$2200(Lcom/oppo/camera/OppoVideo;)V

    .line 421
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->enableUI()V
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$2300(Lcom/oppo/camera/OppoVideo;)V

    .line 422
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$800(Lcom/oppo/camera/OppoVideo;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 423
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->updateLastVideoUri()V
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$2400(Lcom/oppo/camera/OppoVideo;)V

    .line 424
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->turnOnContinuousAF()V
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$2500(Lcom/oppo/camera/OppoVideo;)V

    .line 425
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #setter for: Lcom/oppo/camera/OppoVideo;->mDoingAnimation:Z
    invoke-static {v1, v5}, Lcom/oppo/camera/OppoVideo;->access$2602(Lcom/oppo/camera/OppoVideo;Z)Z

    .line 426
    const-string v1, "OppoVideo"

    const-string v2, "== onAnimationEnd == "

    invoke-static {v1, v2, v6}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 411
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mCameraId:I
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$1100(Lcom/oppo/camera/OppoVideo;)I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 412
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/camera/OppoVideo;->access$1800(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mOrientation:I
    invoke-static {v3}, Lcom/oppo/camera/OppoVideo;->access$1900(Lcom/oppo/camera/OppoVideo;)I

    move-result v3

    add-int/lit8 v3, v3, 0x5a

    invoke-static {v2, v3, v5}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/oppo/camera/OppoVideo;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoVideo;->access$1802(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 416
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-virtual {v1}, Lcom/oppo/camera/OppoVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 417
    .local v0, thumbnail:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$3;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$2000(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/views/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public onAnimationStart()V
    .locals 3

    .prologue
    .line 396
    const-string v0, "OppoVideo"

    const-string v1, "onAnimationStart"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 397
    return-void
.end method
