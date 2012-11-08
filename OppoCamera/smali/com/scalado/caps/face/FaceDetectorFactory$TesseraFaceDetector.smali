.class Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;
.super Lcom/scalado/jni/JniPeer;
.source "FaceDetectorFactory.java"

# interfaces
.implements Lcom/scalado/caps/face/FaceDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/face/FaceDetectorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TesseraFaceDetector"
.end annotation


# instance fields
.field private faceCollection:Lcom/scalado/caps/face/FaceCollection;


# direct methods
.method private constructor <init>(ZI)V
    .locals 1
    .parameter "tracking"
    .parameter "minFace"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 76
    new-instance v0, Lcom/scalado/caps/face/FaceCollection;

    invoke-direct {v0}, Lcom/scalado/caps/face/FaceCollection;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->nativeCreate(ZI)V

    .line 78
    return-void
.end method

.method synthetic constructor <init>(ZILcom/scalado/caps/face/FaceDetectorFactory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;-><init>(ZI)V

    return-void
.end method

.method private native nativeCreate(ZI)V
.end method

.method private native nativeDetect(Lcom/scalado/base/Image;)V
.end method

.method private native nativeGetColormode()Ljava/lang/String;
.end method

.method private native nativeGetDetectableFeatures()I
.end method

.method private native nativeGetFaces([Lcom/scalado/caps/face/Face;)V
.end method

.method private native nativeGetNumberOfFaces()I
.end method

.method private native nativeSetFeaturesToDetect(I)V
.end method


# virtual methods
.method public detectFaces(Lcom/scalado/base/Image;)Lcom/scalado/caps/face/FaceCollection;
    .locals 3
    .parameter "image"

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Image is null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->nativeDetect(Lcom/scalado/base/Image;)V

    .line 87
    invoke-direct {p0}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->nativeGetNumberOfFaces()I

    move-result v0

    .line 89
    .local v0, nofFaces:I
    iget-object v1, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FaceCollection;->getMaxSize()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 90
    iget-object v1, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    iget-object v2, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    invoke-virtual {v2}, Lcom/scalado/caps/face/FaceCollection;->getMaxSize()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/scalado/caps/face/FaceCollection;->increaseSize(I)V

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FaceCollection;->clear()V

    .line 93
    iget-object v1, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FaceCollection;->getFaceArray()[Lcom/scalado/caps/face/Face;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->nativeGetFaces([Lcom/scalado/caps/face/Face;)V

    .line 94
    iget-object v1, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    invoke-virtual {v1, v0}, Lcom/scalado/caps/face/FaceCollection;->setActualSize(I)V

    .line 96
    iget-object v1, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    return-object v1
.end method

.method public getDetectableFeatures()Lcom/scalado/caps/face/FeatureSet;
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->nativeGetDetectableFeatures()I

    move-result v0

    .line 108
    .local v0, nativeFeatureSet:I
    new-instance v1, Lcom/scalado/caps/face/FeatureSet;

    invoke-direct {v1, v0}, Lcom/scalado/caps/face/FeatureSet;-><init>(I)V

    return-object v1
.end method

.method public getSupportedImageColorFormat()Lcom/scalado/base/Image$Config;
    .locals 3

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->nativeGetColormode()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, supportedColorFormat:Ljava/lang/String;
    const-string v1, "YUV422_Y1UY2V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    sget-object v1, Lcom/scalado/base/Image$Config;->YUV422_Y1UY2V:Lcom/scalado/base/Image$Config;

    .line 122
    :goto_0
    return-object v1

    .line 115
    :cond_0
    const-string v1, "GRAY8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    sget-object v1, Lcom/scalado/base/Image$Config;->GRAY8:Lcom/scalado/base/Image$Config;

    goto :goto_0

    .line 117
    :cond_1
    const-string v1, "ARGB_8888"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    sget-object v1, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    goto :goto_0

    .line 119
    :cond_2
    const-string v1, "RGB_565"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    sget-object v1, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    goto :goto_0

    .line 121
    :cond_3
    const-string v1, "AYUV4444"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    sget-object v1, Lcom/scalado/base/Image$Config;->AYUV4444:Lcom/scalado/base/Image$Config;

    goto :goto_0

    .line 125
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected error: unknown Color Format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setFeaturesToDetect(Lcom/scalado/caps/face/FeatureSet;)V
    .locals 1
    .parameter "featureSet"

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/scalado/caps/face/FeatureSet;->getNativeSet()I

    move-result v0

    .line 102
    .local v0, nativeFeatureSet:I
    invoke-direct {p0, v0}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->nativeSetFeaturesToDetect(I)V

    .line 103
    return-void
.end method
