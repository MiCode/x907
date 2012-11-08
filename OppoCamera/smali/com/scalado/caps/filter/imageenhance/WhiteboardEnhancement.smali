.class public final Lcom/scalado/caps/filter/imageenhance/WhiteboardEnhancement;
.super Lcom/scalado/caps/Filter;
.source "WhiteboardEnhancement.java"


# instance fields
.field private soft:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 71
    invoke-static {}, Lcom/scalado/caps/filter/imageenhance/WhiteboardEnhancement;->nativeClassInit()V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 13
    iput-boolean v0, p0, Lcom/scalado/caps/filter/imageenhance/WhiteboardEnhancement;->soft:Z

    .line 24
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/imageenhance/WhiteboardEnhancement;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/imageenhance/WhiteboardEnhancement;->setHasActiveFilter(Z)V

    .line 26
    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;Z)V
.end method


# virtual methods
.method public get()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/scalado/caps/filter/imageenhance/WhiteboardEnhancement;->soft:Z

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/imageenhance/WhiteboardEnhancement;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 55
    iget-boolean v0, p0, Lcom/scalado/caps/filter/imageenhance/WhiteboardEnhancement;->soft:Z

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/imageenhance/WhiteboardEnhancement;->nativeSet(Lcom/scalado/caps/Decoder;Z)V

    .line 56
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/imageenhance/WhiteboardEnhancement;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 57
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/imageenhance/WhiteboardEnhancement;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 62
    return-void
.end method

.method public set(Z)V
    .locals 2
    .parameter "soft"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/imageenhance/WhiteboardEnhancement;->nativeSet(Lcom/scalado/caps/Decoder;Z)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 41
    iput-boolean p1, p0, Lcom/scalado/caps/filter/imageenhance/WhiteboardEnhancement;->soft:Z

    .line 42
    return-void
.end method
