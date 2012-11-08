.class public Lcom/scalado/caps/lowlight/LowLight;
.super Lcom/scalado/jni/JniPeer;
.source "LowLight.java"


# instance fields
.field private mExifSession:Lcom/scalado/caps/exif/Session;

.field private sourceList:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<",
            "Lcom/scalado/caps/Decoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 198
    invoke-static {}, Lcom/scalado/caps/lowlight/LowLight;->nativeClassInit()V

    .line 199
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/lowlight/LowLight;->mExifSession:Lcom/scalado/caps/exif/Session;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/lowlight/LowLight;->sourceList:Ljava/util/AbstractList;

    .line 32
    invoke-direct {p0}, Lcom/scalado/caps/lowlight/LowLight;->nativeCreate()V

    .line 33
    return-void
.end method

.method public varargs constructor <init>([Lcom/scalado/caps/Decoder;)V
    .locals 6
    .parameter "decoders"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 22
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/scalado/caps/lowlight/LowLight;->mExifSession:Lcom/scalado/caps/exif/Session;

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/scalado/caps/lowlight/LowLight;->sourceList:Ljava/util/AbstractList;

    .line 45
    invoke-direct {p0}, Lcom/scalado/caps/lowlight/LowLight;->nativeCreate()V

    .line 46
    array-length v4, p1

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 47
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Too many decoders added"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50
    :cond_0
    move-object v0, p1

    .local v0, arr$:[Lcom/scalado/caps/Decoder;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 51
    .local v1, d:Lcom/scalado/caps/Decoder;
    if-nez v1, :cond_1

    .line 52
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Decoder must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    :cond_1
    invoke-direct {p0, v1}, Lcom/scalado/caps/lowlight/LowLight;->nativeAddSourceDecoder(Lcom/scalado/caps/Decoder;)V

    .line 55
    iget-object v4, p0, Lcom/scalado/caps/lowlight/LowLight;->sourceList:Ljava/util/AbstractList;

    invoke-virtual {v4, v1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v1           #d:Lcom/scalado/caps/Decoder;
    :cond_2
    return-void
.end method

.method private native nativeAddSourceDecoder(Lcom/scalado/caps/Decoder;)V
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
.method public addExifSession(Lcom/scalado/caps/exif/Session;)V
    .locals 2
    .parameter "exifSession"

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "exifSession must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/lowlight/LowLight;->mExifSession:Lcom/scalado/caps/exif/Session;

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only one exif session can be added"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    iput-object p1, p0, Lcom/scalado/caps/lowlight/LowLight;->mExifSession:Lcom/scalado/caps/exif/Session;

    .line 89
    iget-object v0, p0, Lcom/scalado/caps/lowlight/LowLight;->mExifSession:Lcom/scalado/caps/exif/Session;

    invoke-direct {p0, v0}, Lcom/scalado/caps/lowlight/LowLight;->nativeSetExifSession(Lcom/scalado/caps/exif/Session;)V

    .line 90
    return-void
.end method

.method public addSourceDecoder(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Decoder must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/lowlight/LowLight;->sourceList:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LowLight supports only four decoders"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    invoke-direct {p0, p1}, Lcom/scalado/caps/lowlight/LowLight;->nativeAddSourceDecoder(Lcom/scalado/caps/Decoder;)V

    .line 73
    iget-object v0, p0, Lcom/scalado/caps/lowlight/LowLight;->sourceList:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public generatePreview(Lcom/scalado/base/Image;)Lcom/scalado/base/Image;
    .locals 2
    .parameter "image"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/scalado/caps/lowlight/LowLight;->sourceList:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "generatePreview can only be called once four decoders have been added"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    if-nez p1, :cond_1

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Image was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    invoke-direct {p0, p1}, Lcom/scalado/caps/lowlight/LowLight;->nativeGeneratePreview(Lcom/scalado/base/Image;)V

    .line 162
    return-object p1
.end method

.method public generatePreview(Lcom/scalado/base/Size;)Lcom/scalado/base/Image;
    .locals 3
    .parameter "dimensions"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/scalado/caps/lowlight/LowLight;->sourceList:Ljava/util/AbstractList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 176
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "generatePreview can only be called once four decoders have been added"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_0
    if-nez p1, :cond_1

    .line 179
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "dimensions was null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_1
    new-instance v0, Lcom/scalado/base/Image;

    sget-object v1, Lcom/scalado/base/Image$Config;->YUV_420P:Lcom/scalado/base/Image$Config;

    invoke-direct {v0, p1, v1}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 183
    .local v0, image:Lcom/scalado/base/Image;
    invoke-virtual {p0, v0}, Lcom/scalado/caps/lowlight/LowLight;->generatePreview(Lcom/scalado/base/Image;)Lcom/scalado/base/Image;

    move-result-object v1

    return-object v1
.end method

.method public getRenderSize()Lcom/scalado/base/Size;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-object v1, p0, Lcom/scalado/caps/lowlight/LowLight;->sourceList:Ljava/util/AbstractList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 103
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "getRenderSize can only be called once four decoders have been added"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, v3, v3}, Lcom/scalado/base/Size;-><init>(II)V

    .line 106
    .local v0, size:Lcom/scalado/base/Size;
    invoke-direct {p0, v0}, Lcom/scalado/caps/lowlight/LowLight;->nativeGetRenderSize(Lcom/scalado/base/Size;)V

    .line 107
    return-object v0
.end method

.method public render(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "outputStream"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/scalado/caps/lowlight/LowLight;->sourceList:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "render can only be called once four decoders have been added"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    if-nez p1, :cond_1

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputStream was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    invoke-direct {p0, p1}, Lcom/scalado/caps/lowlight/LowLight;->nativeRenderToStream(Ljava/io/OutputStream;)V

    .line 143
    return-void
.end method

.method public renderImage()Lcom/scalado/base/Image;
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/scalado/caps/lowlight/LowLight;->sourceList:Ljava/util/AbstractList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 120
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "renderImage can only be called once four decoders have been added"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_0
    new-instance v0, Lcom/scalado/base/Image;

    invoke-virtual {p0}, Lcom/scalado/caps/lowlight/LowLight;->getRenderSize()Lcom/scalado/base/Size;

    move-result-object v1

    sget-object v2, Lcom/scalado/base/Image$Config;->YUV_420P:Lcom/scalado/base/Image$Config;

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 124
    .local v0, image:Lcom/scalado/base/Image;
    invoke-direct {p0, v0}, Lcom/scalado/caps/lowlight/LowLight;->nativeRenderToImage(Lcom/scalado/base/Image;)V

    .line 125
    return-object v0
.end method
