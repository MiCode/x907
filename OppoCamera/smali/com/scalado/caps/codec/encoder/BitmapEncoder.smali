.class public Lcom/scalado/caps/codec/encoder/BitmapEncoder;
.super Lcom/scalado/caps/Encoder;
.source "BitmapEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/codec/encoder/BitmapEncoder$BitmapEncoderRenderIterator;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private preserveAspectRatio:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 103
    invoke-static {}, Lcom/scalado/caps/codec/encoder/BitmapEncoder;->nativeClassInit()V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bitmap"
    .parameter "preserveAspectRatio"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/scalado/caps/Encoder;-><init>()V

    .line 87
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/scalado/caps/codec/encoder/BitmapEncoder;->bitmap:Landroid/graphics/Bitmap;

    .line 92
    iput-boolean p2, p0, Lcom/scalado/caps/codec/encoder/BitmapEncoder;->preserveAspectRatio:Z

    .line 93
    return-void
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method protected final render(Lcom/scalado/caps/Session;)Lcom/scalado/base/Iterator;
    .locals 4
    .parameter "session"

    .prologue
    .line 96
    new-instance v0, Lcom/scalado/caps/codec/encoder/BitmapEncoder$BitmapEncoderRenderIterator;

    iget-object v1, p0, Lcom/scalado/caps/codec/encoder/BitmapEncoder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/scalado/caps/codec/encoder/BitmapEncoder;->preserveAspectRatio:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/scalado/caps/codec/encoder/BitmapEncoder$BitmapEncoderRenderIterator;-><init>(Lcom/scalado/caps/codec/encoder/BitmapEncoder;Landroid/graphics/Bitmap;Lcom/scalado/caps/Decoder;Z)V

    return-object v0
.end method
