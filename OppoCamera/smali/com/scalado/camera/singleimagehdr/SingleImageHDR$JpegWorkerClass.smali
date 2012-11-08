.class Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegWorkerClass;
.super Ljava/lang/Object;
.source "SingleImageHDR.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/singleimagehdr/SingleImageHDR;
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

.field final synthetic this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/base/Buffer;)V
    .locals 1
    .parameter
    .parameter "buffer"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegWorkerClass;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegWorkerClass;->mJpegBuffer:Lcom/scalado/base/Buffer;

    .line 283
    iput-object p2, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegWorkerClass;->mJpegBuffer:Lcom/scalado/base/Buffer;

    .line 284
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
    .line 288
    new-instance v19, Lcom/scalado/stream/BufferStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegWorkerClass;->mJpegBuffer:Lcom/scalado/base/Buffer;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 289
    .local v19, stream:Lcom/scalado/stream/Stream;
    invoke-static/range {v19 .. v19}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v14

    .line 290
    .local v14, iterator:Lcom/scalado/base/Iterator;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Lcom/scalado/base/Iterator;->step(I)F

    .line 292
    invoke-virtual {v14}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 294
    .local v6, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    new-instance v15, Lcom/scalado/caps/Session;

    invoke-direct {v15, v6}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 295
    .local v15, mJpegSession:Lcom/scalado/caps/Session;
    new-instance v5, Lcom/scalado/caps/filter/clearshot/LocalBoost;

    invoke-direct {v5, v15}, Lcom/scalado/caps/filter/clearshot/LocalBoost;-><init>(Lcom/scalado/caps/Session;)V

    .line 297
    .local v5, boostFilter:Lcom/scalado/caps/filter/clearshot/LocalBoost;
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/scalado/caps/filter/clearshot/LocalBoost;->setAuto(I)V

    .line 298
    invoke-virtual {v5}, Lcom/scalado/caps/filter/clearshot/LocalBoost;->commit()V

    .line 300
    invoke-virtual {v6}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v7

    .line 301
    .local v7, dimensions:Lcom/scalado/base/Size;
    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v26

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v27

    mul-int v26, v26, v27

    div-int/lit8 v11, v26, 0x5

    .line 302
    .local v11, estimatedJpegSize:I
    new-instance v16, Lcom/scalado/base/Buffer;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 303
    .local v16, outBuffer:Lcom/scalado/base/Buffer;
    new-instance v18, Lcom/scalado/stream/BufferStream;

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 304
    .local v18, outStream:Lcom/scalado/stream/BufferStream;
    new-instance v10, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v7}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 307
    .local v10, encoder:Lcom/scalado/caps/Encoder;
    :try_start_0
    new-instance v13, Lcom/scalado/caps/exif/Session;

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/scalado/caps/exif/Session;-><init>(Lcom/scalado/stream/Stream;)V

    .line 310
    .local v13, exifSession:Lcom/scalado/caps/exif/Session;
    invoke-virtual {v15}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v8

    .line 311
    .local v8, dims:Lcom/scalado/base/Size;
    new-instance v22, Lcom/scalado/base/Size;

    invoke-direct/range {v22 .. v22}, Lcom/scalado/base/Size;-><init>()V

    .line 312
    .local v22, thumbnailDims:Lcom/scalado/base/Size;
    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 313
    invoke-virtual/range {v22 .. v22}, Lcom/scalado/base/Size;->getHeight()I

    move-result v26

    const/16 v27, 0xa0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_0

    .line 314
    const/16 v26, 0xa0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 316
    :cond_0
    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    .line 317
    invoke-virtual/range {v22 .. v22}, Lcom/scalado/base/Size;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    .line 316
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 318
    invoke-virtual/range {v22 .. v22}, Lcom/scalado/base/Size;->getWidth()I

    move-result v26

    .line 319
    invoke-virtual/range {v22 .. v22}, Lcom/scalado/base/Size;->getHeight()I

    move-result v27

    .line 318
    mul-int v26, v26, v27

    div-int/lit8 v12, v26, 0x5

    .line 320
    .local v12, estimatedThumbnailSize:I
    new-instance v20, Lcom/scalado/base/Buffer;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 321
    .local v20, thumbnailBuffer:Lcom/scalado/base/Buffer;
    new-instance v25, Lcom/scalado/stream/BufferStream;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 322
    .local v25, thumbnailStream:Lcom/scalado/stream/BufferStream;
    new-instance v23, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 324
    .local v23, thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    const/16 v21, 0x0

    check-cast v21, [B

    .line 325
    .local v21, thumbnailData:[B
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v24

    .line 326
    .local v24, thumbnailIterator:Lcom/scalado/base/Iterator;
    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    .line 328
    invoke-virtual/range {v20 .. v20}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 329
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

    .line 330
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/scalado/caps/exif/Session;->setThumbnail([B)V

    .line 331
    invoke-virtual {v13, v15}, Lcom/scalado/caps/exif/Session;->setExifToSession(Lcom/scalado/caps/Session;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v8           #dims:Lcom/scalado/base/Size;
    .end local v12           #estimatedThumbnailSize:I
    .end local v13           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v20           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v21           #thumbnailData:[B
    .end local v22           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v23           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v24           #thumbnailIterator:Lcom/scalado/base/Iterator;
    .end local v25           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :goto_0
    const/16 v17, 0x0

    check-cast v17, [B

    .line 340
    .local v17, outData:[B
    :try_start_1
    invoke-virtual {v15, v10}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/scalado/base/Iterator;->step(I)F

    .line 343
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/stream/BufferStream;->getPosition()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 344
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

    .line 348
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegWorkerClass;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$12(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$JpegWorkerClass;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    move-object/from16 v27, v0

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static/range {v27 .. v27}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$13(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 350
    const/16 v26, 0x0

    return-object v26

    .line 332
    .end local v17           #outData:[B
    :catch_0
    move-exception v9

    .line 333
    .local v9, e:Ljava/lang/Exception;
    const-string v26, "ScaladoCameraFramework"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Failed to create SingleImageHDR EXIF: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 345
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v17       #outData:[B
    :catch_1
    move-exception v9

    .line 346
    .local v9, e:Ljava/io/IOException;
    const-string v26, "ScaladoCameraFramework"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Failed to render jpeg!\n"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
