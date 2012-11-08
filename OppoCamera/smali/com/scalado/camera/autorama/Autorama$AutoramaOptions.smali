.class public Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
.super Ljava/lang/Object;
.source "Autorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoramaOptions"
.end annotation


# instance fields
.field private mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

.field private mColorCompensation:Z

.field private mDetectDirectionAutomatically:Z

.field private mIntensityCompensation:Z

.field private mIsLockedHorizontal:Z

.field private mIsLockedVertical:Z

.field private mMaximumDeviation:I

.field private mMinimumDelta:I

.field private mNumberOfImages:I

.field private mOverlap:I

.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 274
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 275
    const/16 v0, 0x2d

    iput v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I

    .line 276
    const/16 v0, 0x64

    iput v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I

    .line 277
    const/16 v0, 0xa

    iput v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMinimumDelta:I

    .line 278
    iput-boolean v2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z

    .line 279
    iput v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    .line 280
    sget-object v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->MULTILEVEL_NORMAL:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    .line 281
    iput-boolean v2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z

    .line 282
    iput-boolean v2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z

    .line 284
    iput-boolean v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIsLockedHorizontal:Z

    .line 285
    iput-boolean v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIsLockedVertical:Z

    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I
    .locals 1
    .parameter

    .prologue
    .line 275
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I

    return v0
.end method

.method static synthetic access$1(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z
    .locals 1
    .parameter

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z

    return v0
.end method

.method static synthetic access$2(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I
    .locals 1
    .parameter

    .prologue
    .line 277
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMinimumDelta:I

    return v0
.end method

.method static synthetic access$3(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z
    .locals 1
    .parameter

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIsLockedHorizontal:Z

    return v0
.end method

.method static synthetic access$4(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z
    .locals 1
    .parameter

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIsLockedVertical:Z

    return v0
.end method

.method static synthetic access$5(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I
    .locals 1
    .parameter

    .prologue
    .line 276
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I

    return v0
.end method

.method static synthetic access$6(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I
    .locals 1
    .parameter

    .prologue
    .line 279
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    return v0
.end method

.method static synthetic access$7(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Lcom/scalado/caps/autorama/Stitcher$BlendMode;
    .locals 1
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    return-object v0
.end method

.method static synthetic access$8(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z
    .locals 1
    .parameter

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z

    return v0
.end method

.method static synthetic access$9(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z
    .locals 1
    .parameter

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z

    return v0
.end method


# virtual methods
.method public getBlendMode()Lcom/scalado/caps/autorama/Stitcher$BlendMode;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    return-object v0
.end method

.method public getBlendModeOptionColorCompensation()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z

    return v0
.end method

.method public getBlendModeOptionIntensityCompensation()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z

    return v0
.end method

.method public getDirectionThreshold()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMinimumDelta:I

    return v0
.end method

.method public getMaximumDeviation()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I

    return v0
.end method

.method public getNumberOfImages()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    return v0
.end method

.method public getOverlap()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I

    return v0
.end method

.method public lockDirection(Lcom/scalado/caps/autorama/Direction;)V
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v0, 0x0

    .line 298
    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 310
    :goto_0
    return-void

    .line 301
    :cond_0
    if-nez p1, :cond_1

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Direction must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    iput-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIsLockedHorizontal:Z

    .line 306
    iput-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIsLockedVertical:Z

    .line 308
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z

    .line 309
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v0, p1}, Lcom/scalado/camera/autorama/Autorama;->access$1(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Direction;)V

    goto :goto_0
.end method

.method public lockHorizontal()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 322
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 330
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->access$1(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Direction;)V

    .line 327
    iput-boolean v2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z

    .line 328
    iput-boolean v2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIsLockedHorizontal:Z

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIsLockedVertical:Z

    goto :goto_0
.end method

.method public lockVertical()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 342
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 350
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->access$1(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Direction;)V

    .line 347
    iput-boolean v2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIsLockedHorizontal:Z

    .line 349
    iput-boolean v2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIsLockedVertical:Z

    goto :goto_0
.end method

.method public setBlendMode(Lcom/scalado/caps/autorama/Stitcher$BlendMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BlendMode must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_0
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    .line 464
    return-void
.end method

.method public setBlendModeOptions(ZZ)V
    .locals 0
    .parameter "intensityCompensation"
    .parameter "colorCompensation"

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z

    .line 495
    iput-boolean p2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z

    .line 496
    return-void
.end method

.method public setDirectionThreshold(I)V
    .locals 2
    .parameter "threshold"

    .prologue
    .line 436
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold must be in range [1, 99]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1
    iput p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMinimumDelta:I

    .line 440
    return-void
.end method

.method public setMaximumDeviation(I)V
    .locals 2
    .parameter "deviation"

    .prologue
    .line 415
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum deviation must be in range [0, 100]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_1
    iput p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I

    .line 419
    return-void
.end method

.method public setNumberOfImages(I)V
    .locals 2
    .parameter "numberOfImages"

    .prologue
    .line 363
    if-gez p1, :cond_0

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numberOfImages must be positive or 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    iput p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    .line 368
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$2(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v0

    iget v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    if-lt v0, v1, :cond_1

    .line 369
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->stop(Z)V

    .line 371
    :cond_1
    return-void
.end method

.method public setOverlap(I)V
    .locals 2
    .parameter "overlap"

    .prologue
    .line 389
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-le p1, v0, :cond_1

    .line 390
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Overlap must be in range [10, 90]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_1
    iput p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I

    .line 393
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    const/4 v1, 0x0

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->access$3(Lcom/scalado/camera/autorama/Autorama;Landroid/graphics/Point;)V

    .line 394
    return-void
.end method
