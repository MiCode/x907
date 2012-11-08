.class public Lcom/oppo/camera/lomo/filters/MirrorFilter;
.super Lcom/oppo/camera/lomo/filters/Filter;
.source "MirrorFilter.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/filters/Filter;-><init>(I)V

    .line 30
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
    .line 36
    new-instance v0, Lcom/scalado/caps/filter/photoart/Mirror;

    invoke-direct {v0, p1}, Lcom/scalado/caps/filter/photoart/Mirror;-><init>(Lcom/scalado/caps/Session;)V

    .line 37
    .local v0, mirror:Lcom/scalado/caps/filter/photoart/Mirror;
    invoke-virtual {v0}, Lcom/scalado/caps/filter/photoart/Mirror;->commit()V

    .line 39
    return-void
.end method
