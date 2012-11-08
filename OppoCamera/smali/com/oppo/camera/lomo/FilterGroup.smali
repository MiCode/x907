.class public Lcom/oppo/camera/lomo/FilterGroup;
.super Ljava/lang/Object;
.source "FilterGroup.java"


# instance fields
.field mFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/camera/lomo/filters/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/lomo/FilterGroup;->mName:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/lomo/FilterGroup;->mFilters:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/oppo/camera/lomo/FilterGroup;->mName:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public add(Lcom/oppo/camera/lomo/filters/Filter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oppo/camera/lomo/FilterGroup;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public getFilters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/camera/lomo/filters/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oppo/camera/lomo/FilterGroup;->mFilters:Ljava/util/ArrayList;

    return-object v0
.end method
