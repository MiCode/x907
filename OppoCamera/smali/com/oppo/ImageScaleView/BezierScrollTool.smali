.class public Lcom/oppo/ImageScaleView/BezierScrollTool;
.super Ljava/lang/Object;
.source "BezierScrollTool.java"


# instance fields
.field private bezier_distance:D

.field private bezier_duration:D

.field private bezier_start_Y:D

.field private bezier_start_time:D

.field private mFinished:Z

.field private mSpringCurrY:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide v2, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->mSpringCurrY:D

    .line 8
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->bezier_duration:D

    .line 10
    iput-wide v2, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->bezier_distance:D

    .line 12
    iput-wide v2, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->bezier_start_time:D

    .line 14
    iput-wide v2, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->bezier_start_Y:D

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->mFinished:Z

    return-void
.end method

.method private BezierEasing_out_quintic(D)D
    .locals 10
    .parameter "t"

    .prologue
    const-wide/high16 v8, 0x4010

    .line 41
    mul-double v2, p1, p1

    .line 42
    .local v2, ts:D
    mul-double v0, v2, p1

    .line 44
    .local v0, tc:D
    neg-double v4, v2

    mul-double/2addr v4, v2

    mul-double v6, v8, v0

    add-double/2addr v4, v6

    const-wide/high16 v6, -0x3fe8

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    mul-double v6, v8, p1

    add-double/2addr v4, v6

    return-wide v4
.end method

.method private springing()V
    .locals 8

    .prologue
    .line 28
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->bezier_start_time:D

    sub-double v2, v4, v6

    .line 30
    .local v2, time_pass:D
    iget-wide v4, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->bezier_duration:D

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 31
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->mFinished:Z

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-wide v4, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->bezier_duration:D

    div-double v4, v2, v4

    invoke-direct {p0, v4, v5}, Lcom/oppo/ImageScaleView/BezierScrollTool;->BezierEasing_out_quintic(D)D

    move-result-wide v0

    .line 36
    .local v0, range:D
    iget-wide v4, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->bezier_start_Y:D

    iget-wide v6, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->bezier_distance:D

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->mSpringCurrY:D

    goto :goto_0
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->mFinished:Z

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/oppo/ImageScaleView/BezierScrollTool;->springing()V

    .line 24
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public forceFinish()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->mFinished:Z

    .line 69
    return-void
.end method

.method public getSpringValue()D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->mSpringCurrY:D

    return-wide v0
.end method

.method public isFinish()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->mFinished:Z

    return v0
.end method

.method public startSpring(DDD)V
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "duration"

    .prologue
    const-wide/16 v1, 0x0

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->mFinished:Z

    .line 54
    cmpl-double v0, p1, v1

    if-nez v0, :cond_0

    cmpl-double v0, p3, v1

    if-nez v0, :cond_0

    cmpl-double v0, p5, v1

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->mFinished:Z

    .line 65
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-wide p5, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->bezier_duration:D

    .line 61
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->bezier_start_time:D

    .line 63
    iput-wide p1, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->bezier_start_Y:D

    .line 64
    sub-double v0, p3, p1

    iput-wide v0, p0, Lcom/oppo/ImageScaleView/BezierScrollTool;->bezier_distance:D

    goto :goto_0
.end method
