.class Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;
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
    name = "PostviewWorkerClass"
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
.field mIsJpegBuffer:Z

.field mPostviewBuffer:Lcom/scalado/base/Buffer;

.field final synthetic this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;Lcom/scalado/base/Buffer;Z)V
    .locals 1
    .parameter
    .parameter "buffer"
    .parameter "isJpegBuffer"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;->mPostviewBuffer:Lcom/scalado/base/Buffer;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;->mIsJpegBuffer:Z

    .line 227
    iput-object p2, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;->mPostviewBuffer:Lcom/scalado/base/Buffer;

    .line 228
    iput-boolean p3, p0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;->mIsJpegBuffer:Z

    .line 229
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v15}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$13(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v15

    invoke-interface {v15}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v15

    invoke-interface {v15}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewFormat()I

    move-result v15

    invoke-static {v15}, Lcom/scalado/camera/utils/Translators;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v3

    .line 234
    .local v3, config:Lcom/scalado/base/Image$Config;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v15}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$13(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v15

    invoke-interface {v15}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v15

    invoke-interface {v15}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewSize()Lcom/scalado/base/Size;

    move-result-object v5

    .line 236
    .local v5, dimensions:Lcom/scalado/base/Size;
    const/4 v10, 0x0

    .line 238
    .local v10, mPostviewSession:Lcom/scalado/caps/Session;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;->mIsJpegBuffer:Z

    if-nez v15, :cond_0

    .line 239
    new-instance v7, Lcom/scalado/base/Image;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;->mPostviewBuffer:Lcom/scalado/base/Buffer;

    invoke-direct {v7, v15, v5, v3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 241
    .local v7, image:Lcom/scalado/base/Image;
    new-instance v8, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v8, v7}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 242
    .local v8, imageDecoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance v10, Lcom/scalado/caps/Session;

    .end local v10           #mPostviewSession:Lcom/scalado/caps/Session;
    invoke-direct {v10, v8}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 253
    .end local v7           #image:Lcom/scalado/base/Image;
    .end local v8           #imageDecoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    .restart local v10       #mPostviewSession:Lcom/scalado/caps/Session;
    :goto_0
    new-instance v1, Lcom/scalado/caps/filter/clearshot/LocalBoost;

    invoke-direct {v1, v10}, Lcom/scalado/caps/filter/clearshot/LocalBoost;-><init>(Lcom/scalado/caps/Session;)V

    .line 255
    .local v1, boostFilter:Lcom/scalado/caps/filter/clearshot/LocalBoost;
    const/16 v15, 0x8

    invoke-virtual {v1, v15}, Lcom/scalado/caps/filter/clearshot/LocalBoost;->setAuto(I)V

    .line 256
    invoke-virtual {v1}, Lcom/scalado/caps/filter/clearshot/LocalBoost;->commit()V

    .line 258
    new-instance v13, Lcom/scalado/base/Image;

    invoke-direct {v13, v5, v3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 259
    .local v13, outImage:Lcom/scalado/base/Image;
    new-instance v12, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v12, v13}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 261
    .local v12, outEncoder:Lcom/scalado/caps/Encoder;
    const/4 v11, 0x0

    check-cast v11, [B

    .line 263
    .local v11, outData:[B
    :try_start_0
    invoke-virtual {v10, v12}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/scalado/base/Iterator;->step(I)F

    .line 265
    invoke-virtual {v13}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 266
    .local v2, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v15

    new-array v11, v15, [B

    .line 267
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v2           #byteBuffer:Ljava/nio/ByteBuffer;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v15}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$9(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;->this$0:Lcom/scalado/camera/singleimagehdr/SingleImageHDR;

    move-object/from16 v16, v0

    #getter for: Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static/range {v16 .. v16}, Lcom/scalado/camera/singleimagehdr/SingleImageHDR;->access$13(Lcom/scalado/camera/singleimagehdr/SingleImageHDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v11, v0}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 275
    const/4 v15, 0x0

    return-object v15

    .line 244
    .end local v1           #boostFilter:Lcom/scalado/caps/filter/clearshot/LocalBoost;
    .end local v11           #outData:[B
    .end local v12           #outEncoder:Lcom/scalado/caps/Encoder;
    .end local v13           #outImage:Lcom/scalado/base/Image;
    :cond_0
    new-instance v14, Lcom/scalado/stream/BufferStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/singleimagehdr/SingleImageHDR$PostviewWorkerClass;->mPostviewBuffer:Lcom/scalado/base/Buffer;

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 245
    .local v14, stream:Lcom/scalado/stream/Stream;
    invoke-static {v14}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v9

    .line 246
    .local v9, iterator:Lcom/scalado/base/Iterator;
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/scalado/base/Iterator;->step(I)F

    .line 248
    invoke-virtual {v9}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 250
    .local v4, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    new-instance v10, Lcom/scalado/caps/Session;

    .end local v10           #mPostviewSession:Lcom/scalado/caps/Session;
    invoke-direct {v10, v4}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .restart local v10       #mPostviewSession:Lcom/scalado/caps/Session;
    goto :goto_0

    .line 269
    .end local v4           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v9           #iterator:Lcom/scalado/base/Iterator;
    .end local v14           #stream:Lcom/scalado/stream/Stream;
    .restart local v1       #boostFilter:Lcom/scalado/caps/filter/clearshot/LocalBoost;
    .restart local v11       #outData:[B
    .restart local v12       #outEncoder:Lcom/scalado/caps/Encoder;
    .restart local v13       #outImage:Lcom/scalado/base/Image;
    :catch_0
    move-exception v6

    .line 270
    .local v6, e:Ljava/io/IOException;
    const-string v15, "ScaladoCameraFramework"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Failed to render postview!\n"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
