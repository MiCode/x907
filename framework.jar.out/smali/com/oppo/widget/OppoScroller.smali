.class public Lcom/oppo/widget/OppoScroller;
.super Ljava/lang/Object;
.source "OppoScroller.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final DEFAULT_TIME_GAP:I = 0xf

.field private static final FLING_MODE:I = 0x1

.field private static final FLING_SCROLL_BACK_DURATION:I = 0x2ee

.field private static final FLING_SCROLL_BACK_MODE:I = 0x3

.field private static final FLING_SPRING_MODE:I = 0x2

.field private static final GALLERY_LIST_MODE:I = 0x5

.field private static final GALLERY_TIME_GAP:I = 0x19

.field private static final SCROLL_LIST_MODE:I = 0x4

.field private static final SCROLL_MODE:I


# instance fields
.field private mCoeffX:F

.field private mCoeffY:F

.field private mCount:I

.field private mCurrVX:I

.field private mCurrVY:I

.field private mCurrX:I

.field private mCurrY:I

.field public mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastCurrY:I

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private final mPpi:F

.field private mSpringOffsetX:I

.field private mSpringOffsetY:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F

.field private mViscousFluidNormalize:F

.field private mViscousFluidScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .parameter "context"
    .parameter "interpolator"

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCoeffX:F

    .line 63
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCoeffY:F

    .line 76
    iput v1, p0, Lcom/oppo/widget/OppoScroller;->mCount:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mLastCurrY:I

    .line 102
    iput-boolean v1, p0, Lcom/oppo/widget/OppoScroller;->mFinished:Z

    .line 103
    iput-object p2, p0, Lcom/oppo/widget/OppoScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mPpi:F

    .line 106
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mDeceleration:F

    .line 108
    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2
    .parameter "friction"

    .prologue
    .line 616
    const v0, 0x43c10b3d

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getInterpolation(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 531
    const/high16 v1, 0x4100

    mul-float/2addr p1, v1

    .line 532
    const v0, 0x3ebc5ab2

    .line 533
    .local v0, start:F
    neg-float v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p1, v3, v1

    .line 534
    sub-float v1, v3, v0

    mul-float/2addr p1, v1

    .line 535
    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    .line 537
    return p1
.end method

.method private viscousFluid(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 517
    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mViscousFluidScale:F

    mul-float/2addr p1, v1

    .line 518
    cmpg-float v1, p1, v3

    if-gez v1, :cond_0

    .line 519
    neg-float v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p1, v1

    .line 525
    :goto_0
    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    .line 526
    return p1

    .line 521
    :cond_0
    const v0, 0x3ebc5ab2

    .line 522
    .local v0, start:F
    sub-float v1, v3, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p1, v3, v1

    .line 523
    sub-float v1, v3, v0

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    .line 549
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoScroller;->mFinished:Z

    .line 551
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 15

    .prologue
    const/16 v5, 0x2ee

    const/4 v14, 0x3

    const/high16 v13, 0x447a

    const/high16 v4, 0x4000

    const/4 v12, 0x1

    .line 217
    iget-boolean v0, p0, Lcom/oppo/widget/OppoScroller;->mFinished:Z

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 336
    :goto_0
    return v0

    .line 221
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oppo/widget/OppoScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v7, v0

    .line 226
    .local v7, timePassed:I
    const/4 v0, 0x4

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mMode:I

    if-ne v0, v1, :cond_3

    .line 227
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCount:I

    mul-int/lit8 v7, v0, 0xf

    .line 232
    :cond_1
    :goto_1
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mDuration:I

    if-ge v7, v0, :cond_8

    .line 233
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_2
    move v0, v12

    .line 336
    goto :goto_0

    .line 228
    :cond_3
    const/4 v0, 0x5

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mMode:I

    if-ne v0, v1, :cond_1

    .line 229
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCount:I

    mul-int/lit8 v7, v0, 0x19

    goto :goto_1

    .line 236
    :pswitch_0
    int-to-float v0, v7

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mDurationReciprocal:F

    mul-float v11, v0, v1

    .line 238
    .local v11, x:F
    iget-object v0, p0, Lcom/oppo/widget/OppoScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_4

    .line 239
    invoke-direct {p0, v11}, Lcom/oppo/widget/OppoScroller;->viscousFluid(F)F

    move-result v11

    .line 243
    :goto_3
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mStartX:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mDeltaX:F

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    .line 244
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mStartY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mDeltaY:F

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    .line 245
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    if-ne v0, v1, :cond_2

    .line 246
    iput-boolean v12, p0, Lcom/oppo/widget/OppoScroller;->mFinished:Z

    goto :goto_2

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    goto :goto_3

    .line 251
    .end local v11           #x:F
    :pswitch_1
    int-to-float v0, v7

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mDurationReciprocal:F

    mul-float v11, v0, v1

    .line 252
    .restart local v11       #x:F
    invoke-direct {p0, v11}, Lcom/oppo/widget/OppoScroller;->getInterpolation(F)F

    move-result v11

    .line 254
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mStartX:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mDeltaX:F

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    .line 255
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mStartY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mDeltaY:F

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    .line 257
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mLastCurrY:I

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x258

    div-int/lit8 v9, v0, 0xf

    .line 258
    .local v9, v:I
    int-to-float v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrVY:I

    .line 260
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mLastCurrY:I

    .line 262
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    if-eq v0, v1, :cond_6

    :cond_5
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrVY:I

    if-nez v0, :cond_2

    .line 263
    :cond_6
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    .line 264
    iput-boolean v12, p0, Lcom/oppo/widget/OppoScroller;->mFinished:Z

    goto/16 :goto_2

    .line 269
    .end local v9           #v:I
    .end local v11           #x:F
    :pswitch_2
    int-to-float v0, v7

    div-float v8, v0, v13

    .line 270
    .local v8, timePassedSeconds:F
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mVelocity:F

    mul-float/2addr v0, v8

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mDeceleration:F

    mul-float/2addr v1, v8

    mul-float/2addr v1, v8

    div-float/2addr v1, v4

    sub-float v6, v0, v1

    .line 273
    .local v6, distance:F
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mStartX:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mCoeffX:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    .line 275
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    .line 276
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    .line 278
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mStartY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mCoeffY:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    .line 280
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    .line 281
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    .line 283
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mVelocity:F

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mDeceleration:F

    mul-float/2addr v1, v8

    sub-float v10, v0, v1

    .line 284
    .local v10, velocity:F
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCoeffX:F

    mul-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrVX:I

    .line 285
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCoeffY:F

    mul-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrVY:I

    .line 287
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    if-ne v0, v1, :cond_2

    .line 288
    iput-boolean v12, p0, Lcom/oppo/widget/OppoScroller;->mFinished:Z

    goto/16 :goto_2

    .line 293
    .end local v6           #distance:F
    .end local v8           #timePassedSeconds:F
    .end local v10           #velocity:F
    :pswitch_3
    int-to-float v0, v7

    div-float v8, v0, v13

    .line 294
    .restart local v8       #timePassedSeconds:F
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mVelocity:F

    mul-float/2addr v0, v8

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mDeceleration:F

    mul-float/2addr v1, v8

    mul-float/2addr v1, v8

    div-float/2addr v1, v4

    sub-float v6, v0, v1

    .line 297
    .restart local v6       #distance:F
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mStartX:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mCoeffX:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    .line 299
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    .line 300
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    .line 302
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mStartY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mCoeffY:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    .line 304
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    .line 305
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    .line 307
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    if-ne v0, v1, :cond_2

    .line 309
    :cond_7
    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    iget v2, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mDeltaX:F

    iget v3, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    iget v4, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v3, v0

    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mDeltaY:F

    iget v4, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    iget v13, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    sub-int/2addr v4, v13

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoScroller;->startScroll(IIIII)V

    .line 310
    iput v14, p0, Lcom/oppo/widget/OppoScroller;->mMode:I

    goto/16 :goto_2

    .line 314
    .end local v6           #distance:F
    .end local v8           #timePassedSeconds:F
    :pswitch_4
    int-to-float v0, v7

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mDurationReciprocal:F

    mul-float v11, v0, v1

    .line 315
    .restart local v11       #x:F
    invoke-direct {p0, v11}, Lcom/oppo/widget/OppoScroller;->viscousFluid(F)F

    move-result v11

    .line 317
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mStartX:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mDeltaX:F

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    .line 318
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mStartY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mDeltaY:F

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    .line 319
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    if-ne v0, v1, :cond_2

    .line 320
    iput-boolean v12, p0, Lcom/oppo/widget/OppoScroller;->mFinished:Z

    goto/16 :goto_2

    .line 325
    .end local v11           #x:F
    :cond_8
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 327
    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    iget v2, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mDeltaX:F

    iget v3, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    iget v4, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v3, v0

    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mDeltaY:F

    iget v4, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    iget v13, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    sub-int/2addr v4, v13

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoScroller;->startScroll(IIIII)V

    .line 328
    iput v14, p0, Lcom/oppo/widget/OppoScroller;->mMode:I

    move v0, v12

    .line 329
    goto/16 :goto_0

    .line 332
    :cond_9
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    .line 333
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    .line 334
    iput-boolean v12, p0, Lcom/oppo/widget/OppoScroller;->mFinished:Z

    goto/16 :goto_2

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .parameter "extend"

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/oppo/widget/OppoScroller;->timePassed()I

    move-result v0

    .line 563
    .local v0, passed:I
    add-int v1, v0, p1

    iput v1, p0, Lcom/oppo/widget/OppoScroller;->mDuration:I

    .line 564
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/oppo/widget/OppoScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoScroller;->mDurationReciprocal:F

    .line 565
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoScroller;->mFinished:Z

    .line 566
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 432
    const/4 v2, 0x1

    iput v2, p0, Lcom/oppo/widget/OppoScroller;->mMode:I

    .line 433
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/widget/OppoScroller;->mFinished:Z

    .line 435
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 437
    .local v1, velocity:F
    iput v1, p0, Lcom/oppo/widget/OppoScroller;->mVelocity:F

    .line 438
    const/high16 v2, 0x447a

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/oppo/widget/OppoScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/oppo/widget/OppoScroller;->mDuration:I

    .line 440
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/widget/OppoScroller;->mStartTime:J

    .line 441
    iput p1, p0, Lcom/oppo/widget/OppoScroller;->mStartX:I

    .line 442
    iput p2, p0, Lcom/oppo/widget/OppoScroller;->mStartY:I

    .line 444
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f80

    :goto_0
    iput v2, p0, Lcom/oppo/widget/OppoScroller;->mCoeffX:F

    .line 445
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    const/high16 v2, 0x3f80

    :goto_1
    iput v2, p0, Lcom/oppo/widget/OppoScroller;->mCoeffY:F

    .line 447
    mul-float v2, v1, v1

    const/high16 v3, 0x4000

    iget v4, p0, Lcom/oppo/widget/OppoScroller;->mDeceleration:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 449
    .local v0, totalDistance:I
    iput p5, p0, Lcom/oppo/widget/OppoScroller;->mMinX:I

    .line 450
    iput p6, p0, Lcom/oppo/widget/OppoScroller;->mMaxX:I

    .line 451
    iput p7, p0, Lcom/oppo/widget/OppoScroller;->mMinY:I

    .line 452
    iput p8, p0, Lcom/oppo/widget/OppoScroller;->mMaxY:I

    .line 455
    int-to-float v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoScroller;->mCoeffX:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    .line 457
    iget v2, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    iget v3, p0, Lcom/oppo/widget/OppoScroller;->mMaxX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    .line 458
    iget v2, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    iget v3, p0, Lcom/oppo/widget/OppoScroller;->mMinX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    .line 460
    int-to-float v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoScroller;->mCoeffY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    .line 462
    iget v2, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    iget v3, p0, Lcom/oppo/widget/OppoScroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    .line 463
    iget v2, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    iget v3, p0, Lcom/oppo/widget/OppoScroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    .line 464
    return-void

    .line 444
    .end local v0           #totalDistance:I
    :cond_0
    int-to-float v2, p3

    div-float/2addr v2, v1

    goto :goto_0

    .line 445
    :cond_1
    int-to-float v2, p4

    div-float/2addr v2, v1

    goto :goto_1
.end method

.method public fling(IIIIIIIIII)V
    .locals 10
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"
    .parameter "springOffsetX"
    .parameter "springOffsetY"

    .prologue
    .line 492
    sub-int v6, p5, p9

    add-int v7, p6, p9

    sub-int v8, p7, p10

    add-int v9, p8, p10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v9}, Lcom/oppo/widget/OppoScroller;->fling(IIIIIIII)V

    .line 494
    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/widget/OppoScroller;->mDeltaY:F

    iput v1, p0, Lcom/oppo/widget/OppoScroller;->mDeltaX:F

    .line 495
    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    move/from16 v0, p6

    if-gt v1, v0, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    if-ge v1, p5, :cond_1

    .line 496
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/widget/OppoScroller;->mMode:I

    .line 497
    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    move/from16 v0, p6

    if-le v1, v0, :cond_4

    .line 498
    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    sub-int v1, p6, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oppo/widget/OppoScroller;->mDeltaX:F

    .line 504
    :cond_1
    :goto_0
    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    move/from16 v0, p8

    if-gt v1, v0, :cond_2

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    move/from16 v0, p7

    if-ge v1, v0, :cond_3

    .line 505
    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/widget/OppoScroller;->mMode:I

    .line 506
    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    move/from16 v0, p8

    if-le v1, v0, :cond_5

    .line 507
    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    sub-int v1, p8, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oppo/widget/OppoScroller;->mDeltaY:F

    .line 512
    :cond_3
    :goto_1
    return-void

    .line 500
    :cond_4
    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    sub-int v1, p5, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oppo/widget/OppoScroller;->mDeltaX:F

    goto :goto_0

    .line 509
    :cond_5
    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    sub-int v1, p7, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oppo/widget/OppoScroller;->mDeltaY:F

    goto :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0
    .parameter "finished"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/oppo/widget/OppoScroller;->mFinished:Z

    .line 127
    return-void
.end method

.method public final getCurrVX()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrVX:I

    return v0
.end method

.method public final getCurrVY()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrVY:I

    return v0
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 164
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mVelocity:F

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mDeceleration:F

    invoke-virtual {p0}, Lcom/oppo/widget/OppoScroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/oppo/widget/OppoScroller;->mFinished:Z

    return v0
.end method

.method public setCount(I)V
    .locals 0
    .parameter "n"

    .prologue
    .line 376
    iput p1, p0, Lcom/oppo/widget/OppoScroller;->mCount:I

    .line 377
    return-void
.end method

.method public setFinalX(I)V
    .locals 2
    .parameter "newX"

    .prologue
    .line 585
    iput p1, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    .line 586
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mDeltaX:F

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoScroller;->mFinished:Z

    .line 588
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .parameter "newY"

    .prologue
    .line 598
    iput p1, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    .line 599
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    iget v1, p0, Lcom/oppo/widget/OppoScroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mDeltaY:F

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoScroller;->mFinished:Z

    .line 601
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .parameter "friction"

    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mDeceleration:F

    .line 613
    return-void
.end method

.method public startGalleryList(IIIII)V
    .locals 1
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 369
    invoke-virtual/range {p0 .. p5}, Lcom/oppo/widget/OppoScroller;->startScroll(IIIII)V

    .line 370
    const/4 v0, 0x5

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mMode:I

    .line 371
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCount:I

    .line 372
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 354
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoScroller;->startScroll(IIIII)V

    .line 355
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 3
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    .line 393
    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mMode:I

    .line 394
    iput-boolean v0, p0, Lcom/oppo/widget/OppoScroller;->mFinished:Z

    .line 395
    iput p5, p0, Lcom/oppo/widget/OppoScroller;->mDuration:I

    .line 396
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/widget/OppoScroller;->mStartTime:J

    .line 397
    iput p1, p0, Lcom/oppo/widget/OppoScroller;->mStartX:I

    .line 398
    iput p2, p0, Lcom/oppo/widget/OppoScroller;->mStartY:I

    .line 399
    add-int v0, p1, p3

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mFinalX:I

    .line 400
    add-int v0, p2, p4

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mFinalY:I

    .line 401
    int-to-float v0, p3

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mDeltaX:F

    .line 402
    int-to-float v0, p4

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mDeltaY:F

    .line 403
    iget v0, p0, Lcom/oppo/widget/OppoScroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mDurationReciprocal:F

    .line 405
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mViscousFluidScale:F

    .line 407
    iput v2, p0, Lcom/oppo/widget/OppoScroller;->mViscousFluidNormalize:F

    .line 408
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mViscousFluidNormalize:F

    .line 409
    return-void
.end method

.method public startScrollList(IIIII)V
    .locals 2
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    const/high16 v1, 0x3f80

    .line 359
    invoke-virtual/range {p0 .. p5}, Lcom/oppo/widget/OppoScroller;->startScroll(IIIII)V

    .line 360
    const/4 v0, 0x4

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mMode:I

    .line 361
    iput v1, p0, Lcom/oppo/widget/OppoScroller;->mViscousFluidNormalize:F

    .line 362
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoScroller;->getInterpolation(F)F

    move-result v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mViscousFluidNormalize:F

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mLastCurrY:I

    .line 364
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoScroller;->mCount:I

    .line 365
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 574
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oppo/widget/OppoScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
