.class Lcom/oppo/camera/lomo/LomoCamera$14;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


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
    .line 2448
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$14;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 10
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 2452
    iget-object v6, p0, Lcom/oppo/camera/lomo/LomoCamera$14;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPanelView:Lcom/oppo/camera/lomo/PanelView;
    invoke-static {v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$9700(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/PanelView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/camera/lomo/PanelView;->getAnimationState()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 2475
    :cond_0
    :goto_0
    return-void

    .line 2455
    :cond_1
    iget-object v6, p0, Lcom/oppo/camera/lomo/LomoCamera$14;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaInProgress:Z
    invoke-static {v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$10800(Lcom/oppo/camera/lomo/LomoCamera;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/oppo/camera/lomo/LomoCamera$14;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mNbrOfImagesGrabbed:I
    invoke-static {v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$10900(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_2

    .line 2456
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 2457
    .local v3, p:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 2458
    .local v4, s:Landroid/hardware/Camera$Size;
    iget-object v6, p0, Lcom/oppo/camera/lomo/LomoCamera$14;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaHandler:Lcom/oppo/camera/lomo/PanoramaHandler;
    invoke-static {v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$11000(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/PanoramaHandler;

    move-result-object v6

    iget v7, v4, Landroid/hardware/Camera$Size;->width:I

    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, p1, v7, v8}, Lcom/oppo/camera/lomo/PanoramaHandler;->track([BII)V

    .line 2460
    .end local v3           #p:Landroid/hardware/Camera$Parameters;
    .end local v4           #s:Landroid/hardware/Camera$Size;
    :cond_2
    new-instance v1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    iget-object v6, p0, Lcom/oppo/camera/lomo/LomoCamera$14;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mInImage:Lcom/scalado/base/Image;
    invoke-static {v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$9900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 2461
    .local v1, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance v5, Lcom/scalado/caps/Session;

    invoke-direct {v5, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 2462
    .local v5, session:Lcom/scalado/caps/Session;
    iget-object v6, p0, Lcom/oppo/camera/lomo/LomoCamera$14;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mInImage:Lcom/scalado/base/Image;
    invoke-static {v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$9900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2463
    iget-object v6, p0, Lcom/oppo/camera/lomo/LomoCamera$14;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mInImage:Lcom/scalado/base/Image;
    invoke-static {v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$9900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2465
    :try_start_0
    iget-object v6, p0, Lcom/oppo/camera/lomo/LomoCamera$14;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutImageEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    invoke-static {v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$10000(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/caps/codec/encoder/ImageEncoder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/scalado/base/Iterator;->step(I)F

    .line 2466
    iget-object v6, p0, Lcom/oppo/camera/lomo/LomoCamera$14;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$4200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/camera/lomo/LomoCamera$14;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutImage:Lcom/scalado/base/Image;
    invoke-static {v7}, Lcom/oppo/camera/lomo/LomoCamera;->access$10100(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 2467
    iget-object v6, p0, Lcom/oppo/camera/lomo/LomoCamera$14;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$10200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 2468
    .local v0, canvas:Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/oppo/camera/lomo/LomoCamera$14;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$4200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2469
    iget-object v6, p0, Lcom/oppo/camera/lomo/LomoCamera$14;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$4200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2470
    iget-object v6, p0, Lcom/oppo/camera/lomo/LomoCamera$14;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$10200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2472
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 2473
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
