.class Lcom/scalado/camera/lowlight/LowLight$PostviewWorkerClass;
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
.field mPostviewImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Image;",
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
            "Lcom/scalado/base/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p2, images:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/base/Image;>;"
    iput-object p1, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewWorkerClass;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewWorkerClass;->mPostviewImages:Ljava/util/Vector;

    .line 297
    iput-object p2, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewWorkerClass;->mPostviewImages:Ljava/util/Vector;

    .line 298
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 302
    iget-object v6, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewWorkerClass;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->TOTAL_CAPTURE_IMAGES:I
    invoke-static {v6}, Lcom/scalado/camera/lowlight/LowLight;->access$3(Lcom/scalado/camera/lowlight/LowLight;)I

    move-result v6

    new-array v1, v6, [Lcom/scalado/caps/Decoder;

    .line 303
    .local v1, decoders:[Lcom/scalado/caps/Decoder;
    new-instance v5, Lcom/scalado/base/Image;

    iget-object v6, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewWorkerClass;->mPostviewImages:Ljava/util/Vector;

    invoke-virtual {v6, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/base/Image;

    invoke-virtual {v6}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v7

    iget-object v6, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewWorkerClass;->mPostviewImages:Ljava/util/Vector;

    invoke-virtual {v6, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/base/Image;

    invoke-virtual {v6}, Lcom/scalado/base/Image;->getConfig()Lcom/scalado/base/Image$Config;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 305
    .local v5, returnImage:Lcom/scalado/base/Image;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewWorkerClass;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->TOTAL_CAPTURE_IMAGES:I
    invoke-static {v6}, Lcom/scalado/camera/lowlight/LowLight;->access$3(Lcom/scalado/camera/lowlight/LowLight;)I

    move-result v6

    if-lt v2, v6, :cond_0

    .line 309
    new-instance v3, Lcom/scalado/caps/lowlight/LowLight;

    invoke-direct {v3, v1}, Lcom/scalado/caps/lowlight/LowLight;-><init>([Lcom/scalado/caps/Decoder;)V

    .line 310
    .local v3, nativeLowLight:Lcom/scalado/caps/lowlight/LowLight;
    invoke-virtual {v3, v5}, Lcom/scalado/caps/lowlight/LowLight;->generatePreview(Lcom/scalado/base/Image;)Lcom/scalado/base/Image;

    .line 312
    invoke-virtual {v5}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 313
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    new-array v4, v6, [B

    .line 314
    .local v4, returnData:[B
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 315
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 317
    iget-object v6, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewWorkerClass;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v6}, Lcom/scalado/camera/lowlight/LowLight;->access$26(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v6

    iget-object v7, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewWorkerClass;->this$0:Lcom/scalado/camera/lowlight/LowLight;

    #getter for: Lcom/scalado/camera/lowlight/LowLight;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v7}, Lcom/scalado/camera/lowlight/LowLight;->access$2(Lcom/scalado/camera/lowlight/LowLight;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 319
    const/4 v6, 0x0

    return-object v6

    .line 306
    .end local v0           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v3           #nativeLowLight:Lcom/scalado/caps/lowlight/LowLight;
    .end local v4           #returnData:[B
    :cond_0
    new-instance v7, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    iget-object v6, p0, Lcom/scalado/camera/lowlight/LowLight$PostviewWorkerClass;->mPostviewImages:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/base/Image;

    invoke-direct {v7, v6}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    aput-object v7, v1, v2

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
