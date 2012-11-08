.class public Lcom/oppo/ImageScaleView/ImageTools;
.super Ljava/lang/Object;
.source "ImageTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAdaptScale(FFFF)F
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 6
    div-float v0, p2, p0

    .line 7
    .local v0, scale:F
    div-float v1, p3, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 8
    return v0
.end method

.method public static final getCenterCropAdaptScale(FFFF)F
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 11
    div-float v0, p2, p0

    .line 12
    .local v0, scale:F
    div-float v1, p3, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 13
    return v0
.end method
