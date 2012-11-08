.class Lcom/oppo/camera/lomo/LomoCamera$13;
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
    .line 2382
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 9
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v8, 0x1

    .line 2385
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPanelView:Lcom/oppo/camera/lomo/PanelView;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$9700(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/PanelView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/lomo/PanelView;->getAnimationState()Z

    move-result v4

    if-ne v4, v8, :cond_1

    .line 2444
    :cond_0
    :goto_0
    return-void

    .line 2388
    :cond_1
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mIsFling:Z
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$10300(Lcom/oppo/camera/lomo/LomoCamera;)Z

    move-result v4

    if-eq v4, v8, :cond_0

    .line 2391
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mDoFling:Z
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$7400(Lcom/oppo/camera/lomo/LomoCamera;)Z

    move-result v4

    if-ne v4, v8, :cond_4

    .line 2392
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mIsFling:Z
    invoke-static {v4, v8}, Lcom/oppo/camera/lomo/LomoCamera;->access$10302(Lcom/oppo/camera/lomo/LomoCamera;Z)Z

    .line 2393
    new-instance v1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mInImage:Lcom/scalado/base/Image;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$9900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 2394
    .local v1, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance v3, Lcom/scalado/caps/Session;

    invoke-direct {v3, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 2395
    .local v3, session:Lcom/scalado/caps/Session;
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mInImage:Lcom/scalado/base/Image;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$9900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2396
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mInImage:Lcom/scalado/base/Image;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$9900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2399
    :try_start_0
    invoke-virtual {v3}, Lcom/scalado/caps/Session;->removeAllFilters()V

    .line 2400
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mPreviousEffect:Lcom/oppo/camera/lomo/filters/Filter;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$10400(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/filters/Filter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/oppo/camera/lomo/filters/Filter;->applyFilterToSession(Lcom/scalado/caps/Session;)V

    .line 2401
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutImageEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$10000(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/caps/codec/encoder/ImageEncoder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/scalado/base/Iterator;->step(I)F

    .line 2402
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCurrentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$10500(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutImage:Lcom/scalado/base/Image;
    invoke-static {v5}, Lcom/oppo/camera/lomo/LomoCamera;->access$10100(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 2403
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$1200(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 2404
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v5, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCurrentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/oppo/camera/lomo/LomoCamera;->access$10500(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mCurrentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/oppo/camera/lomo/LomoCamera;->access$10502(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2407
    :cond_2
    invoke-virtual {v3}, Lcom/scalado/caps/Session;->removeAllFilters()V

    .line 2408
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$3600(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/filters/Filter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/oppo/camera/lomo/filters/Filter;->applyFilterToSession(Lcom/scalado/caps/Session;)V

    .line 2409
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutImageEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$10000(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/caps/codec/encoder/ImageEncoder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/scalado/base/Iterator;->step(I)F

    .line 2410
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mNextBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$10600(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutImage:Lcom/scalado/base/Image;
    invoke-static {v5}, Lcom/oppo/camera/lomo/LomoCamera;->access$10100(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 2411
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$1200(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 2412
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v5, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mNextBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/oppo/camera/lomo/LomoCamera;->access$10600(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mNextBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/oppo/camera/lomo/LomoCamera;->access$10602(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2415
    :cond_3
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v5, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCurrentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/oppo/camera/lomo/LomoCamera;->access$10500(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mNextBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$10600(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v6

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->drawEffectChangeAnim(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v4, v5, v6}, Lcom/oppo/camera/lomo/LomoCamera;->access$10700(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2416
    :catch_0
    move-exception v2

    .line 2417
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2420
    .end local v1           #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #session:Lcom/scalado/caps/Session;
    :cond_4
    new-instance v1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mInImage:Lcom/scalado/base/Image;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$9900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 2421
    .restart local v1       #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance v3, Lcom/scalado/caps/Session;

    invoke-direct {v3, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 2422
    .restart local v3       #session:Lcom/scalado/caps/Session;
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mInImage:Lcom/scalado/base/Image;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$9900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2423
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mInImage:Lcom/scalado/base/Image;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$9900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2425
    :try_start_1
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$3600(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/filters/Filter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/oppo/camera/lomo/filters/Filter;->applyFilterToSession(Lcom/scalado/caps/Session;)V

    .line 2426
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutImageEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$10000(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/caps/codec/encoder/ImageEncoder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/scalado/base/Iterator;->step(I)F

    .line 2428
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$4200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutImage:Lcom/scalado/base/Image;
    invoke-static {v5}, Lcom/oppo/camera/lomo/LomoCamera;->access$10100(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 2429
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$1200(Lcom/oppo/camera/lomo/LomoCamera;)I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 2430
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v5, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/oppo/camera/lomo/LomoCamera;->access$4200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/oppo/camera/utils/ImageUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/oppo/camera/lomo/LomoCamera;->access$4202(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2432
    :cond_5
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$10200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 2433
    .local v0, canvas:Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$4200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2434
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$4200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2435
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mMenuLayout:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$6600(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_6

    .line 2436
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$3600(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/filters/Filter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/oppo/camera/lomo/filters/Filter;->postRender(Landroid/graphics/Canvas;)V

    .line 2438
    :cond_6
    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera$13;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v4}, Lcom/oppo/camera/lomo/LomoCamera;->access$10200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2440
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :catch_1
    move-exception v2

    .line 2441
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
