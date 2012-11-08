.class Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;
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

.field final synthetic this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;Lcom/scalado/base/Buffer;Z)V
    .locals 1
    .parameter
    .parameter "buffer"
    .parameter "isJpegBuffer"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;->mPostviewBuffer:Lcom/scalado/base/Buffer;

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;->mIsJpegBuffer:Z

    .line 232
    iput-object p2, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;->mPostviewBuffer:Lcom/scalado/base/Buffer;

    .line 233
    iput-boolean p3, p0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;->mIsJpegBuffer:Z

    .line 234
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
    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v15}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$1(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v15

    invoke-interface {v15}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v15

    invoke-interface {v15}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewFormat()I

    move-result v15

    invoke-static {v15}, Lcom/scalado/camera/utils/Translators;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v2

    .line 239
    .local v2, config:Lcom/scalado/base/Image$Config;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v15}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$1(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v15

    invoke-interface {v15}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v15

    invoke-interface {v15}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewSize()Lcom/scalado/base/Size;

    move-result-object v4

    .line 241
    .local v4, dimensions:Lcom/scalado/base/Size;
    const/4 v9, 0x0

    .line 243
    .local v9, mPostviewSession:Lcom/scalado/caps/Session;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;->mIsJpegBuffer:Z

    if-nez v15, :cond_0

    .line 244
    new-instance v6, Lcom/scalado/base/Image;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;->mPostviewBuffer:Lcom/scalado/base/Buffer;

    invoke-direct {v6, v15, v4, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 246
    .local v6, image:Lcom/scalado/base/Image;
    new-instance v7, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v7, v6}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 247
    .local v7, imageDecoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance v9, Lcom/scalado/caps/Session;

    .end local v9           #mPostviewSession:Lcom/scalado/caps/Session;
    invoke-direct {v9, v7}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 257
    .end local v6           #image:Lcom/scalado/base/Image;
    .end local v7           #imageDecoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    .restart local v9       #mPostviewSession:Lcom/scalado/caps/Session;
    :goto_0
    new-instance v10, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;

    invoke-direct {v10, v9}, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;-><init>(Lcom/scalado/caps/Session;)V

    .line 258
    .local v10, noiseFilter:Lcom/scalado/caps/filter/imageenhance/NoiseReduction;
    const/high16 v15, 0x3f00

    invoke-virtual {v10, v15}, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->set(F)V

    .line 259
    invoke-virtual {v10}, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->commit()V

    .line 261
    new-instance v13, Lcom/scalado/base/Image;

    invoke-direct {v13, v4, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 262
    .local v13, outImage:Lcom/scalado/base/Image;
    new-instance v12, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v12, v13}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 264
    .local v12, outEncoder:Lcom/scalado/caps/Encoder;
    const/4 v11, 0x0

    check-cast v11, [B

    .line 266
    .local v11, outData:[B
    :try_start_0
    invoke-virtual {v9, v12}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/scalado/base/Iterator;->step(I)F

    .line 268
    invoke-virtual {v13}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 269
    .local v1, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v15

    new-array v11, v15, [B

    .line 270
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 271
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v1           #byteBuffer:Ljava/nio/ByteBuffer;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v15}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$10(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;->this$0:Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;

    move-object/from16 v16, v0

    #getter for: Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static/range {v16 .. v16}, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;->access$1(Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v11, v0}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 277
    const/4 v15, 0x0

    return-object v15

    .line 249
    .end local v10           #noiseFilter:Lcom/scalado/caps/filter/imageenhance/NoiseReduction;
    .end local v11           #outData:[B
    .end local v12           #outEncoder:Lcom/scalado/caps/Encoder;
    .end local v13           #outImage:Lcom/scalado/base/Image;
    :cond_0
    new-instance v14, Lcom/scalado/stream/BufferStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/singleimagelowlight/SingleImageLowLight$PostviewWorkerClass;->mPostviewBuffer:Lcom/scalado/base/Buffer;

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 250
    .local v14, stream:Lcom/scalado/stream/Stream;
    invoke-static {v14}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v8

    .line 251
    .local v8, iterator:Lcom/scalado/base/Iterator;
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/scalado/base/Iterator;->step(I)F

    .line 253
    invoke-virtual {v8}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 254
    .local v3, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    new-instance v9, Lcom/scalado/caps/Session;

    .end local v9           #mPostviewSession:Lcom/scalado/caps/Session;
    invoke-direct {v9, v3}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .restart local v9       #mPostviewSession:Lcom/scalado/caps/Session;
    goto :goto_0

    .line 272
    .end local v3           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v8           #iterator:Lcom/scalado/base/Iterator;
    .end local v14           #stream:Lcom/scalado/stream/Stream;
    .restart local v10       #noiseFilter:Lcom/scalado/caps/filter/imageenhance/NoiseReduction;
    .restart local v11       #outData:[B
    .restart local v12       #outEncoder:Lcom/scalado/caps/Encoder;
    .restart local v13       #outImage:Lcom/scalado/base/Image;
    :catch_0
    move-exception v5

    .line 273
    .local v5, e:Ljava/io/IOException;
    const-string v15, "ScaladoCameraFramework"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Failed to render postview!\n"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
