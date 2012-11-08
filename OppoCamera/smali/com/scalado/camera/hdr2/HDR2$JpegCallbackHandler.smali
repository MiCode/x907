.class Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;
.super Ljava/lang/Object;
.source "HDR2.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/hdr2/HDR2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JpegCallbackHandler"
.end annotation


# instance fields
.field private final mCamera:Lcom/scalado/camera/FeatureCamera;

.field final synthetic this$0:Lcom/scalado/camera/hdr2/HDR2;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/FeatureCamera;)V
    .locals 0
    .parameter
    .parameter "camera"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;

    .line 300
    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/FeatureCamera;
    .locals 1
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;

    return-object v0
.end method

.method static synthetic access$1(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/hdr2/HDR2;
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    return-object v0
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 26
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mSrcBuffers:Ljava/util/Vector;
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$24(Lcom/scalado/camera/hdr2/HDR2;)Ljava/util/Vector;

    move-result-object v23

    new-instance v24, Lcom/scalado/base/Buffer;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/scalado/base/Buffer;-><init>([B)V

    invoke-virtual/range {v23 .. v24}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mHDR2Listener:Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$22(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mHDR2Listener:Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$22(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v24, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mCapturedImages:I
    invoke-static/range {v24 .. v24}, Lcom/scalado/camera/hdr2/HDR2;->access$23(Lcom/scalado/camera/hdr2/HDR2;)I

    move-result v24

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;->onIntermediateJpeg([BI)V

    .line 310
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mCapturedImages:I
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$23(Lcom/scalado/camera/hdr2/HDR2;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mCapturedImages:I
    invoke-static/range {v23 .. v24}, Lcom/scalado/camera/hdr2/HDR2;->access$25(Lcom/scalado/camera/hdr2/HDR2;I)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mCapturedImages:I
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$23(Lcom/scalado/camera/hdr2/HDR2;)I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 314
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mCapturedImages:I
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$23(Lcom/scalado/camera/hdr2/HDR2;)I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$26(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$ShutterCallback;

    move-result-object v23

    if-eqz v23, :cond_3

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$26(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$ShutterCallback;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/scalado/camera/Camera$ShutterCallback;->onShutter()V

    .line 318
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$27(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v23

    if-eqz v23, :cond_4

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$27(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;

    move-object/from16 v25, v0

    invoke-interface/range {v23 .. v25}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 322
    :cond_4
    new-instance v15, Lcom/scalado/stream/BufferStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mSrcBuffers:Ljava/util/Vector;
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$24(Lcom/scalado/camera/hdr2/HDR2;)Ljava/util/Vector;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/scalado/base/Buffer;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v15, v0, v1}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 323
    .local v15, stream1:Lcom/scalado/stream/Stream;
    invoke-static {v15}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v6

    .line 325
    .local v6, decoderIterator:Lcom/scalado/base/Iterator;
    const/16 v23, 0x0

    :try_start_0
    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    invoke-virtual {v6}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/caps/Decoder;

    .line 331
    .local v5, decoder:Lcom/scalado/caps/Decoder;
    new-instance v13, Lcom/scalado/caps/Session;

    invoke-direct {v13, v5}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 333
    .local v13, session1:Lcom/scalado/caps/Session;
    new-instance v16, Lcom/scalado/stream/BufferStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mSrcBuffers:Ljava/util/Vector;
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$24(Lcom/scalado/camera/hdr2/HDR2;)Ljava/util/Vector;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/scalado/base/Buffer;

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 334
    .local v16, stream2:Lcom/scalado/stream/Stream;
    invoke-static/range {v16 .. v16}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v6

    .line 336
    const/16 v23, 0x0

    :try_start_1
    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    invoke-virtual {v6}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #decoder:Lcom/scalado/caps/Decoder;
    check-cast v5, Lcom/scalado/caps/Decoder;

    .line 342
    .restart local v5       #decoder:Lcom/scalado/caps/Decoder;
    new-instance v14, Lcom/scalado/caps/Session;

    invoke-direct {v14, v5}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 344
    .local v14, session2:Lcom/scalado/caps/Session;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mHDR2:Lcom/scalado/caps/hdr2/HDR2;
    invoke-static/range {v23 .. v24}, Lcom/scalado/camera/hdr2/HDR2;->access$28(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/caps/hdr2/HDR2;)V

    .line 346
    :try_start_2
    new-instance v11, Lcom/scalado/caps/exif/Session;

    invoke-direct {v11, v15}, Lcom/scalado/caps/exif/Session;-><init>(Lcom/scalado/stream/Stream;)V

    .line 349
    .local v11, exifSession:Lcom/scalado/caps/exif/Session;
    invoke-virtual {v13}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v7

    .line 350
    .local v7, dims:Lcom/scalado/base/Size;
    new-instance v19, Lcom/scalado/base/Size;

    invoke-direct/range {v19 .. v19}, Lcom/scalado/base/Size;-><init>()V

    .line 351
    .local v19, thumbnailDims:Lcom/scalado/base/Size;
    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v23

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 352
    invoke-virtual/range {v19 .. v19}, Lcom/scalado/base/Size;->getHeight()I

    move-result v23

    const/16 v24, 0xa0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_5

    .line 353
    const/16 v23, 0xa0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 355
    :cond_5
    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    .line 356
    invoke-virtual/range {v19 .. v19}, Lcom/scalado/base/Size;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    .line 355
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 357
    invoke-virtual/range {v19 .. v19}, Lcom/scalado/base/Size;->getWidth()I

    move-result v23

    .line 358
    invoke-virtual/range {v19 .. v19}, Lcom/scalado/base/Size;->getHeight()I

    move-result v24

    .line 357
    mul-int v23, v23, v24

    div-int/lit8 v10, v23, 0x5

    .line 359
    .local v10, estimatedThumbnailSize:I
    new-instance v17, Lcom/scalado/base/Buffer;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 360
    .local v17, thumbnailBuffer:Lcom/scalado/base/Buffer;
    new-instance v22, Lcom/scalado/stream/BufferStream;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 361
    .local v22, thumbnailStream:Lcom/scalado/stream/BufferStream;
    new-instance v20, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 363
    .local v20, thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    const/16 v18, 0x0

    check-cast v18, [B

    .line 365
    .local v18, thumbnailData:[B
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v21

    .line 366
    .local v21, thumbnailIterator:Lcom/scalado/base/Iterator;
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    .line 368
    invoke-virtual/range {v17 .. v17}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 369
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/scalado/base/Buffer;->get([BIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 371
    :try_start_3
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/scalado/caps/exif/Session;->setThumbnail([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 381
    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    new-instance v24, Lcom/scalado/caps/hdr2/HDR2;

    move-object/from16 v0, v24

    invoke-direct {v0, v13, v14, v11}, Lcom/scalado/caps/hdr2/HDR2;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Session;Lcom/scalado/caps/exif/Session;)V

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mHDR2:Lcom/scalado/caps/hdr2/HDR2;
    invoke-static/range {v23 .. v24}, Lcom/scalado/camera/hdr2/HDR2;->access$28(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/caps/hdr2/HDR2;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 387
    .end local v7           #dims:Lcom/scalado/base/Size;
    .end local v10           #estimatedThumbnailSize:I
    .end local v11           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v17           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v18           #thumbnailData:[B
    .end local v19           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v20           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v21           #thumbnailIterator:Lcom/scalado/base/Iterator;
    .end local v22           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mHDR2:Lcom/scalado/caps/hdr2/HDR2;
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$29(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/caps/hdr2/HDR2;

    move-result-object v23

    if-nez v23, :cond_6

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    new-instance v24, Lcom/scalado/caps/hdr2/HDR2;

    move-object/from16 v0, v24

    invoke-direct {v0, v13, v14}, Lcom/scalado/caps/hdr2/HDR2;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Session;)V

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mHDR2:Lcom/scalado/caps/hdr2/HDR2;
    invoke-static/range {v23 .. v24}, Lcom/scalado/camera/hdr2/HDR2;->access$28(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/caps/hdr2/HDR2;)V

    .line 393
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$30(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v23

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$31(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v23

    if-eqz v23, :cond_8

    .line 395
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    new-instance v24, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;-><init>(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)V

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mWorkerThread:Ljava/lang/Thread;
    invoke-static/range {v23 .. v24}, Lcom/scalado/camera/hdr2/HDR2;->access$33(Lcom/scalado/camera/hdr2/HDR2;Ljava/lang/Thread;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mWorkerThread:Ljava/lang/Thread;
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$34(Lcom/scalado/camera/hdr2/HDR2;)Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V

    .line 441
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    sget-object v24, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->FINISHED:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    #setter for: Lcom/scalado/camera/hdr2/HDR2;->mState:Lcom/scalado/camera/hdr2/HDR2$HDRStates;
    invoke-static/range {v23 .. v24}, Lcom/scalado/camera/hdr2/HDR2;->access$35(Lcom/scalado/camera/hdr2/HDR2;Lcom/scalado/camera/hdr2/HDR2$HDRStates;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v12

    .line 443
    .local v12, parameters:Lcom/scalado/camera/Camera$Parameters;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;

    move-object/from16 v23, v0

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mCurrentExposureCompensation:I
    invoke-static/range {v23 .. v23}, Lcom/scalado/camera/hdr2/HDR2;->access$13(Lcom/scalado/camera/hdr2/HDR2;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v12, v0}, Lcom/scalado/camera/Camera$Parameters;->setExposureCompensation(I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    goto/16 :goto_0

    .line 326
    .end local v5           #decoder:Lcom/scalado/caps/Decoder;
    .end local v12           #parameters:Lcom/scalado/camera/Camera$Parameters;
    .end local v13           #session1:Lcom/scalado/caps/Session;
    .end local v14           #session2:Lcom/scalado/caps/Session;
    .end local v16           #stream2:Lcom/scalado/stream/Stream;
    :catch_0
    move-exception v9

    .line 327
    .local v9, e1:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 337
    .end local v9           #e1:Ljava/lang/Exception;
    .restart local v5       #decoder:Lcom/scalado/caps/Decoder;
    .restart local v13       #session1:Lcom/scalado/caps/Session;
    .restart local v16       #stream2:Lcom/scalado/stream/Stream;
    :catch_1
    move-exception v9

    .line 338
    .restart local v9       #e1:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 372
    .end local v9           #e1:Ljava/lang/Exception;
    .restart local v7       #dims:Lcom/scalado/base/Size;
    .restart local v10       #estimatedThumbnailSize:I
    .restart local v11       #exifSession:Lcom/scalado/caps/exif/Session;
    .restart local v14       #session2:Lcom/scalado/caps/Session;
    .restart local v17       #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .restart local v18       #thumbnailData:[B
    .restart local v19       #thumbnailDims:Lcom/scalado/base/Size;
    .restart local v20       #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v21       #thumbnailIterator:Lcom/scalado/base/Iterator;
    .restart local v22       #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :catch_2
    move-exception v8

    .line 373
    .local v8, e:Ljava/lang/Exception;
    :try_start_5
    const-string v24, "ScaladoCameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v25, "Failed to set EXIF thumbnail. width="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {v19 .. v19}, Lcom/scalado/base/Size;->getWidth()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 375
    const-string v25, ", height="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/base/Size;->getHeight()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 376
    const-string v25, ", size="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-eqz v18, :cond_9

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    :goto_3
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 377
    const-string v25, ", exception="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 373
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 382
    .end local v7           #dims:Lcom/scalado/base/Size;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v10           #estimatedThumbnailSize:I
    .end local v11           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v17           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v18           #thumbnailData:[B
    .end local v19           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v20           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v21           #thumbnailIterator:Lcom/scalado/base/Iterator;
    .end local v22           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :catch_3
    move-exception v8

    .line 383
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v23, "ScaladoCameraFramework"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Failed to create HDR EXIF: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 376
    .restart local v7       #dims:Lcom/scalado/base/Size;
    .restart local v10       #estimatedThumbnailSize:I
    .restart local v11       #exifSession:Lcom/scalado/caps/exif/Session;
    .restart local v17       #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .restart local v18       #thumbnailData:[B
    .restart local v19       #thumbnailDims:Lcom/scalado/base/Size;
    .restart local v20       #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v21       #thumbnailIterator:Lcom/scalado/base/Iterator;
    .restart local v22       #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :cond_9
    const/16 v23, 0x0

    goto :goto_3
.end method
