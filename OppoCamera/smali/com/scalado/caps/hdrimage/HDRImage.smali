.class public Lcom/scalado/caps/hdrimage/HDRImage;
.super Lcom/scalado/jni/JniPeer;
.source "HDRImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/hdrimage/HDRImage$Options;,
        Lcom/scalado/caps/hdrimage/HDRImage$Registration;
    }
.end annotation


# instance fields
.field private sourceList:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<",
            "Lcom/scalado/caps/Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 412
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 413
    invoke-static {}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeClassInit()V

    .line 414
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/hdrimage/HDRImage;->sourceList:Ljava/util/AbstractList;

    .line 139
    invoke-direct {p0}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeCreate()V

    .line 140
    return-void
.end method

.method private native nativeAddLDRSession(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate()V
.end method

.method private native nativeGeneratePreview(FFILcom/scalado/base/Image;)V
.end method

.method private native nativeGetRenderSize(FFILcom/scalado/base/Size;)V
.end method

.method private native nativeRender(FFILjava/io/OutputStream;)V
.end method

.method private native nativeRenderRaw(FFILcom/scalado/base/Image;)V
.end method


# virtual methods
.method public addLDRSession(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeAddLDRSession(Lcom/scalado/caps/Decoder;)V

    .line 165
    iget-object v0, p0, Lcom/scalado/caps/hdrimage/HDRImage;->sourceList:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public generatePreview(Lcom/scalado/base/Image;)V
    .locals 2
    .parameter "outputImage"

    .prologue
    const/high16 v1, -0x4080

    .line 388
    if-nez p1, :cond_0

    .line 389
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputImage must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeGeneratePreview(FFILcom/scalado/base/Image;)V

    .line 393
    return-void
.end method

.method public generatePreview(Lcom/scalado/caps/hdrimage/HDRImage$Options;Lcom/scalado/base/Image;)V
    .locals 3
    .parameter "hdrOptions"
    .parameter "outputImage"

    .prologue
    .line 355
    if-nez p2, :cond_0

    .line 356
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputImage must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    if-nez p1, :cond_1

    .line 360
    invoke-virtual {p0, p2}, Lcom/scalado/caps/hdrimage/HDRImage;->generatePreview(Lcom/scalado/base/Image;)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_1
    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Options;->exposure:F
    invoke-static {p1}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->access$000(Lcom/scalado/caps/hdrimage/HDRImage$Options;)F

    move-result v0

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F
    invoke-static {p1}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->access$100(Lcom/scalado/caps/hdrimage/HDRImage$Options;)F

    move-result v1

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Options;->registration:Lcom/scalado/caps/hdrimage/HDRImage$Registration;
    invoke-static {p1}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->access$200(Lcom/scalado/caps/hdrimage/HDRImage$Options;)Lcom/scalado/caps/hdrimage/HDRImage$Registration;

    move-result-object v2

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Registration;->value:I
    invoke-static {v2}, Lcom/scalado/caps/hdrimage/HDRImage$Registration;->access$300(Lcom/scalado/caps/hdrimage/HDRImage$Registration;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeGeneratePreview(FFILcom/scalado/base/Image;)V

    goto :goto_0
.end method

.method public getRenderSize()Lcom/scalado/base/Size;
    .locals 3

    .prologue
    const/high16 v2, -0x4080

    .line 210
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    .line 212
    .local v0, size:Lcom/scalado/base/Size;
    const/4 v1, -0x1

    invoke-direct {p0, v2, v2, v1, v0}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeGetRenderSize(FFILcom/scalado/base/Size;)V

    .line 214
    return-object v0
.end method

.method public getRenderSize(Lcom/scalado/caps/hdrimage/HDRImage$Options;)Lcom/scalado/base/Size;
    .locals 4
    .parameter "hdrOptions"

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/scalado/caps/hdrimage/HDRImage;->getRenderSize()Lcom/scalado/base/Size;

    move-result-object v0

    .line 196
    .local v0, size:Lcom/scalado/base/Size;
    :goto_0
    return-object v0

    .line 190
    .end local v0           #size:Lcom/scalado/base/Size;
    :cond_0
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    .line 193
    .restart local v0       #size:Lcom/scalado/base/Size;
    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Options;->exposure:F
    invoke-static {p1}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->access$000(Lcom/scalado/caps/hdrimage/HDRImage$Options;)F

    move-result v1

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F
    invoke-static {p1}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->access$100(Lcom/scalado/caps/hdrimage/HDRImage$Options;)F

    move-result v2

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Options;->registration:Lcom/scalado/caps/hdrimage/HDRImage$Registration;
    invoke-static {p1}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->access$200(Lcom/scalado/caps/hdrimage/HDRImage$Options;)Lcom/scalado/caps/hdrimage/HDRImage$Registration;

    move-result-object v3

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Registration;->value:I
    invoke-static {v3}, Lcom/scalado/caps/hdrimage/HDRImage$Registration;->access$300(Lcom/scalado/caps/hdrimage/HDRImage$Registration;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeGetRenderSize(FFILcom/scalado/base/Size;)V

    goto :goto_0
.end method

.method public render(Lcom/scalado/caps/hdrimage/HDRImage$Options;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "hdrOptions"
    .parameter "outputStream"

    .prologue
    .line 237
    if-nez p2, :cond_0

    .line 238
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputStream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    if-nez p1, :cond_1

    .line 242
    invoke-virtual {p0, p2}, Lcom/scalado/caps/hdrimage/HDRImage;->render(Ljava/io/OutputStream;)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_1
    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Options;->exposure:F
    invoke-static {p1}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->access$000(Lcom/scalado/caps/hdrimage/HDRImage$Options;)F

    move-result v0

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F
    invoke-static {p1}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->access$100(Lcom/scalado/caps/hdrimage/HDRImage$Options;)F

    move-result v1

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Options;->registration:Lcom/scalado/caps/hdrimage/HDRImage$Registration;
    invoke-static {p1}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->access$200(Lcom/scalado/caps/hdrimage/HDRImage$Options;)Lcom/scalado/caps/hdrimage/HDRImage$Registration;

    move-result-object v2

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Registration;->value:I
    invoke-static {v2}, Lcom/scalado/caps/hdrimage/HDRImage$Registration;->access$300(Lcom/scalado/caps/hdrimage/HDRImage$Registration;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeRender(FFILjava/io/OutputStream;)V

    goto :goto_0
.end method

.method public render(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "outputStream"

    .prologue
    const/high16 v1, -0x4080

    .line 269
    if-nez p1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputStream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeRender(FFILjava/io/OutputStream;)V

    .line 274
    return-void
.end method

.method public renderRaw(Lcom/scalado/base/Image;)V
    .locals 2
    .parameter "outputImage"

    .prologue
    const/high16 v1, -0x4080

    .line 327
    if-nez p1, :cond_0

    .line 328
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputImage must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeRenderRaw(FFILcom/scalado/base/Image;)V

    .line 332
    return-void
.end method

.method public renderRaw(Lcom/scalado/caps/hdrimage/HDRImage$Options;Lcom/scalado/base/Image;)V
    .locals 3
    .parameter "hdrOptions"
    .parameter "outputImage"

    .prologue
    .line 295
    if-nez p2, :cond_0

    .line 296
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputImage must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_0
    if-nez p1, :cond_1

    .line 300
    invoke-virtual {p0, p2}, Lcom/scalado/caps/hdrimage/HDRImage;->renderRaw(Lcom/scalado/base/Image;)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_1
    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Options;->exposure:F
    invoke-static {p1}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->access$000(Lcom/scalado/caps/hdrimage/HDRImage$Options;)F

    move-result v0

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F
    invoke-static {p1}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->access$100(Lcom/scalado/caps/hdrimage/HDRImage$Options;)F

    move-result v1

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Options;->registration:Lcom/scalado/caps/hdrimage/HDRImage$Registration;
    invoke-static {p1}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->access$200(Lcom/scalado/caps/hdrimage/HDRImage$Options;)Lcom/scalado/caps/hdrimage/HDRImage$Registration;

    move-result-object v2

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Registration;->value:I
    invoke-static {v2}, Lcom/scalado/caps/hdrimage/HDRImage$Registration;->access$300(Lcom/scalado/caps/hdrimage/HDRImage$Registration;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeRenderRaw(FFILcom/scalado/base/Image;)V

    goto :goto_0
.end method
