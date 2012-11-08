.class Lcom/oppo/camera/OppoCamera$13;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/OppoCamera;->doFeatureAnimation([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoCamera;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2883
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    iput-object p2, p0, Lcom/oppo/camera/OppoCamera$13;->val$data:[B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2887
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v1, v1, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-eqz v1, :cond_0

    .line 2888
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$3900(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/oppo/camera/OppoCamera;->mTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoCamera;->access$3802(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2889
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2890
    .local v0, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2891
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$13;->val$data:[B

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$13;->val$data:[B

    array-length v3, v3

    invoke-static {v2, v4, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoCamera;->access$3902(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2892
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$3900(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mRotation:I
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$2200(Lcom/oppo/camera/OppoCamera;)I

    move-result v3

    rsub-int v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    invoke-static {v2, v3, v4}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoCamera;->access$3902(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2893
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$3900(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v3

    #calls: Lcom/oppo/camera/OppoCamera;->getSmallShotAnimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/oppo/camera/OppoCamera;->access$4000(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/oppo/camera/OppoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoCamera;->access$2102(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2894
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->showControlBar()V
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$9100(Lcom/oppo/camera/OppoCamera;)V

    .line 2895
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v1, v1, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v1, v4}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    .line 2896
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v1, v1, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/camera/OppoCamera;->access$3900(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/oppo/camera/OppoCamera;->access$2100(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->show(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 2897
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$2700(Lcom/oppo/camera/OppoCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2901
    .end local v0           #option:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 2899
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$13;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->enableUI()V
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1700(Lcom/oppo/camera/OppoCamera;)V

    goto :goto_0
.end method
