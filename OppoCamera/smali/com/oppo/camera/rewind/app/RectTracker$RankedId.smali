.class Lcom/oppo/camera/rewind/app/RectTracker$RankedId;
.super Ljava/lang/Object;
.source "RectTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RankedId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mImageIndex:I

.field mKnownRect:Z

.field mScore:F

.field mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RectTracker;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;IIFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    .locals 1
    .parameter
    .parameter "imageIndex"
    .parameter "id"
    .parameter "score"
    .parameter "trackedRect"

    .prologue
    .line 2192
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2193
    iput p2, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mImageIndex:I

    .line 2194
    iput p4, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mScore:F

    .line 2195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mKnownRect:Z

    .line 2196
    iput-object p5, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 2197
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;IIFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 2184
    invoke-direct/range {p0 .. p5}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IIFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    return-void
.end method

.method private constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;IIFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Z)V
    .locals 1
    .parameter
    .parameter "imageIndex"
    .parameter "id"
    .parameter "score"
    .parameter "trackedRect"
    .parameter "knownRect"

    .prologue
    .line 2200
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2201
    iput p2, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mImageIndex:I

    .line 2202
    iput p4, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mScore:F

    .line 2203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mKnownRect:Z

    .line 2204
    iput-object p5, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 2205
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;IIFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;ZLcom/oppo/camera/rewind/app/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 2184
    invoke-direct/range {p0 .. p6}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IIFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2184
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->isExactlyEqual(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2184
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2184
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->isGoodEnoughEqual(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z

    move-result v0

    return v0
.end method

.method private compareByBlink(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)I
    .locals 7
    .parameter "them"

    .prologue
    const/16 v6, 0x5a

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 2245
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->blink()I
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7300(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v0

    .line 2246
    .local v0, myBlink:I
    iget-object v5, p1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->blink()I
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7300(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v1

    .line 2248
    .local v1, theirBlink:I
    if-ne v0, v4, :cond_1

    if-ne v1, v4, :cond_1

    .line 2284
    :cond_0
    :goto_0
    return v2

    .line 2250
    :cond_1
    if-ne v0, v4, :cond_2

    move v2, v3

    .line 2251
    goto :goto_0

    .line 2252
    :cond_2
    if-ne v1, v4, :cond_3

    move v2, v4

    .line 2253
    goto :goto_0

    .line 2256
    :cond_3
    if-lt v0, v6, :cond_4

    if-ge v1, v6, :cond_0

    .line 2258
    :cond_4
    if-lt v0, v6, :cond_5

    move v2, v4

    .line 2259
    goto :goto_0

    .line 2260
    :cond_5
    if-lt v1, v6, :cond_6

    move v2, v3

    .line 2261
    goto :goto_0

    .line 2265
    :cond_6
    if-nez v0, :cond_7

    if-eqz v1, :cond_0

    .line 2267
    :cond_7
    if-nez v0, :cond_8

    move v2, v4

    .line 2268
    goto :goto_0

    .line 2269
    :cond_8
    if-nez v1, :cond_9

    move v2, v3

    .line 2270
    goto :goto_0

    .line 2274
    :cond_9
    sub-int v5, v0, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_0

    .line 2279
    if-ge v0, v1, :cond_a

    move v2, v3

    .line 2280
    goto :goto_0

    .line 2281
    :cond_a
    if-eq v0, v1, :cond_0

    move v2, v4

    .line 2284
    goto :goto_0
.end method

.method private compareBySmile(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)I
    .locals 3
    .parameter "them"

    .prologue
    .line 2289
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->smile()I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v0

    .line 2290
    .local v0, mySmile:I
    iget-object v2, p1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->smile()I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v1

    .line 2293
    .local v1, theirSmile:I
    if-ge v0, v1, :cond_0

    .line 2294
    const/4 v2, -0x1

    .line 2298
    :goto_0
    return v2

    .line 2295
    :cond_0
    if-ne v0, v1, :cond_1

    .line 2296
    const/4 v2, 0x0

    goto :goto_0

    .line 2298
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private goodEnoughBlink()Z
    .locals 2

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->blink()I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7300(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->blink()I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7300(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->blink()I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7300(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goodEnoughSmile()Z
    .locals 1

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->smile()I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNoRealibleInfo()Z
    .locals 1

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->hasRect()Z
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->hasSmileBlink()Z
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExactlyEqual(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z
    .locals 3
    .parameter "them"

    .prologue
    const/4 v0, 0x1

    .line 2303
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p1}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2306
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->blink()I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7300(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v1

    iget-object v2, p1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->blink()I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7300(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->smile()I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v1

    iget-object v2, p1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->smile()I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v2

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGoodEnoughEqual(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z
    .locals 4
    .parameter "them"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2311
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p1}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2323
    :cond_0
    :goto_0
    return v0

    .line 2314
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->blink()I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7300(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v2

    iget-object v3, p1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->blink()I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7300(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->smile()I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v2

    iget-object v3, p1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->smile()I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 2318
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->goodEnoughBlink()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p1}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->goodEnoughBlink()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->goodEnoughSmile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p1}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->goodEnoughSmile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2320
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->smile()I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v2

    iget-object v3, p1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->smile()I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2323
    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 2208
    move-object v1, p1

    check-cast v1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;

    .line 2211
    .local v1, them:Lcom/oppo/camera/rewind/app/RectTracker$RankedId;
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    if-nez v4, :cond_1

    .line 2241
    :cond_0
    :goto_0
    return v0

    .line 2213
    :cond_1
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    if-nez v4, :cond_2

    move v0, v2

    .line 2214
    goto :goto_0

    .line 2215
    :cond_2
    iget-object v4, v1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    if-nez v4, :cond_3

    move v0, v3

    .line 2216
    goto :goto_0

    .line 2218
    :cond_3
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->hasRect()Z
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->hasRect()Z
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2220
    :cond_4
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->hasRect()Z
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v2

    .line 2221
    goto :goto_0

    .line 2222
    :cond_5
    iget-object v4, v1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->hasRect()Z
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_6

    move v0, v3

    .line 2223
    goto :goto_0

    .line 2227
    :cond_6
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->hasSmileBlink()Z
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->hasSmileBlink()Z
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2230
    :cond_7
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->hasSmileBlink()Z
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_8

    move v0, v2

    .line 2231
    goto :goto_0

    .line 2232
    :cond_8
    iget-object v2, v1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->hasSmileBlink()Z
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$7200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v3

    .line 2233
    goto :goto_0

    .line 2236
    :cond_9
    invoke-direct {p0, v1}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->compareByBlink(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)I

    move-result v0

    .line 2237
    .local v0, blinkRes:I
    if-nez v0, :cond_0

    .line 2241
    invoke-direct {p0, v1}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->compareBySmile(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)I

    move-result v0

    goto :goto_0
.end method
