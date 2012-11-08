.class public Lcom/oppo/camera/lomo/filters/NeutralFilter;
.super Lcom/oppo/camera/lomo/filters/Filter;
.source "NeutralFilter.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/filters/Filter;-><init>(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public applyFilterToSession(Lcom/scalado/caps/Session;)V
    .locals 0
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    return-void
.end method
