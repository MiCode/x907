.class public Lcom/oppo/camera/lomo/filters/WrapFilter;
.super Lcom/oppo/camera/lomo/filters/Filter;
.source "WrapFilter.java"


# instance fields
.field private mStream:Lcom/scalado/stream/BufferStream;


# direct methods
.method public constructor <init>(ILcom/scalado/stream/BufferStream;)V
    .locals 0
    .parameter "id"
    .parameter "stream"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/filters/Filter;-><init>(I)V

    .line 32
    iput-object p2, p0, Lcom/oppo/camera/lomo/filters/WrapFilter;->mStream:Lcom/scalado/stream/BufferStream;

    .line 33
    return-void
.end method


# virtual methods
.method public applyFilterToSession(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/scalado/caps/filter/photoart/Warp;

    invoke-direct {v0, p1}, Lcom/scalado/caps/filter/photoart/Warp;-><init>(Lcom/scalado/caps/Session;)V

    .line 42
    .local v0, warp:Lcom/scalado/caps/filter/photoart/Warp;
    iget-object v1, p0, Lcom/oppo/camera/lomo/filters/WrapFilter;->mStream:Lcom/scalado/stream/BufferStream;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/filter/photoart/Warp;->set(Lcom/scalado/stream/BufferStream;)V

    .line 43
    invoke-virtual {v0}, Lcom/scalado/caps/filter/photoart/Warp;->commit()V

    .line 45
    return-void
.end method
