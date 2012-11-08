.class Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewWorkerClass;
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
            "Lcom/scalado/base/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, images:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/base/Image;>;"
    iput-object p1, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewWorkerClass;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewWorkerClass;->mPostviewImages:Ljava/util/Vector;

    .line 293
    iput-object p2, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewWorkerClass;->mPostviewImages:Ljava/util/Vector;

    .line 294
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 298
    new-array v1, v8, [Lcom/scalado/caps/Decoder;

    .line 299
    .local v1, decoders:[Lcom/scalado/caps/Decoder;
    new-instance v5, Lcom/scalado/base/Image;

    iget-object v6, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewWorkerClass;->mPostviewImages:Ljava/util/Vector;

    invoke-virtual {v6, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/base/Image;

    invoke-virtual {v6}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v7

    iget-object v6, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewWorkerClass;->mPostviewImages:Ljava/util/Vector;

    invoke-virtual {v6, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/base/Image;

    invoke-virtual {v6}, Lcom/scalado/base/Image;->getConfig()Lcom/scalado/base/Image$Config;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 301
    .local v5, returnImage:Lcom/scalado/base/Image;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v8, :cond_0

    .line 305
    new-instance v3, Lcom/scalado/caps/naturalflash/NaturalFlash;

    new-instance v6, Lcom/scalado/caps/Session;

    aget-object v7, v1, v9

    invoke-direct {v6, v7}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    new-instance v7, Lcom/scalado/caps/Session;

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-direct {v7, v8}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    invoke-direct {v3, v6, v7}, Lcom/scalado/caps/naturalflash/NaturalFlash;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Session;)V

    .line 306
    .local v3, nativeNaturalFlash:Lcom/scalado/caps/naturalflash/NaturalFlash;
    invoke-virtual {v3, v5}, Lcom/scalado/caps/naturalflash/NaturalFlash;->generatePreview(Lcom/scalado/base/Image;)V

    .line 308
    invoke-virtual {v5}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 309
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    new-array v4, v6, [B

    .line 310
    .local v4, returnData:[B
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 311
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 313
    iget-object v6, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewWorkerClass;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v6}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$25(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v6

    iget-object v7, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewWorkerClass;->this$0:Lcom/scalado/camera/naturalflash/NaturalFlash;

    #getter for: Lcom/scalado/camera/naturalflash/NaturalFlash;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v7}, Lcom/scalado/camera/naturalflash/NaturalFlash;->access$2(Lcom/scalado/camera/naturalflash/NaturalFlash;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 315
    const/4 v6, 0x0

    return-object v6

    .line 302
    .end local v0           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v3           #nativeNaturalFlash:Lcom/scalado/caps/naturalflash/NaturalFlash;
    .end local v4           #returnData:[B
    :cond_0
    new-instance v7, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    iget-object v6, p0, Lcom/scalado/camera/naturalflash/NaturalFlash$PostviewWorkerClass;->mPostviewImages:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/base/Image;

    invoke-direct {v7, v6}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    aput-object v7, v1, v2

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
