.class Lcom/scalado/camera/lowlight/LowLight$JpegWorkerClass;
.super Ljava/lang/Object;
.source "LowLight.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/lowlight/LowLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JpegWorkerClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mJpegBuffers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/scalado/camera/lowlight/LowLight;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/lowlight/LowLight;Ljava/util/Vector;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Buffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p2, buffers:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/base/Buffer;>;"
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight$JpegWorkerClass;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$JpegWorkerClass;->mJpegBuffers:Ljava/util/Vector;

    .line 327
    iput-object p2, p0, Lcom/scalado/camera/lowlight/LowLight$JpegWorkerClass;->mJpegBuffers:Ljava/util/Vector;

    .line 328
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/lowlight/LowLight$JpegWorkerClass;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    move-object/from16 v24, v0

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->TOTAL_CAPTURE_IMAGES:I
    invoke-static/range {v24 .. v24}, Lcom/scalado/camera/lowlight/LowLight;->access$3(Lcom/scalado/camera/lowlight/LowLight;)I

    move-result v24

    move/from16 v0, v24

    new-array v6, v0, [Lcom/scalado/caps/Decoder;

    .line 333
    .local v6, decoders:[Lcom/scalado/caps/Decoder;
    const/16 v17, 0x1

    .line 335
    .local v17, success:Z
    const-string v24, "ScaladoCameraFramework"

    const-string v25, "lowlight:excuting"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/lowlight/LowLight$JpegWorkerClass;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    move-object/from16 v24, v0

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->TOTAL_CAPTURE_IMAGES:I
    invoke-static/range {v24 .. v24}, Lcom/scalado/camera/lowlight/LowLight;->access$3(Lcom/scalado/camera/lowlight/LowLight;)I

    move-result v24

    move/from16 v0, v24

    if-lt v12, v0, :cond_2

    .line 352
    :goto_1
    const/4 v14, 0x0

    check-cast v14, [B

    .line 354
    .local v14, outData:[B
    const-string v24, "ScaladoCameraFramework"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "lowlight:decoding result:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-eqz v17, :cond_1

    .line 356
    new-instance v13, Lcom/scalado/caps/lowlight/LowLight;

    invoke-direct {v13, v6}, Lcom/scalado/caps/lowlight/LowLight;-><init>([Lcom/scalado/caps/Decoder;)V

    .line 361
    .local v13, nativeLowLight:Lcom/scalado/caps/lowlight/LowLight;
    :try_start_0
    new-instance v11, Lcom/scalado/caps/exif/Session;

    new-instance v25, Lcom/scalado/stream/BufferStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/lowlight/LowLight$JpegWorkerClass;->mJpegBuffers:Ljava/util/Vector;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/scalado/base/Buffer;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Lcom/scalado/caps/exif/Session;-><init>(Lcom/scalado/stream/Stream;)V

    .line 365
    .local v11, exifSession:Lcom/scalado/caps/exif/Session;
    const/16 v24, 0x0

    aget-object v24, v6, v24

    invoke-virtual/range {v24 .. v24}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v7

    .line 366
    .local v7, dims:Lcom/scalado/base/Size;
    new-instance v20, Lcom/scalado/base/Size;

    invoke-direct/range {v20 .. v20}, Lcom/scalado/base/Size;-><init>()V

    .line 367
    .local v20, thumbnailDims:Lcom/scalado/base/Size;
    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v24

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 368
    invoke-virtual/range {v20 .. v20}, Lcom/scalado/base/Size;->getHeight()I

    move-result v24

    const/16 v25, 0xa0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 369
    const/16 v24, 0xa0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 371
    :cond_0
    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    .line 372
    invoke-virtual/range {v20 .. v20}, Lcom/scalado/base/Size;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 371
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 373
    invoke-virtual/range {v20 .. v20}, Lcom/scalado/base/Size;->getWidth()I

    move-result v24

    .line 374
    invoke-virtual/range {v20 .. v20}, Lcom/scalado/base/Size;->getHeight()I

    move-result v25

    .line 373
    mul-int v24, v24, v25

    div-int/lit8 v10, v24, 0x5

    .line 375
    .local v10, estimatedThumbnailSize:I
    new-instance v18, Lcom/scalado/base/Buffer;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 376
    .local v18, thumbnailBuffer:Lcom/scalado/base/Buffer;
    new-instance v23, Lcom/scalado/stream/BufferStream;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 377
    .local v23, thumbnailStream:Lcom/scalado/stream/BufferStream;
    new-instance v21, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 379
    .local v21, thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    const/16 v19, 0x0

    check-cast v19, [B

    .line 380
    .local v19, thumbnailData:[B
    new-instance v24, Lcom/scalado/caps/Session;

    const/16 v25, 0x0

    aget-object v25, v6, v25

    invoke-direct/range {v24 .. v25}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v22

    .line 381
    .local v22, thumbnailIterator:Lcom/scalado/base/Iterator;
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    .line 383
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 384
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/scalado/base/Buffer;->get([BIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 386
    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/scalado/caps/exif/Session;->setThumbnail([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 396
    :goto_2
    :try_start_2
    invoke-virtual {v13, v11}, Lcom/scalado/caps/lowlight/LowLight;->addExifSession(Lcom/scalado/caps/exif/Session;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 404
    .end local v7           #dims:Lcom/scalado/base/Size;
    .end local v10           #estimatedThumbnailSize:I
    .end local v11           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v18           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v19           #thumbnailData:[B
    .end local v20           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v21           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v22           #thumbnailIterator:Lcom/scalado/base/Iterator;
    .end local v23           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :goto_3
    const-string v24, "ScaladoCameraFramework"

    const-string v25, "nativeLowLight rendering 1"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 406
    .local v15, outStream:Ljava/io/ByteArrayOutputStream;
    const-string v24, "ScaladoCameraFramework"

    const-string v25, "nativeLowLight rendering 2"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v13, v15}, Lcom/scalado/caps/lowlight/LowLight;->render(Ljava/io/OutputStream;)V

    .line 408
    const-string v24, "ScaladoCameraFramework"

    const-string v25, "nativeLowLight rendering 3"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 412
    .end local v13           #nativeLowLight:Lcom/scalado/caps/lowlight/LowLight;
    .end local v15           #outStream:Ljava/io/ByteArrayOutputStream;
    :cond_1
    const-string v24, "ScaladoCameraFramework"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "mApplicationJpegCallback 1:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/lowlight/LowLight$JpegWorkerClass;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/lowlight/LowLight;->access$31(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/lowlight/LowLight$JpegWorkerClass;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    move-object/from16 v24, v0

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v24 .. v24}, Lcom/scalado/camera/lowlight/LowLight;->access$31(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/lowlight/LowLight$JpegWorkerClass;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    move-object/from16 v25, v0

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static/range {v25 .. v25}, Lcom/scalado/camera/lowlight/LowLight;->access$2(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v14, v1}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 414
    const-string v24, "ScaladoCameraFramework"

    const-string v25, "mApplicationJpegCallback 2"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/16 v24, 0x0

    return-object v24

    .line 339
    .end local v14           #outData:[B
    :cond_2
    new-instance v16, Lcom/scalado/stream/BufferStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/lowlight/LowLight$JpegWorkerClass;->mJpegBuffers:Ljava/util/Vector;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/scalado/base/Buffer;

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 340
    .local v16, stream:Lcom/scalado/stream/Stream;
    invoke-static/range {v16 .. v16}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 342
    .local v5, decoderIterator:Lcom/scalado/base/Iterator;
    const/16 v24, 0x0

    :try_start_3
    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 349
    invoke-virtual {v5}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/scalado/caps/Decoder;

    aput-object v24, v6, v12

    .line 338
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 343
    :catch_0
    move-exception v9

    .line 344
    .local v9, e1:Ljava/lang/Exception;
    const-string v24, "ScaladoCameraFramework"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Error, failed to decode jpeg: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/16 v17, 0x0

    .line 346
    goto/16 :goto_1

    .line 387
    .end local v5           #decoderIterator:Lcom/scalado/base/Iterator;
    .end local v9           #e1:Ljava/lang/Exception;
    .end local v16           #stream:Lcom/scalado/stream/Stream;
    .restart local v7       #dims:Lcom/scalado/base/Size;
    .restart local v10       #estimatedThumbnailSize:I
    .restart local v11       #exifSession:Lcom/scalado/caps/exif/Session;
    .restart local v13       #nativeLowLight:Lcom/scalado/caps/lowlight/LowLight;
    .restart local v14       #outData:[B
    .restart local v18       #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .restart local v19       #thumbnailData:[B
    .restart local v20       #thumbnailDims:Lcom/scalado/base/Size;
    .restart local v21       #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v22       #thumbnailIterator:Lcom/scalado/base/Iterator;
    .restart local v23       #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :catch_1
    move-exception v8

    .line 388
    .local v8, e:Ljava/lang/Exception;
    :try_start_4
    const-string v25, "ScaladoCameraFramework"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v26, "Failed to set EXIF thumbnail. width="

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {v20 .. v20}, Lcom/scalado/base/Size;->getWidth()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 390
    const-string v26, ", height="

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v20 .. v20}, Lcom/scalado/base/Size;->getHeight()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 391
    const-string v26, ", size="

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    :goto_4
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 392
    const-string v26, ", exception="

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 388
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 398
    .end local v7           #dims:Lcom/scalado/base/Size;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v10           #estimatedThumbnailSize:I
    .end local v11           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v18           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v19           #thumbnailData:[B
    .end local v20           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v21           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v22           #thumbnailIterator:Lcom/scalado/base/Iterator;
    .end local v23           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :catch_2
    move-exception v8

    .line 399
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v24, "ScaladoCameraFramework"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Failed to create LowLight EXIF: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 391
    .restart local v7       #dims:Lcom/scalado/base/Size;
    .restart local v10       #estimatedThumbnailSize:I
    .restart local v11       #exifSession:Lcom/scalado/caps/exif/Session;
    .restart local v18       #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .restart local v19       #thumbnailData:[B
    .restart local v20       #thumbnailDims:Lcom/scalado/base/Size;
    .restart local v21       #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v22       #thumbnailIterator:Lcom/scalado/base/Iterator;
    .restart local v23       #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :cond_3
    const/16 v24, 0x0

    goto :goto_4
.end method
