.class public Landroid/view/animation/CommonInterpolator;
.super Ljava/lang/Object;
.source "CommonInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final DBG:Z = false

.field private static final MAX_BROKE:F = 0.75f


# instance fields
.field private a0:F

.field private a1:F

.field private b0:F

.field private b1:F

.field private brokex:F

.field private brokey:F

.field private distance:F

.field private duration:F

.field private k0:F

.field private k1:F

.field private velocity:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dumpState()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 221
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/animation/CommonInterpolator;->distance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v0, ""

    const-string v1, "brokex: %f, brokey: %f"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->brokex:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->brokey:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v0, ""

    const-string v1, "a0: %f, b0: %f, k0: %f"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->a0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->b0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->k0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v0, ""

    const-string v1, "a1: %f, b1: %f, k1: %f"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->a1:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->b1:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->k1:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v0, ""

    const-string v1, "------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
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
    .line 189
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/view/animation/CommonInterpolator;->getQuadraticIntegral(FFFF)F

    move-result v0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/animation/CommonInterpolator;->getQuadraticIntegral(FFFF)F

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
    .line 193
    sub-float v0, p4, p2

    .line 194
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

.method private getVelocity(FFFF)F
    .locals 2
    .parameter "k"
    .parameter "a"
    .parameter "b"
    .parameter "time"

    .prologue
    .line 216
    sub-float v0, p4, p2

    .line 217
    .local v0, time_a:F
    mul-float v1, p1, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, p3

    return v1
.end method


# virtual methods
.method public getDistance()F
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Landroid/view/animation/CommonInterpolator;->distance:F

    return v0
.end method

.method public getInterpolation(F)F
    .locals 13
    .parameter "input"

    .prologue
    const/4 v4, 0x0

    .line 171
    const/4 v11, 0x0

    .line 172
    .local v11, current:F
    iget v0, p0, Landroid/view/animation/CommonInterpolator;->brokex:F

    iget v1, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    div-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 173
    iget v1, p0, Landroid/view/animation/CommonInterpolator;->k0:F

    iget v2, p0, Landroid/view/animation/CommonInterpolator;->a0:F

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->b0:F

    iget v0, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    mul-float v5, p1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/animation/CommonInterpolator;->getDefiniteIntegral(FFFFF)F

    move-result v11

    .line 179
    :goto_0
    iget v0, p0, Landroid/view/animation/CommonInterpolator;->distance:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    .line 180
    const/high16 v12, 0x3f80

    .line 185
    :goto_1
    return v12

    .line 175
    :cond_0
    iget v1, p0, Landroid/view/animation/CommonInterpolator;->k0:F

    iget v2, p0, Landroid/view/animation/CommonInterpolator;->a0:F

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->b0:F

    iget v5, p0, Landroid/view/animation/CommonInterpolator;->brokex:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/animation/CommonInterpolator;->getDefiniteIntegral(FFFFF)F

    move-result v0

    iget v6, p0, Landroid/view/animation/CommonInterpolator;->k1:F

    iget v7, p0, Landroid/view/animation/CommonInterpolator;->a1:F

    iget v8, p0, Landroid/view/animation/CommonInterpolator;->b1:F

    iget v9, p0, Landroid/view/animation/CommonInterpolator;->brokex:F

    iget v1, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    mul-float v10, p1, v1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/view/animation/CommonInterpolator;->getDefiniteIntegral(FFFFF)F

    move-result v1

    add-float v11, v0, v1

    goto :goto_0

    .line 182
    :cond_1
    iget v0, p0, Landroid/view/animation/CommonInterpolator;->distance:F

    div-float v12, v11, v0

    .line 185
    .local v12, output:F
    goto :goto_1
.end method

.method public getVelocity(F)I
    .locals 5
    .parameter "input"

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, current:F
    iget v1, p0, Landroid/view/animation/CommonInterpolator;->brokex:F

    iget v2, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    div-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 207
    iget v1, p0, Landroid/view/animation/CommonInterpolator;->k0:F

    iget v2, p0, Landroid/view/animation/CommonInterpolator;->a0:F

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->b0:F

    iget v4, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    mul-float/2addr v4, p1

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/view/animation/CommonInterpolator;->getVelocity(FFFF)F

    move-result v0

    .line 212
    :goto_0
    float-to-int v1, v0

    return v1

    .line 209
    :cond_0
    iget v1, p0, Landroid/view/animation/CommonInterpolator;->k1:F

    iget v2, p0, Landroid/view/animation/CommonInterpolator;->a1:F

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->b1:F

    iget v4, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    mul-float/2addr v4, p1

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/view/animation/CommonInterpolator;->getVelocity(FFFF)F

    move-result v0

    goto :goto_0
.end method

.method public setBoundDistanceAndTime(FI)V
    .locals 17
    .parameter "d"
    .parameter "t"

    .prologue
    .line 113
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/animation/CommonInterpolator;->distance:F

    .line 114
    move/from16 v0, p2

    int-to-float v14, v0

    const/high16 v15, 0x447a

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/animation/CommonInterpolator;->duration:F

    .line 115
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/animation/CommonInterpolator;->velocity:F

    .line 117
    const/4 v11, 0x0

    .line 118
    .local v11, x1:F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/animation/CommonInterpolator;->duration:F

    const/high16 v15, 0x4080

    div-float v12, v14, v15

    .line 119
    .local v12, x2:F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/animation/CommonInterpolator;->duration:F

    .line 121
    .local v13, x3:F
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/animation/CommonInterpolator;->a0:F

    .line 122
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/animation/CommonInterpolator;->a1:F

    .line 123
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/animation/CommonInterpolator;->b1:F

    .line 126
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/animation/CommonInterpolator;->a0:F

    sub-float v10, v12, v14

    .line 127
    .local v10, temp:F
    mul-float v14, v10, v10

    mul-float/2addr v14, v10

    const/high16 v15, 0x4040

    div-float v6, v14, v15

    .line 128
    .local v6, o1:F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/animation/CommonInterpolator;->a0:F

    sub-float v10, v11, v14

    .line 129
    mul-float v14, v10, v10

    mul-float/2addr v14, v10

    const/high16 v15, 0x4040

    div-float v7, v14, v15

    .line 130
    .local v7, o2:F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/animation/CommonInterpolator;->a1:F

    sub-float v10, v13, v14

    .line 131
    mul-float v14, v10, v10

    mul-float/2addr v14, v10

    const/high16 v15, 0x4040

    div-float v8, v14, v15

    .line 132
    .local v8, o3:F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/animation/CommonInterpolator;->a1:F

    sub-float v10, v12, v14

    .line 133
    mul-float v14, v10, v10

    mul-float/2addr v14, v10

    const/high16 v15, 0x4040

    div-float v9, v14, v15

    .line 135
    .local v9, o4:F
    sub-float v14, v6, v7

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/animation/CommonInterpolator;->a0:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/CommonInterpolator;->a0:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v16, v12, v11

    mul-float v15, v15, v16

    sub-float v2, v14, v15

    .line 136
    .local v2, m1:F
    sub-float v3, v8, v9

    .line 137
    .local v3, m2:F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/animation/CommonInterpolator;->a1:F

    sub-float v14, v12, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/animation/CommonInterpolator;->a1:F

    sub-float v15, v12, v15

    mul-float v4, v14, v15

    .line 138
    .local v4, m3:F
    mul-float v14, v12, v12

    const/high16 v15, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/CommonInterpolator;->a0:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    mul-float/2addr v15, v12

    sub-float v5, v14, v15

    .line 140
    .local v5, m4:F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/animation/CommonInterpolator;->distance:F

    mul-float/2addr v14, v5

    mul-float v15, v2, v4

    mul-float v16, v3, v5

    add-float v15, v15, v16

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/animation/CommonInterpolator;->k1:F

    .line 141
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/animation/CommonInterpolator;->k1:F

    mul-float/2addr v14, v4

    div-float/2addr v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/animation/CommonInterpolator;->k0:F

    .line 143
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/animation/CommonInterpolator;->a1:F

    sub-float v10, v12, v14

    .line 144
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/animation/CommonInterpolator;->k1:F

    mul-float/2addr v14, v10

    mul-float/2addr v14, v10

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/animation/CommonInterpolator;->brokey:F

    .line 145
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/animation/CommonInterpolator;->brokex:F

    .line 147
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/animation/CommonInterpolator;->a0:F

    neg-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/animation/CommonInterpolator;->a0:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/animation/CommonInterpolator;->k0:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/animation/CommonInterpolator;->b0:F

    .line 150
    return-void
.end method

.method public setVelocityDistanceTime(FFF)V
    .locals 10
    .parameter "v"
    .parameter "d"
    .parameter "t"

    .prologue
    .line 66
    iput p1, p0, Landroid/view/animation/CommonInterpolator;->velocity:F

    .line 67
    iput p2, p0, Landroid/view/animation/CommonInterpolator;->distance:F

    .line 68
    const/high16 v7, 0x447a

    div-float v7, p3, v7

    iput v7, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    .line 70
    iget v7, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    const/high16 v8, 0x4040

    div-float v6, v7, v8

    .line 72
    .local v6, x2:F
    const/high16 v7, 0x3fc0

    iget v8, p0, Landroid/view/animation/CommonInterpolator;->distance:F

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/view/animation/CommonInterpolator;->velocity:F

    div-float v1, v7, v8

    .line 73
    .local v1, max:F
    iget v7, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    sub-float v3, v1, v7

    .line 75
    .local v3, min:F
    const/high16 v7, 0x4040

    iget v8, p0, Landroid/view/animation/CommonInterpolator;->distance:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    mul-float/2addr v8, v6

    iget v9, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    add-float/2addr v8, v9

    div-float v4, v7, v8

    .line 76
    .local v4, minVelocity:F
    const/high16 v7, 0x3fc0

    iget v8, p0, Landroid/view/animation/CommonInterpolator;->distance:F

    mul-float/2addr v7, v8

    div-float v2, v7, v6

    .line 82
    .local v2, maxVelocity:F
    sub-float v7, v2, v4

    const/high16 v8, 0x4000

    div-float v0, v7, v8

    .line 83
    .local v0, delta:F
    iget v7, p0, Landroid/view/animation/CommonInterpolator;->velocity:F

    cmpg-float v7, v7, v4

    if-gez v7, :cond_1

    .line 84
    iget v7, p0, Landroid/view/animation/CommonInterpolator;->velocity:F

    mul-float/2addr v7, v0

    add-float v8, v4, v0

    div-float/2addr v7, v8

    add-float/2addr v7, v4

    iput v7, p0, Landroid/view/animation/CommonInterpolator;->velocity:F

    .line 89
    :cond_0
    :goto_0
    const/4 v7, 0x0

    iput v7, p0, Landroid/view/animation/CommonInterpolator;->a0:F

    .line 90
    iget v7, p0, Landroid/view/animation/CommonInterpolator;->velocity:F

    iput v7, p0, Landroid/view/animation/CommonInterpolator;->b0:F

    .line 92
    iget v7, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    iput v7, p0, Landroid/view/animation/CommonInterpolator;->a1:F

    .line 93
    const/4 v7, 0x0

    iput v7, p0, Landroid/view/animation/CommonInterpolator;->b1:F

    .line 95
    iget v7, p0, Landroid/view/animation/CommonInterpolator;->a1:F

    sub-float v5, v6, v7

    .line 96
    .local v5, temp:F
    mul-float/2addr v5, v5

    .line 97
    const/high16 v7, 0x4040

    iget v8, p0, Landroid/view/animation/CommonInterpolator;->distance:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    iget v9, p0, Landroid/view/animation/CommonInterpolator;->b0:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, v6

    sub-float/2addr v7, v8

    iget v8, p0, Landroid/view/animation/CommonInterpolator;->a1:F

    iget v9, p0, Landroid/view/animation/CommonInterpolator;->b0:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget v8, p0, Landroid/view/animation/CommonInterpolator;->a1:F

    mul-float/2addr v8, v6

    mul-float/2addr v8, v6

    div-float/2addr v7, v8

    iput v7, p0, Landroid/view/animation/CommonInterpolator;->k0:F

    .line 98
    iget v7, p0, Landroid/view/animation/CommonInterpolator;->k0:F

    mul-float/2addr v7, v6

    mul-float/2addr v7, v6

    iget v8, p0, Landroid/view/animation/CommonInterpolator;->b0:F

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    iput v7, p0, Landroid/view/animation/CommonInterpolator;->k1:F

    .line 100
    iput v6, p0, Landroid/view/animation/CommonInterpolator;->brokex:F

    .line 101
    iget v7, p0, Landroid/view/animation/CommonInterpolator;->k1:F

    mul-float/2addr v7, v5

    iput v7, p0, Landroid/view/animation/CommonInterpolator;->brokey:F

    .line 104
    return-void

    .line 85
    .end local v5           #temp:F
    :cond_1
    iget v7, p0, Landroid/view/animation/CommonInterpolator;->velocity:F

    cmpl-float v7, v7, v2

    if-lez v7, :cond_0

    .line 86
    const/high16 v7, 0x4000

    div-float v7, v0, v7

    sub-float v7, v2, v7

    iput v7, p0, Landroid/view/animation/CommonInterpolator;->velocity:F

    goto :goto_0
.end method

.method public setVelocityTime(FI)V
    .locals 7
    .parameter "v"
    .parameter "t"

    .prologue
    const/4 v4, 0x0

    .line 37
    iput p1, p0, Landroid/view/animation/CommonInterpolator;->velocity:F

    .line 38
    int-to-float v0, p2

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    .line 40
    iget v0, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    const/high16 v1, 0x4110

    div-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/CommonInterpolator;->brokex:F

    .line 41
    iget v0, p0, Landroid/view/animation/CommonInterpolator;->brokex:F

    iget v1, p0, Landroid/view/animation/CommonInterpolator;->velocity:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/CommonInterpolator;->brokey:F

    .line 43
    iput v4, p0, Landroid/view/animation/CommonInterpolator;->a0:F

    .line 44
    iget v0, p0, Landroid/view/animation/CommonInterpolator;->velocity:F

    iput v0, p0, Landroid/view/animation/CommonInterpolator;->b0:F

    .line 45
    iget v0, p0, Landroid/view/animation/CommonInterpolator;->brokey:F

    iget v1, p0, Landroid/view/animation/CommonInterpolator;->b0:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/view/animation/CommonInterpolator;->brokex:F

    iget v2, p0, Landroid/view/animation/CommonInterpolator;->a0:F

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/view/animation/CommonInterpolator;->brokex:F

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->a0:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/CommonInterpolator;->k0:F

    .line 47
    iget v0, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    iput v0, p0, Landroid/view/animation/CommonInterpolator;->a1:F

    .line 48
    iput v4, p0, Landroid/view/animation/CommonInterpolator;->b1:F

    .line 49
    iget v0, p0, Landroid/view/animation/CommonInterpolator;->brokey:F

    iget v1, p0, Landroid/view/animation/CommonInterpolator;->b1:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/view/animation/CommonInterpolator;->brokex:F

    iget v2, p0, Landroid/view/animation/CommonInterpolator;->a1:F

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/view/animation/CommonInterpolator;->brokex:F

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->a1:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/CommonInterpolator;->k1:F

    .line 51
    iget v1, p0, Landroid/view/animation/CommonInterpolator;->k0:F

    iget v2, p0, Landroid/view/animation/CommonInterpolator;->a0:F

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->b0:F

    iget v5, p0, Landroid/view/animation/CommonInterpolator;->brokex:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/animation/CommonInterpolator;->getDefiniteIntegral(FFFFF)F

    move-result v6

    iget v1, p0, Landroid/view/animation/CommonInterpolator;->k1:F

    iget v2, p0, Landroid/view/animation/CommonInterpolator;->a1:F

    iget v3, p0, Landroid/view/animation/CommonInterpolator;->b1:F

    iget v4, p0, Landroid/view/animation/CommonInterpolator;->brokex:F

    iget v5, p0, Landroid/view/animation/CommonInterpolator;->duration:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/animation/CommonInterpolator;->getDefiniteIntegral(FFFFF)F

    move-result v0

    add-float/2addr v0, v6

    iput v0, p0, Landroid/view/animation/CommonInterpolator;->distance:F

    .line 55
    return-void
.end method