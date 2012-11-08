.class Lcom/scalado/caps/codec/encoder/BitmapEncoder$BitmapEncoderRenderIterator;
.super Lcom/scalado/base/Iterator;
.source "BitmapEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/codec/encoder/BitmapEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapEncoderRenderIterator"
.end annotation


# static fields
.field private static final CAPS_OUTPUT_PRESERVE_AR:I = 0x0

.field private static final CAPS_OUTPUT_STRETCH:I = 0x1


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

.field private decoder:Lcom/scalado/caps/Decoder;

.field final synthetic this$0:Lcom/scalado/caps/codec/encoder/BitmapEncoder;


# direct methods
.method constructor <init>(Lcom/scalado/caps/codec/encoder/BitmapEncoder;Landroid/graphics/Bitmap;Lcom/scalado/caps/Decoder;Z)V
    .locals 1
    .parameter
    .parameter "bitmap"
    .parameter "decoder"
    .parameter "preserveAspectRatio"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/scalado/caps/codec/encoder/BitmapEncoder$BitmapEncoderRenderIterator;->this$0:Lcom/scalado/caps/codec/encoder/BitmapEncoder;

    invoke-direct {p0}, Lcom/scalado/base/Iterator;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/scalado/caps/codec/encoder/BitmapEncoder$BitmapEncoderRenderIterator;->bitmap:Landroid/graphics/Bitmap;

    .line 48
    iput-object p3, p0, Lcom/scalado/caps/codec/encoder/BitmapEncoder$BitmapEncoderRenderIterator;->decoder:Lcom/scalado/caps/Decoder;

    .line 50
    if-eqz p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, p3, v0}, Lcom/scalado/caps/codec/encoder/BitmapEncoder$BitmapEncoderRenderIterator;->nativeCreateAndBeginRender(Landroid/graphics/Bitmap;Lcom/scalado/caps/Decoder;I)V

    .line 53
    new-instance v0, Lcom/scalado/base/Iterator$CommonIterator;

    invoke-direct {v0, p0, p0}, Lcom/scalado/base/Iterator$CommonIterator;-><init>(Lcom/scalado/base/Iterator;Lcom/scalado/base/Iterator;)V

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/BitmapEncoder$BitmapEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    .line 54
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private native nativeCreateAndBeginRender(Landroid/graphics/Bitmap;Lcom/scalado/caps/Decoder;I)V
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/BitmapEncoder$BitmapEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->abort()V

    .line 66
    return-void
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/BitmapEncoder$BitmapEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->done()Z

    move-result v0

    return v0
.end method

.method public step()F
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/BitmapEncoder$BitmapEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->step()F

    move-result v0

    return v0
.end method
