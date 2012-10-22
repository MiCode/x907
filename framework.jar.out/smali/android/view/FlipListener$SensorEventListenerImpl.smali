.class Landroid/view/FlipListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "FlipListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FlipListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorEventListenerImpl"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ACCELERATING_LOWPASS_ALPHA:F = 0.0f

.field private static final ACCELERATING_TIME_CONSTANT_MS:I = 0x7d0

.field private static final MAX_DETECT_DURATION:J = 0x1388L

.field private static final MAX_DEVIATION_FROM_GRAVITY:F = 1.5f

.field private static final MAX_TILT:I = 0x4b

.field private static final MAX_TILT_DISTRUST:I = 0x3

.field private static final MIN_ABS_ACCELERATION:F = 1.5f

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SAMPLING_PERIOD_MS:I = 0xc8

.field private static final _DATA_X:I = 0x0

.field private static final _DATA_Y:I = 0x1

.field private static final _DATA_Z:I = 0x2


# instance fields
.field private mAccelerationDistrust:I

.field private mDetectDuration:J

.field private mFlipListener:Landroid/view/FlipListener;

.field private mLastDetectTime:J

.field private mLatestTiltAngle:F

.field private mTiltAngle:F

.field private mTiltDistrust:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const/16 v0, 0x7d0

    invoke-static {v0}, Landroid/view/FlipListener$SensorEventListenerImpl;->computeLowpassAlpha(I)F

    move-result v0

    sput v0, Landroid/view/FlipListener$SensorEventListenerImpl;->ACCELERATING_LOWPASS_ALPHA:F

    return-void
.end method

.method public constructor <init>(Landroid/view/FlipListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 178
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput v1, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    .line 168
    iput v1, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mTiltDistrust:I

    .line 170
    iput v0, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mLatestTiltAngle:F

    .line 172
    iput v0, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mTiltAngle:F

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mLastDetectTime:J

    .line 176
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mDetectDuration:J

    .line 179
    iput-object p1, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mFlipListener:Landroid/view/FlipListener;

    .line 180
    return-void
.end method

.method private checkDetectTimeOver()Z
    .locals 4

    .prologue
    .line 251
    iget-wide v0, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mDetectDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mLastDetectTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mDetectDuration:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkFullyTilted(F)V
    .locals 2
    .parameter "absoluteTilt"

    .prologue
    .line 292
    const/high16 v0, 0x4296

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 293
    iget v0, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mTiltDistrust:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 294
    iget v0, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mTiltDistrust:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mTiltDistrust:I

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mTiltDistrust:I

    goto :goto_0
.end method

.method private static computeLowpassAlpha(I)F
    .locals 2
    .parameter "timeConstantMs"

    .prologue
    .line 183
    const/high16 v0, 0x4348

    add-int/lit16 v1, p0, 0xc8

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private handleAccelerationDistrust(F)V
    .locals 2
    .parameter "deviation"

    .prologue
    .line 265
    const/high16 v0, 0x3fc0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 266
    iget v0, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 267
    iget v0, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget v0, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    if-lez v0, :cond_0

    .line 270
    iget v0, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    goto :goto_0
.end method

.method private lowpassFilter(FFF)F
    .locals 2
    .parameter "newValue"
    .parameter "oldValue"
    .parameter "alpha"

    .prologue
    .line 314
    mul-float v0, p3, p1

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p3

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private tiltAngle(FF)F
    .locals 2
    .parameter "z"
    .parameter "magnitude"

    .prologue
    .line 306
    div-float v0, p1, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    return v0
.end method

.method private vectorMagnitude(FFF)F
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 310
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 241
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 193
    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v11, v10

    .line 194
    .local v7, x:F
    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v11, v6

    .line 195
    .local v8, y:F
    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x2

    aget v9, v11, v12

    .line 196
    .local v9, z:F
    invoke-direct {p0, v7, v8, v9}, Landroid/view/FlipListener$SensorEventListenerImpl;->vectorMagnitude(FFF)F

    move-result v4

    .line 197
    .local v4, magnitude:F
    const v11, 0x411ce80a

    sub-float v11, v4, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 199
    .local v2, deviation:F
    invoke-direct {p0, v2}, Landroid/view/FlipListener$SensorEventListenerImpl;->handleAccelerationDistrust(F)V

    .line 200
    const/high16 v11, 0x3fc0

    cmpg-float v11, v4, v11

    if-gez v11, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const/high16 v1, 0x3f80

    .line 207
    .local v1, alpha:F
    iget v11, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    if-lez v11, :cond_2

    .line 208
    sget v1, Landroid/view/FlipListener$SensorEventListenerImpl;->ACCELERATING_LOWPASS_ALPHA:F

    .line 210
    :cond_2
    invoke-direct {p0, v9, v4}, Landroid/view/FlipListener$SensorEventListenerImpl;->tiltAngle(FF)F

    move-result v5

    .line 211
    .local v5, newTiltAngle:F
    iget v11, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mLatestTiltAngle:F

    invoke-direct {p0, v5, v11, v1}, Landroid/view/FlipListener$SensorEventListenerImpl;->lowpassFilter(FFF)F

    move-result v11

    iput v11, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mLatestTiltAngle:F

    .line 213
    iget v11, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mLatestTiltAngle:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 214
    .local v0, absoluteTilt:F
    invoke-direct {p0, v0}, Landroid/view/FlipListener$SensorEventListenerImpl;->checkFullyTilted(F)V

    .line 215
    iget v11, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mTiltDistrust:I

    const/4 v12, 0x3

    if-lt v11, v12, :cond_0

    .line 219
    iget v11, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mTiltAngle:F

    cmpl-float v11, v11, v13

    if-nez v11, :cond_3

    .line 220
    iget v11, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mLatestTiltAngle:F

    iput v11, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mTiltAngle:F

    .line 223
    :cond_3
    iget v11, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mTiltAngle:F

    cmpl-float v11, v11, v13

    if-lez v11, :cond_4

    iget v11, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mLatestTiltAngle:F

    cmpg-float v11, v11, v13

    if-ltz v11, :cond_5

    :cond_4
    iget v11, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mTiltAngle:F

    cmpg-float v11, v11, v13

    if-gez v11, :cond_7

    iget v11, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mLatestTiltAngle:F

    cmpl-float v11, v11, v13

    if-lez v11, :cond_7

    :cond_5
    move v3, v6

    .line 225
    .local v3, flipped:Z
    :goto_1
    if-eqz v3, :cond_6

    .line 226
    iget v11, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mLatestTiltAngle:F

    iput v11, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mTiltAngle:F

    .line 228
    invoke-direct {p0}, Landroid/view/FlipListener$SensorEventListenerImpl;->checkDetectTimeOver()Z

    move-result v11

    if-nez v11, :cond_6

    .line 229
    iget v11, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mLatestTiltAngle:F

    cmpl-float v11, v11, v13

    if-lez v11, :cond_8

    .line 230
    .local v6, toSky:Z
    :goto_2
    iget-object v10, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mFlipListener:Landroid/view/FlipListener;

    #calls: Landroid/view/FlipListener;->notifyFlipped(Z)V
    invoke-static {v10, v6}, Landroid/view/FlipListener;->access$000(Landroid/view/FlipListener;Z)V

    .line 234
    .end local v6           #toSky:Z
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mLastDetectTime:J

    goto :goto_0

    .end local v3           #flipped:Z
    :cond_7
    move v3, v10

    .line 223
    goto :goto_1

    .restart local v3       #flipped:Z
    :cond_8
    move v6, v10

    .line 229
    goto :goto_2
.end method

.method public setDetectOverTime(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 244
    iput-wide p1, p0, Landroid/view/FlipListener$SensorEventListenerImpl;->mDetectDuration:J

    .line 245
    return-void
.end method
