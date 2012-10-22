.class public Landroid/view/animation/BoundaryInterpolator;
.super Ljava/lang/Object;
.source "BoundaryInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field mAcceleration:F

.field mDistance:I

.field mDuration:F

.field mFinalVelocity:F

.field mInitVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistance()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Landroid/view/animation/BoundaryInterpolator;->mDistance:I

    int-to-float v0, v0

    return v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Landroid/view/animation/BoundaryInterpolator;->mDuration:F

    return v0
.end method

.method public getInterpolation(F)F
    .locals 9
    .parameter "input"

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, current:F
    iget v3, p0, Landroid/view/animation/BoundaryInterpolator;->mDuration:F

    mul-float v2, v3, p1

    .line 51
    .local v2, time:F
    iget v3, p0, Landroid/view/animation/BoundaryInterpolator;->mInitVelocity:F

    mul-float/2addr v3, v2

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    iget v7, p0, Landroid/view/animation/BoundaryInterpolator;->mAcceleration:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    float-to-double v7, v2

    mul-double/2addr v5, v7

    float-to-double v7, v2

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v0, v3

    .line 53
    iget v3, p0, Landroid/view/animation/BoundaryInterpolator;->mDistance:I

    int-to-float v3, v3

    div-float v1, v0, v3

    .line 54
    .local v1, output:F
    return v1
.end method

.method public getVelocity(F)I
    .locals 4
    .parameter "input"

    .prologue
    .line 65
    iget v2, p0, Landroid/view/animation/BoundaryInterpolator;->mDuration:F

    mul-float v0, v2, p1

    .line 66
    .local v0, time:F
    iget v2, p0, Landroid/view/animation/BoundaryInterpolator;->mInitVelocity:F

    iget v3, p0, Landroid/view/animation/BoundaryInterpolator;->mAcceleration:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 67
    .local v1, velocity:I
    return v1
.end method

.method public setVelocityDistance(FI)V
    .locals 5
    .parameter "v"
    .parameter "d"

    .prologue
    const/high16 v4, 0x4000

    .line 25
    iput p1, p0, Landroid/view/animation/BoundaryInterpolator;->mInitVelocity:F

    .line 26
    div-float v0, p1, v4

    iput v0, p0, Landroid/view/animation/BoundaryInterpolator;->mFinalVelocity:F

    .line 27
    iput p2, p0, Landroid/view/animation/BoundaryInterpolator;->mDistance:I

    .line 28
    iget v0, p0, Landroid/view/animation/BoundaryInterpolator;->mInitVelocity:F

    neg-float v0, v0

    iget v1, p0, Landroid/view/animation/BoundaryInterpolator;->mInitVelocity:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8

    mul-double/2addr v0, v2

    iget v2, p0, Landroid/view/animation/BoundaryInterpolator;->mDistance:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Landroid/view/animation/BoundaryInterpolator;->mAcceleration:F

    .line 29
    iget v0, p0, Landroid/view/animation/BoundaryInterpolator;->mFinalVelocity:F

    iget v1, p0, Landroid/view/animation/BoundaryInterpolator;->mInitVelocity:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/view/animation/BoundaryInterpolator;->mAcceleration:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/BoundaryInterpolator;->mDuration:F

    .line 30
    return-void
.end method
