.class public Lcom/oppo/camera/lomo/filters/MilkyFilter;
.super Lcom/oppo/camera/lomo/filters/Filter;
.source "MilkyFilter.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/filters/Filter;-><init>(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public applyFilterToSession(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/scalado/caps/filter/photoart/Milky;

    invoke-direct {v0, p1}, Lcom/scalado/caps/filter/photoart/Milky;-><init>(Lcom/scalado/caps/Session;)V

    .line 35
    .local v0, milk:Lcom/scalado/caps/filter/photoart/Milky;
    invoke-virtual {v0}, Lcom/scalado/caps/filter/photoart/Milky;->commit()V

    .line 36
    return-void
.end method
