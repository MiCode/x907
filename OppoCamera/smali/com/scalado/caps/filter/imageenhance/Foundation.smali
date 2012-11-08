.class public final Lcom/scalado/caps/filter/imageenhance/Foundation;
.super Lcom/scalado/caps/Filter;
.source "Foundation.java"


# instance fields
.field private region:Lcom/scalado/base/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 88
    invoke-static {}, Lcom/scalado/caps/filter/imageenhance/Foundation;->nativeClassInit()V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/filter/imageenhance/Foundation;->region:Lcom/scalado/base/Rect;

    .line 27
    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/imageenhance/Foundation;->setHasActiveFilter(Z)V

    .line 28
    return-void
.end method

.method private native nativeApply(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;)V
.end method

.method private native nativeApplyToAllImage(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method public getRegion()Lcom/scalado/base/Rect;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/scalado/caps/filter/imageenhance/Foundation;->region:Lcom/scalado/base/Rect;

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->clone()Lcom/scalado/base/Rect;

    move-result-object v0

    return-object v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/scalado/caps/filter/imageenhance/Foundation;->region:Lcom/scalado/base/Rect;

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/imageenhance/Foundation;->nativeApplyToAllImage(Lcom/scalado/caps/Decoder;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/filter/imageenhance/Foundation;->region:Lcom/scalado/base/Rect;

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/imageenhance/Foundation;->nativeApply(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;)V

    goto :goto_0
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public set(Lcom/scalado/base/Rect;)V
    .locals 2
    .parameter "region"

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
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/imageenhance/Foundation;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 46
    :cond_1
    if-nez p1, :cond_2

    .line 47
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/imageenhance/Foundation;->nativeApplyToAllImage(Lcom/scalado/caps/Decoder;)V

    .line 52
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 53
    iput-object p1, p0, Lcom/scalado/caps/filter/imageenhance/Foundation;->region:Lcom/scalado/base/Rect;

    .line 54
    return-void

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/imageenhance/Foundation;->nativeApply(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;)V

    goto :goto_0
.end method
