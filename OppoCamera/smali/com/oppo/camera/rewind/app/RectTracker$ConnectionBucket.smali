.class Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionBucket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    }
.end annotation


# instance fields
.field private mAdded:I

.field private mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

.field private mNumPossible:I

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RectTracker;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;I)V
    .locals 1
    .parameter
    .parameter "n"

    .prologue
    .line 3288
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3289
    new-array v0, p2, [Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    .line 3290
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mAdded:I

    .line 3291
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;ILcom/oppo/camera/rewind/app/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 3260
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;I)V

    return-void
.end method

.method static synthetic access$10100(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3260
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mNumPossible:I

    return v0
.end method

.method static synthetic access$10102(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3260
    iput p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mNumPossible:I

    return p1
.end method

.method static synthetic access$10108(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 3260
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mNumPossible:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mNumPossible:I

    return v0
.end method

.method static synthetic access$9700(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;IFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 3260
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->add(IFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3260
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->sort()V

    return-void
.end method

.method static synthetic access$9900(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3260
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    return-object v0
.end method

.method private add(IFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    .locals 8
    .parameter "id"
    .parameter "score"
    .parameter "tr"

    .prologue
    .line 3294
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    iget v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mAdded:I

    new-instance v0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;-><init>(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;IFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    aput-object v0, v6, v7

    .line 3295
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mAdded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mAdded:I

    .line 3296
    return-void
.end method

.method private sort()V
    .locals 1

    .prologue
    .line 3299
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 3300
    return-void
.end method
