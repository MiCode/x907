.class Lcom/oppo/camera/lomo/LomoCamera$12;
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
    .line 2354
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$12;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 2357
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$12;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPanelView:Lcom/oppo/camera/lomo/PanelView;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$9700(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/PanelView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/lomo/PanelView;->getAnimationState()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 2378
    :cond_0
    :goto_0
    return-void

    .line 2360
    :cond_1
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$12;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$5200(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/BurstHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/lomo/BurstHandler;->getmIsImageReviewerShow()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2363
    new-instance v1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$12;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mInImage:Lcom/scalado/base/Image;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$9900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 2364
    .local v1, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance v3, Lcom/scalado/caps/Session;

    invoke-direct {v3, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 2365
    .local v3, session:Lcom/scalado/caps/Session;
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$12;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mInImage:Lcom/scalado/base/Image;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$9900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2366
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$12;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mInImage:Lcom/scalado/base/Image;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$9900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2368
    :try_start_0
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$12;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutImageEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$10000(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/caps/codec/encoder/ImageEncoder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/scalado/base/Iterator;->step(I)F

    .line 2369
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$12;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$4200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/lomo/LomoCamera$12;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutImage:Lcom/scalado/base/Image;
    invoke-static {v5}, Lcom/oppo/camera/lomo/LomoCamera;->access$10100(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 2370
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$12;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$10200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 2371
    .local v0, canvas:Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$12;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$4200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2372
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$12;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$4200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2373
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$12;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$10200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2375
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 2376
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
