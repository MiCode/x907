.class Lcom/oppo/camera/lomo/LomoCamera$17;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;


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
    .line 2503
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChanged()V
    .locals 1

    .prologue
    .line 2551
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->stopSweep()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$11200(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 2552
    return-void
.end method

.method public onDirectionConfirmed(Lcom/scalado/caps/autorama/Direction;)V
    .locals 4
    .parameter "dir"

    .prologue
    const/16 v3, 0x1c

    const/16 v2, 0x160

    .line 2530
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->hidePanoramaTips()V
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$11500(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 2531
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2532
    .local v0, maginParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2533
    invoke-virtual {p1}, Lcom/scalado/caps/autorama/Direction;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2534
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2535
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2536
    const/16 v1, 0x12

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2537
    const/16 v1, 0xa9

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2544
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaProgressBar:Lcom/oppo/camera/panorama/PanoramaProgressBar;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$11300(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/panorama/PanoramaProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2545
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaProgressBar:Lcom/oppo/camera/panorama/PanoramaProgressBar;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$11300(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/panorama/PanoramaProgressBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->setDirection(Lcom/scalado/caps/autorama/Direction;)V

    .line 2546
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaProgressBar:Lcom/oppo/camera/panorama/PanoramaProgressBar;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$11300(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/panorama/PanoramaProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->setVisibility(I)V

    .line 2547
    return-void

    .line 2539
    :cond_0
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2540
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2541
    const/16 v1, 0x40

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2542
    const/16 v1, 0x23

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public onFrameAdded(I)V
    .locals 2
    .parameter "frameId"

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$10908(Lcom/oppo/camera/lomo/LomoCamera;)I

    .line 2522
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mNbrOfImagesGrabbed:I
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$10900(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 2523
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->stopSweep()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$11200(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 2525
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaProgressBar:Lcom/oppo/camera/panorama/PanoramaProgressBar;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$11300(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/panorama/PanoramaProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mNbrOfImagesGrabbed:I
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$10900(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->setCurrentPiece(I)V

    .line 2526
    return-void
.end method

.method public onPanoramaGenerated(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 2513
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$5000(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/utils/StorageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/utils/StorageManager;->fileScan(Ljava/lang/String;)V

    .line 2514
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->refreshThumbNail()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$2300(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 2515
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->reset()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$11400(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 2516
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    const v1, 0x7f0a0043

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2517
    return-void
.end method

.method public onTrackerProgressUpdate(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 2507
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaProgressBar:Lcom/oppo/camera/panorama/PanoramaProgressBar;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$11300(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/panorama/PanoramaProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->setCurrentProgress(I)V

    .line 2508
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$17;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaProgressBar:Lcom/oppo/camera/panorama/PanoramaProgressBar;
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$11300(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/panorama/PanoramaProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->invalidate()V

    .line 2509
    return-void
.end method
