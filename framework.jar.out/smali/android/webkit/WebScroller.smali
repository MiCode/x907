.class public Landroid/webkit/WebScroller;
.super Ljava/lang/Object;
.source "WebScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebScroller$MagneticWebScroller;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

.field private mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "WebScroller"

    sput-object v0, Landroid/webkit/WebScroller;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"

    .prologue
    const v0, 0x3e23d70a

    .line 66
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/webkit/WebScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"
    .parameter "bounceCoefficientX"
    .parameter "bounceCoefficientY"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Landroid/webkit/WebScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    new-instance v0, Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-direct {v0}, Landroid/webkit/WebScroller$MagneticWebScroller;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    .line 84
    new-instance v0, Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-direct {v0}, Landroid/webkit/WebScroller$MagneticWebScroller;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    .line 85
    invoke-static {p1}, Landroid/webkit/WebScroller$MagneticWebScroller;->initializeFromContext(Landroid/content/Context;)V

    .line 87
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v0, p3}, Landroid/webkit/WebScroller$MagneticWebScroller;->setBounceCoefficient(F)V

    .line 88
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v0, p4}, Landroid/webkit/WebScroller$MagneticWebScroller;->setBounceCoefficient(F)V

    .line 89
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v0}, Landroid/webkit/WebScroller$MagneticWebScroller;->finish()V

    .line 460
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v0}, Landroid/webkit/WebScroller$MagneticWebScroller;->finish()V

    .line 461
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/webkit/WebScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 251
    const/4 v6, 0x0

    .line 297
    :goto_0
    return v6

    .line 254
    :cond_0
    iget v6, p0, Landroid/webkit/WebScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 297
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 256
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 259
    .local v4, time:J
    iget-object v6, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget-wide v6, v6, Landroid/webkit/WebScroller$MagneticWebScroller;->mStartTime:J

    sub-long v1, v4, v6

    .line 261
    .local v1, elapsedTime:J
    iget-object v6, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget v0, v6, Landroid/webkit/WebScroller$MagneticWebScroller;->mDuration:I

    .line 262
    .local v0, duration:I
    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    .line 263
    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 265
    .local v3, q:F
    iget-object v6, p0, Landroid/webkit/WebScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    .line 266
    invoke-static {v3}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v3

    .line 270
    :goto_2
    iget-object v6, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v6, v3}, Landroid/webkit/WebScroller$MagneticWebScroller;->updateScroll(F)V

    .line 271
    iget-object v6, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v6, v3}, Landroid/webkit/WebScroller$MagneticWebScroller;->updateScroll(F)V

    goto :goto_1

    .line 268
    :cond_2
    iget-object v6, p0, Landroid/webkit/WebScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    .line 273
    .end local v3           #q:F
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebScroller;->abortAnimation()V

    goto :goto_1

    .line 278
    .end local v0           #duration:I
    .end local v1           #elapsedTime:J
    .end local v4           #time:J
    :pswitch_1
    iget-object v6, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget-boolean v6, v6, Landroid/webkit/WebScroller$MagneticWebScroller;->mFinished:Z

    if-nez v6, :cond_4

    .line 279
    iget-object v6, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v6}, Landroid/webkit/WebScroller$MagneticWebScroller;->update()Z

    move-result v6

    if-nez v6, :cond_4

    .line 280
    iget-object v6, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v6}, Landroid/webkit/WebScroller$MagneticWebScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 281
    iget-object v6, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v6}, Landroid/webkit/WebScroller$MagneticWebScroller;->finish()V

    .line 286
    :cond_4
    iget-object v6, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget-boolean v6, v6, Landroid/webkit/WebScroller$MagneticWebScroller;->mFinished:Z

    if-nez v6, :cond_1

    .line 287
    iget-object v6, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v6}, Landroid/webkit/WebScroller$MagneticWebScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    .line 288
    iget-object v6, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v6}, Landroid/webkit/WebScroller$MagneticWebScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 289
    iget-object v6, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v6}, Landroid/webkit/WebScroller$MagneticWebScroller;->finish()V

    goto :goto_1

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .parameter "extend"

    .prologue
    .line 207
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v0, p1}, Landroid/webkit/WebScroller$MagneticWebScroller;->extendDuration(I)V

    .line 208
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v0, p1}, Landroid/webkit/WebScroller$MagneticWebScroller;->extendDuration(I)V

    .line 209
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 360
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/webkit/WebScroller;->fling(IIIIIIIIII)V

    .line 361
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"
    .parameter "overX"
    .parameter "overY"

    .prologue
    .line 392
    const/4 v0, 0x1

    iput v0, p0, Landroid/webkit/WebScroller;->mMode:I

    .line 393
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebScroller$MagneticWebScroller;->fling(IIIII)V

    .line 394
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebScroller$MagneticWebScroller;->fling(IIIII)V

    .line 395
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .parameter "finished"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget-object v1, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    iput-boolean p1, v1, Landroid/webkit/WebScroller$MagneticWebScroller;->mFinished:Z

    iput-boolean p1, v0, Landroid/webkit/WebScroller$MagneticWebScroller;->mFinished:Z

    .line 111
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget v1, v1, Landroid/webkit/WebScroller$MagneticWebScroller;->mCurrVelocity:F

    iget-object v2, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget v2, v2, Landroid/webkit/WebScroller$MagneticWebScroller;->mCurrVelocity:F

    mul-float v0, v1, v2

    .line 139
    .local v0, squaredNorm:F
    iget-object v1, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget v1, v1, Landroid/webkit/WebScroller$MagneticWebScroller;->mCurrVelocity:F

    iget-object v2, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget v2, v2, Landroid/webkit/WebScroller$MagneticWebScroller;->mCurrVelocity:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 140
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget v0, v0, Landroid/webkit/WebScroller$MagneticWebScroller;->mCurrentPosition:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget v0, v0, Landroid/webkit/WebScroller$MagneticWebScroller;->mCurrentPosition:I

    return v0
.end method

.method public final getDuration()I
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget v0, v0, Landroid/webkit/WebScroller$MagneticWebScroller;->mDuration:I

    iget-object v1, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget v1, v1, Landroid/webkit/WebScroller$MagneticWebScroller;->mDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget v0, v0, Landroid/webkit/WebScroller$MagneticWebScroller;->mFinal:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget v0, v0, Landroid/webkit/WebScroller$MagneticWebScroller;->mFinal:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget v0, v0, Landroid/webkit/WebScroller$MagneticWebScroller;->mStart:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget v0, v0, Landroid/webkit/WebScroller$MagneticWebScroller;->mStart:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget-boolean v0, v0, Landroid/webkit/WebScroller$MagneticWebScroller;->mFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget-boolean v0, v0, Landroid/webkit/WebScroller$MagneticWebScroller;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget-boolean v0, v0, Landroid/webkit/WebScroller$MagneticWebScroller;->mFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    #getter for: Landroid/webkit/WebScroller$MagneticWebScroller;->mState:I
    invoke-static {v0}, Landroid/webkit/WebScroller$MagneticWebScroller;->access$000(Landroid/webkit/WebScroller$MagneticWebScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget-boolean v0, v0, Landroid/webkit/WebScroller$MagneticWebScroller;->mFinished:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    #getter for: Landroid/webkit/WebScroller$MagneticWebScroller;->mState:I
    invoke-static {v0}, Landroid/webkit/WebScroller$MagneticWebScroller;->access$000(Landroid/webkit/WebScroller$MagneticWebScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .parameter "startX"
    .parameter "finalX"
    .parameter "overX"

    .prologue
    .line 411
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebScroller$MagneticWebScroller;->notifyEdgeReached(III)V

    .line 412
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .parameter "startY"
    .parameter "finalY"
    .parameter "overY"

    .prologue
    .line 428
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebScroller$MagneticWebScroller;->notifyEdgeReached(III)V

    .line 429
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .parameter "newX"

    .prologue
    .line 225
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v0, p1}, Landroid/webkit/WebScroller$MagneticWebScroller;->setFinalPosition(I)V

    .line 226
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .parameter "newY"

    .prologue
    .line 242
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v0, p1}, Landroid/webkit/WebScroller$MagneticWebScroller;->setFinalPosition(I)V

    .line 243
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .parameter "startX"
    .parameter "startY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    const/4 v2, 0x1

    .line 350
    iput v2, p0, Landroid/webkit/WebScroller;->mMode:I

    .line 353
    iget-object v3, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v3, p1, p3, p4}, Landroid/webkit/WebScroller$MagneticWebScroller;->springback(III)Z

    move-result v0

    .line 354
    .local v0, spingbackX:Z
    iget-object v3, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v3, p2, p5, p6}, Landroid/webkit/WebScroller$MagneticWebScroller;->springback(III)Z

    move-result v1

    .line 355
    .local v1, spingbackY:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 315
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebScroller;->startScroll(IIIII)V

    .line 316
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 332
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebScroller;->mMode:I

    .line 333
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/webkit/WebScroller$MagneticWebScroller;->startScroll(III)V

    .line 334
    iget-object v0, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/webkit/WebScroller$MagneticWebScroller;->startScroll(III)V

    .line 335
    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    .line 471
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 472
    .local v2, time:J
    iget-object v4, p0, Landroid/webkit/WebScroller;->mScrollerX:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget-wide v4, v4, Landroid/webkit/WebScroller$MagneticWebScroller;->mStartTime:J

    iget-object v6, p0, Landroid/webkit/WebScroller;->mScrollerY:Landroid/webkit/WebScroller$MagneticWebScroller;

    iget-wide v6, v6, Landroid/webkit/WebScroller$MagneticWebScroller;->mStartTime:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 473
    .local v0, startTime:J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
