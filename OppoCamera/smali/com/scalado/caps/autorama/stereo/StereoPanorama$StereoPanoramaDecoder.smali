.class Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;
.super Lcom/scalado/caps/Decoder;
.source "StereoPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/autorama/stereo/StereoPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StereoPanoramaDecoder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/caps/autorama/stereo/StereoPanorama;


# direct methods
.method private constructor <init>(Lcom/scalado/caps/autorama/stereo/StereoPanorama;Lcom/scalado/caps/autorama/stereo/StereoPanorama;Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;)V
    .locals 1
    .parameter
    .parameter "stereoPanorama"
    .parameter "side"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;->this$0:Lcom/scalado/caps/autorama/stereo/StereoPanorama;

    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    .line 30
    invoke-virtual {p3}, Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;->getValue()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;->nativeCreate(Lcom/scalado/caps/autorama/stereo/StereoPanorama;I)V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/caps/autorama/stereo/StereoPanorama;Lcom/scalado/caps/autorama/stereo/StereoPanorama;Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;Lcom/scalado/caps/autorama/stereo/StereoPanorama$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;-><init>(Lcom/scalado/caps/autorama/stereo/StereoPanorama;Lcom/scalado/caps/autorama/stereo/StereoPanorama;Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;)V

    return-void
.end method

.method private native nativeCreate(Lcom/scalado/caps/autorama/stereo/StereoPanorama;I)V
.end method
