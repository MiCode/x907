.class Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionOptimizer"
.end annotation


# instance fields
.field private mBuckets:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;

.field private mConnections:[I

.field private mCurConnections:[I

.field private mCurConnectionsBucketIndexes:[I

.field private mEndReached:Z

.field private mFromIds:[I

.field private mInUse:[Z

.field private mMinValue:F

.field private mPossibilities:I

.field private mToIds:[I

.field private mToIdsMap:[I

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RectTracker;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;IILjava/util/HashMap;[I[I[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)V
    .locals 8
    .parameter
    .parameter "from"
    .parameter "to"
    .parameter
    .parameter "fromIds"
    .parameter "toIds"
    .parameter "buckets"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;[I[I[",
            "Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;>;"
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 3319
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3312
    const v4, 0x7f7fffff

    iput v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mMinValue:F

    .line 3314
    iput-boolean v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mEndReached:Z

    .line 3320
    iput-object p7, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;

    .line 3321
    iput-object p5, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mFromIds:[I

    .line 3322
    iput-object p6, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mToIds:[I

    .line 3323
    const/4 v1, 0x0

    .line 3324
    .local v1, i:I
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mToIds:[I

    array-length v4, v4

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mInUse:[Z

    .line 3325
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mFromIds:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mConnections:[I

    .line 3326
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mFromIds:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    .line 3327
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mFromIds:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mCurConnectionsBucketIndexes:[I

    .line 3328
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mInUse:[Z

    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([ZZ)V

    .line 3329
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mToIds:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mToIdsMap:[I

    .line 3330
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 3331
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9900(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 3332
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9900(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mUsed:Z
    invoke-static {v4, v7}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$10902(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Z)Z

    .line 3331
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3330
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3335
    .end local v2           #j:I
    :cond_1
    const/4 v0, 0x1

    .line 3336
    .local v0, N:I
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 3337
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$10100(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)I

    move-result v4

    mul-int/2addr v0, v4

    .line 3338
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$10100(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 3339
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9900(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v7

    iget v3, v4, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mId:I

    .line 3340
    .local v3, toId:I
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    aput v3, v4, v1

    .line 3342
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9900(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mUsed:Z
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$10900(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3343
    const/4 v0, 0x0

    .line 3353
    .end local v3           #toId:I
    :cond_2
    const-string v4, "ImageConnector: # possibilities = %d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker;->access$8800(Ljava/lang/String;)V

    .line 3354
    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mPossibilities:I

    .line 3355
    return-void

    .line 3346
    .restart local v3       #toId:I
    :cond_3
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9900(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mUsed:Z
    invoke-static {v4, v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$10902(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Z)Z

    .line 3347
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mCurConnectionsBucketIndexes:[I

    aput v7, v4, v1

    .line 3336
    .end local v3           #toId:I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3349
    :cond_4
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    aput v6, v4, v1

    .line 3350
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mCurConnectionsBucketIndexes:[I

    aput v6, v4, v1

    goto :goto_3
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;IILjava/util/HashMap;[I[I[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;Lcom/oppo/camera/rewind/app/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 3304
    invoke-direct/range {p0 .. p7}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IILjava/util/HashMap;[I[I[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3304
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->findBestConnection()V

    return-void
.end method

.method static synthetic access$10400(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3304
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mEndReached:Z

    return v0
.end method

.method static synthetic access$10500(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3304
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mPossibilities:I

    return v0
.end method

.method static synthetic access$10600(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3304
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mFromIds:[I

    return-object v0
.end method

.method static synthetic access$10700(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3304
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mConnections:[I

    return-object v0
.end method

.method private connect(IJ)V
    .locals 10
    .parameter "index"
    .parameter "startTime"

    .prologue
    const/4 v9, 0x1

    .line 3385
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3387
    .local v1, currentTime:J
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mFromIds:[I

    array-length v5, v5

    if-ge p1, v5, :cond_0

    sub-long v5, v1, p2

    invoke-static {}, Lcom/oppo/camera/rewind/app/RectTracker;->access$11000()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 3389
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->eval()V

    .line 3413
    :cond_1
    :goto_0
    return-void

    .line 3392
    :cond_2
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;

    aget-object v0, v5, p1

    .line 3393
    .local v0, bucket:Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$10100(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)I

    move-result v5

    if-le v5, v9, :cond_4

    .line 3394
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$10100(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 3395
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9900(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v3

    iget v4, v5, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mId:I

    .line 3397
    .local v4, toId:I
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9900(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mUsed:Z
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$10900(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3394
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3401
    :cond_3
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9900(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mUsed:Z
    invoke-static {v5, v9}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$10902(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Z)Z

    .line 3402
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    aput v4, v5, p1

    .line 3403
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mCurConnectionsBucketIndexes:[I

    aput v3, v5, p1

    .line 3404
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5, p2, p3}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->connect(IJ)V

    .line 3406
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9900(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    const/4 v6, 0x0

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mUsed:Z
    invoke-static {v5, v6}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$10902(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Z)Z

    .line 3407
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    const/4 v6, -0x1

    aput v6, v5, p1

    goto :goto_2

    .line 3410
    .end local v3           #i:I
    .end local v4           #toId:I
    :cond_4
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5, p2, p3}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->connect(IJ)V

    goto :goto_0
.end method

.method private eval()V
    .locals 5

    .prologue
    .line 3416
    const/4 v2, 0x0

    .line 3417
    .local v2, s:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 3418
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mCurConnectionsBucketIndexes:[I

    aget v0, v3, v1

    .line 3419
    .local v0, bi:I
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;

    aget-object v3, v3, v1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9900(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    move-result-object v3

    aget-object v3, v3, v0

    iget v3, v3, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mScore:F

    add-float/2addr v2, v3

    .line 3417
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3421
    .end local v0           #bi:I
    :cond_0
    iget v3, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mMinValue:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 3422
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mEndReached:Z

    .line 3423
    iput v2, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mMinValue:F

    .line 3424
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 3425
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mConnections:[I

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    aget v4, v4, v1

    aput v4, v3, v1

    .line 3424
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3428
    :cond_1
    return-void
.end method

.method private findBestConnection()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3367
    iget v3, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mPossibilities:I

    if-nez v3, :cond_1

    .line 3378
    :cond_0
    return-void

    .line 3370
    :cond_1
    const v3, 0x7f7fffff

    iput v3, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mMinValue:F

    .line 3371
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3372
    .local v1, startTime:J
    invoke-direct {p0, v7, v1, v2}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->connect(IJ)V

    .line 3373
    const-string v3, "*** Connections:"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker;->access$8800(Ljava/lang/String;)V

    .line 3374
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mConnections:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 3375
    const-string v3, "[%d] %d -> %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mFromIds:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mConnections:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker;->access$8800(Ljava/lang/String;)V

    .line 3374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
