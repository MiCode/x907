.class public final Landroid/content/res/ManufactureParser;
.super Ljava/lang/Object;
.source "ManufactureParser.java"


# static fields
.field private static final sDefault:Ljava/lang/String; = "oppo"

.field private static sInstance:Landroid/content/res/ManufactureParser;


# instance fields
.field private mIdMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ManufactureParser;->mIdMaps:Ljava/util/HashMap;

    .line 27
    invoke-direct {p0}, Landroid/content/res/ManufactureParser;->init()V

    .line 28
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Landroid/content/res/ManufactureParser;->mIdMaps:Ljava/util/HashMap;

    const-string/jumbo v1, "oppo"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public static final instance()Landroid/content/res/ManufactureParser;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Landroid/content/res/ManufactureParser;->sInstance:Landroid/content/res/ManufactureParser;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Landroid/content/res/ManufactureParser;

    invoke-direct {v0}, Landroid/content/res/ManufactureParser;-><init>()V

    sput-object v0, Landroid/content/res/ManufactureParser;->sInstance:Landroid/content/res/ManufactureParser;

    .line 18
    :cond_0
    sget-object v0, Landroid/content/res/ManufactureParser;->sInstance:Landroid/content/res/ManufactureParser;

    return-object v0
.end method


# virtual methods
.method public getSystemDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "oppo"

    return-object v0
.end method

.method public obtainId(Ljava/lang/String;)I
    .locals 2
    .parameter "manufacture"

    .prologue
    .line 39
    iget-object v1, p0, Landroid/content/res/ManufactureParser;->mIdMaps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 40
    .local v0, id:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
