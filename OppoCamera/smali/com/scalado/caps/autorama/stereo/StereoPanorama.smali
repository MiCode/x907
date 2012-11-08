.class public abstract Lcom/scalado/caps/autorama/stereo/StereoPanorama;
.super Lcom/scalado/jni/JniPeer;
.source "StereoPanorama.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/autorama/stereo/StereoPanorama$1;,
        Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;,
        Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;
    }
.end annotation


# instance fields
.field private decoderLeft:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

.field private decoderRight:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 86
    invoke-static {}, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->nativeClassInit()V

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderLeft:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    .line 37
    iput-object v0, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderRight:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeRender()V
.end method


# virtual methods
.method public getLeftDecoder()Lcom/scalado/caps/Decoder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderLeft:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    return-object v0
.end method

.method public getRightDecoder()Lcom/scalado/caps/Decoder;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderRight:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    return-object v0
.end method

.method public render()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderRight:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderLeft:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    throw v0

    .line 52
    :cond_1
    invoke-direct {p0}, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->nativeRender()V

    .line 54
    new-instance v0, Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    sget-object v1, Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;->IS_LEFT:Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;-><init>(Lcom/scalado/caps/autorama/stereo/StereoPanorama;Lcom/scalado/caps/autorama/stereo/StereoPanorama;Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;Lcom/scalado/caps/autorama/stereo/StereoPanorama$1;)V

    iput-object v0, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderLeft:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    .line 55
    new-instance v0, Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    sget-object v1, Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;->IS_RIGHT:Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;-><init>(Lcom/scalado/caps/autorama/stereo/StereoPanorama;Lcom/scalado/caps/autorama/stereo/StereoPanorama;Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;Lcom/scalado/caps/autorama/stereo/StereoPanorama$1;)V

    iput-object v0, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderRight:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    .line 56
    return-void
.end method
