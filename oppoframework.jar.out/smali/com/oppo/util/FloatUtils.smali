.class public Lcom/oppo/util/FloatUtils;
.super Ljava/lang/Object;
.source "FloatUtils.java"


# static fields
.field private static final ANIMATION_SPEED:F = 4.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final animate(FFF)F
    .locals 1
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 23
    const/high16 v0, 0x4080

    mul-float/2addr p2, v0

    .line 24
    invoke-static {p0, p1, p2}, Lcom/oppo/util/FloatUtils;->animateAfterFactoringSpeed(FFF)F

    move-result v0

    return v0
.end method

.method private static final animateAfterFactoringSpeed(FFF)F
    .locals 3
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 144
    cmpl-float v1, p0, p1

    if-nez v1, :cond_1

    .line 158
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 146
    .restart local p1
    :cond_1
    sub-float v1, p1, p0

    mul-float/2addr v1, p2

    add-float v0, p0, v1

    .line 147
    .local v0, newVal:F
    sub-float v1, v0, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 149
    cmpl-float v1, v0, p0

    if-eqz v1, :cond_0

    .line 153
    cmpl-float v1, p0, p1

    if-lez v1, :cond_2

    cmpg-float v1, v0, p1

    if-ltz v1, :cond_0

    .line 155
    :cond_2
    cmpg-float v1, p0, p1

    if-gez v1, :cond_3

    cmpl-float v1, v0, p1

    if-gtz v1, :cond_0

    :cond_3
    move p1, v0

    .line 158
    goto :goto_0
.end method

.method public static final boundsContainsPoint(FFFFFF)Z
    .locals 1
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bottom"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 137
    cmpg-float v0, p4, p0

    if-ltz v0, :cond_0

    cmpl-float v0, p4, p1

    if-gtz v0, :cond_0

    cmpg-float v0, p5, p2

    if-ltz v0, :cond_0

    cmpl-float v0, p5, p3

    if-lez v0, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final clamp(FFF)F
    .locals 1
    .parameter "val"
    .parameter "minVal"
    .parameter "maxVal"

    .prologue
    .line 90
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 95
    .end local p1
    :goto_0
    return p1

    .line 92
    .restart local p1
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    .line 93
    goto :goto_0

    :cond_1
    move p1, p0

    .line 95
    goto :goto_0
.end method

.method public static final clamp(III)I
    .locals 0
    .parameter "val"
    .parameter "minVal"
    .parameter "maxVal"

    .prologue
    .line 110
    if-ge p0, p1, :cond_0

    .line 115
    .end local p1
    :goto_0
    return p1

    .line 112
    .restart local p1
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    .line 113
    goto :goto_0

    :cond_1
    move p1, p0

    .line 115
    goto :goto_0
.end method

.method public static final clampMax(FF)F
    .locals 1
    .parameter "val"
    .parameter "maxVal"

    .prologue
    .line 70
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .line 73
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method public static final clampMin(FF)F
    .locals 1
    .parameter "val"
    .parameter "minVal"

    .prologue
    .line 54
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 57
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method public static final max(FF)F
    .locals 1
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 164
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .line 167
    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    move p0, p1

    goto :goto_0
.end method
