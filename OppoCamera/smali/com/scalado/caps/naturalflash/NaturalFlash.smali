.class public Lcom/scalado/caps/naturalflash/NaturalFlash;
.super Lcom/scalado/jni/JniPeer;
.source "NaturalFlash.java"


# instance fields
.field private final mExifSession:Lcom/scalado/caps/exif/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 149
    invoke-static {}, Lcom/scalado/caps/naturalflash/NaturalFlash;->nativeClassInit()V

    .line 150
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "imageOne"
    .parameter "imageTwo"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 31
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/naturalflash/NaturalFlash;->mExifSession:Lcom/scalado/caps/exif/Session;

    .line 38
    invoke-direct {p0}, Lcom/scalado/caps/naturalflash/NaturalFlash;->nativeCreate()V

    .line 39
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/naturalflash/NaturalFlash;->nativeAddSession(Lcom/scalado/caps/Decoder;)V

    .line 40
    invoke-virtual {p2}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/naturalflash/NaturalFlash;->nativeAddSession(Lcom/scalado/caps/Decoder;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Session;Lcom/scalado/caps/exif/Session;)V
    .locals 2
    .parameter "imageOne"
    .parameter "imageTwo"
    .parameter "exifSession"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    if-nez p3, :cond_2

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, " EXIF Session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    iput-object p3, p0, Lcom/scalado/caps/naturalflash/NaturalFlash;->mExifSession:Lcom/scalado/caps/exif/Session;

    .line 65
    invoke-direct {p0}, Lcom/scalado/caps/naturalflash/NaturalFlash;->nativeCreate()V

    .line 66
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/naturalflash/NaturalFlash;->nativeAddSession(Lcom/scalado/caps/Decoder;)V

    .line 67
    invoke-virtual {p2}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/naturalflash/NaturalFlash;->nativeAddSession(Lcom/scalado/caps/Decoder;)V

    .line 68
    iget-object v0, p0, Lcom/scalado/caps/naturalflash/NaturalFlash;->mExifSession:Lcom/scalado/caps/exif/Session;

    invoke-direct {p0, v0}, Lcom/scalado/caps/naturalflash/NaturalFlash;->nativeSetExifSession(Lcom/scalado/caps/exif/Session;)V

    .line 69
    return-void
.end method

.method private native nativeAddSession(Lcom/scalado/caps/Decoder;)V
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
    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputImage must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/naturalflash/NaturalFlash;->nativeGeneratePreview(Lcom/scalado/base/Image;)V

    .line 134
    return-void
.end method

.method public getRenderSize()Lcom/scalado/base/Size;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, v1, v1}, Lcom/scalado/base/Size;-><init>(II)V

    .line 78
    .local v0, size:Lcom/scalado/base/Size;
    invoke-direct {p0, v0}, Lcom/scalado/caps/naturalflash/NaturalFlash;->nativeGetRenderSize(Lcom/scalado/base/Size;)V

    .line 79
    return-object v0
.end method

.method public render(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "outputStream"

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OutputStream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/naturalflash/NaturalFlash;->nativeRenderToStream(Ljava/io/OutputStream;)V

    .line 97
    return-void
.end method

.method public renderToImage(Lcom/scalado/base/Image;)V
    .locals 2
    .parameter "outputImage"

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputImage must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/naturalflash/NaturalFlash;->nativeRenderToImage(Lcom/scalado/base/Image;)V

    .line 115
    return-void
.end method
