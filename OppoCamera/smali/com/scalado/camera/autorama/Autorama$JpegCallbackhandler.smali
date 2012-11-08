.class Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;
.super Ljava/lang/Object;
.source "Autorama.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JpegCallbackhandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1172
    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 16
    .parameter "jpeg"
    .parameter "camera"

    .prologue
    .line 1177
    const-string v13, "ScaladoCameraFramework"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Got jpeg "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " out of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v15, v15, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$6(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    new-instance v3, Lcom/scalado/base/Buffer;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/scalado/base/Buffer;-><init>([B)V

    .line 1182
    .local v3, buffer:Lcom/scalado/base/Buffer;
    invoke-interface/range {p2 .. p2}, Lcom/scalado/camera/Camera;->getParameters()Lcom/scalado/camera/Camera$Parameters;

    move-result-object v13

    invoke-interface {v13}, Lcom/scalado/camera/Camera$Parameters;->getPictureSize()Lcom/scalado/base/Size;

    move-result-object v11

    .line 1184
    .local v11, size:Lcom/scalado/base/Size;
    new-instance v1, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTransformAtLastShutterCallback:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$32(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v14

    invoke-direct {v1, v13, v3, v11, v14}, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/caps/autorama/Transform;)V

    .line 1185
    .local v1, autoramaImage:Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$31(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    if-ge v13, v14, :cond_0

    .line 1189
    new-instance v8, Lcom/scalado/base/Image;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$30(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Image$Config;

    move-result-object v14

    invoke-direct {v8, v13, v14}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 1190
    .local v8, image:Lcom/scalado/base/Image;
    new-instance v7, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v7, v8}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 1192
    .local v7, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    new-instance v12, Lcom/scalado/stream/BufferStream;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 1193
    .local v12, stream:Lcom/scalado/stream/BufferStream;
    invoke-static {v12}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v9

    .line 1195
    .local v9, iterator:Lcom/scalado/base/Iterator;
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v9, v13}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    invoke-virtual {v9}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 1204
    .local v4, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    new-instance v10, Lcom/scalado/caps/Session;

    invoke-direct {v10, v4}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 1206
    .local v10, session:Lcom/scalado/caps/Session;
    :try_start_1
    invoke-virtual {v10, v7}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v9

    .line 1207
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1216
    new-instance v2, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTransformAtLastShutterCallback:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$32(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v14

    invoke-direct {v2, v13, v8, v14}, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V

    .line 1217
    .local v2, autoramaPostviewImage:Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$31(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 1220
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$2(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v13, v8, v14}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onIntermediatePostview(Lcom/scalado/base/Image;I)V

    .line 1225
    .end local v2           #autoramaPostviewImage:Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;
    .end local v4           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v7           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .end local v8           #image:Lcom/scalado/base/Image;
    .end local v9           #iterator:Lcom/scalado/base/Iterator;
    .end local v10           #session:Lcom/scalado/caps/Session;
    .end local v12           #stream:Lcom/scalado/stream/BufferStream;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 1226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$2(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v13, v3, v14}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onIntermediateJpeg(Lcom/scalado/base/Buffer;I)V

    .line 1229
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    const/4 v14, 0x0

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v13, v14}, Lcom/scalado/camera/autorama/Autorama;->access$3(Lcom/scalado/camera/autorama/Autorama;Landroid/graphics/Point;)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$5(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$State;

    move-result-object v13

    sget-object v14, Lcom/scalado/camera/autorama/Autorama$State;->READY:Lcom/scalado/camera/autorama/Autorama$State;

    if-eq v13, v14, :cond_2

    .line 1233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturingFinished:Z
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$34(Lcom/scalado/camera/autorama/Autorama;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1234
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->panoramaCompleted()V
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$35(Lcom/scalado/camera/autorama/Autorama;)V

    .line 1245
    :cond_2
    :goto_0
    return-void

    .line 1196
    .restart local v7       #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .restart local v8       #image:Lcom/scalado/base/Image;
    .restart local v9       #iterator:Lcom/scalado/base/Iterator;
    .restart local v12       #stream:Lcom/scalado/stream/BufferStream;
    :catch_0
    move-exception v6

    .line 1197
    .local v6, e1:Ljava/lang/Exception;
    const-string v13, "ScaladoCameraFramework"

    const-string v14, "Failed creating jpeg decoder for generating postview. Aborting panorama."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v13}, Lcom/scalado/camera/autorama/Autorama;->abort()V

    .line 1200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->restartPreview()V
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$33(Lcom/scalado/camera/autorama/Autorama;)V

    goto :goto_0

    .line 1208
    .end local v6           #e1:Ljava/lang/Exception;
    .restart local v4       #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .restart local v10       #session:Lcom/scalado/caps/Session;
    :catch_1
    move-exception v5

    .line 1209
    .local v5, e:Ljava/lang/Exception;
    const-string v13, "ScaladoCameraFramework"

    const-string v14, "Failed rendering postview. Aborting panorama."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v13}, Lcom/scalado/camera/autorama/Autorama;->abort()V

    .line 1212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->restartPreview()V
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$33(Lcom/scalado/camera/autorama/Autorama;)V

    goto :goto_0

    .line 1237
    .end local v4           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v7           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .end local v8           #image:Lcom/scalado/base/Image;
    .end local v9           #iterator:Lcom/scalado/base/Iterator;
    .end local v10           #session:Lcom/scalado/caps/Session;
    .end local v12           #stream:Lcom/scalado/stream/BufferStream;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 1239
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->startTracking()V
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$36(Lcom/scalado/camera/autorama/Autorama;)V

    .line 1241
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->restartPreview()V
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$33(Lcom/scalado/camera/autorama/Autorama;)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    sget-object v14, Lcom/scalado/camera/autorama/Autorama$State;->TRACKING:Lcom/scalado/camera/autorama/Autorama$State;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;
    invoke-static {v13, v14}, Lcom/scalado/camera/autorama/Autorama;->access$37(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$State;)V

    goto :goto_0
.end method
