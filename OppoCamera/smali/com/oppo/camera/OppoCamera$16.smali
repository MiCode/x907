.class Lcom/oppo/camera/OppoCamera$16;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;


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
    .line 2957
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$16;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageMounted()V
    .locals 1

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$16;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$2300(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$16;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$3700(Lcom/oppo/camera/OppoCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$16;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mPausing:Z
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$1400(Lcom/oppo/camera/OppoCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$16;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$300(Lcom/oppo/camera/OppoCamera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2972
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$16;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->refreshThumbNail()V
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$3500(Lcom/oppo/camera/OppoCamera;)V

    .line 2974
    :cond_0
    return-void
.end method

.method public onStorageUnmount()V
    .locals 3

    .prologue
    .line 2961
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$16;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$2300(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$16;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$3700(Lcom/oppo/camera/OppoCamera;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$16;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mPausing:Z
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$1400(Lcom/oppo/camera/OppoCamera;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$16;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$300(Lcom/oppo/camera/OppoCamera;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2963
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$16;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-virtual {v1}, Lcom/oppo/camera/OppoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2964
    .local v0, thumbnail:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$16;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$2300(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/views/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/views/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2966
    .end local v0           #thumbnail:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method
