.class public Lcom/oppo/ImageScaleView/SwitchCurveTool;
.super Ljava/lang/Object;
.source "SwitchCurveTool.java"


# instance fields
.field private a0:F

.field private a1:F

.field private b0:F

.field private b1:F

.field private brokex:F

.field private k0:F

.field private k1:F

.field private mDuration:F

.field private mFinalDistance:F

.field private mIsFinish:Z

.field private mStartTime:J

.field private mVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mIsFinish:Z

    return-void
.end method

.method private getDefiniteIntegral(FFFFF)F
    .locals 2
    .parameter "k"
    .parameter "a"
    .parameter "b"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->getQuadraticIntegral(FFFF)F

    move-result v0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->getQuadraticIntegral(FFFF)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private getQuadraticIntegral(FFFF)F
    .locals 3
    .parameter "k"
    .parameter "a"
    .parameter "b"
    .parameter "x"

    .prologue
    .line 110
    sub-float v0, p4, p2

    .line 111
    .local v0, x_a:F
    mul-float v1, p1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    mul-float v2, p3, p4

    add-float/2addr v1, v2

    return v1
.end method


# virtual methods
.method public forceFinish()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mIsFinish:Z

    .line 120
    return-void
.end method

.method public getCurrentDistance()F
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 90
    const/4 v12, 0x0

    .line 91
    .local v12, currentDistance:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a

    div-float v5, v0, v1

    .line 92
    .local v5, t:F
    iget v0, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mDuration:F

    cmpl-float v0, v5, v0

    if-lez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mIsFinish:Z

    .line 94
    iget v0, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mFinalDistance:F

    .line 102
    :goto_0
    return v0

    .line 96
    :cond_0
    iget v0, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->brokex:F

    cmpg-float v0, v5, v0

    if-gez v0, :cond_1

    .line 97
    iget v1, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->k0:F

    iget v2, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->a0:F

    iget v3, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->b0:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->getDefiniteIntegral(FFFFF)F

    move-result v12

    :goto_1
    move v0, v12

    .line 102
    goto :goto_0

    .line 99
    :cond_1
    iget v7, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->k0:F

    iget v8, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->a0:F

    iget v9, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->b0:F

    iget v11, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->brokex:F

    move-object v6, p0

    move v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->getDefiniteIntegral(FFFFF)F

    move-result v6

    iget v1, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->k1:F

    iget v2, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->a1:F

    iget v3, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->b1:F

    iget v4, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->brokex:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->getDefiniteIntegral(FFFFF)F

    move-result v0

    add-float v12, v6, v0

    goto :goto_1
.end method

.method public isFinish()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mIsFinish:Z

    return v0
.end method

.method public setVelocityDistanceTime(FFF)V
    .locals 11
    .parameter "v"
    .parameter "d"
    .parameter "t"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x4040

    const/high16 v8, 0x4000

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mStartTime:J

    .line 19
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mIsFinish:Z

    .line 20
    iput p2, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mFinalDistance:F

    .line 21
    const/high16 v5, 0x447a

    div-float v5, p3, v5

    iput v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mDuration:F

    .line 22
    iput p1, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mVelocity:F

    .line 24
    iget v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mDuration:F

    div-float v4, v5, v9

    .line 26
    .local v4, x2:F
    iget v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mFinalDistance:F

    mul-float/2addr v5, v9

    mul-float v6, v8, v4

    iget v7, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mDuration:F

    add-float/2addr v6, v7

    div-float v2, v5, v6

    .line 27
    .local v2, minVelocity:F
    const/high16 v5, 0x3fc0

    iget v6, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mFinalDistance:F

    mul-float/2addr v5, v6

    div-float v1, v5, v4

    .line 29
    .local v1, maxVelocity:F
    sub-float v5, v1, v2

    div-float v0, v5, v8

    .line 30
    .local v0, delta:F
    iget v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mVelocity:F

    cmpg-float v5, v5, v2

    if-gez v5, :cond_1

    .line 31
    iget v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mVelocity:F

    mul-float/2addr v5, v0

    add-float v6, v2, v0

    div-float/2addr v5, v6

    add-float/2addr v5, v2

    iput v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mVelocity:F

    .line 36
    :cond_0
    :goto_0
    iput v10, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->a0:F

    .line 37
    iget v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mVelocity:F

    iput v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->b0:F

    .line 39
    iget v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mDuration:F

    iput v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->a1:F

    .line 40
    iput v10, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->b1:F

    .line 42
    iget v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->a1:F

    sub-float v3, v4, v5

    .line 43
    .local v3, temp:F
    mul-float/2addr v3, v3

    .line 44
    iget v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mFinalDistance:F

    mul-float/2addr v5, v9

    iget v6, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->b0:F

    mul-float/2addr v6, v8

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->a1:F

    iget v7, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->b0:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->a1:F

    mul-float/2addr v6, v4

    mul-float/2addr v6, v4

    div-float/2addr v5, v6

    iput v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->k0:F

    .line 45
    iget v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->k0:F

    mul-float/2addr v5, v4

    mul-float/2addr v5, v4

    iget v6, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->b0:F

    add-float/2addr v5, v6

    div-float/2addr v5, v3

    iput v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->k1:F

    .line 47
    iput v4, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->brokex:F

    .line 48
    return-void

    .line 32
    .end local v3           #temp:F
    :cond_1
    iget v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mVelocity:F

    cmpl-float v5, v5, v1

    if-lez v5, :cond_0

    .line 33
    div-float v5, v0, v8

    sub-float v5, v1, v5

    iput v5, p0, Lcom/oppo/ImageScaleView/SwitchCurveTool;->mVelocity:F

    goto :goto_0
.end method
