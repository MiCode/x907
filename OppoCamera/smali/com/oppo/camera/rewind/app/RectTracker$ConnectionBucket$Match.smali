.class Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
.super Ljava/lang/Object;
.source "RectTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Match"
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
.field mId:I

.field mRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

.field mScore:F

.field final synthetic this$1:Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;IFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "score"
    .parameter "tr"

    .prologue
    .line 3270
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->this$1:Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3271
    iput p2, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mId:I

    .line 3272
    iput p3, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mScore:F

    .line 3273
    iput-object p4, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 3274
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;IFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 3265
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;-><init>(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;IFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 3277
    move-object v0, p1

    check-cast v0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    .line 3278
    .local v0, m2:Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mScore:F

    iget v2, v0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mScore:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 3279
    const/4 v1, -0x1

    .line 3283
    :goto_0
    return v1

    .line 3280
    :cond_0
    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mScore:F

    iget v2, v0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mScore:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 3281
    const/4 v1, 0x0

    goto :goto_0

    .line 3283
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
