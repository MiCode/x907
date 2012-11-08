.class public Lcom/oppo/ImageScaleView/ScaleHanlder;
.super Ljava/lang/Object;
.source "ScaleHanlder.java"


# instance fields
.field private mDistance:[F

.field private mPointZoomStatus:[I

.field private pointCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    .line 16
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mDistance:[F

    .line 17
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mPointZoomStatus:[I

    .line 18
    return-void
.end method

.method private getPointZoomStatus(FF)I
    .locals 3
    .parameter "currentSpan"
    .parameter "previousSpan"

    .prologue
    const/high16 v2, 0x3f80

    .line 46
    div-float v0, p1, p2

    .line 47
    .local v0, temp:F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 48
    const/4 v1, 0x2

    .line 52
    :goto_0
    return v1

    .line 49
    :cond_0
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    .line 50
    const/4 v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getViewZoomStatus()I
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, viewZoomStatus:I
    iget v5, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    const/4 v6, 0x5

    if-ge v5, v6, :cond_0

    .line 59
    const/4 v1, 0x0

    move v2, v1

    .line 81
    .end local v1           #viewZoomStatus:I
    .local v2, viewZoomStatus:I
    :goto_0
    return v2

    .line 63
    .end local v2           #viewZoomStatus:I
    .restart local v1       #viewZoomStatus:I
    :cond_0
    const/4 v3, 0x0

    .line 64
    .local v3, zoomNotCount:I
    const/4 v4, 0x0

    .line 65
    .local v4, zoomStatusVary:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v5, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    if-ge v0, v5, :cond_3

    .line 66
    iget-object v5, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mPointZoomStatus:[I

    aget v5, v5, v0

    if-nez v5, :cond_1

    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 69
    :cond_1
    if-eqz v0, :cond_2

    .line 70
    iget-object v5, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mPointZoomStatus:[I

    aget v5, v5, v0

    iget-object v6, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mPointZoomStatus:[I

    add-int/lit8 v7, v0, -0x1

    aget v6, v6, v7

    if-eq v5, v6, :cond_2

    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 65
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_3
    if-ge v3, v8, :cond_4

    if-lt v4, v8, :cond_5

    .line 76
    :cond_4
    const/4 v1, 0x0

    :goto_2
    move v2, v1

    .line 81
    .end local v1           #viewZoomStatus:I
    .restart local v2       #viewZoomStatus:I
    goto :goto_0

    .line 78
    .end local v2           #viewZoomStatus:I
    .restart local v1       #viewZoomStatus:I
    :cond_5
    iget-object v5, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mPointZoomStatus:[I

    iget v6, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    add-int/lit8 v6, v6, -0x1

    aget v1, v5, v6

    goto :goto_2
.end method


# virtual methods
.method public getScaleIncrement()F
    .locals 6

    .prologue
    .line 88
    const/high16 v2, 0x3f80

    .line 89
    .local v2, scaleIncrement:F
    iget v4, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 90
    iget-object v4, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mDistance:[F

    iget v5, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    add-int/lit8 v5, v5, -0x1

    aget v0, v4, v5

    .line 91
    .local v0, currentDistance:F
    iget-object v4, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mDistance:[F

    iget v5, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    add-int/lit8 v5, v5, -0x2

    aget v1, v4, v5

    .line 92
    .local v1, previousDistance:F
    invoke-direct {p0}, Lcom/oppo/ImageScaleView/ScaleHanlder;->getViewZoomStatus()I

    move-result v3

    .line 93
    .local v3, viewZoomStatus:I
    if-nez v3, :cond_1

    .line 94
    const/high16 v2, 0x3f80

    .line 100
    .end local v0           #currentDistance:F
    .end local v1           #previousDistance:F
    .end local v3           #viewZoomStatus:I
    :cond_0
    :goto_0
    return v2

    .line 96
    .restart local v0       #currentDistance:F
    .restart local v1       #previousDistance:F
    .restart local v3       #viewZoomStatus:I
    :cond_1
    div-float v2, v0, v1

    goto :goto_0
.end method

.method public putPointToArray(F)Z
    .locals 6
    .parameter "pointDistance"

    .prologue
    .line 21
    iget v1, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 22
    iget-object v1, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mDistance:[F

    iget v2, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    aput p1, v1, v2

    .line 23
    iget v1, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    if-nez v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mPointZoomStatus:[I

    iget v2, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 28
    :goto_0
    iget v1, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    .line 38
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mPointZoomStatus:[I

    iget v2, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    iget-object v3, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mDistance:[F

    iget v4, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mDistance:[F

    iget v5, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/oppo/ImageScaleView/ScaleHanlder;->getPointZoomStatus(FF)I

    move-result v3

    aput v3, v1, v2

    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 31
    iget-object v1, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mDistance:[F

    iget-object v2, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mDistance:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 32
    iget-object v1, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mPointZoomStatus:[I

    iget-object v2, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mPointZoomStatus:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mDistance:[F

    iget v2, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    add-int/lit8 v2, v2, -0x1

    aput p1, v1, v2

    .line 36
    iget-object v1, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mPointZoomStatus:[I

    iget v2, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mDistance:[F

    iget v4, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->mDistance:[F

    iget v5, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    add-int/lit8 v5, v5, -0x2

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/oppo/ImageScaleView/ScaleHanlder;->getPointZoomStatus(FF)I

    move-result v3

    aput v3, v1, v2

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/ImageScaleView/ScaleHanlder;->pointCount:I

    .line 43
    return-void
.end method
