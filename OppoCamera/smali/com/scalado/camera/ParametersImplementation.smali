.class Lcom/scalado/camera/ParametersImplementation;
.super Lcom/scalado/camera/ParametersBase;
.source "ParametersImplementation.java"

# interfaces
.implements Lcom/scalado/camera/FeatureCamera$Parameters;


# static fields
.field private static final ERR_CAM_ID_MISSING:Ljava/lang/String; = "specify camera ID"

.field private static final KEY_CAPTURE_BURST_CAPTURES:Ljava/lang/String; = "capture-burst-captures"

.field private static final KEY_CAPTURE_BURST_EXPOSURES:Ljava/lang/String; = "capture-burst-exposures"

.field private static final KEY_CAPTURE_BURST_INTERVAL:Ljava/lang/String; = "capture-burst-interval"

.field private static final KEY_CAPTURE_BURST_RETROACTIVE:Ljava/lang/String; = "capture-burst-retroactive"

.field private static final KEY_CAPTURE_BURST_TOTAL:Ljava/lang/String; = "num-snaps-per-shutter"

.field private static final KEY_CAPTURE_ISO:Ljava/lang/String; = "iso"

.field private static final KEY_CAPTURE_PANORAMA:Ljava/lang/String; = "continuous-temporal-bracketing"

.field private static final KEY_CAPTURE_ZSL:Ljava/lang/String; = "capture-zsl"

.field private static final SUPPORTED_SUFFIX:Ljava/lang/String; = "-supported"

.field private static final TAG:Ljava/lang/String; = "QuicParams"


# instance fields
.field private mBurstInterval:I

.field private mCapturesInBurst:I

.field private mExposures:[I

.field private mForceSWBurst:Z

.field private mPanoramaMode:Z

.field private mZslMode:Z


# direct methods
.method protected constructor <init>(Landroid/hardware/Camera;)V
    .locals 3
    .parameter "camera"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/scalado/camera/ParametersBase;-><init>(Landroid/hardware/Camera;)V

    .line 44
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/scalado/camera/ParametersImplementation;->mExposures:[I

    .line 45
    iput v2, p0, Lcom/scalado/camera/ParametersImplementation;->mCapturesInBurst:I

    .line 46
    const/16 v0, 0x64

    iput v0, p0, Lcom/scalado/camera/ParametersImplementation;->mBurstInterval:I

    .line 47
    iput-boolean v1, p0, Lcom/scalado/camera/ParametersImplementation;->mForceSWBurst:Z

    .line 48
    iput-boolean v1, p0, Lcom/scalado/camera/ParametersImplementation;->mZslMode:Z

    .line 49
    iput-boolean v1, p0, Lcom/scalado/camera/ParametersImplementation;->mPanoramaMode:Z

    .line 53
    return-void
.end method


# virtual methods
.method public getBurstCaptureInterval()I
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->isBurstIntervalSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "capture-burst-interval"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, string:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 176
    .end local v0           #string:Ljava/lang/String;
    :goto_0
    return v1

    .line 174
    .restart local v0       #string:Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 176
    .end local v0           #string:Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcom/scalado/camera/ParametersImplementation;->mBurstInterval:I

    goto :goto_0
.end method

.method public getBurstRetroactiveCaptures()I
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "capture-burst-retroactive"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, string:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getBurstTotalCaptures()I
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getMaxBurstTotalCaptures()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 116
    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "num-snaps-per-shutter"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/scalado/camera/ParametersImplementation;->mCapturesInBurst:I

    goto :goto_0
.end method

.method public getExposureBracketing()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->isExposureBracketingSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    iget-object v4, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "capture-burst-exposures"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, string:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    invoke-virtual {p0, v2}, Lcom/scalado/camera/ParametersImplementation;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 215
    .end local v2           #string:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 205
    .restart local v2       #string:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getExposureCompensation()I

    move-result v0

    .line 207
    .local v0, expComp:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    .end local v0           #expComp:I
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2           #string:Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/scalado/camera/ParametersImplementation;->mExposures:[I

    array-length v4, v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/scalado/camera/ParametersImplementation;->mExposures:[I

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_0

    aget v3, v5, v4

    .line 213
    .local v3, value:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getIso()I
    .locals 4

    .prologue
    .line 326
    const-string v3, "iso"

    invoke-virtual {p0, v3}, Lcom/scalado/camera/ParametersImplementation;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, isoSpeed:Ljava/lang/String;
    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 331
    const/4 v1, 0x0

    .line 340
    :goto_0
    return v1

    .line 334
    :cond_0
    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, iso:I
    goto :goto_0

    .line 335
    .end local v1           #iso:I
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMaxBurstRetroactiveCaptures()I
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "capture-burst-retroactive-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, string:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 166
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxBurstTotalCaptures()I
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "capture-burst-captures-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, string:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getSupportedIso()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    const-string v5, "iso-values"

    invoke-virtual {p0, v5}, Lcom/scalado/camera/ParametersImplementation;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, isoSpeeds:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/scalado/camera/ParametersImplementation;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 297
    .local v2, isoSpeedsSplit:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    .local v0, isoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 300
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 318
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 319
    const/4 v0, 0x0

    .line 321
    .end local v0           #isoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    return-object v0

    .line 300
    .restart local v0       #isoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 303
    .local v3, s:Ljava/lang/String;
    const-string v6, "auto"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 305
    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_3
    :try_start_0
    new-instance v4, Ljava/lang/Integer;

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 309
    .local v4, value:Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    .end local v4           #value:Ljava/lang/Integer;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public getZeroShutterLag()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/scalado/camera/ParametersImplementation;->mZslMode:Z

    return v0
.end method

.method public isBurstIntervalSupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v2, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "capture-burst-interval-values"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, string:Ljava/lang/String;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isExposureBracketingSupported()Z
    .locals 3

    .prologue
    .line 242
    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "capture-burst-exposures-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, string:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 245
    const/4 v1, 0x1

    .line 247
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSWBurstForced()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/scalado/camera/ParametersImplementation;->mForceSWBurst:Z

    return v0
.end method

.method public isZeroShutterLagSupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 84
    const-string v2, "QuicParams"

    const-string v3, "specify camera ID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v2, "capture-zsl-values"

    invoke-virtual {p0, v2}, Lcom/scalado/camera/ParametersImplementation;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, string:Ljava/lang/String;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isZeroShutterLagSupported(I)Z
    .locals 2
    .parameter "cameraID"

    .prologue
    .line 90
    const-string v0, "QuicParams"

    const-string v1, "use function in CameraHolder instead of this one"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public setBurstCaptureInterval(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 182
    iput p1, p0, Lcom/scalado/camera/ParametersImplementation;->mBurstInterval:I

    .line 183
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->isBurstIntervalSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "capture-burst-interval"

    invoke-virtual {p0, v0, p1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;I)V

    .line 186
    :cond_0
    return-void
.end method

.method public setBurstRetroactiveCaptures(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 147
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getMaxBurstRetroactiveCaptures()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value outside valid range. Value was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string v2, " Valid range is: [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getMaxBurstRetroactiveCaptures()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getMaxBurstRetroactiveCaptures()I

    move-result v0

    if-lez v0, :cond_2

    .line 155
    const-string v0, "capture-burst-retroactive"

    invoke-virtual {p0, v0, p1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;I)V

    .line 157
    :cond_2
    return-void
.end method

.method public setBurstTotalCaptures(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 125
    iput p1, p0, Lcom/scalado/camera/ParametersImplementation;->mCapturesInBurst:I

    .line 126
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getMaxBurstTotalCaptures()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 127
    const-string v0, "num-snaps-per-shutter"

    invoke-virtual {p0, v0, p1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;I)V

    .line 130
    :cond_0
    return-void
.end method

.method public varargs setExposureBracketing([I)V
    .locals 5
    .parameter "exposures"

    .prologue
    const/4 v4, 0x0

    .line 221
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 222
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 223
    const-string v3, "exposures may not be null or have length 0"

    .line 222
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_1
    iput-object p1, p0, Lcom/scalado/camera/ParametersImplementation;->mExposures:[I

    .line 228
    invoke-virtual {p0, v4}, Lcom/scalado/camera/ParametersImplementation;->setBurstRetroactiveCaptures(I)V

    .line 230
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->isExposureBracketingSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    const-string v1, ""

    .line 232
    .local v1, string:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_3

    .line 236
    const-string v2, "capture-burst-exposures"

    invoke-virtual {p0, v2, v1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v0           #i:I
    .end local v1           #string:Ljava/lang/String;
    :cond_2
    return-void

    .line 234
    .restart local v0       #i:I
    .restart local v1       #string:Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setForcedSWBurst(Z)V
    .locals 0
    .parameter "forced"

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/scalado/camera/ParametersImplementation;->mForceSWBurst:Z

    .line 259
    return-void
.end method

.method public setIso(I)V
    .locals 2
    .parameter

    .prologue
    .line 345
    sparse-switch p1, :sswitch_data_0

    .line 365
    const-string v0, "auto"

    .line 368
    :goto_0
    const-string v1, "iso"

    invoke-virtual {p0, v1, v0}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void

    .line 360
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ISO"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 345
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_0
        0x320 -> :sswitch_0
        0x640 -> :sswitch_0
    .end sparse-switch
.end method

.method public setPanoramaMode(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/scalado/camera/ParametersImplementation;->mPanoramaMode:Z

    if-ne p1, v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 104
    :cond_0
    if-eqz p1, :cond_1

    .line 105
    const-string v0, "continuous-temporal-bracketing"

    const-string v1, "enable"

    invoke-virtual {p0, v0, v1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_1
    iput-boolean p1, p0, Lcom/scalado/camera/ParametersImplementation;->mPanoramaMode:Z

    goto :goto_0

    .line 107
    :cond_1
    const-string v0, "continuous-temporal-bracketing"

    const-string v1, "disable"

    invoke-virtual {p0, v0, v1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setZeroShutterLag(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 66
    const-string v0, "QuicParams"

    const-string v1, "specify camera ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-eqz p1, :cond_0

    .line 68
    const-string v0, "capture-zsl"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;I)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "capture-zsl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setZeroShutterLag(ZI)V
    .locals 0
    .parameter "value"
    .parameter "cameraID"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/scalado/camera/ParametersImplementation;->mZslMode:Z

    .line 80
    return-void
.end method
