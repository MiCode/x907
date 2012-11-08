.class public Lcom/oppo/ImageScaleView/MathTools;
.super Ljava/lang/Object;
.source "MathTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final computePointDistance(FF)F
    .locals 6
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 7
    float-to-double v0, p0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v2, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static final equals(FF)Z
    .locals 1
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 17
    const v0, 0x3f8020c5

    mul-float/2addr v0, p0

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    const v0, 0x3f7fbe77

    mul-float/2addr v0, p0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final greater(FF)Z
    .locals 1
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 21
    const v0, 0x3f7fbe77

    mul-float/2addr v0, p0

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final greaterOrEquals(FF)Z
    .locals 1
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/oppo/ImageScaleView/MathTools;->greater(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/oppo/ImageScaleView/MathTools;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final less(FF)Z
    .locals 1
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 25
    const v0, 0x3f8020c5

    mul-float/2addr v0, p0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final lessOrEquals(FF)Z
    .locals 1
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/oppo/ImageScaleView/MathTools;->less(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/oppo/ImageScaleView/MathTools;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final squares(FF)F
    .locals 6
    .parameter "n1"
    .parameter "n2"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 11
    float-to-double v0, p0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v2, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
