.class public Lcom/scalado/caps/hdr2/HDR2;
.super Lcom/scalado/jni/JniPeer;
.source "HDR2.java"


# instance fields
.field private final mExifSession:Lcom/scalado/caps/exif/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 134
    invoke-static {}, Lcom/scalado/caps/hdr2/HDR2;->nativeClassInit()V

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "ldrImageOne"
    .parameter "ldrImageTwo"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 25
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/hdr2/HDR2;->mExifSession:Lcom/scalado/caps/exif/Session;

    .line 31
    invoke-direct {p0}, Lcom/scalado/caps/hdr2/HDR2;->nativeCreate()V

    .line 32
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/hdr2/HDR2;->nativeAddLDRSession(Lcom/scalado/caps/Decoder;)V

    .line 33
    invoke-virtual {p2}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/hdr2/HDR2;->nativeAddLDRSession(Lcom/scalado/caps/Decoder;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Session;Lcom/scalado/caps/exif/Session;)V
    .locals 2
    .parameter "ldrImageOne"
    .parameter "ldrImageTwo"
    .parameter "exifSession"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 40
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    if-nez p3, :cond_2

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, " EXIF Session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    iput-object p3, p0, Lcom/scalado/caps/hdr2/HDR2;->mExifSession:Lcom/scalado/caps/exif/Session;

    .line 50
    invoke-direct {p0}, Lcom/scalado/caps/hdr2/HDR2;->nativeCreate()V

    .line 51
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/hdr2/HDR2;->nativeAddLDRSession(Lcom/scalado/caps/Decoder;)V

    .line 52
    invoke-virtual {p2}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/hdr2/HDR2;->nativeAddLDRSession(Lcom/scalado/caps/Decoder;)V

    .line 53
    iget-object v0, p0, Lcom/scalado/caps/hdr2/HDR2;->mExifSession:Lcom/scalado/caps/exif/Session;

    invoke-direct {p0, v0}, Lcom/scalado/caps/hdr2/HDR2;->nativeSetExifSession(Lcom/scalado/caps/exif/Session;)V

    .line 54
    return-void
.end method

.method private native nativeAddLDRSession(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate()V
.end method

.method private native nativeGeneratePreview(Lcom/scalado/base/Image;)V
.end method

.method private native nativeGetRenderSize(Lcom/scalado/base/Size;)V
.end method

.method private native nativeRenderToImage(Lcom/scalado/base/Image;)V
.end method

.method private native nativeRenderToStream(Ljava/io/OutputStream;)V
.end method

.method private native nativeSetExifSession(Lcom/scalado/caps/exif/Session;)V
.end method


# virtual methods
.method public generatePreview(Lcom/scalado/base/Image;)V
    .locals 2
    .parameter "outputImage"

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputImage must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/hdr2/HDR2;->nativeGeneratePreview(Lcom/scalado/base/Image;)V

    .line 119
    return-void
.end method

.method public getRenderSize()Lcom/scalado/base/Size;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, v1, v1}, Lcom/scalado/base/Size;-><init>(II)V

    .line 63
    .local v0, size:Lcom/scalado/base/Size;
    invoke-direct {p0, v0}, Lcom/scalado/caps/hdr2/HDR2;->nativeGetRenderSize(Lcom/scalado/base/Size;)V

    .line 64
    return-object v0
.end method

.method public render(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "outputStream"

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OutputStream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/hdr2/HDR2;->nativeRenderToStream(Ljava/io/OutputStream;)V

    .line 82
    return-void
.end method

.method public renderToImage(Lcom/scalado/base/Image;)V
    .locals 2
    .parameter "outputImage"

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputImage must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/hdr2/HDR2;->nativeRenderToImage(Lcom/scalado/base/Image;)V

    .line 100
    return-void
.end method
