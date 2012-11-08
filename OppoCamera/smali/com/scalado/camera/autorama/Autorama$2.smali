.class Lcom/scalado/camera/autorama/Autorama$2;
.super Ljava/lang/Thread;
.source "Autorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scalado/camera/autorama/Autorama;->panoramaCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    .line 756
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 760
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v27, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mLens:Lcom/scalado/caps/autorama/Lens;
    invoke-static/range {v27 .. v27}, Lcom/scalado/camera/autorama/Autorama;->access$39(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Lens;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v28, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static/range {v28 .. v28}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v29, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static/range {v29 .. v29}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v29

    #calls: Lcom/scalado/camera/autorama/Autorama;->createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;
    invoke-static/range {v26 .. v29}, Lcom/scalado/camera/autorama/Autorama;->access$40(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 776
    .local v18, session:Lcom/scalado/caps/Session;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/autorama/Autorama;->access$41(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 777
    new-instance v16, Lcom/scalado/base/Image;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v27, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewConfig:Lcom/scalado/base/Image$Config;
    invoke-static/range {v27 .. v27}, Lcom/scalado/camera/autorama/Autorama;->access$30(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Image$Config;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 778
    .local v16, image:Lcom/scalado/base/Image;
    new-instance v10, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    sget-object v26, Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;->PRESERVE_ASPECT_RATIO:Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v10, v0, v1}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;)V

    .line 780
    .local v10, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    const/4 v6, 0x0

    check-cast v6, [B

    .line 783
    .local v6, data:[B
    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v17

    .line 784
    .local v17, iterator:Lcom/scalado/base/Iterator;
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    .line 786
    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 787
    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 797
    .end local v17           #iterator:Lcom/scalado/base/Iterator;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/autorama/Autorama;->access$41(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v27, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static/range {v27 .. v27}, Lcom/scalado/camera/autorama/Autorama;->access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v0, v6, v1}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 800
    .end local v6           #data:[B
    .end local v10           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .end local v16           #image:Lcom/scalado/base/Image;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/autorama/Autorama;->access$42(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v26

    if-eqz v26, :cond_2

    .line 801
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v7

    .line 802
    .local v7, dims:Lcom/scalado/base/Size;
    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v26

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v27

    mul-int v26, v26, v27

    div-int/lit8 v11, v26, 0x5

    .line 803
    .local v11, estimatedJpegSize:I
    new-instance v5, Lcom/scalado/base/Buffer;

    invoke-direct {v5, v11}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 804
    .local v5, buffer:Lcom/scalado/base/Buffer;
    new-instance v19, Lcom/scalado/stream/BufferStream;

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-direct {v0, v5, v1}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 805
    .local v19, stream:Lcom/scalado/stream/BufferStream;
    new-instance v10, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v7}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 810
    .local v10, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;

    .line 811
    .local v14, firstImage:Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;
    new-instance v15, Lcom/scalado/stream/BufferStream;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;->mJpegImage:Lcom/scalado/base/Buffer;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;->access$0(Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;)Lcom/scalado/base/Buffer;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v15, v0, v1}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 812
    .local v15, firstImageStream:Lcom/scalado/stream/BufferStream;
    new-instance v13, Lcom/scalado/caps/exif/Session;

    invoke-direct {v13, v15}, Lcom/scalado/caps/exif/Session;-><init>(Lcom/scalado/stream/Stream;)V

    .line 817
    .local v13, exifSession:Lcom/scalado/caps/exif/Session;
    invoke-virtual {v13, v7}, Lcom/scalado/caps/exif/Session;->setImageSize(Lcom/scalado/base/Size;)V

    .line 820
    new-instance v22, Lcom/scalado/base/Size;

    invoke-direct/range {v22 .. v22}, Lcom/scalado/base/Size;-><init>()V

    .line 821
    .local v22, thumbnailDims:Lcom/scalado/base/Size;
    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 822
    invoke-virtual/range {v22 .. v22}, Lcom/scalado/base/Size;->getHeight()I

    move-result v26

    const/16 v27, 0xa0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1

    .line 823
    const/16 v26, 0xa0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 825
    :cond_1
    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    .line 826
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

    .line 825
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 827
    invoke-virtual/range {v22 .. v22}, Lcom/scalado/base/Size;->getWidth()I

    move-result v26

    .line 828
    invoke-virtual/range {v22 .. v22}, Lcom/scalado/base/Size;->getHeight()I

    move-result v27

    .line 827
    mul-int v26, v26, v27

    div-int/lit8 v12, v26, 0x5

    .line 831
    .local v12, estimatedThumbnailSize:I
    new-instance v20, Lcom/scalado/base/Buffer;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 832
    .local v20, thumbnailBuffer:Lcom/scalado/base/Buffer;
    new-instance v25, Lcom/scalado/stream/BufferStream;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 833
    .local v25, thumbnailStream:Lcom/scalado/stream/BufferStream;
    new-instance v23, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 837
    .local v23, thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    const/16 v21, 0x0

    check-cast v21, [B

    .line 838
    .local v21, thumbnailData:[B
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v24

    .line 839
    .local v24, thumbnailIterator:Lcom/scalado/base/Iterator;
    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    .line 842
    invoke-virtual/range {v20 .. v20}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 843
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
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 845
    :try_start_3
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/scalado/caps/exif/Session;->setThumbnail([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 856
    :goto_1
    :try_start_4
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/scalado/caps/exif/Session;->setExifToSession(Lcom/scalado/caps/Session;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 863
    .end local v12           #estimatedThumbnailSize:I
    .end local v13           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v14           #firstImage:Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;
    .end local v15           #firstImageStream:Lcom/scalado/stream/BufferStream;
    .end local v20           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v21           #thumbnailData:[B
    .end local v22           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v23           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v24           #thumbnailIterator:Lcom/scalado/base/Iterator;
    .end local v25           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :goto_2
    const/4 v6, 0x0

    check-cast v6, [B

    .line 865
    .restart local v6       #data:[B
    :try_start_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v17

    .line 866
    .restart local v17       #iterator:Lcom/scalado/base/Iterator;
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    .line 868
    invoke-virtual {v5}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v26

    move/from16 v0, v26

    new-array v6, v0, [B

    .line 869
    const/16 v26, 0x0

    const/16 v27, 0x0

    array-length v0, v6

    move/from16 v28, v0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/scalado/base/Buffer;->get([BIII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 874
    .end local v17           #iterator:Lcom/scalado/base/Iterator;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/autorama/Autorama;->access$42(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v27, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static/range {v27 .. v27}, Lcom/scalado/camera/autorama/Autorama;->access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v0, v6, v1}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 878
    .end local v5           #buffer:Lcom/scalado/base/Buffer;
    .end local v6           #data:[B
    .end local v7           #dims:Lcom/scalado/base/Size;
    .end local v10           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v11           #estimatedJpegSize:I
    .end local v19           #stream:Lcom/scalado/stream/BufferStream;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v26

    if-eqz v26, :cond_3

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v27, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static/range {v27 .. v27}, Lcom/scalado/camera/autorama/Autorama;->access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onAutoramaComplete(Lcom/scalado/caps/Session;Lcom/scalado/camera/Camera;)V

    .line 882
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    #calls: Lcom/scalado/camera/autorama/Autorama;->reset()V
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/autorama/Autorama;->access$43(Lcom/scalado/camera/autorama/Autorama;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;
    invoke-static/range {v26 .. v27}, Lcom/scalado/camera/autorama/Autorama;->access$44(Lcom/scalado/camera/autorama/Autorama;Ljava/lang/Thread;)V

    .line 884
    .end local v18           #session:Lcom/scalado/caps/Session;
    :cond_4
    :goto_4
    return-void

    .line 761
    :catch_0
    move-exception v9

    .line 762
    .local v9, e1:Ljava/lang/Exception;
    const-string v26, "ScaladoCameraFramework"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Autorama generation failed with "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/autorama/Autorama;->access$41(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v26

    if-eqz v26, :cond_5

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/autorama/Autorama;->access$41(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v28, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static/range {v28 .. v28}, Lcom/scalado/camera/autorama/Autorama;->access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 767
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/autorama/Autorama;->access$42(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v26

    if-eqz v26, :cond_6

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/autorama/Autorama;->access$42(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v28, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static/range {v28 .. v28}, Lcom/scalado/camera/autorama/Autorama;->access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 770
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v26

    if-eqz v26, :cond_4

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v26, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static/range {v26 .. v26}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v28, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static/range {v28 .. v28}, Lcom/scalado/camera/autorama/Autorama;->access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onAutoramaComplete(Lcom/scalado/caps/Session;Lcom/scalado/camera/Camera;)V

    goto/16 :goto_4

    .line 790
    .end local v9           #e1:Ljava/lang/Exception;
    .restart local v6       #data:[B
    .local v10, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .restart local v16       #image:Lcom/scalado/base/Image;
    .restart local v17       #iterator:Lcom/scalado/base/Iterator;
    .restart local v18       #session:Lcom/scalado/caps/Session;
    :cond_7
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->limit()I

    move-result v26

    move/from16 v0, v26

    new-array v6, v0, [B

    .line 791
    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 793
    .end local v17           #iterator:Lcom/scalado/base/Iterator;
    :catch_1
    move-exception v8

    .line 794
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 846
    .end local v6           #data:[B
    .end local v8           #e:Ljava/lang/Exception;
    .end local v16           #image:Lcom/scalado/base/Image;
    .restart local v5       #buffer:Lcom/scalado/base/Buffer;
    .restart local v7       #dims:Lcom/scalado/base/Size;
    .local v10, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v11       #estimatedJpegSize:I
    .restart local v12       #estimatedThumbnailSize:I
    .restart local v13       #exifSession:Lcom/scalado/caps/exif/Session;
    .restart local v14       #firstImage:Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;
    .restart local v15       #firstImageStream:Lcom/scalado/stream/BufferStream;
    .restart local v19       #stream:Lcom/scalado/stream/BufferStream;
    .restart local v20       #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .restart local v21       #thumbnailData:[B
    .restart local v22       #thumbnailDims:Lcom/scalado/base/Size;
    .restart local v23       #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v24       #thumbnailIterator:Lcom/scalado/base/Iterator;
    .restart local v25       #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :catch_2
    move-exception v8

    .line 847
    .restart local v8       #e:Ljava/lang/Exception;
    :try_start_7
    const-string v27, "ScaladoCameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v28, "Failed to set EXIF thumbnail. width="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {v22 .. v22}, Lcom/scalado/base/Size;->getWidth()I

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 849
    const-string v28, ", height="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Lcom/scalado/base/Size;->getHeight()I

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 850
    const-string v28, ", size="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v21, :cond_8

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    :goto_5
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 851
    const-string v28, ", exception="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 847
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 857
    .end local v8           #e:Ljava/lang/Exception;
    .end local v12           #estimatedThumbnailSize:I
    .end local v13           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v14           #firstImage:Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;
    .end local v15           #firstImageStream:Lcom/scalado/stream/BufferStream;
    .end local v20           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v21           #thumbnailData:[B
    .end local v22           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v23           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v24           #thumbnailIterator:Lcom/scalado/base/Iterator;
    .end local v25           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :catch_3
    move-exception v8

    .line 858
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v26, "ScaladoCameraFramework"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Failed to create Autorama EXIF: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 850
    .restart local v12       #estimatedThumbnailSize:I
    .restart local v13       #exifSession:Lcom/scalado/caps/exif/Session;
    .restart local v14       #firstImage:Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;
    .restart local v15       #firstImageStream:Lcom/scalado/stream/BufferStream;
    .restart local v20       #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .restart local v21       #thumbnailData:[B
    .restart local v22       #thumbnailDims:Lcom/scalado/base/Size;
    .restart local v23       #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v24       #thumbnailIterator:Lcom/scalado/base/Iterator;
    .restart local v25       #thumbnailStream:Lcom/scalado/stream/BufferStream;
    :cond_8
    const/16 v26, 0x0

    goto :goto_5

    .line 870
    .end local v8           #e:Ljava/lang/Exception;
    .end local v12           #estimatedThumbnailSize:I
    .end local v13           #exifSession:Lcom/scalado/caps/exif/Session;
    .end local v14           #firstImage:Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;
    .end local v15           #firstImageStream:Lcom/scalado/stream/BufferStream;
    .end local v20           #thumbnailBuffer:Lcom/scalado/base/Buffer;
    .end local v21           #thumbnailData:[B
    .end local v22           #thumbnailDims:Lcom/scalado/base/Size;
    .end local v23           #thumbnailEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v24           #thumbnailIterator:Lcom/scalado/base/Iterator;
    .end local v25           #thumbnailStream:Lcom/scalado/stream/BufferStream;
    .restart local v6       #data:[B
    :catch_4
    move-exception v8

    .line 871
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method
