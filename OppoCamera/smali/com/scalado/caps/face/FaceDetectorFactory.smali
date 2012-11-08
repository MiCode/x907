.class public Lcom/scalado/caps/face/FaceDetectorFactory;
.super Ljava/lang/Object;
.source "FaceDetectorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/face/FaceDetectorFactory$1;,
        Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 148
    invoke-static {}, Lcom/scalado/caps/face/FaceDetectorFactory;->nativeClassInit()V

    .line 149
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getFaceDetector(Z)Lcom/scalado/caps/face/FaceDetector;
    .locals 3
    .parameter "tracking"

    .prologue
    .line 69
    new-instance v0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;-><init>(ZILcom/scalado/caps/face/FaceDetectorFactory$1;)V

    return-object v0
.end method

.method public static getFaceDetector(ZI)Lcom/scalado/caps/face/FaceDetector;
    .locals 2
    .parameter "tracking"
    .parameter "minFace"

    .prologue
    .line 57
    new-instance v0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;-><init>(ZILcom/scalado/caps/face/FaceDetectorFactory$1;)V

    return-object v0
.end method

.method private static native nativeClassInit()V
.end method
