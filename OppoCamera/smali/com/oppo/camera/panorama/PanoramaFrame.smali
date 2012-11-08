.class public Lcom/oppo/camera/panorama/PanoramaFrame;
.super Ljava/lang/Object;
.source "PanoramaFrame.java"


# instance fields
.field private mId:I

.field private mImage:Lcom/scalado/base/Image;

.field private mTransform:Lcom/scalado/caps/autorama/Transform;


# direct methods
.method public constructor <init>([BIILcom/scalado/caps/autorama/Transform;I)V
    .locals 3
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .parameter "transform"
    .parameter "id"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p5, p0, Lcom/oppo/camera/panorama/PanoramaFrame;->mId:I

    .line 33
    iput-object p4, p0, Lcom/oppo/camera/panorama/PanoramaFrame;->mTransform:Lcom/scalado/caps/autorama/Transform;

    .line 34
    new-instance v0, Lcom/scalado/base/Image;

    new-instance v1, Lcom/scalado/base/Size;

    invoke-direct {v1, p2, p3}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v2, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v0, p0, Lcom/oppo/camera/panorama/PanoramaFrame;->mImage:Lcom/scalado/base/Image;

    .line 35
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaFrame;->mImage:Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 36
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/oppo/camera/panorama/PanoramaFrame;->mId:I

    return v0
.end method

.method public getImage()Lcom/scalado/base/Image;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaFrame;->mImage:Lcom/scalado/base/Image;

    return-object v0
.end method

.method public getTransform()Lcom/scalado/caps/autorama/Transform;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oppo/camera/panorama/PanoramaFrame;->mTransform:Lcom/scalado/caps/autorama/Transform;

    return-object v0
.end method
