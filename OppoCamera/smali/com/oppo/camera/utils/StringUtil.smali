.class public Lcom/oppo/camera/utils/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/utils/StringUtil$DescendOrder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static isOurFile(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "filenames"
    .parameter "isPic"

    .prologue
    const/4 v2, 0x1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    const-string v0, "(IMG)[1-9][0-9]{3}[01][0-9][0-3][0-9][0-2][0-9][0-5][0-9][0-5][0-9](.jpg|.3gp|.mp4)"

    .line 38
    .local v0, rule:Ljava/lang/String;
    const-string v1, "(IMG)[1-9][0-9]{3}[01][0-9][0-3][0-9][0-2][0-9][0-5][0-9][0-5][0-9](_)[1-5](.jpg)"

    .line 43
    .local v1, rule2:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    :cond_0
    :goto_1
    return v2

    .line 40
    .end local v0           #rule:Ljava/lang/String;
    .end local v1           #rule2:Ljava/lang/String;
    :cond_1
    const-string v0, "(VID)[1-9][0-9]{3}[01][0-9][0-3][0-9][0-2][0-9][0-5][0-9][0-5][0-9](.jpg|.3gp|.mp4)"

    .line 41
    .restart local v0       #rule:Ljava/lang/String;
    const-string v1, "(VID)[1-9][0-9]{3}[01][0-9][0-3][0-9][0-2][0-9][0-5][0-9][0-5][0-9](_)[1-5](.jpg)"

    .restart local v1       #rule2:Ljava/lang/String;
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getLastFileNames([Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "filenames"
    .parameter "isPic"

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 54
    aget-object v2, p1, v1

    invoke-static {v2, p2}, Lcom/oppo/camera/utils/StringUtil;->isOurFile(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 60
    const/4 v2, 0x0

    .line 67
    :goto_1
    return-object v2

    .line 63
    :cond_2
    new-instance v2, Lcom/oppo/camera/utils/StringUtil$DescendOrder;

    invoke-direct {v2, p0}, Lcom/oppo/camera/utils/StringUtil$DescendOrder;-><init>(Lcom/oppo/camera/utils/StringUtil;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1
.end method

.method public getLatestFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 21
    const/4 v3, 0x0

    .line 30
    :goto_0
    return-object v3

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 25
    .local v1, isPic:Z
    sget-object v3, Lcom/oppo/camera/CommConfig;->INTERNAL_IMG_PATH:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    const/4 v1, 0x1

    .line 30
    :cond_1
    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/oppo/camera/utils/StringUtil;->getLastFileNames([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 27
    :cond_2
    sget-object v3, Lcom/oppo/camera/CommConfig;->INTERNAL_VID_PATH:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    const/4 v1, 0x0

    goto :goto_1
.end method
