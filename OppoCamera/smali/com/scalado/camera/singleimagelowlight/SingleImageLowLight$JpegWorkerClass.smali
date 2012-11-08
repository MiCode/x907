.class Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegWorkerClass;
.super Ljava/lang/Object;
.source "SingleImageLowLight.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;
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
.field mJpegBuffer:Lcom/scalado/base/Buffer;

.field final synthetic this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/base/Buffer;)V
    .locals 1
    .parameter
    .parameter "buffer"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegWorkerClass;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegWorkerClass;->mJpegBuffer:Lcom/scalado/base/Buffer;

    .line 285
    iput-object p2, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegWorkerClass;->mJpegBuffer:Lcom/scalado/base/Buffer;

    .line 286
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 290
    new-instance v19, Lcom/scalado/stream/BufferStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegWorkerClass;->mJpegBuffer:Lcom/scalado/base/Buffer;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 291
    .local v19, stream:Lcom/scalado/stream/Stream;
    invoke-static/range {v19 .. v19}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v13

    .line 292
    .local v13, iterator:Lcom/scalado/base/Iterator;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/scalado/base/Iterator;->step(I)F

    .line 294
    invoke-virtual {v13}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 296
    .local v5, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    new-instance v14, Lcom/scalado/caps/Session;

    invoke-direct {v14, v5}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 298
    .local v14, mJpegSession:Lcom/scalado/caps/Session;
    new-instance v15, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;

    invoke-direct {v15, v14}, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;-><init>(Lcom/scalado/caps/Session;)V

    .line 299
    .local v15, noiseFilter:Lcom/scalado/caps/filter/imageenhance/NoiseReduction;
    const/high16 v26, 0x3f00

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->set(F)V

    .line 300
    invoke-virtual {v15}, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->commit()V

    .line 302
    invoke-virtual {v5}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v6

    .line 303
    .local v6, dimensions:Lcom/scalado/base/Size;
    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v26

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v27

    mul-int v26, v26, v27

    div-int/lit8 v10, v26, 0x5

    .line 304
    .local v10, estimatedJpegSize:I
    new-instance v16, Lcom/scalado/base/Buffer;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 305
    .local v16, outBuffer:Lcom/scalado/base/Buffer;
    new-instance v18, Lcom/scalado/stream/BufferStream;

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 306
    .local v18, outStream:Lcom/scalado/stream/BufferStream;
    new-instance v9, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v18

    invoke-direct {v9, v0, v6}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 308
    .local v9, encoder:Lcom/scalado/caps/Encoder;
    new-instance v12, Lcom/scalado/caps/exif/Session;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Lcom/scalado/caps/exif/Session;-><init>(Lcom/scalado/stream/Stream;)V

    .line 311
    .local v12, exifSession:Lcom/scalado/caps/exif/Session;
    invoke-virtual {v14}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v7

    .line 312
    .local v7, dims:Lcom/scalado/base/Size;
    new-instance v22, Lcom/scalado/base/Size;

    invoke-direct/range {v22 .. v22}, Lcom/scalado/base/Size;-><init>()V

    .line 313
    .local v22, thumbnailDims:Lcom/scalado/base/Size;
    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 314
    invoke-virtual/range {v22 .. v22}, Lcom/scalado/base/Size;->getHeight()I

    move-result v26

    const/16 v27, 0xa0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_0

    .line 315
    const/16 v26, 0xa0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 317
    :cond_0
    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    .line 318
    invoke-virtual/range {v22 .. v22}, Lcom/scalado/base/Size;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    .line 317
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 319
    invoke-virtual/range {v22 .. v22}, Lcom/scalado/base/Size;->getWidth()I

    move-result v26

    .line 320
    invoke-virtual/range {v22 .. v22}, Lcom/scalado/base/Size;->getHeight()I

    move-result v27

    .line 319
    mul-int v26, v26, v27

    div-int/lit8 v11, v26, 0x5

    .line 321
    .local v11, estimatedThumbnailSize:I
    new-instance v20, Lcom/scalado/base/Buffer;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 322
    .local v20, thumbnailBuffer:Lcom/scalado/base/Buffer;
    new-instance v25, Lcom/scalado/stream/BufferStream;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 323
    .local v25, thumbnailStream:Lcom/scalado/stream/BufferStream;
    new-instance v23, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 325
    .local v23, thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    const/16 v21, 0x0

    check-cast v21, [B

    .line 327
    .local v21, thumbnailData:[B
    :try_start_0
    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v24

    .line 328
    .local v24, thumbnailIterator:Lcom/scalado/base/Iterator;
    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    .line 330
    invoke-virtual/range {v20 .. v20}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 331
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/scalado/base/Buffer;->get([BIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v24           #thumbnailIterator:Lcom/scalado/base/Iterator;
    :goto_0
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/scalado/caps/exif/Session;->setThumbnail([B)V

    .line 336
    invoke-virtual {v12, v14}, Lcom/scalado/caps/exif/Session;->setExifToSession(Lcom/scalado/caps/Session;)V

    .line 339
    const/16 v17, 0x0

    check-cast v17, [B

    .line 341
    .local v17, outData:[B
    :try_start_1
    invoke-virtual {v14, v9}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/scalado/base/Iterator;->step(I)F

    .line 344
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/stream/BufferStream;->getPosition()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 345
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/scalado/base/Buffer;->get([BIII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 349
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegWorkerClass;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$13(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$JpegWorkerClass;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    move-object/from16 v27, v0

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static/range {v27 .. v27}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$1(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 351
    const/16 v26, 0x0

    return-object v26

    .line 332
    .end local v17           #outData:[B
    :catch_0
    move-exception v8

    .line 333
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 346
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v17       #outData:[B
    :catch_1
    move-exception v8

    .line 347
    .local v8, e:Ljava/io/IOException;
    const-string v26, "ScaladoCameraFramework"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Failed to render jpeg!\n"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
