.class public Lcom/scalado/caps/face/FeatureSet;
.super Ljava/lang/Object;
.source "FeatureSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/face/FeatureSet$Feature;
    }
.end annotation


# instance fields
.field private mSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/scalado/caps/face/FeatureSet$Feature;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 44
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/face/FeatureSet;-><init>(ZZZZZ)V

    .line 45
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 7
    .parameter "nativeSet"

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 90
    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v1

    and-int/2addr v1, p1

    if-lez v1, :cond_1

    move v1, v0

    :goto_0
    sget-object v2, Lcom/scalado/caps/face/FeatureSet$Feature;->MOUTH:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v2}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v2

    and-int/2addr v2, p1

    if-lez v2, :cond_2

    move v2, v0

    :goto_1
    sget-object v3, Lcom/scalado/caps/face/FeatureSet$Feature;->NOSE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v3}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v3

    and-int/2addr v3, p1

    if-lez v3, :cond_3

    move v3, v0

    :goto_2
    sget-object v4, Lcom/scalado/caps/face/FeatureSet$Feature;->SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v4}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v4

    and-int/2addr v4, p1

    if-lez v4, :cond_4

    move v4, v0

    :goto_3
    sget-object v6, Lcom/scalado/caps/face/FeatureSet$Feature;->BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v6}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v6

    and-int/2addr v6, p1

    if-lez v6, :cond_0

    move v5, v0

    :cond_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/face/FeatureSet;-><init>(ZZZZZ)V

    .line 95
    return-void

    :cond_1
    move v1, v5

    .line 90
    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "allEnabled"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/scalado/caps/face/FeatureSet;-><init>()V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    sget-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {p0, v0}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    .line 57
    sget-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {p0, v0}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    .line 58
    sget-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->MOUTH:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {p0, v0}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    .line 59
    sget-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->NOSE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {p0, v0}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    .line 60
    sget-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {p0, v0}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    .line 62
    :cond_0
    return-void
.end method

.method private constructor <init>(ZZZZZ)V
    .locals 3
    .parameter "eye"
    .parameter "mouth"
    .parameter "nose"
    .parameter "smile"
    .parameter "blink"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    .line 82
    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->MOUTH:Lcom/scalado/caps/face/FeatureSet$Feature;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->NOSE:Lcom/scalado/caps/face/FeatureSet$Feature;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public constructor <init>([Lcom/scalado/caps/face/FeatureSet$Feature;)V
    .locals 2
    .parameter "features"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/scalado/caps/face/FeatureSet;-><init>()V

    .line 72
    if-eqz p1, :cond_0

    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 74
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public disableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V
    .locals 3
    .parameter "feature"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V
    .locals 3
    .parameter "feature"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method protected getNativeSet()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, nativeSet:I
    iget-object v1, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v3, Lcom/scalado/caps/face/FeatureSet$Feature;->EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v1

    :goto_0
    or-int/2addr v0, v1

    .line 101
    iget-object v1, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v3, Lcom/scalado/caps/face/FeatureSet$Feature;->MOUTH:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->MOUTH:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v1

    :goto_1
    or-int/2addr v0, v1

    .line 102
    iget-object v1, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v3, Lcom/scalado/caps/face/FeatureSet$Feature;->NOSE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->NOSE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v1

    :goto_2
    or-int/2addr v0, v1

    .line 103
    iget-object v1, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v3, Lcom/scalado/caps/face/FeatureSet$Feature;->SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v1

    :goto_3
    or-int/2addr v0, v1

    .line 104
    iget-object v1, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v3, Lcom/scalado/caps/face/FeatureSet$Feature;->BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v2

    :cond_0
    or-int/2addr v0, v2

    .line 106
    return v0

    :cond_1
    move v1, v2

    .line 100
    goto :goto_0

    :cond_2
    move v1, v2

    .line 101
    goto :goto_1

    :cond_3
    move v1, v2

    .line 102
    goto :goto_2

    :cond_4
    move v1, v2

    .line 103
    goto :goto_3
.end method

.method public isFeatureEnabled(Lcom/scalado/caps/face/FeatureSet$Feature;)Z
    .locals 2
    .parameter "feature"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error! Feature is missing from set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
