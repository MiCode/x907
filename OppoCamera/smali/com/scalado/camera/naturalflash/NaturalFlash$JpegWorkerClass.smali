.class Lcom/scalado/camera/naturalflash/NaturalFlash$JpegWorkerClass;
.super Ljava/lang/Object;
.source "NaturalFlash.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/naturalflash/NaturalFlash;
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

.field final synthetic this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/naturalflash/NaturalFlash;Ljava/util/Vector;)V
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
    .line 322
    .local p2, buffers:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/base/Buffer;>;"
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegWorkerClass;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegWorkerClass;->mJpegBuffers:Ljava/util/Vector;

    .line 323
    iput-object p2, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegWorkerClass;->mJpegBuffers:Ljava/util/Vector;

    .line 324
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 328
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v6, v0, [Lcom/scalado/caps/Decoder;

    .line 329
    .local v6, decoders:[Lcom/scalado/caps/Decoder;
    const/16 v20, 0x1

    .line 332
    .local v20, success:Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/16 v27, 0x2

    move/from16 v0, v27

    if-lt v12, v0, :cond_3

    .line 345
    :goto_1
    const/4 v15, 0x0

    check-cast v15, [B

    .line 347
    .local v15, outData:[B
    if-eqz v20, :cond_2

    .line 348
    new-instance v17, Lcom/scalado/caps/Session;

    const/16 v27, 0x0

    aget-object v27, v6, v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 349
    .local v17, session1:Lcom/scalado/caps/Session;
    new-instance v18, Lcom/scalado/caps/Session;

    const/16 v27, 0x1

    aget-object v27, v6, v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 350
    .local v18, session2:Lcom/scalado/caps/Session;
    const/4 v13, 0x0

    .line 353
    .local v13, nativeNaturalFlash:Lcom/scalado/caps/naturalflash/NaturalFlash;
    :try_start_0
    new-instance v11, Lcom/scalado/caps/exif/Session;

    new-instance v28, Lcom/scalado/stream/BufferStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegWorkerClass;->mJpegBuffers:Ljava/util/Vector;

    move-object/from16 v27, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/scalado/base/Buffer;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    move-object/from16 v0, v28

    invoke-direct {v11, v0}, Lcom/scalado/caps/exif/Session;-><init>(Lcom/scalado/stream/Stream;)V

    .line 357
    .local v11, exifSession:Lcom/scalado/caps/exif/Session;
    invoke-virtual/range {v17 .. v17}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v7

    .line 358
    .local v7, dims:Lcom/scalado/base/Size;
    new-instance v23, Lcom/scalado/base/Size;

    invoke-direct/range {v23 .. v23}, Lcom/scalado/base/Size;-><init>()V

    .line 359
    .local v23, thumbnailDims:Lcom/scalado/base/Size;
    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 360
    invoke-virtual/range {v23 .. v23}, Lcom/scalado/base/Size;->getHeight()I

    move-result v27

    const/16 v28, 0xa0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_0

    .line 361
    const/16 v27, 0xa0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 363
    :cond_0
    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 364
    invoke-virtual/range {v23 .. v23}, Lcom/scalado/base/Size;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    .line 363
    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 365
    invoke-virtual/range {v23 .. v23}, Lcom/scalado/base/Size;->getWidth()I

    move-result v27

    .line 366
    invoke-virtual/range {v23 .. v23}, Lcom/scalado/base/Size;->getHeight()I

    move-result v28

    .line 365
    mul-int v27, v27, v28

    div-int/lit8 v10, v27, 0x5

    .line 367
    .local v10, estimatedThumbnailSize:I
    new-instance v21, Lcom/scalado/base/Buffer;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 368
    .local v21, thumbnailBuffer:Lcom/scalado/base/Buffer;
    new-instance v26, Lcom/scalado/stream/BufferStream;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 369
    .local v26, thumbnailStream:Lcom/scalado/stream/BufferStream;
    new-instance v24, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 371
    .local v24, thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    const/16 v22, 0x0

    check-cast v22, [B

    .line 373
    .local v22, thumbnailData:[B
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v25

    .line 374
    .local v25, thumbnailIterator:Lcom/scalado/base/Iterator;
    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    .line 376
    invoke-virtual/range {v21 .. v21}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 377
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/scalado/base/Buffer;->get([BIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 379
    :try_start_1
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/scalado/caps/exif/Session;->setThumbnail([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    :goto_2
    :try_start_2
    new-instance v14, Lcom/scalado/caps/naturalflash/NaturalFlash;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1, v11}, Lcom/scalado/caps/naturalflash/NaturalFlash;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Session;Lcom/scalado/caps/exif/Session;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v13           #nativeNaturalFlash:Lcom/scalado/caps/naturalflash/NaturalFlash;
    .local v14, nativeNaturalFlash:Lcom/scalado/caps/naturalflash/NaturalFlash;
    move-object v13, v14

    .line 395
    .end local v7           #dims:Lcom/scalado/base/Size;
    .end local v10           #estimatedThumbnailSize:I
    .end local v11           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v14           #nativeNaturalFlash:Lcom/scalado/caps/naturalflash/NaturalFlash;
    .end local v21           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v22           #thumbnailData:[B
    .end local v23           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v24           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v25           #thumbnailIterator:Lcom/scalado/base/Iterator;
    .end local v26           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    .restart local v13       #nativeNaturalFlash:Lcom/scalado/caps/naturalflash/NaturalFlash;
    :goto_3
    if-nez v13, :cond_1

    .line 397
    new-instance v13, Lcom/scalado/caps/naturalflash/NaturalFlash;

    .end local v13           #nativeNaturalFlash:Lcom/scalado/caps/naturalflash/NaturalFlash;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Lcom/scalado/caps/naturalflash/NaturalFlash;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Session;)V

    .line 399
    .restart local v13       #nativeNaturalFlash:Lcom/scalado/caps/naturalflash/NaturalFlash;
    :cond_1
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 400
    .local v16, outStream:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/scalado/caps/naturalflash/NaturalFlash;->render(Ljava/io/OutputStream;)V

    .line 402
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    .line 405
    .end local v13           #nativeNaturalFlash:Lcom/scalado/caps/naturalflash/NaturalFlash;
    .end local v16           #outStream:Ljava/io/ByteArrayOutputStream;
    .end local v17           #session1:Lcom/scalado/caps/Session;
    .end local v18           #session2:Lcom/scalado/caps/Session;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegWorkerClass;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    move-object/from16 v27, v0

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v27 .. v27}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$30(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegWorkerClass;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    move-object/from16 v28, v0

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static/range {v28 .. v28}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$2(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v0, v15, v1}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 407
    const/16 v27, 0x0

    return-object v27

    .line 333
    .end local v15           #outData:[B
    :cond_3
    new-instance v19, Lcom/scalado/stream/BufferStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/naturalflash/NaturalFlash$JpegWorkerClass;->mJpegBuffers:Ljava/util/Vector;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/scalado/base/Buffer;

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 334
    .local v19, stream:Lcom/scalado/stream/Stream;
    invoke-static/range {v19 .. v19}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 336
    .local v5, decoderIterator:Lcom/scalado/base/Iterator;
    const/16 v27, 0x0

    :try_start_3
    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 343
    invoke-virtual {v5}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/scalado/caps/Decoder;

    aput-object v27, v6, v12

    .line 332
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 337
    :catch_0
    move-exception v9

    .line 338
    .local v9, e1:Ljava/lang/Exception;
    const-string v27, "ScaladoCameraFramework"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Error, failed to decode jpeg: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/16 v20, 0x0

    .line 340
    goto/16 :goto_1

    .line 380
    .end local v5           #decoderIterator:Lcom/scalado/base/Iterator;
    .end local v9           #e1:Ljava/lang/Exception;
    .end local v19           #stream:Lcom/scalado/stream/Stream;
    .restart local v7       #dims:Lcom/scalado/base/Size;
    .restart local v10       #estimatedThumbnailSize:I
    .restart local v11       #exifSession:Lcom/scalado/caps/exif/Session;
    .restart local v13       #nativeNaturalFlash:Lcom/scalado/caps/naturalflash/NaturalFlash;
    .restart local v15       #outData:[B
    .restart local v17       #session1:Lcom/scalado/caps/Session;
    .restart local v18       #session2:Lcom/scalado/caps/Session;
    .restart local v21       #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .restart local v22       #thumbnailData:[B
    .restart local v23       #thumbnailDims:Lcom/scalado/base/Size;
    .restart local v24       #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v25       #thumbnailIterator:Lcom/scalado/base/Iterator;
    .restart local v26       #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :catch_1
    move-exception v8

    .line 381
    .local v8, e:Ljava/lang/Exception;
    :try_start_4
    const-string v28, "ScaladoCameraFramework"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v29, "Failed to set EXIF thumbnail. width="

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {v23 .. v23}, Lcom/scalado/base/Size;->getWidth()I

    move-result v29

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 383
    const-string v29, ", height="

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v23 .. v23}, Lcom/scalado/base/Size;->getHeight()I

    move-result v29

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 384
    const-string v29, ", size="

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    if-eqz v22, :cond_4

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    :goto_4
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 385
    const-string v29, ", exception="

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 381
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 390
    .end local v7           #dims:Lcom/scalado/base/Size;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v10           #estimatedThumbnailSize:I
    .end local v11           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v21           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v22           #thumbnailData:[B
    .end local v23           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v24           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v25           #thumbnailIterator:Lcom/scalado/base/Iterator;
    .end local v26           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :catch_2
    move-exception v8

    .line 391
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v27, "ScaladoCameraFramework"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Failed to create NaturalFlash EXIF: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 384
    .restart local v7       #dims:Lcom/scalado/base/Size;
    .restart local v10       #estimatedThumbnailSize:I
    .restart local v11       #exifSession:Lcom/scalado/caps/exif/Session;
    .restart local v21       #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .restart local v22       #thumbnailData:[B
    .restart local v23       #thumbnailDims:Lcom/scalado/base/Size;
    .restart local v24       #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v25       #thumbnailIterator:Lcom/scalado/base/Iterator;
    .restart local v26       #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :cond_4
    const/16 v27, 0x0

    goto :goto_4
.end method
