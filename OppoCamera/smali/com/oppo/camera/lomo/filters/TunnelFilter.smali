.class public Lcom/oppo/camera/lomo/filters/TunnelFilter;
.super Lcom/oppo/camera/lomo/filters/Filter;
.source "TunnelFilter.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/filters/Filter;-><init>(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public applyFilterToCaptureSession(Lcom/scalado/caps/Session;)V
    .locals 5
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v0

    .line 46
    .local v0, rect:Lcom/scalado/base/Rect;
    new-instance v1, Lcom/scalado/caps/filter/photoart/Spotlight;

    new-instance v2, Lcom/scalado/base/Point;

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/scalado/base/Point;-><init>(II)V

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    sub-int/2addr v3, v4

    const v4, 0x3f333333

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/scalado/caps/filter/photoart/Spotlight;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Point;IF)V

    .line 47
    .local v1, spotLight:Lcom/scalado/caps/filter/photoart/Spotlight;
    invoke-virtual {v1}, Lcom/scalado/caps/filter/photoart/Spotlight;->commit()V

    .line 48
    return-void
.end method

.method public applyFilterToSession(Lcom/scalado/caps/Session;)V
    .locals 4
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v3, 0xf0

    .line 37
    new-instance v0, Lcom/scalado/caps/filter/photoart/Spotlight;

    new-instance v1, Lcom/scalado/base/Point;

    const/16 v2, 0x190

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Point;-><init>(II)V

    const v2, 0x3f333333

    invoke-direct {v0, p1, v1, v3, v2}, Lcom/scalado/caps/filter/photoart/Spotlight;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Point;IF)V

    .line 38
    .local v0, spotLight:Lcom/scalado/caps/filter/photoart/Spotlight;
    invoke-virtual {v0}, Lcom/scalado/caps/filter/photoart/Spotlight;->commit()V

    .line 39
    return-void
.end method
