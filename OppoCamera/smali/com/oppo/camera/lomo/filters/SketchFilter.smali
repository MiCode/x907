.class public Lcom/oppo/camera/lomo/filters/SketchFilter;
.super Lcom/oppo/camera/lomo/filters/Filter;
.source "SketchFilter.java"


# instance fields
.field mIsGray:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .parameter "id"
    .parameter "isGray"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/filters/Filter;-><init>(I)V

    .line 32
    iput-boolean p2, p0, Lcom/oppo/camera/lomo/filters/SketchFilter;->mIsGray:Z

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
    .line 37
    new-instance v0, Lcom/scalado/caps/filter/photoart/Sketch;

    invoke-direct {v0, p1}, Lcom/scalado/caps/filter/photoart/Sketch;-><init>(Lcom/scalado/caps/Session;)V

    .line 38
    .local v0, sketch:Lcom/scalado/caps/filter/photoart/Sketch;
    iget-boolean v1, p0, Lcom/oppo/camera/lomo/filters/SketchFilter;->mIsGray:Z

    if-eqz v1, :cond_0

    .line 39
    sget-object v1, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->GRAY:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/filter/photoart/Sketch;->set(Lcom/scalado/caps/filter/photoart/Sketch$Mode;)V

    .line 43
    :goto_0
    invoke-virtual {v0}, Lcom/scalado/caps/filter/photoart/Sketch;->commit()V

    .line 45
    return-void

    .line 41
    :cond_0
    sget-object v1, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->COLOR:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/filter/photoart/Sketch;->set(Lcom/scalado/caps/filter/photoart/Sketch$Mode;)V

    goto :goto_0
.end method
