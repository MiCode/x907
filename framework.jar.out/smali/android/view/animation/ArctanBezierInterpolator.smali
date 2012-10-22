.class public Landroid/view/animation/ArctanBezierInterpolator;
.super Ljava/lang/Object;
.source "ArctanBezierInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static BEZIER_DURATION:F

.field private static BEZIER_VELOCITY:I

.field private static N:F


# instance fields
.field private K:F

.field private K2:F

.field private bezierDistance:F

.field private distance:F

.field private distance1:F

.field private duration:F

.field private duration1:F

.field private flag:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const/16 v0, 0x3e8

    sput v0, Landroid/view/animation/ArctanBezierInterpolator;->BEZIER_VELOCITY:I

    .line 23
    const/high16 v0, 0x3fc0

    sput v0, Landroid/view/animation/ArctanBezierInterpolator;->BEZIER_DURATION:F

    .line 24
    const/high16 v0, 0x3f80

    sget v1, Landroid/view/animation/ArctanBezierInterpolator;->BEZIER_DURATION:F

    div-float/2addr v0, v1

    sput v0, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->flag:I

    return-void
.end method


# virtual methods
.method public getDistance()F
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->flag:I

    int-to-float v0, v0

    iget v1, p0, Landroid/view/animation/ArctanBezierInterpolator;->distance:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->duration:F

    return v0
.end method

.method public getInterpolation(F)F
    .locals 9
    .parameter "input"

    .prologue
    const/high16 v8, 0x4040

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, current:F
    iget v5, p0, Landroid/view/animation/ArctanBezierInterpolator;->duration:F

    mul-float v2, v5, p1

    .line 81
    .local v2, t:F
    iget v5, p0, Landroid/view/animation/ArctanBezierInterpolator;->duration1:F

    sub-float v3, v2, v5

    .line 83
    .local v3, t1:F
    iget v5, p0, Landroid/view/animation/ArctanBezierInterpolator;->mVelocity:F

    sget v6, Landroid/view/animation/ArctanBezierInterpolator;->BEZIER_VELOCITY:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 84
    sget v5, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    mul-float v4, v3, v5

    .line 85
    .local v4, t2:F
    iget v5, p0, Landroid/view/animation/ArctanBezierInterpolator;->duration1:F

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_0

    .line 86
    iget v5, p0, Landroid/view/animation/ArctanBezierInterpolator;->K:F

    float-to-double v5, v5

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v0, v5

    .line 95
    :goto_0
    iget v5, p0, Landroid/view/animation/ArctanBezierInterpolator;->distance:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 96
    const/high16 v1, 0x3f80

    .line 100
    :goto_1
    return v1

    .line 88
    :cond_0
    iget v5, p0, Landroid/view/animation/ArctanBezierInterpolator;->distance1:F

    mul-float v6, v4, v4

    mul-float/2addr v6, v4

    mul-float v7, v8, v4

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    mul-float v7, v8, v4

    add-float/2addr v6, v7

    iget v7, p0, Landroid/view/animation/ArctanBezierInterpolator;->K2:F

    mul-float/2addr v6, v7

    add-float v0, v5, v6

    goto :goto_0

    .line 91
    .end local v4           #t2:F
    :cond_1
    sget v5, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    mul-float v4, v2, v5

    .line 92
    .restart local v4       #t2:F
    mul-float v5, v4, v4

    mul-float/2addr v5, v4

    mul-float v6, v8, v4

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    mul-float v6, v8, v4

    add-float/2addr v5, v6

    iget v6, p0, Landroid/view/animation/ArctanBezierInterpolator;->K2:F

    mul-float v0, v5, v6

    goto :goto_0

    .line 98
    :cond_2
    iget v5, p0, Landroid/view/animation/ArctanBezierInterpolator;->distance:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v1, v0, v5

    .line 100
    .local v1, output:F
    goto :goto_1
.end method

.method public getVelocity(F)I
    .locals 8
    .parameter "input"

    .prologue
    const/high16 v6, 0x40c0

    const/high16 v7, 0x4040

    .line 111
    const-wide/16 v0, 0x0

    .line 112
    .local v0, current:D
    iget v4, p0, Landroid/view/animation/ArctanBezierInterpolator;->duration:F

    mul-float v2, v4, p1

    .line 113
    .local v2, t:F
    iget v4, p0, Landroid/view/animation/ArctanBezierInterpolator;->duration1:F

    sub-float v3, v2, v4

    .line 115
    .local v3, t1:F
    iget v4, p0, Landroid/view/animation/ArctanBezierInterpolator;->mVelocity:F

    sget v5, Landroid/view/animation/ArctanBezierInterpolator;->BEZIER_VELOCITY:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 116
    iget v4, p0, Landroid/view/animation/ArctanBezierInterpolator;->duration1:F

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_0

    .line 117
    iget v4, p0, Landroid/view/animation/ArctanBezierInterpolator;->K:F

    const/high16 v5, 0x3f80

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-double v0, v4

    .line 125
    :goto_0
    iget v4, p0, Landroid/view/animation/ArctanBezierInterpolator;->flag:I

    int-to-double v4, v4

    mul-double/2addr v4, v0

    double-to-int v4, v4

    return v4

    .line 119
    :cond_0
    sget v4, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    mul-float/2addr v4, v7

    sget v5, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    mul-float/2addr v4, v5

    sget v5, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v3

    mul-float/2addr v4, v3

    sget v5, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    mul-float/2addr v5, v6

    sget v6, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    sget v5, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    iget v5, p0, Landroid/view/animation/ArctanBezierInterpolator;->K2:F

    mul-float/2addr v4, v5

    float-to-double v0, v4

    goto :goto_0

    .line 122
    :cond_1
    sget v4, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    mul-float/2addr v4, v7

    sget v5, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    mul-float/2addr v4, v5

    sget v5, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    sget v5, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    mul-float/2addr v5, v6

    sget v6, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    sget v5, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    iget v5, p0, Landroid/view/animation/ArctanBezierInterpolator;->K2:F

    mul-float/2addr v4, v5

    float-to-double v0, v4

    goto :goto_0
.end method

.method public setVelocity(F)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 37
    cmpl-float v0, p1, v2

    if-lez v0, :cond_0

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->flag:I

    .line 41
    :goto_0
    iget v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->flag:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->mVelocity:F

    .line 42
    iget v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->mVelocity:F

    sget v1, Landroid/view/animation/ArctanBezierInterpolator;->BEZIER_VELOCITY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 43
    iget v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->mVelocity:F

    iput v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->K:F

    .line 44
    sget v0, Landroid/view/animation/ArctanBezierInterpolator;->BEZIER_VELOCITY:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    sget v1, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->K2:F

    .line 45
    iget v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->K2:F

    iput v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->bezierDistance:F

    .line 46
    iget v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->K:F

    sget v1, Landroid/view/animation/ArctanBezierInterpolator;->BEZIER_VELOCITY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->duration1:F

    .line 47
    iget v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->duration1:F

    sget v1, Landroid/view/animation/ArctanBezierInterpolator;->BEZIER_DURATION:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->duration:F

    .line 48
    iget v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->K:F

    float-to-double v0, v0

    iget v2, p0, Landroid/view/animation/ArctanBezierInterpolator;->duration1:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->distance1:F

    .line 49
    iget v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->distance1:F

    iget v1, p0, Landroid/view/animation/ArctanBezierInterpolator;->bezierDistance:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->distance:F

    .line 59
    :goto_1
    return-void

    .line 40
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->flag:I

    goto :goto_0

    .line 50
    :cond_1
    iget v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->mVelocity:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 51
    iget v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->mVelocity:F

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    sget v1, Landroid/view/animation/ArctanBezierInterpolator;->N:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->K2:F

    .line 52
    iget v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->K2:F

    iput v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->bezierDistance:F

    .line 53
    sget v0, Landroid/view/animation/ArctanBezierInterpolator;->BEZIER_DURATION:F

    iput v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->duration:F

    .line 54
    iget v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->bezierDistance:F

    iput v0, p0, Landroid/view/animation/ArctanBezierInterpolator;->distance:F

    goto :goto_1

    .line 56
    :cond_2
    iput v2, p0, Landroid/view/animation/ArctanBezierInterpolator;->duration:F

    .line 57
    iput v2, p0, Landroid/view/animation/ArctanBezierInterpolator;->distance:F

    goto :goto_1
.end method
