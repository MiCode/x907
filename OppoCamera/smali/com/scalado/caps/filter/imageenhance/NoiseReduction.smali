.class public final Lcom/scalado/caps/filter/imageenhance/NoiseReduction;
.super Lcom/scalado/caps/Filter;
.source "NoiseReduction.java"


# instance fields
.field private level:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 77
    invoke-static {}, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->nativeClassInit()V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->level:F

    .line 24
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->setHasActiveFilter(Z)V

    .line 26
    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;F)V
.end method


# virtual methods
.method public get()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->level:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 61
    iget v0, p0, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->level:F

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->nativeSet(Lcom/scalado/caps/Decoder;F)V

    .line 62
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 63
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 68
    return-void
.end method

.method public set(F)V
    .locals 2
    .parameter "level"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument to set is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->nativeSet(Lcom/scalado/caps/Decoder;F)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 47
    iput p1, p0, Lcom/scalado/caps/filter/imageenhance/NoiseReduction;->level:F

    .line 48
    return-void
.end method
