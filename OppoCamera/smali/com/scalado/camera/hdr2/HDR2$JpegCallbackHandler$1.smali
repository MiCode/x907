.class Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;
.super Ljava/lang/Thread;
.source "HDR2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->onPictureTaken([BLcom/scalado/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;


# direct methods
.method constructor <init>(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    .line 395
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 399
    iget-object v10, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/hdr2/HDR2;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2;->access$30(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 401
    .local v8, renderTimeStart:J
    iget-object v10, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$0(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v10

    invoke-interface {v10}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v10

    invoke-interface {v10}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewSize()Lcom/scalado/base/Size;

    move-result-object v7

    .line 402
    .local v7, postviewDims:Lcom/scalado/base/Size;
    new-instance v4, Lcom/scalado/base/Image;

    iget-object v10, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$0(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v10

    invoke-interface {v10}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v10

    invoke-interface {v10}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewFormat()I

    move-result v10

    invoke-static {v10}, Lcom/scalado/camera/utils/Translators;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v10

    invoke-direct {v4, v7, v10}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 403
    .local v4, image:Lcom/scalado/base/Image;
    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Rendering HDR postview with Dims: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v12

    invoke-virtual {v12}, Lcom/scalado/base/Size;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v12

    invoke-virtual {v12}, Lcom/scalado/base/Size;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ExpsoureDiff: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;
    invoke-static {v12}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/hdr2/HDR2;

    move-result-object v12

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mExposureDiff:I
    invoke-static {v12}, Lcom/scalado/camera/hdr2/HDR2;->access$1(Lcom/scalado/camera/hdr2/HDR2;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :try_start_0
    iget-object v10, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/hdr2/HDR2;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mHDR2:Lcom/scalado/caps/hdr2/HDR2;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2;->access$29(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/caps/hdr2/HDR2;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/scalado/caps/hdr2/HDR2;->generatePreview(Lcom/scalado/base/Image;)V

    .line 406
    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Rendering postview took "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 408
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    new-array v6, v10, [B

    .line 409
    .local v6, postview:[B
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 410
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 411
    iget-object v10, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/hdr2/HDR2;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2;->access$30(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    iget-object v11, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v11}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$0(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v11

    invoke-interface {v10, v6, v11}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v0           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v4           #image:Lcom/scalado/base/Image;
    .end local v6           #postview:[B
    .end local v7           #postviewDims:Lcom/scalado/base/Size;
    .end local v8           #renderTimeStart:J
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/hdr2/HDR2;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2;->access$31(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 421
    .restart local v8       #renderTimeStart:J
    iget-object v10, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/hdr2/HDR2;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mDims:Lcom/scalado/base/Size;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2;->access$32(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/base/Size;

    move-result-object v10

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;
    invoke-static {v11}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/hdr2/HDR2;

    move-result-object v11

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mDims:Lcom/scalado/base/Size;
    invoke-static {v11}, Lcom/scalado/camera/hdr2/HDR2;->access$32(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/base/Size;

    move-result-object v11

    invoke-virtual {v11}, Lcom/scalado/base/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    div-int/lit8 v3, v10, 0x5

    .line 423
    .local v3, estimatedSize:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 424
    .local v1, dstStream:Ljava/io/ByteArrayOutputStream;
    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Rendering HDR jpeg with expsoureDiff: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;
    invoke-static {v12}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/hdr2/HDR2;

    move-result-object v12

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mExposureDiff:I
    invoke-static {v12}, Lcom/scalado/camera/hdr2/HDR2;->access$1(Lcom/scalado/camera/hdr2/HDR2;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :try_start_1
    iget-object v10, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/hdr2/HDR2;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mHDR2:Lcom/scalado/caps/hdr2/HDR2;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2;->access$29(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/caps/hdr2/HDR2;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/scalado/caps/hdr2/HDR2;->render(Ljava/io/OutputStream;)V

    .line 427
    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Rendering jpeg took "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 429
    .local v5, jpeg:[B
    iget-object v10, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/hdr2/HDR2;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2;->access$31(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    iget-object v11, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v11}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$0(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v11

    invoke-interface {v10, v5, v11}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 436
    .end local v1           #dstStream:Ljava/io/ByteArrayOutputStream;
    .end local v3           #estimatedSize:I
    .end local v5           #jpeg:[B
    .end local v8           #renderTimeStart:J
    :cond_1
    :goto_1
    return-void

    .line 413
    .restart local v4       #image:Lcom/scalado/base/Image;
    .restart local v7       #postviewDims:Lcom/scalado/base/Size;
    .restart local v8       #renderTimeStart:J
    :catch_0
    move-exception v2

    .line 414
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed rendering HDR postview: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v10, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/hdr2/HDR2;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2;->access$30(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    iget-object v11, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v11}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$0(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v11

    invoke-interface {v10, v14, v11}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    goto/16 :goto_0

    .line 431
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #image:Lcom/scalado/base/Image;
    .end local v7           #postviewDims:Lcom/scalado/base/Size;
    .restart local v1       #dstStream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #estimatedSize:I
    :catch_1
    move-exception v2

    .line 432
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed rendering HDR jpeg: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v10, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr2/HDR2;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/hdr2/HDR2;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr2/HDR2;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr2/HDR2;->access$31(Lcom/scalado/camera/hdr2/HDR2;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    iget-object v11, p0, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v11}, Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;->access$0(Lcom/scalado/camera/hdr2/HDR2$JpegCallbackHandler;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v11

    invoke-interface {v10, v14, v11}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    goto :goto_1
.end method
