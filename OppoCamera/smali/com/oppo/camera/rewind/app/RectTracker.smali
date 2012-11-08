.class public Lcom/oppo/camera/rewind/app/RectTracker;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/app/RectTracker$1;,
        Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;,
        Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;,
        Lcom/oppo/camera/rewind/app/RectTracker$Comparison;,
        Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;,
        Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;,
        Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;,
        Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;,
        Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;,
        Lcom/oppo/camera/rewind/app/RectTracker$RankedId;,
        Lcom/oppo/camera/rewind/app/RectTracker$TranslationStatistics;,
        Lcom/oppo/camera/rewind/app/RectTracker$State;,
        Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;
    }
.end annotation


# static fields
.field private static mBlinkMultiplier:F

.field private static maxConnectTime:J

.field private static sDxdyCount:I

.field private static sLogging:Z

.field private static sMaxRelDx:F

.field private static sMaxRelDy:F

.field private static sMaxRelVftDx:F

.field private static sMaxRelVftDy:F

.field private static sSequenceCount:I

.field private static sTranslations:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/app/RectTracker$TranslationStatistics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlignRectSizes:Z

.field private mAllFaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mAnalyzeComplete:Z

.field private mBestImage:I

.field private mBestImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mBestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$RankedId;",
            ">;"
        }
    .end annotation
.end field

.field private mConvScreen:Lcom/scalado/caps/screen/Screen;

.field private final mDeltas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

.field private mFaceScaleX:F

.field private mFaceScaleY:F

.field private mFaceScreen:Lcom/scalado/caps/screen/Screen;

.field private mFacesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mFilteredFaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mGuessRects:Z

.field private mImageDims:Lcom/scalado/base/Size;

.field private mImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;",
            ">;"
        }
    .end annotation
.end field

.field private mIsComplete:Z

.field private mListener:Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;

.field private mLockingEnabled:Z

.field private mMatches:[I

.field private mMaxNumRects:I

.field private mMaxScoreImage:I

.field private mMaxTranslation:F

.field private mMinFaceDiffX:F

.field private mMinFaceDiffY:F

.field private mMinMatches:I

.field private mNumAdded:I

.field private mNumGuessed:I

.field private mPredefined:Z

.field private mRectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

.field private mState:Lcom/oppo/camera/rewind/app/RectTracker$State;

.field private final mTotalDelta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

.field private mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

.field private mUseVfTracker:Z

.field private mUseVftForDelta:Z

.field private mUtils:Lcom/oppo/camera/rewind/app/TrackerUtils;

.field private final mVftDeltas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation
.end field

.field private maxDisplacementModifier:F

.field totalFaceDetectionTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 44
    sput-boolean v3, Lcom/oppo/camera/rewind/app/RectTracker;->sLogging:Z

    .line 84
    const-wide/16 v0, 0x5dc

    sput-wide v0, Lcom/oppo/camera/rewind/app/RectTracker;->maxConnectTime:J

    .line 87
    const/high16 v0, 0x3f80

    sput v0, Lcom/oppo/camera/rewind/app/RectTracker;->mBlinkMultiplier:F

    .line 128
    sput v3, Lcom/oppo/camera/rewind/app/RectTracker;->sDxdyCount:I

    .line 129
    sput v2, Lcom/oppo/camera/rewind/app/RectTracker;->sMaxRelDx:F

    .line 130
    sput v2, Lcom/oppo/camera/rewind/app/RectTracker;->sMaxRelDy:F

    .line 131
    sput v2, Lcom/oppo/camera/rewind/app/RectTracker;->sMaxRelVftDx:F

    .line 132
    sput v2, Lcom/oppo/camera/rewind/app/RectTracker;->sMaxRelVftDy:F

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/camera/rewind/app/RectTracker;->sTranslations:Ljava/util/Vector;

    .line 135
    sput v3, Lcom/oppo/camera/rewind/app/RectTracker;->sSequenceCount:I

    return-void
.end method

.method public constructor <init>(Lcom/oppo/camera/rewind/app/SourceManager;I)V
    .locals 8
    .parameter "srcMgr"
    .parameter "size"

    .prologue
    const/4 v7, -0x1

    const/high16 v6, 0x4090

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mNumAdded:I

    .line 55
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 57
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mDeltas:Ljava/util/Vector;

    .line 58
    new-instance v1, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    invoke-direct {v1, p0, v5}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mTotalDelta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    .line 61
    iput v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mNumGuessed:I

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->totalFaceDetectionTime:J

    .line 71
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mIsComplete:Z

    .line 72
    iput-boolean v4, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mGuessRects:Z

    .line 73
    iput-boolean v4, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mAlignRectSizes:Z

    .line 74
    iput-boolean v4, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mLockingEnabled:Z

    .line 76
    iput-boolean v4, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mUseVfTracker:Z

    .line 77
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mUseVftForDelta:Z

    .line 79
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->maxDisplacementModifier:F

    .line 88
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mAnalyzeComplete:Z

    .line 89
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mPredefined:Z

    .line 98
    iput v7, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mBestImage:I

    .line 99
    iput v7, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMaxScoreImage:I

    .line 100
    const/high16 v1, 0x3fc0

    iput v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceScaleX:F

    .line 101
    const/high16 v1, 0x4000

    iput v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceScaleY:F

    .line 103
    iput v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMinFaceDiffX:F

    .line 104
    iput v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMinFaceDiffY:F

    .line 117
    const v1, 0x3e19999a

    iput v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMaxTranslation:F

    .line 121
    new-instance v1, Lcom/oppo/camera/rewind/app/RectTracker$State;

    invoke-direct {v1, p0, v5}, Lcom/oppo/camera/rewind/app/RectTracker$State;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mState:Lcom/oppo/camera/rewind/app/RectTracker$State;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mBestMap:Ljava/util/HashMap;

    .line 169
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    .line 170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 171
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    new-instance v2, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    invoke-direct {v2, p0, v0, v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;ILcom/oppo/camera/rewind/app/RectTracker$1;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    .line 174
    new-instance v1, Lcom/oppo/camera/rewind/app/TrackerUtils;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    invoke-direct {v1, v2}, Lcom/oppo/camera/rewind/app/TrackerUtils;-><init>(Lcom/oppo/camera/rewind/app/SourceManager;)V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mUtils:Lcom/oppo/camera/rewind/app/TrackerUtils;

    .line 175
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mUtils:Lcom/oppo/camera/rewind/app/TrackerUtils;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/TrackerUtils;->getFaceDetectionDims()Lcom/scalado/base/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 176
    return-void
.end method

.method static synthetic access$11000()J
    .locals 2

    .prologue
    .line 42
    sget-wide v0, Lcom/oppo/camera/rewind/app/RectTracker;->maxConnectTime:J

    return-wide v0
.end method

.method static synthetic access$7500(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/oppo/camera/rewind/app/RectTracker;)Lcom/scalado/base/Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/oppo/camera/rewind/app/RectTracker;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMaxTranslation:F

    return v0
.end method

.method static synthetic access$7800(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$8500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8800(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9200()F
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/oppo/camera/rewind/app/RectTracker;->mBlinkMultiplier:F

    return v0
.end method

.method static synthetic access$9300(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/oppo/camera/rewind/app/RectTracker;I)Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RectTracker;->getDelta(I)Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    move-result-object v0

    return-object v0
.end method

.method private accumulateDelta(IILjava/util/Vector;)Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    .locals 5
    .parameter "i0"
    .parameter "i1"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;",
            ">;)",
            "Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;"
        }
    .end annotation

    .prologue
    .line 1688
    .local p3, deltas:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;>;"
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1689
    .local v2, start:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1690
    .local v1, n:I
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1691
    new-instance v3, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    .line 1692
    .local v3, translation:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    move v0, v2

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1693
    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$300(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$316(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;F)F

    .line 1694
    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$416(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;F)F

    .line 1692
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1696
    :cond_0
    if-ge p2, p1, :cond_1

    .line 1697
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$300(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v4

    neg-float v4, v4

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3, v4}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$302(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;F)F

    .line 1698
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v4

    neg-float v4, v4

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3, v4}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$402(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;F)F

    .line 1700
    :cond_1
    return-object v3
.end method

.method private addId(Ljava/util/HashMap;IILcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    .locals 2
    .parameter
    .parameter "id"
    .parameter "imageIndex"
    .parameter "rect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;II",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1806
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 1807
    .local v0, indexes:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    aput-object p4, v0, p3

    .line 1808
    return-void
.end method

.method private addRect(IILandroid/graphics/Rect;)V
    .locals 1
    .parameter "image"
    .parameter "id"
    .parameter "rect"

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/camera/rewind/app/RectTracker;->addRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 342
    return-void
.end method

.method private addRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "image"
    .parameter "id"
    .parameter "rect"
    .parameter "sessionRect"

    .prologue
    .line 345
    new-instance v0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IILandroid/graphics/Rect;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    .line 346
    .local v0, tr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSessionRect:Landroid/graphics/Rect;
    invoke-static {v0, p4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$702(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 347
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->add(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    invoke-static {v1, v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$800(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    .line 348
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1, v0}, Lcom/oppo/camera/rewind/app/RectTracker;->updateMapForRect(Ljava/util/HashMap;ILcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    .line 349
    return-void
.end method

.method private alignRectSizes()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f00

    .line 3084
    iget-object v8, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3085
    .local v3, id:I
    const/4 v5, -0x1

    .line 3086
    .local v5, wMax:I
    const/4 v0, -0x1

    .line 3087
    .local v0, hMax:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v8, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 3088
    invoke-direct {p0, v3, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v4

    .line 3089
    .local v4, tr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    if-eqz v4, :cond_1

    .line 3090
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3091
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3087
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3094
    .end local v4           #tr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v8, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 3095
    invoke-direct {p0, v3, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v4

    .line 3096
    .restart local v4       #tr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    if-eqz v4, :cond_3

    .line 3097
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    .line 3098
    .local v6, x:F
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    .line 3099
    .local v7, y:F
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    int-to-float v9, v5

    mul-float/2addr v9, v10

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 3100
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    int-to-float v9, v0

    mul-float/2addr v9, v10

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 3101
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    int-to-float v9, v5

    mul-float/2addr v9, v10

    add-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 3102
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    int-to-float v9, v0

    mul-float/2addr v9, v10

    add-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 3094
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3107
    .end local v0           #hMax:I
    .end local v1           #i:I
    .end local v3           #id:I
    .end local v4           #tr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v5           #wMax:I
    :cond_4
    return-void
.end method

.method private allIdsSame([Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z
    .locals 5
    .parameter "ranked"

    .prologue
    .line 2164
    const/4 v0, 0x1

    .line 2165
    .local v0, allEqual:Z
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 2166
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    .line 2167
    aget-object v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p1, v4

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->isExactlyEqual(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z
    invoke-static {v3, v4}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->access$7000(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2168
    const/4 v0, 0x0

    .line 2172
    :cond_0
    return v0

    .line 2166
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private analyze2()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1947
    new-instance v6, Ljava/util/Vector;

    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    iput-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mAllFaces:Ljava/util/Vector;

    .line 1948
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFacesMap:Ljava/util/HashMap;

    .line 1949
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1950
    .local v3, id:I
    new-instance v0, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    invoke-direct {v0, p0, v3, v8}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;ILcom/oppo/camera/rewind/app/RectTracker$1;)V

    .line 1951
    .local v0, face:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 1952
    invoke-direct {p0, v3, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v4

    .line 1953
    .local v4, tr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    if-nez v4, :cond_0

    .line 1955
    invoke-direct {p0, v1, v3, v8}, Lcom/oppo/camera/rewind/app/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    .line 1956
    invoke-direct {p0, v3, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v4

    .line 1958
    :cond_0
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mInstances:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2400(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v6

    aput-object v4, v6, v1

    .line 1959
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mInstances:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2400(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v6

    aget-object v6, v6, v1

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mFace:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    invoke-static {v6, v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$4502(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    .line 1951
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1962
    .end local v4           #tr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 1963
    invoke-direct {p0, v3, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v5

    .line 1964
    .local v5, trCur:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1962
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1967
    :cond_3
    add-int/lit8 v6, v1, -0x1

    if-ltz v6, :cond_4

    .line 1968
    add-int/lit8 v6, v1, -0x1

    invoke-direct {p0, v3, v6}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/oppo/camera/rewind/app/RectTracker;->relativeFaceDist(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/PointF;

    move-result-object v6

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;
    invoke-static {v5, v6}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$5702(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 1971
    :cond_4
    add-int/lit8 v6, v1, 0x1

    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1972
    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, v3, v6}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/oppo/camera/rewind/app/RectTracker;->relativeFaceDist(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/PointF;

    move-result-object v6

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;
    invoke-static {v5, v6}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$5802(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    goto :goto_3

    .line 1977
    .end local v5           #trCur:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    :cond_5
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1978
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1981
    .end local v0           #face:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    .end local v1           #i:I
    .end local v3           #id:I
    :cond_6
    return-void
.end method

.method private applyViewfinderTracker(Lcom/scalado/base/Image;)V
    .locals 8
    .parameter "image"

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 298
    .local v0, dims:Lcom/scalado/base/Size;
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    .line 299
    .local v1, index:I
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 302
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Image dimensions doesn\'t match!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 305
    :cond_1
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    iget v7, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mNumAdded:I

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    .line 306
    .local v4, ti:Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;
    invoke-static {v4, p1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$502(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;Lcom/scalado/base/Image;)Lcom/scalado/base/Image;

    .line 307
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-nez v6, :cond_2

    .line 308
    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    .line 310
    :cond_2
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    if-nez v6, :cond_3

    .line 311
    new-instance v6, Lcom/scalado/caps/autorama/ViewfinderTracker;

    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-direct {v6, v7}, Lcom/scalado/caps/autorama/ViewfinderTracker;-><init>(Lcom/scalado/base/Size;)V

    iput-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    .line 314
    :cond_3
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    invoke-virtual {v6, p1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->track(Lcom/scalado/base/Image;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    .line 315
    .local v5, transform:Lcom/scalado/caps/autorama/Transform;
    if-lez v1, :cond_5

    .line 316
    new-instance v2, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    .line 317
    .local v2, p:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Vector;->getX()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2, v6}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$302(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;F)F

    .line 318
    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Vector;->getY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2, v6}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$402(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;F)F

    .line 319
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 320
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    .line 321
    .local v3, p0:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$300(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v6

    invoke-static {v2, v6}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$324(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;F)F

    .line 322
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v6

    invoke-static {v2, v6}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$424(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;F)F

    .line 324
    .end local v3           #p0:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    :cond_4
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v2           #p:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    :cond_5
    iget v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mNumAdded:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mNumAdded:I

    .line 328
    return-void
.end method

.method private approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 1629
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1634
    if-le p2, p3, :cond_0

    .line 1636
    const/high16 v0, 0x3f80

    move p2, p3

    .line 1643
    :goto_0
    invoke-direct {p0, p2}, Lcom/oppo/camera/rewind/app/RectTracker;->getDelta(I)Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    move-result-object v2

    .line 1644
    invoke-direct {p0, p4, p1, p3}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v3

    .line 1645
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1646
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->offset(Landroid/graphics/Rect;F)V
    invoke-static {v2, v1, v0}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$4400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;Landroid/graphics/Rect;F)V

    .line 1647
    return-object v1

    .line 1637
    :cond_0
    if-ge p2, p3, :cond_1

    .line 1639
    const/high16 v0, -0x4080

    goto :goto_0

    .line 1641
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "toImage == fromImage"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateOptimalImages2()V
    .locals 2

    .prologue
    .line 1882
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mBestImage:I

    if-gez v0, :cond_0

    .line 1883
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Best bg image unknown."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1888
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mBestImages:Ljava/util/HashMap;

    .line 1889
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 1899
    return-void
.end method

.method private calculateStatistics()V
    .locals 6

    .prologue
    .line 1234
    const/4 v3, -0x1

    iput v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMaxNumRects:I

    .line 1235
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1236
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    .line 1237
    .local v2, ti:Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1238
    .local v1, size:I
    iget v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMaxNumRects:I

    if-le v1, v3, :cond_0

    .line 1239
    iput v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMaxNumRects:I

    .line 1235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1243
    .end local v1           #size:I
    .end local v2           #ti:Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 1244
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mDeltas:Ljava/util/Vector;

    new-instance v4, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1246
    :cond_2
    return-void
.end method

.method private connect(II)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 3138
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/oppo/camera/rewind/app/RectTracker;->nonOverlapsBetween(Ljava/util/HashMap;II)[I

    move-result-object v11

    .line 3139
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p2, p1}, Lcom/oppo/camera/rewind/app/RectTracker;->nonOverlapsBetween(Ljava/util/HashMap;II)[I

    move-result-object v6

    .line 3141
    array-length v0, v11

    if-eqz v0, :cond_0

    array-length v0, v6

    if-nez v0, :cond_1

    .line 3250
    :cond_0
    :goto_0
    return-void

    .line 3144
    :cond_1
    const-string v0, "*** Connecting imgs %d -> %d (#ids=(%d,%d))"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    array-length v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    array-length v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 3160
    array-length v0, v11

    new-array v7, v0, [Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;

    .line 3161
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    array-length v0, v11

    if-ge v8, v0, :cond_3

    .line 3162
    new-instance v0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;

    array-length v1, v6

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;ILcom/oppo/camera/rewind/app/RectTracker$1;)V

    aput-object v0, v7, v8

    .line 3163
    const/4 v0, 0x0

    move v9, v0

    :goto_2
    array-length v0, v6

    if-ge v9, v0, :cond_2

    .line 3164
    aget v2, v11, v8

    aget v4, v6, v9

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/rewind/app/RectTracker;->distance(IIIILjava/util/HashMap;)F

    move-result v0

    .line 3165
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    aget v2, v6, v9

    invoke-direct {p0, v1, v2, p2}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v1

    .line 3166
    aget-object v2, v7, v8

    aget v3, v6, v9

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->add(IFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    invoke-static {v2, v3, v0, v1}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9700(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;IFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    .line 3163
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2

    .line 3168
    :cond_2
    aget-object v0, v7, v8

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->sort()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9800(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)V

    .line 3161
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 3170
    :cond_3
    array-length v0, v6

    new-array v2, v0, [Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    .line 3171
    const/4 v0, 0x0

    :goto_3
    array-length v1, v2

    if-ge v0, v1, :cond_4

    .line 3172
    new-instance v1, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    aput-object v1, v2, v0

    .line 3171
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3174
    :cond_4
    const/4 v0, 0x0

    :goto_4
    array-length v1, v7

    if-ge v0, v1, :cond_6

    .line 3175
    const/4 v1, 0x0

    :goto_5
    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 3176
    aget-object v3, v2, v1

    aget-object v4, v7, v0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9900(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v1

    iget v4, v4, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mScore:F

    const/4 v5, 0x0

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->addObservation(FF)V
    invoke-static {v3, v4, v5}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$3600(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;FF)V

    .line 3175
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3174
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3180
    :cond_6
    const/4 v0, 0x0

    :goto_6
    array-length v1, v2

    if-ge v0, v1, :cond_7

    .line 3181
    aget-object v1, v2, v0

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->compute()V
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$3700(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)V

    .line 3180
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3195
    :cond_7
    const/4 v0, 0x0

    aget-object v0, v2, v0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mMaxX:F
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$10000(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v0

    .line 3196
    const/4 v1, 0x0

    aget-object v1, v2, v1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$4000(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_8

    .line 3197
    const/4 v1, 0x0

    aget-object v1, v2, v1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mStdDevX:F
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$3800(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v1

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 3199
    :cond_8
    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->maxDisplacementModifier:F

    mul-float v3, v0, v1

    .line 3202
    const/4 v1, 0x0

    .line 3203
    const/4 v0, 0x0

    move v9, v1

    :goto_7
    array-length v1, v7

    if-ge v0, v1, :cond_b

    .line 3204
    const-string v2, ""

    .line 3205
    const/4 v1, 0x0

    .line 3208
    :goto_8
    aget-object v4, v7, v0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9900(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_a

    if-eqz v1, :cond_9

    aget-object v4, v7, v0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9900(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v1

    iget v4, v4, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mScore:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_a

    .line 3209
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " %2d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v10, v7, v0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mMatches:[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;
    invoke-static {v10}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$9900(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;

    move-result-object v10

    aget-object v10, v10, v1

    iget v10, v10, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket$Match;->mId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3210
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3212
    :cond_a
    aget-object v2, v7, v0

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v2, v1}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$10102(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;I)I

    .line 3213
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3203
    add-int/lit8 v0, v0, 0x1

    move v9, v1

    goto :goto_7

    .line 3219
    :cond_b
    new-instance v0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, v11

    invoke-direct/range {v0 .. v8}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IILjava/util/HashMap;[I[I[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    .line 3221
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->findBestConnection()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->access$10300(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;)V

    .line 3222
    const/4 v1, 0x1

    move v10, v9

    move v9, v1

    .line 3223
    :goto_9
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mEndReached:Z
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->access$10400(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;)Z

    move-result v1

    if-nez v1, :cond_f

    array-length v1, v6

    if-ge v9, v1, :cond_f

    .line 3224
    invoke-direct {p0, v7, v10}, Lcom/oppo/camera/rewind/app/RectTracker;->increaseBuckets([Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;I)V

    .line 3225
    new-instance v0, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, v11

    invoke-direct/range {v0 .. v8}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IILjava/util/HashMap;[I[I[Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    .line 3227
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mPossibilities:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->access$10500(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;)I

    move-result v1

    const v2, 0x186a0

    if-le v1, v2, :cond_c

    move-object v6, v0

    .line 3234
    :goto_a
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mEndReached:Z
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->access$10400(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3235
    const-string v0, "RectTracker"

    const-string v1, "Failed to connect!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mState:Lcom/oppo/camera/rewind/app/RectTracker$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oppo/camera/rewind/app/RectTracker$State;->error:Z

    .line 3237
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mState:Lcom/oppo/camera/rewind/app/RectTracker$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oppo/camera/rewind/app/RectTracker$State;->alignmentSuccessful:Z

    goto/16 :goto_0

    .line 3230
    :cond_c
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->findBestConnection()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->access$10300(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;)V

    .line 3231
    add-int/lit8 v1, v9, 0x1

    .line 3232
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move v9, v1

    goto :goto_9

    .line 3241
    :cond_d
    const/4 v0, 0x0

    move v7, v0

    :goto_b
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mFromIds:[I
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->access$10600(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;)[I

    move-result-object v0

    array-length v0, v0

    if-ge v7, v0, :cond_e

    .line 3242
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mFromIds:[I
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->access$10600(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;)[I

    move-result-object v0

    aget v1, v0, v7

    .line 3243
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->mConnections:[I
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;->access$10700(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionOptimizer;)[I

    move-result-object v0

    aget v2, v0, v7

    .line 3244
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/rewind/app/RectTracker;->mergeRects(IIIILjava/util/HashMap;)V

    .line 3241
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_b

    .line 3246
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Min matches = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMinMatches:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 3247
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMatches:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3248
    const-string v1, "   %d->%d : %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMatches:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 3247
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_f
    move-object v6, v0

    goto/16 :goto_a
.end method

.method private connectAllImages()V
    .locals 8

    .prologue
    .line 3110
    const/4 v6, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 3111
    .local v5, toOffsets:[I
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v3

    .line 3112
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, imageIndex:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 3113
    invoke-direct {p0, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->numRectsInImage(I)I

    move-result v6

    iget v7, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMaxNumRects:I

    if-ne v6, v7, :cond_2

    .line 3114
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 3115
    aget v6, v5, v2

    add-int v4, v1, v6

    .line 3116
    .local v4, to:I
    if-ltz v4, :cond_0

    if-lt v4, v3, :cond_1

    .line 3114
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3119
    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3120
    .local v0, deltaIndex:I
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMatches:[I

    aget v6, v6, v0

    iget v7, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMaxNumRects:I

    if-eq v6, v7, :cond_0

    .line 3123
    invoke-direct {p0, v4, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->connect(II)V

    goto :goto_2

    .line 3112
    .end local v0           #deltaIndex:I
    .end local v2           #j:I
    .end local v4           #to:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3127
    :cond_3
    return-void

    .line 3110
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 3524
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mUtils:Lcom/oppo/camera/rewind/app/TrackerUtils;

    if-eqz v2, :cond_0

    .line 3525
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mUtils:Lcom/oppo/camera/rewind/app/TrackerUtils;

    invoke-virtual {v2, p1, p2}, Lcom/oppo/camera/rewind/app/TrackerUtils;->convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3538
    :goto_0
    return-void

    .line 3528
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    if-eqz v2, :cond_1

    .line 3529
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 3530
    .local v0, screenRect:Lcom/scalado/base/Rect;
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    .line 3531
    .local v1, sessionRect:Lcom/scalado/base/Rect;
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, p1, v1}, Lcom/oppo/camera/rewind/app/Geom;->transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 3532
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, v1, v0}, Lcom/oppo/camera/rewind/app/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 3534
    invoke-static {v0, p2}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3536
    .end local v0           #screenRect:Lcom/scalado/base/Rect;
    .end local v1           #sessionRect:Lcom/scalado/base/Rect;
    :cond_1
    invoke-static {p1, p2}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private copy(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2972
    .local p1, oldMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2973
    .local v3, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2974
    .local v2, key:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 2975
    .local v5, oldVal:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    array-length v6, v5

    new-array v4, v6, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 2976
    .local v4, newVal:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 2977
    aget-object v6, v5, v0

    aput-object v6, v4, v0

    .line 2976
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2979
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2981
    .end local v0           #i:I
    .end local v2           #key:I
    .end local v4           #newVal:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v5           #oldVal:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    :cond_1
    return-object v3
.end method

.method private createFaceDetector()V
    .locals 2

    .prologue
    .line 3510
    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/scalado/caps/face/FaceDetectorFactory;->getFaceDetector(ZI)Lcom/scalado/caps/face/FaceDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    .line 3512
    new-instance v0, Lcom/scalado/caps/face/FeatureSet;

    invoke-direct {v0}, Lcom/scalado/caps/face/FeatureSet;-><init>()V

    .line 3513
    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    .line 3514
    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    .line 3515
    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    .line 3517
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    invoke-interface {v1, v0}, Lcom/scalado/caps/face/FaceDetector;->setFeaturesToDetect(Lcom/scalado/caps/face/FeatureSet;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3521
    :goto_0
    return-void

    .line 3518
    :catch_0
    move-exception v0

    .line 3519
    const-string v0, "RectTracker"

    const-string v1, "Failed to set detectable features."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createRankedId(IIFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Lcom/oppo/camera/rewind/app/RectTracker$RankedId;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2177
    if-eqz p4, :cond_0

    .line 2178
    new-instance v0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mScore:F
    invoke-static {p4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$6600(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)F

    move-result v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IIFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    .line 2180
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;

    const/high16 v5, -0x3f80

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v8, v6

    invoke-direct/range {v1 .. v8}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IIFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;ZLcom/oppo/camera/rewind/app/RectTracker$1;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private distance(IIIILjava/util/HashMap;)F
    .locals 3
    .parameter "fromImage"
    .parameter "fromId"
    .parameter "toImage"
    .parameter "toId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 3021
    .local p5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;>;"
    invoke-direct {p0, p2, p3, p1, p5}, Lcom/oppo/camera/rewind/app/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3022
    .local v1, r1:Landroid/graphics/Rect;
    invoke-direct {p0, p5, p4, p3}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v2

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 3023
    .local v0, r0:Landroid/graphics/Rect;
    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->rectCenterDist(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v2

    return v2
.end method

.method private enlargeRectangles(FF)V
    .locals 46
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    .line 444
    .local v25, ti:Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 445
    .local v26, tr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_1

    .line 448
    const/high16 v3, 0x3fc0

    .line 450
    .local v3, baseX:F
    const v5, 0x3e4ccccd

    .line 454
    .local v5, breakPoint:F
    mul-float v42, v3, p2

    div-float v4, v42, p1

    .line 456
    .local v4, baseY:F
    sub-float v23, p1, v3

    .line 460
    .local v23, sxBackoffPart:F
    sub-float v24, p2, v4

    .line 461
    .local v24, syBackoffPart:F
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v22

    .line 463
    .local v22, rect:Landroid/graphics/Rect;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$900(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_2

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$900(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    const/16 v43, 0x2

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_2

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$900(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v42, v42, v43

    if-eqz v42, :cond_2

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$900(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v42, v42, v43

    if-eqz v42, :cond_2

    .line 479
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/scalado/base/Size;->getWidth()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    div-float v11, v42, v43

    .line 481
    .local v11, faceRelativeSizeX:F
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/scalado/base/Size;->getHeight()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    div-float v12, v42, v43

    .line 487
    .local v12, faceRelativeSizeY:F
    cmpl-float v42, v11, v5

    if-lez v42, :cond_3

    .line 488
    const/16 v36, 0x0

    .line 499
    .local v36, xBackoffMultiplier:F
    :goto_2
    cmpl-float v42, v12, v5

    if-lez v42, :cond_4

    .line 500
    const/16 v39, 0x0

    .line 512
    .local v39, yBackoffMultiplier:F
    :goto_3
    new-instance v42, Landroid/graphics/Rect;

    invoke-direct/range {v42 .. v42}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1502(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 513
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v38

    .line 514
    .local v38, xc:F
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v41

    .line 515
    .local v41, yc:F
    mul-float v42, v23, v36

    add-float v42, v42, v3

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    const/high16 v43, 0x3f00

    mul-float v33, v42, v43

    .line 517
    .local v33, w:F
    mul-float v42, v24, v39

    add-float v42, v42, v4

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    const/high16 v43, 0x3f00

    mul-float v14, v42, v43

    .line 520
    .local v14, h:F
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    sub-float v43, v38, v33

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 521
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    sub-float v43, v41, v14

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 522
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    add-float v43, v38, v33

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 523
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    add-float v43, v41, v14

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 524
    new-instance v42, Landroid/graphics/Rect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1602(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 475
    .end local v11           #faceRelativeSizeX:F
    .end local v12           #faceRelativeSizeY:F
    .end local v14           #h:F
    .end local v33           #w:F
    .end local v36           #xBackoffMultiplier:F
    .end local v38           #xc:F
    .end local v39           #yBackoffMultiplier:F
    .end local v41           #yc:F
    :cond_2
    const-string v42, "No eye rects for img=%d, id=%d"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mIndex:I
    invoke-static/range {v25 .. v25}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1300(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v26 .. v26}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 490
    .restart local v11       #faceRelativeSizeX:F
    .restart local v12       #faceRelativeSizeY:F
    :cond_3
    const/high16 v42, 0x3f80

    div-float v43, v11, v5

    sub-float v36, v42, v43

    .restart local v36       #xBackoffMultiplier:F
    goto/16 :goto_2

    .line 502
    :cond_4
    const/high16 v42, 0x3f80

    div-float v43, v12, v5

    sub-float v39, v42, v43

    .restart local v39       #yBackoffMultiplier:F
    goto/16 :goto_3

    .line 529
    .end local v3           #baseX:F
    .end local v4           #baseY:F
    .end local v5           #breakPoint:F
    .end local v11           #faceRelativeSizeX:F
    .end local v12           #faceRelativeSizeY:F
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v22           #rect:Landroid/graphics/Rect;
    .end local v23           #sxBackoffPart:F
    .end local v24           #syBackoffPart:F
    .end local v25           #ti:Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;
    .end local v26           #tr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v36           #xBackoffMultiplier:F
    .end local v39           #yBackoffMultiplier:F
    :cond_5
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 530
    .local v18, intersection:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 531
    .local v10, faceIntersection:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_15

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    .line 532
    .restart local v25       #ti:Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_4
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v15, v0, :cond_6

    .line 533
    add-int/lit8 v19, v15, 0x1

    .local v19, j:I
    :goto_5
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->size()I

    move-result v42

    move/from16 v0, v19

    move/from16 v1, v42

    if-ge v0, v1, :cond_14

    .line 534
    move/from16 v0, v19

    if-ne v15, v0, :cond_8

    .line 533
    :cond_7
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 537
    :cond_8
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 538
    .local v27, tr0:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 539
    .local v28, tr1:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_7

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_7

    .line 542
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1600(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v20

    .line 543
    .local v20, r0:Landroid/graphics/Rect;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1600(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v21

    .line 544
    .local v21, r1:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 545
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 548
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 549
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v13

    .line 551
    .local v13, facesIntersects:Z
    if-eqz v13, :cond_9

    .line 552
    const-string v42, "*** Faces intersects: %d - %d"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v27 .. v27}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v28 .. v28}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 555
    :cond_9
    const/4 v7, 0x0

    .line 560
    .local v7, didLock:Z
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v42

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_f

    .line 564
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_d

    .line 565
    move-object/from16 v30, v27

    .line 566
    .local v30, trLeft:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    move-object/from16 v31, v28

    .line 571
    .local v31, trRight:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    :goto_7
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v42

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Rect;->width()I

    move-result v43

    add-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v6, v0

    .line 573
    .local v6, dSum:F
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v34, v42, v6

    .line 574
    .local v34, wLeft:F
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v8, v0

    .line 575
    .local v8, diff:F
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v43, v34, v8

    add-float v42, v42, v43

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->round(F)I

    move-result v37

    .line 578
    .local v37, xBorder:I
    const/4 v9, 0x0

    .line 579
    .local v9, doLock:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mMinFaceDiffX:F

    move/from16 v42, v0

    cmpl-float v42, v8, v42

    if-ltz v42, :cond_e

    .line 580
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move/from16 v0, v37

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 582
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v37

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 584
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v42, v0

    move/from16 v0, v37

    move/from16 v1, v42

    if-le v0, v1, :cond_a

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move/from16 v0, v37

    move/from16 v1, v42

    if-lt v0, v1, :cond_b

    .line 586
    :cond_a
    const/4 v9, 0x1

    .line 591
    :cond_b
    :goto_8
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mLockingEnabled:Z

    move/from16 v42, v0

    if-eqz v42, :cond_c

    .line 592
    const-string v42, "Locking. (diff=%f(%f), left=%s, right=%s)"

    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mMinFaceDiffX:F

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/oppo/camera/rewind/app/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x3

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/oppo/camera/rewind/app/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->lockFaces(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    .line 598
    const/4 v7, 0x1

    .line 641
    .end local v30           #trLeft:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v31           #trRight:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v34           #wLeft:F
    .end local v37           #xBorder:I
    :cond_c
    :goto_9
    if-eqz v7, :cond_7

    .line 642
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->addNeighbour(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    invoke-static/range {v27 .. v28}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1700(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    .line 643
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->addNeighbour(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1700(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    goto/16 :goto_6

    .line 568
    .end local v6           #dSum:F
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    :cond_d
    move-object/from16 v30, v28

    .line 569
    .restart local v30       #trLeft:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    move-object/from16 v31, v27

    .restart local v31       #trRight:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    goto/16 :goto_7

    .line 589
    .restart local v6       #dSum:F
    .restart local v8       #diff:F
    .restart local v9       #doLock:Z
    .restart local v34       #wLeft:F
    .restart local v37       #xBorder:I
    :cond_e
    const/4 v9, 0x1

    goto :goto_8

    .line 604
    .end local v6           #dSum:F
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    .end local v30           #trLeft:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v31           #trRight:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v34           #wLeft:F
    .end local v37           #xBorder:I
    :cond_f
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_12

    .line 605
    move-object/from16 v32, v27

    .line 606
    .local v32, trTop:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    move-object/from16 v29, v28

    .line 611
    .local v29, trBottom:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    :goto_a
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->height()I

    move-result v42

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Rect;->height()I

    move-result v43

    add-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v6, v0

    .line 613
    .restart local v6       #dSum:F
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->height()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v35, v42, v6

    .line 614
    .local v35, wTop:F
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v8, v0

    .line 615
    .restart local v8       #diff:F
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v43, v35, v8

    add-float v42, v42, v43

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->round(F)I

    move-result v40

    .line 618
    .local v40, yBorder:I
    const/4 v9, 0x0

    .line 619
    .restart local v9       #doLock:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mMinFaceDiffY:F

    move/from16 v42, v0

    cmpl-float v42, v8, v42

    if-ltz v42, :cond_13

    .line 620
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 622
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 624
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v42, v0

    move/from16 v0, v40

    move/from16 v1, v42

    if-le v0, v1, :cond_10

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move/from16 v0, v40

    move/from16 v1, v42

    if-lt v0, v1, :cond_11

    .line 626
    :cond_10
    const/4 v9, 0x1

    .line 631
    :cond_11
    :goto_b
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mLockingEnabled:Z

    move/from16 v42, v0

    if-eqz v42, :cond_c

    .line 632
    const-string v42, "Locking. (diff=%f(%f), top=%s, bottom=%s)"

    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mMinFaceDiffY:F

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/oppo/camera/rewind/app/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x3

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/oppo/camera/rewind/app/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 637
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->lockFaces(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    .line 638
    const/4 v7, 0x1

    goto/16 :goto_9

    .line 608
    .end local v6           #dSum:F
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    .end local v29           #trBottom:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v32           #trTop:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v35           #wTop:F
    .end local v40           #yBorder:I
    :cond_12
    move-object/from16 v32, v28

    .line 609
    .restart local v32       #trTop:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    move-object/from16 v29, v27

    .restart local v29       #trBottom:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    goto/16 :goto_a

    .line 629
    .restart local v6       #dSum:F
    .restart local v8       #diff:F
    .restart local v9       #doLock:Z
    .restart local v35       #wTop:F
    .restart local v40       #yBorder:I
    :cond_13
    const/4 v9, 0x1

    goto :goto_b

    .line 532
    .end local v6           #dSum:F
    .end local v7           #didLock:Z
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    .end local v13           #facesIntersects:Z
    .end local v20           #r0:Landroid/graphics/Rect;
    .end local v21           #r1:Landroid/graphics/Rect;
    .end local v27           #tr0:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v28           #tr1:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v29           #trBottom:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v32           #trTop:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v35           #wTop:F
    .end local v40           #yBorder:I
    :cond_14
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 648
    .end local v15           #i:I
    .end local v19           #j:I
    .end local v25           #ti:Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/rewind/app/RectTracker;->filterFaces()Ljava/util/Vector;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/camera/rewind/app/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    .line 649
    return-void
.end method

.method private estimateDeltas()V
    .locals 15

    .prologue
    .line 1249
    iget-object v11, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMatches:[I

    .line 1250
    iget-object v11, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1251
    .local v7, id:I
    iget-object v11, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 1252
    .local v8, indexes:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    array-length v11, v8

    if-ge v5, v11, :cond_0

    .line 1253
    add-int/lit8 v11, v5, -0x1

    aget-object v10, v8, v11

    .line 1254
    .local v10, prevTr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    aget-object v1, v8, v5

    .line 1255
    .local v1, curTr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    if-eqz v10, :cond_1

    if-nez v1, :cond_2

    .line 1252
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1259
    :cond_2
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 1260
    .local v9, prev:Landroid/graphics/Rect;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1261
    .local v0, cur:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v12

    sub-float v3, v11, v12

    .line 1262
    .local v3, dx:F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v12

    sub-float v4, v11, v12

    .line 1263
    .local v4, dy:F
    iget-object v11, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mDeltas:Ljava/util/Vector;

    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v11, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    .line 1264
    .local v2, delta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->addObservation(FF)V
    invoke-static {v2, v3, v4}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$3600(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;FF)V

    .line 1265
    iget-object v11, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mTotalDelta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->addObservation(FF)V
    invoke-static {v11, v3, v4}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$3600(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;FF)V

    goto :goto_1

    .line 1268
    .end local v0           #cur:Landroid/graphics/Rect;
    .end local v1           #curTr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v2           #delta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    .end local v3           #dx:F
    .end local v4           #dy:F
    .end local v5           #i:I
    .end local v7           #id:I
    .end local v8           #indexes:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v9           #prev:Landroid/graphics/Rect;
    .end local v10           #prevTr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    iget-object v11, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-ge v5, v11, :cond_5

    .line 1269
    iget-object v11, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v11, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    .line 1270
    .restart local v2       #delta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->compute()V
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$3700(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)V

    .line 1271
    iget-object v11, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mTotalDelta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->compute()V
    invoke-static {v11}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$3700(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)V

    .line 1272
    const-string v11, "Delta       %d -> %d: (%f,%f), std dev = (%f, %f), n = %d"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    add-int/lit8 v14, v5, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$300(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mStdDevX:F
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$3800(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mStdDevY:F
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$3900(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$4000(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 1276
    iget-object v11, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1277
    iget-object v11, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v11, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #delta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    check-cast v2, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    .line 1278
    .restart local v2       #delta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    const-string v11, "(VFT) Delta %d -> %d: (%f,%f)"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    add-int/lit8 v14, v5, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$300(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 1281
    :cond_4
    iget-object v11, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMatches:[I

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$4000(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)I

    move-result v12

    aput v12, v11, v5

    .line 1268
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1283
    .end local v2           #delta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->updateMinMatches()V

    .line 1284
    const-string v11, "Total Delta: (%f,%f) std dev = (%f, %f)"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mTotalDelta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v14}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$300(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mTotalDelta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v14}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    iget-object v14, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mTotalDelta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mStdDevX:F
    invoke-static {v14}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$3800(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    iget-object v14, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mTotalDelta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mStdDevY:F
    invoke-static {v14}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$3900(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 1287
    return-void
.end method

.method private filterFaces()Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2010
    new-instance v2, Ljava/util/Vector;

    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/Vector;-><init>(I)V

    .line 2011
    .local v2, faces:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 2012
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    .line 2013
    .local v1, face:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v6

    if-nez v6, :cond_1

    .line 2014
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2011
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2016
    :cond_1
    const/4 v0, 0x1

    .line 2017
    .local v0, add:Z
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    .line 2018
    .local v5, lockedWith:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    invoke-virtual {v2, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2019
    const/4 v0, 0x0

    .line 2023
    .end local v5           #lockedWith:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    :cond_3
    if-eqz v0, :cond_0

    .line 2024
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2028
    .end local v0           #add:Z
    .end local v1           #face:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    return-object v2
.end method

.method private findFirstImage(Ljava/util/HashMap;I)I
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;>;"
    const/4 v2, -0x1

    .line 1751
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 1752
    .local v1, indexes:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    if-nez v1, :cond_1

    move v0, v2

    .line 1760
    :cond_0
    :goto_0
    return v0

    .line 1755
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 1756
    aget-object v3, v1, v0

    if-nez v3, :cond_0

    .line 1755
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1760
    goto :goto_0
.end method

.method private findLastImage(Ljava/util/HashMap;I)I
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;>;"
    const/4 v2, -0x1

    .line 1764
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 1765
    .local v1, indexes:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    if-nez v1, :cond_1

    move v0, v2

    .line 1773
    :cond_0
    :goto_0
    return v0

    .line 1768
    :cond_1
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 1769
    aget-object v3, v1, v0

    if-nez v3, :cond_0

    .line 1768
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1773
    goto :goto_0
.end method

.method private getDelta(I)Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    .locals 3
    .parameter "index"

    .prologue
    .line 1619
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    .line 1620
    .local v0, delta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$4000(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mUseVftForDelta:Z

    if-eqz v1, :cond_0

    .line 1621
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #delta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    check-cast v0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    .line 1623
    .restart local v0       #delta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    :cond_0
    return-object v0
.end method

.method private getRectInImage(II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .locals 1
    .parameter "id"
    .parameter "index"

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v0

    return-object v0
.end method

.method private getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .locals 3
    .parameter
    .parameter "id"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;II)",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;>;"
    const/4 v1, 0x0

    .line 1831
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1838
    :cond_0
    :goto_0
    return-object v1

    .line 1834
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 1835
    .local v0, indexes:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    aget-object v2, v0, p3

    if-eqz v2, :cond_0

    .line 1836
    aget-object v1, v0, p3

    goto :goto_0
.end method

.method private getTransforms()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1679
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mPredefined:Z

    if-nez v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;

    .line 1682
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mDeltas:Ljava/util/Vector;

    goto :goto_0
.end method

.method private guessRects(I)V
    .locals 13
    .parameter

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    .line 1541
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 1542
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1543
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 1544
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1545
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1547
    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v6, v1

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1548
    invoke-direct {p0, v6, v3}, Lcom/oppo/camera/rewind/app/RectTracker;->findFirstImage(Ljava/util/HashMap;I)I

    move-result v1

    .line 1549
    invoke-direct {p0, v6, v3}, Lcom/oppo/camera/rewind/app/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v7

    .line 1550
    invoke-direct {p0, v6, v3}, Lcom/oppo/camera/rewind/app/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v0

    .line 1554
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 1557
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1560
    const/4 v0, 0x0

    move v9, v0

    move v8, v1

    .line 1561
    :goto_2
    if-lez v8, :cond_3

    if-ge v9, p1, :cond_3

    .line 1562
    add-int/lit8 v2, v8, -0x1

    .line 1563
    invoke-direct {p0, v6, v3, v8}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v0

    .line 1564
    new-instance v4, Landroid/graphics/Rect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1565
    invoke-direct {p0, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->getDelta(I)Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    move-result-object v0

    .line 1566
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$300(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    neg-int v1, v1

    .line 1567
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    neg-int v0, v0

    .line 1568
    invoke-virtual {v4, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1569
    new-instance v0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IILandroid/graphics/Rect;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    .line 1570
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->add(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    invoke-static {v1, v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$800(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    .line 1571
    invoke-direct {p0, v6, v3, v2, v0}, Lcom/oppo/camera/rewind/app/RectTracker;->addId(Ljava/util/HashMap;IILcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    .line 1572
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mNumGuessed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mNumGuessed:I

    .line 1573
    const-string v0, "Making up rect (img=%d id=%d %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 1575
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1576
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1578
    :cond_2
    add-int/lit8 v0, v9, 0x1

    .line 1579
    add-int/lit8 v1, v8, -0x1

    move v9, v0

    move v8, v1

    .line 1580
    goto :goto_2

    .line 1581
    :cond_3
    if-lt v9, p1, :cond_4

    .line 1582
    invoke-direct {p0, v6, v11}, Lcom/oppo/camera/rewind/app/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v0

    .line 1583
    invoke-direct {p0, v0, v11}, Lcom/oppo/camera/rewind/app/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v0

    move-object v6, v0

    .line 1584
    goto/16 :goto_1

    .line 1587
    :cond_4
    const/4 v0, 0x0

    move v8, v7

    move v7, v0

    .line 1588
    :goto_3
    if-ltz v8, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_6

    if-ge v7, p1, :cond_6

    .line 1589
    add-int/lit8 v2, v8, 0x1

    .line 1590
    invoke-direct {p0, v6, v3, v8}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v0

    .line 1591
    new-instance v4, Landroid/graphics/Rect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1592
    invoke-direct {p0, v8}, Lcom/oppo/camera/rewind/app/RectTracker;->getDelta(I)Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    move-result-object v0

    .line 1593
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$300(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1594
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1595
    invoke-virtual {v4, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1596
    new-instance v0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IILandroid/graphics/Rect;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    .line 1597
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->add(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    invoke-static {v1, v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$800(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    .line 1598
    invoke-direct {p0, v6, v3, v2, v0}, Lcom/oppo/camera/rewind/app/RectTracker;->addId(Ljava/util/HashMap;IILcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    .line 1599
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mNumGuessed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mNumGuessed:I

    .line 1600
    const-string v0, "Making up rect (img=%d id=%d %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 1602
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1603
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1605
    :cond_5
    add-int/lit8 v0, v7, 0x1

    .line 1606
    add-int/lit8 v1, v8, 0x1

    move v7, v0

    move v8, v1

    .line 1607
    goto/16 :goto_3

    .line 1608
    :cond_6
    add-int v0, v9, v7

    .line 1609
    if-lez v0, :cond_8

    .line 1610
    invoke-direct {p0, v6, v11}, Lcom/oppo/camera/rewind/app/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v0

    .line 1611
    invoke-direct {p0, v0, v11}, Lcom/oppo/camera/rewind/app/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v0

    :goto_4
    move-object v6, v0

    .line 1613
    goto/16 :goto_1

    .line 1614
    :cond_7
    iput-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 1615
    return-void

    :cond_8
    move-object v0, v6

    goto :goto_4
.end method

.method private idsOverlaps(Ljava/util/HashMap;II)Z
    .locals 4
    .parameter
    .parameter "id0"
    .parameter "id1"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 1778
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 1779
    .local v1, indexes0:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 1780
    .local v2, indexes1:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 1781
    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 1782
    const/4 v3, 0x1

    .line 1785
    :goto_1
    return v3

    .line 1780
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1785
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private inNumImages(Ljava/util/HashMap;I)I
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1737
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;>;"
    const/4 v2, 0x0

    .line 1738
    .local v2, n:I
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 1739
    .local v1, indexes:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    if-nez v1, :cond_0

    .line 1740
    const/4 v3, 0x0

    .line 1747
    :goto_0
    return v3

    .line 1742
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 1743
    aget-object v3, v1, v0

    if-eqz v3, :cond_1

    .line 1744
    add-int/lit8 v2, v2, 0x1

    .line 1742
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 1747
    goto :goto_0
.end method

.method private increaseBuckets([Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;I)V
    .locals 2
    .parameter "buckets"
    .parameter "maxNum"

    .prologue
    .line 3253
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3254
    aget-object v1, p1, v0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$10100(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_0

    .line 3255
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;->access$10108(Lcom/oppo/camera/rewind/app/RectTracker$ConnectionBucket;)I

    .line 3253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3258
    :cond_1
    return-void
.end method

.method private isComplete(Ljava/util/HashMap;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1843
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1844
    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/rewind/app/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not complete id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/rewind/app/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 1846
    const/4 v0, 0x0

    .line 1849
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lockFaces(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1853
    const-string v0, "Locking faces (img=%d) %d and %d."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mImage:I
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1800(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {p2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 1855
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mFace:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$4500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    move-result-object v1

    .line 1856
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mFace:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    invoke-static {p2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$4500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    move-result-object v2

    .line 1857
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1858
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1, v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2302(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;Ljava/util/Vector;)Ljava/util/Vector;

    .line 1860
    :cond_0
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1861
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1863
    :cond_1
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1864
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2, v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2302(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;Ljava/util/Vector;)Ljava/util/Vector;

    .line 1866
    :cond_2
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1867
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1869
    :cond_3
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    .line 1870
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1871
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1874
    :cond_5
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    .line 1875
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1876
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1879
    :cond_7
    return-void
.end method

.method private logTranslations()V
    .locals 24

    .prologue
    .line 1175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    int-to-float v14, v1

    .line 1176
    .local v14, fdw:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    int-to-float v13, v1

    .line 1177
    .local v13, fdh:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1178
    .local v5, id:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 1179
    const/4 v15, 0x1

    .local v15, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v15, v1, :cond_0

    .line 1180
    add-int/lit8 v1, v15, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v22

    .line 1181
    .local v22, trPrev:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v21

    .line 1182
    .local v21, trCur:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    if-eqz v22, :cond_1

    if-nez v21, :cond_2

    .line 1183
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d -> %d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1179
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1187
    :cond_2
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_3

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1188
    :cond_3
    const-string v1, "%d -> %d: no rects"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->logdind(Ljava/lang/String;)V

    goto :goto_1

    .line 1191
    :cond_4
    const/high16 v1, 0x3f00

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v19, v1, v2

    .line 1192
    .local v19, mw:F
    const/high16 v1, 0x3f00

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v17, v1, v2

    .line 1193
    .local v17, mh:F
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v11, v1

    .line 1194
    .local v11, dx:F
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v12, v1

    .line 1195
    .local v12, dy:F
    div-float v6, v11, v19

    .line 1196
    .local v6, relDx:F
    div-float v7, v12, v17

    .line 1197
    .local v7, relDy:F
    const-string v1, "%d -> %d: (dx, dy) = (%f, %f) (rel to f. size)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1200
    .local v18, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mUseVfTracker:Z

    if-eqz v1, :cond_a

    .line 1201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;

    add-int/lit8 v2, v15, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    .line 1202
    .local v20, sp:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    div-float v6, v11, v14

    .line 1203
    div-float v7, v12, v13

    .line 1204
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F
    invoke-static/range {v20 .. v20}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$300(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v1

    div-float v8, v1, v14

    .line 1205
    .local v8, relVftDx:F
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F
    invoke-static/range {v20 .. v20}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v1

    div-float v9, v1, v13

    .line 1206
    .local v9, relVftDy:F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", (%f, %f), vft=(%f, %f)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1208
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/oppo/camera/rewind/app/RectTracker;->sMaxRelDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 1209
    sput v6, Lcom/oppo/camera/rewind/app/RectTracker;->sMaxRelDx:F

    .line 1211
    :cond_5
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/oppo/camera/rewind/app/RectTracker;->sMaxRelDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 1212
    sput v7, Lcom/oppo/camera/rewind/app/RectTracker;->sMaxRelDy:F

    .line 1214
    :cond_6
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/oppo/camera/rewind/app/RectTracker;->sMaxRelVftDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 1215
    sput v8, Lcom/oppo/camera/rewind/app/RectTracker;->sMaxRelVftDx:F

    .line 1217
    :cond_7
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/oppo/camera/rewind/app/RectTracker;->sMaxRelVftDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 1218
    sput v9, Lcom/oppo/camera/rewind/app/RectTracker;->sMaxRelVftDy:F

    .line 1220
    :cond_8
    sget-object v1, Lcom/oppo/camera/rewind/app/RectTracker;->sTranslations:Ljava/util/Vector;

    if-eqz v1, :cond_9

    .line 1221
    sget-object v23, Lcom/oppo/camera/rewind/app/RectTracker;->sTranslations:Ljava/util/Vector;

    new-instance v1, Lcom/oppo/camera/rewind/app/RectTracker$TranslationStatistics;

    sget v3, Lcom/oppo/camera/rewind/app/RectTracker;->sSequenceCount:I

    add-int/lit8 v4, v15, -0x1

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/oppo/camera/rewind/app/RectTracker$TranslationStatistics;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IIIFFFFLcom/oppo/camera/rewind/app/RectTracker$1;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1225
    :cond_9
    sget v1, Lcom/oppo/camera/rewind/app/RectTracker;->sDxdyCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/oppo/camera/rewind/app/RectTracker;->sDxdyCount:I

    .line 1227
    .end local v8           #relVftDx:F
    .end local v9           #relVftDy:F
    .end local v20           #sp:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    :cond_a
    invoke-static/range {v18 .. v18}, Lcom/oppo/camera/rewind/app/RectTracker;->logdind(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1230
    .end local v5           #id:I
    .end local v6           #relDx:F
    .end local v7           #relDy:F
    .end local v11           #dx:F
    .end local v12           #dy:F
    .end local v15           #i:I
    .end local v17           #mh:F
    .end local v18           #msg:Ljava/lang/String;
    .end local v19           #mw:F
    .end local v21           #trCur:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v22           #trPrev:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    :cond_b
    sget v1, Lcom/oppo/camera/rewind/app/RectTracker;->sSequenceCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/oppo/camera/rewind/app/RectTracker;->sSequenceCount:I

    .line 1231
    return-void
.end method

.method private static final logd(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3552
    sget-boolean v0, Lcom/oppo/camera/rewind/app/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    .line 3553
    const-string v0, "RectTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    :cond_0
    return-void
.end method

.method private static final logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 3558
    sget-boolean v0, Lcom/oppo/camera/rewind/app/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    .line 3559
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    :cond_0
    return-void
.end method

.method private static final logdind(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3564
    sget-boolean v0, Lcom/oppo/camera/rewind/app/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    .line 3565
    const-string v0, "RectTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    :cond_0
    return-void
.end method

.method private static final logw(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3548
    const-string v0, "RectTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    return-void
.end method

.method private meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .parameter "r0"
    .parameter "r1"

    .prologue
    const/high16 v8, 0x4000

    const/high16 v7, 0x3f00

    .line 1666
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    add-float/2addr v5, v6

    div-float v3, v5, v8

    .line 1667
    .local v3, xc:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    add-float/2addr v5, v6

    div-float v4, v5, v8

    .line 1668
    .local v4, yc:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v2, v5, v7

    .line 1669
    .local v2, w:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v0, v5, v7

    .line 1670
    .local v0, h:F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1671
    .local v1, r:Landroid/graphics/Rect;
    mul-float v5, v7, v2

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 1672
    mul-float v5, v7, v0

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 1673
    mul-float v5, v7, v2

    add-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 1674
    mul-float v5, v7, v0

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 1675
    return-object v1
.end method

.method private mergeAllRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1460
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/rewind/app/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v4

    .line 1461
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 1462
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1463
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1464
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1466
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v7, v1, [F

    .line 1469
    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1470
    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1471
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eq v9, v11, :cond_2

    .line 1475
    if-eqz p2, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1479
    :cond_3
    invoke-direct {p0, v4, v9}, Lcom/oppo/camera/rewind/app/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v1

    .line 1480
    invoke-direct {p0, v4, v11}, Lcom/oppo/camera/rewind/app/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v2

    .line 1481
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 1484
    const/4 v3, 0x0

    .line 1485
    const/4 v2, 0x0

    .line 1486
    const/4 v1, 0x0

    :goto_2
    iget-object v12, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v1, v12, :cond_5

    .line 1487
    invoke-direct {p0, v4, v9, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v12

    .line 1488
    invoke-direct {p0, v4, v11, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v13

    .line 1489
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v12}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v12

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v13}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {p0, v12, v13}, Lcom/oppo/camera/rewind/app/RectTracker;->rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v12

    .line 1490
    aput v12, v7, v1

    .line 1491
    add-float/2addr v2, v12

    .line 1492
    const v13, 0x3e4ccccd

    cmpg-float v12, v12, v13

    if-gez v12, :cond_4

    .line 1486
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1494
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1497
    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 1498
    if-lez v3, :cond_6

    .line 1499
    const-string v1, "id=%d and id=%d #overlaps=%d."

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v1, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 1502
    :cond_6
    const/4 v1, 0x0

    .line 1503
    iget-object v12, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-ne v3, v12, :cond_8

    .line 1504
    const/4 v1, 0x1

    .line 1508
    :cond_7
    :goto_4
    if-eqz v1, :cond_2

    .line 1511
    const-string v1, "id=%d and id=%d equal, merging (approx.)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v3

    const/4 v3, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 1513
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 1514
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    .line 1515
    invoke-direct {p0, v4, v9, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v3

    .line 1516
    invoke-direct {p0, v4, v11, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v12

    .line 1517
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v13

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v12}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-direct {p0, v13, v14}, Lcom/oppo/camera/rewind/app/RectTracker;->meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    .line 1518
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3, v13}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1202(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1519
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1513
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    .line 1505
    :cond_8
    const/4 v12, 0x1

    if-le v3, v12, :cond_7

    const v3, 0x3e19999a

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 1506
    const/4 v1, 0x1

    goto :goto_4

    .line 1522
    :cond_9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1525
    :cond_a
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1526
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1528
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# ids = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 1529
    if-eqz p2, :cond_d

    .line 1530
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1531
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1532
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1536
    :cond_d
    return-object v4
.end method

.method private mergeIds(Ljava/util/HashMap;II)V
    .locals 4
    .parameter
    .parameter "master"
    .parameter "slave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1790
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 1791
    .local v1, indexes0:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 1792
    .local v2, indexes1:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 1793
    aget-object v3, v1, v0

    if-nez v3, :cond_0

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 1794
    aget-object v3, v2, v0

    aput-object v3, v1, v0

    .line 1792
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1797
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    return-void
.end method

.method private mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1393
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/rewind/app/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v8

    .line 1394
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 1395
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 1396
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1397
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1402
    :cond_0
    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1403
    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1404
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eq v4, v13, :cond_2

    .line 1408
    if-eqz p2, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1412
    :cond_3
    invoke-direct {p0, v8, v4}, Lcom/oppo/camera/rewind/app/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v1

    .line 1413
    invoke-direct {p0, v8, v13}, Lcom/oppo/camera/rewind/app/RectTracker;->findFirstImage(Ljava/util/HashMap;I)I

    move-result v7

    .line 1414
    add-int/lit8 v3, v1, 0x1

    .line 1415
    if-ltz v1, :cond_2

    if-ltz v7, :cond_2

    add-int/lit8 v2, v1, 0x2

    if-ne v2, v7, :cond_2

    .line 1418
    invoke-direct {p0, v4, v3, v1, v8}, Lcom/oppo/camera/rewind/app/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1419
    invoke-direct {p0, v13, v3, v7, v8}, Lcom/oppo/camera/rewind/app/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1420
    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v5

    .line 1421
    const v6, 0x3e4ccccd

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 1424
    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 1425
    new-instance v1, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IILandroid/graphics/Rect;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    .line 1426
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    .line 1427
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->add(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    invoke-static {v2, v1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$800(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    .line 1428
    const-string v2, ""

    move v6, v7

    .line 1429
    :goto_2
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 1430
    invoke-direct {p0, v8, v13, v6}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v7

    .line 1431
    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    .line 1432
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {v7, v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1402(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;I)I

    .line 1433
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1429
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1435
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " X"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1438
    :cond_5
    const-string v5, "Merging (approx.) %d with %d (in images %s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v6, v7

    const/4 v7, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v6, v7

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 1441
    invoke-direct {p0, v8, v4, v3, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->addId(Ljava/util/HashMap;IILcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    .line 1442
    invoke-direct {p0, v8, v4, v13}, Lcom/oppo/camera/rewind/app/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    .line 1443
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1447
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# ids = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 1448
    if-eqz p2, :cond_8

    .line 1449
    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1450
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1451
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1455
    :cond_8
    return-object v8
.end method

.method private mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1300
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/rewind/app/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v9

    .line 1301
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 1302
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 1303
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1304
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1305
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1308
    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1309
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1312
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/oppo/camera/rewind/app/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v5

    .line 1318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v5, v1, :cond_1

    .line 1321
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v5, v1, :cond_1

    .line 1322
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13, v5}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v3

    .line 1323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    .line 1324
    const/4 v8, 0x0

    .line 1325
    const/4 v7, 0x0

    .line 1326
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 1327
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v1

    if-eq v1, v13, :cond_2

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->idsOverlaps(Ljava/util/HashMap;II)Z

    move-result v1

    if-nez v1, :cond_2

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1336
    new-instance v1, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;ILcom/oppo/camera/rewind/app/RectTracker$1;)V

    .line 1337
    if-eqz v7, :cond_3

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->compare(Lcom/oppo/camera/rewind/app/RectTracker$Comparison;)I
    invoke-static {v1, v7}, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->access$4200(Lcom/oppo/camera/rewind/app/RectTracker$Comparison;Lcom/oppo/camera/rewind/app/RectTracker$Comparison;)I

    move-result v2

    if-lez v2, :cond_b

    :cond_3
    :goto_3
    move-object v7, v1

    move-object v8, v4

    .line 1341
    goto :goto_2

    .line 1345
    :cond_4
    if-eqz v8, :cond_1

    if-eqz v7, :cond_1

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->isOk()Z
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->access$4300(Lcom/oppo/camera/rewind/app/RectTracker$Comparison;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1347
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {v8}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v3

    .line 1348
    const-string v2, ""

    .line 1349
    add-int/lit8 v1, v5, 0x1

    move v15, v1

    move-object v1, v2

    move v2, v15

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 1350
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v4

    .line 1351
    if-eqz v4, :cond_5

    .line 1352
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {v4, v13}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1402(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;I)I

    .line 1353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1349
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1355
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " X"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1358
    :cond_6
    const-string v2, "Merging %d with %d (in images %s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 1360
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1361
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1363
    :cond_7
    invoke-virtual {v10, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1364
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13, v3}, Lcom/oppo/camera/rewind/app/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    .line 1368
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/oppo/camera/rewind/app/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v5

    goto/16 :goto_1

    .line 1372
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# ids = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 1373
    if-eqz p2, :cond_a

    .line 1374
    invoke-virtual {v11}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1375
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1376
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1380
    :cond_a
    return-object v9

    :cond_b
    move-object v1, v7

    move-object v4, v8

    goto/16 :goto_3
.end method

.method private mergeRects(IIIILjava/util/HashMap;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3045
    if-ne p3, p4, :cond_0

    .line 3046
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Master image == slave image."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3048
    :cond_0
    sub-int v0, p3, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 3049
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Master image and slave image not next to each other."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3052
    :cond_1
    if-ne p1, p2, :cond_2

    .line 3053
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Master ID == slave ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3056
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    .line 3057
    if-le p4, p3, :cond_3

    move v0, v1

    .line 3063
    :goto_0
    const-string v3, ""

    .line 3064
    add-int v2, p3, v0

    move v7, v2

    move-object v2, v3

    move v3, v7

    .line 3065
    :goto_1
    if-ltz v3, :cond_5

    if-ge v3, v4, :cond_5

    .line 3066
    invoke-direct {p0, p5, p2, v3}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v5

    .line 3067
    if-eqz v5, :cond_4

    .line 3068
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3069
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {v5, p1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1402(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;I)I

    .line 3073
    :goto_2
    add-int/2addr v3, v0

    .line 3074
    goto :goto_1

    .line 3060
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 3071
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " X"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 3075
    :cond_5
    const-string v0, "Merging %d with %d (in images %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 3077
    invoke-direct {p0, p5, p1, p2}, Lcom/oppo/camera/rewind/app/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    .line 3078
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3079
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMatches:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 3080
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->updateMinMatches()V

    .line 3081
    return-void
.end method

.method private nonOverlapsBetween(Ljava/util/HashMap;II)[I
    .locals 6
    .parameter
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .line 2987
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;>;"
    const/4 v2, 0x0

    .line 2988
    .local v2, n:I
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 2989
    .local v3, trFrom:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v5

    invoke-direct {p0, p1, v5, p3}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v4

    .line 2990
    .local v4, trTo:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    if-nez v4, :cond_0

    .line 2991
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2994
    .end local v3           #trFrom:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v4           #trTo:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    :cond_1
    new-array v0, v2, [I

    .line 2995
    .local v0, fromIds:[I
    const/4 v2, 0x0

    .line 2996
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 2997
    .restart local v3       #trFrom:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v5

    invoke-direct {p0, p1, v5, p3}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v4

    .line 2998
    .restart local v4       #trTo:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    if-nez v4, :cond_2

    .line 2999
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v5

    aput v5, v0, v2

    .line 3000
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3003
    .end local v3           #trFrom:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v4           #trTo:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    :cond_3
    return-object v0
.end method

.method private numRectsInImage(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method private optimizeSelection()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 1902
    new-instance v7, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    .line 1903
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->optimize()V
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->access$4700(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;)V

    .line 1904
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mEndReached:Z
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->access$4800(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mState:Lcom/oppo/camera/rewind/app/RectTracker$State;

    iput-boolean v11, v0, Lcom/oppo/camera/rewind/app/RectTracker$State;->error:Z

    .line 1906
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mState:Lcom/oppo/camera/rewind/app/RectTracker$State;

    iput-boolean v3, v0, Lcom/oppo/camera/rewind/app/RectTracker$State;->compositionSuccessful:Z

    .line 1907
    const-string v0, "RectTracker"

    const-string v1, "Failed to determine best images."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :goto_0
    return-void

    .line 1910
    :cond_0
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->access$4900(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;

    .line 1911
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mBg:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5000(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)I

    move-result v5

    move v2, v3

    .line 1912
    :goto_1
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->access$4900(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v4, 0xa

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 1913
    const-string v4, "cand %f"

    new-array v6, v11, [Ljava/lang/Object;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->access$4900(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5100(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1912
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1915
    :cond_1
    const-string v1, "bg = %d"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    move v4, v3

    .line 1916
    :goto_2
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5200(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v4, v1, :cond_5

    .line 1917
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    .line 1918
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mId:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2200(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)I

    move-result v8

    .line 1919
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5200(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v2

    aget v2, v2, v4

    .line 1922
    if-gez v2, :cond_2

    .line 1923
    const-string v2, "%d (don\'t care)"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v3

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move v2, v5

    .line 1938
    :goto_3
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mSelectedImageIndex:I
    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$1902(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;I)I

    .line 1939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id %d: "

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v3

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1916
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 1925
    :cond_2
    if-eq v5, v2, :cond_4

    .line 1926
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->canReplace(II)Z
    invoke-static {v1, v5, v2}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$5300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1927
    const-string v6, "%d, cost = %f"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5400(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v10

    aget v10, v10, v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1930
    :cond_3
    const-string v6, "%d, (don\'t dare, %d cost = %f)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v11

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5400(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v2

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v9, v12

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move v2, v5

    .line 1932
    goto :goto_3

    .line 1935
    :cond_4
    const-string v6, "%d (bg)"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v3

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move v2, v5

    .line 1936
    goto :goto_3

    .line 1941
    :cond_5
    iput v5, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mBestImage:I

    .line 1942
    const-string v0, "num poss %d"

    new-array v1, v11, [Ljava/lang/Object;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mNumPossibilities:I
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->access$5500(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private privateAddImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V
    .locals 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3433
    const-string v1, "kangwei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "privateAddImage index :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    if-nez v1, :cond_0

    .line 3436
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->createFaceDetector()V

    .line 3439
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-nez v1, :cond_1

    .line 3440
    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    .line 3444
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3445
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    invoke-interface {v3, p1}, Lcom/scalado/caps/face/FaceDetector;->detectFaces(Lcom/scalado/base/Image;)Lcom/scalado/caps/face/FaceCollection;

    move-result-object v9

    .line 3447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3448
    iget-wide v5, p0, Lcom/oppo/camera/rewind/app/RectTracker;->totalFaceDetectionTime:J

    sub-long v1, v3, v1

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->totalFaceDetectionTime:J

    .line 3449
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    move/from16 v0, p3

    if-ne v0, v1, :cond_2

    .line 3450
    const-string v1, "RectTracker.Benchmark"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Face detection time is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->totalFaceDetectionTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3454
    :cond_2
    invoke-virtual {v9}, Lcom/scalado/caps/face/FaceCollection;->getSize()I

    move-result v10

    .line 3455
    const-string v1, "kangwei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collection.getSize() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    const-string v1, "[%d] Faces detected = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 3457
    if-lez v10, :cond_8

    .line 3458
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v10, :cond_8

    .line 3459
    invoke-virtual {v9, v8}, Lcom/scalado/caps/face/FaceCollection;->getFaceAt(I)Lcom/scalado/caps/face/Face;

    move-result-object v11

    .line 3460
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getSmilePercent()I

    move-result v12

    .line 3461
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getBlinkPercent()I

    move-result v13

    .line 3462
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3463
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getFaceRect()Lcom/scalado/base/Rect;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3464
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getId()I

    move-result v3

    .line 3465
    if-ltz v12, :cond_3

    if-gez v13, :cond_3

    .line 3469
    :cond_3
    move/from16 v0, p3

    invoke-direct {p0, v0, v3, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    .line 3471
    const/4 v4, 0x0

    .line 3472
    const/4 v5, 0x0

    .line 3473
    const/4 v6, 0x0

    .line 3474
    const/4 v7, 0x0

    .line 3475
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getLeftEyeRect()Lcom/scalado/base/Rect;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3476
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3477
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getLeftEyeRect()Lcom/scalado/base/Rect;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3479
    :cond_4
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getRightEyeRect()Lcom/scalado/base/Rect;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3480
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 3481
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getRightEyeRect()Lcom/scalado/base/Rect;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3483
    :cond_5
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getMouthRect()Lcom/scalado/base/Rect;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3484
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 3485
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getMouthRect()Lcom/scalado/base/Rect;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3487
    :cond_6
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getNoseRect()Lcom/scalado/base/Rect;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3488
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 3489
    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getNoseRect()Lcom/scalado/base/Rect;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    :cond_7
    move-object v1, p0

    move/from16 v2, p3

    .line 3491
    invoke-direct/range {v1 .. v7}, Lcom/oppo/camera/rewind/app/RectTracker;->setFeatures(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3492
    move/from16 v0, p3

    invoke-virtual {p0, v0, v3, v12, v13}, Lcom/oppo/camera/rewind/app/RectTracker;->setSmileBlink(IIII)V

    .line 3494
    const-string v1, "%s, id = %d (s=%d, b=%d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v11}, Lcom/scalado/caps/face/Face;->getFaceRect()Lcom/scalado/base/Rect;

    move-result-object v5

    invoke-static {v5}, Lcom/oppo/camera/rewind/app/Geom;->rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->logdind(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3458
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_0

    .line 3501
    :catch_0
    move-exception v1

    .line 3502
    const-string v2, "RectTracker"

    const-string v3, "Excpetion:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3504
    :cond_8
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mListener:Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;

    if-eqz v1, :cond_9

    .line 3505
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mListener:Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;

    move/from16 v0, p3

    invoke-interface {v1, v0}, Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;->onImageAnalyzed(I)V

    .line 3507
    :cond_9
    return-void
.end method

.method private rankId(I[Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v8

    .line 2130
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_1

    .line 2131
    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v5

    .line 2133
    if-eqz v5, :cond_0

    .line 2134
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->computeScore()F
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$6700(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)F

    move-result v0

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mScore:F
    invoke-static {v5, v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$6602(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;F)F

    .line 2135
    new-instance v0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mScore:F
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$6600(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)F

    move-result v4

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IIFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$1;)V

    aput-object v0, p2, v2

    .line 2130
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2137
    :cond_0
    new-instance v0, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;

    const/high16 v4, -0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IIFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;ZLcom/oppo/camera/rewind/app/RectTracker$1;)V

    aput-object v0, p2, v2

    goto :goto_1

    .line 2147
    :cond_1
    invoke-direct {p0, p2}, Lcom/oppo/camera/rewind/app/RectTracker;->allIdsSame([Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z

    move-result v0

    .line 2148
    if-eqz v0, :cond_3

    .line 2149
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_2

    .line 2150
    aget-object v1, p2, v0

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    const/4 v2, -0x1

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRank:I
    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$2002(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;I)I

    .line 2149
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2152
    :cond_2
    const/4 v0, 0x0

    .line 2160
    :goto_3
    return v0

    .line 2154
    :cond_3
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2155
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v8, :cond_5

    .line 2156
    aget-object v1, p2, v0

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    if-eqz v1, :cond_4

    .line 2157
    aget-object v1, p2, v0

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRank:I
    invoke-static {v1, v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$2002(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;I)I

    .line 2155
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2160
    :cond_5
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private rankImages()I
    .locals 14

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    .line 2033
    new-array v5, v4, [I

    .line 2039
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    .line 2040
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2043
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v6, v1, [Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    .line 2044
    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 2045
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 2046
    add-int/lit8 v7, v2, 0x1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    aput-object v1, v6, v7

    .line 2045
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 2061
    :cond_1
    array-length v0, v6

    new-array v7, v0, [Lcom/oppo/camera/rewind/app/RectTracker$RankedId;

    .line 2062
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2063
    const/4 v1, 0x0

    :goto_2
    array-length v2, v6

    if-ge v1, v2, :cond_2

    .line 2064
    aget-object v2, v6, v1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mInstances:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2400(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v2

    aget-object v2, v2, v0

    .line 2065
    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct {p0, v0, v8, v9, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->createRankedId(IIFLcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Lcom/oppo/camera/rewind/app/RectTracker$RankedId;

    move-result-object v2

    aput-object v2, v7, v1

    .line 2063
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2067
    :cond_2
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2068
    const/4 v1, 0x0

    :goto_3
    array-length v2, v6

    if-ge v1, v2, :cond_4

    .line 2069
    aget-object v2, v6, v1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mInstances:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2400(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v2

    aget-object v8, v2, v0

    .line 2070
    const/4 v2, 0x1

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mLockedWith:Z
    invoke-static {v8, v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$5902(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Z)Z

    .line 2071
    const/4 v2, 0x0

    aget-object v2, v7, v2

    iget-object v2, v2, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mBlink:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$2700(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v2

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSupersededBlink:I
    invoke-static {v8, v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$6002(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;I)I

    .line 2072
    const/4 v2, 0x0

    aget-object v2, v7, v2

    iget-object v2, v2, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSmile:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$2600(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v2

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSupersededSmile:I
    invoke-static {v8, v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$6102(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;I)I

    .line 2073
    const/4 v2, 0x0

    aget-object v2, v7, v2

    iget-object v2, v2, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mHasSmileBlink:Z
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$2500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z

    move-result v2

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSupersededHasSmileBlink:Z
    invoke-static {v8, v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$6202(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Z)Z

    .line 2074
    const/4 v2, 0x0

    aget-object v2, v7, v2

    iget-object v2, v2, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_4
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSupersededHasRect:Z
    invoke-static {v8, v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$6302(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Z)Z

    .line 2068
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2074
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 2062
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2078
    :cond_5
    const/4 v0, 0x0

    invoke-static {v5, v0}, Ljava/util/Arrays;->fill([II)V

    .line 2079
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 2080
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    .line 2081
    new-array v6, v4, [Lcom/oppo/camera/rewind/app/RectTracker$RankedId;

    .line 2082
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mId:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2200(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)I

    move-result v2

    invoke-direct {p0, v2, v6}, Lcom/oppo/camera/rewind/app/RectTracker;->rankId(I[Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z

    move-result v2

    .line 2083
    add-int/lit8 v3, v4, -0x1

    aget-object v3, v6, v3

    iget v7, v3, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mImageIndex:I

    .line 2084
    const-string v8, "   "

    .line 2085
    if-eqz v2, :cond_9

    .line 2086
    const-string v2, "id %d (best img = %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mId:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2200(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 2087
    const/4 v2, 0x0

    :goto_6
    array-length v3, v6

    if-ge v2, v3, :cond_8

    .line 2088
    aget-object v3, v6, v2

    iget-object v3, v3, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mTrackedRect:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 2089
    const-string v9, "%simg=%d, (score=%1.5f)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const/4 v11, 0x1

    aget-object v12, v6, v2

    iget v12, v12, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mImageIndex:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aget-object v12, v6, v2

    iget v12, v12, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mScore:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2091
    if-eqz v3, :cond_7

    .line 2092
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mHasSmileBlink:Z
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$2500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2093
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rank=%d, (s=%d, b=%d)"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRank:I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$2000(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSmile:I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$2600(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mBlink:I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$2700(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2102
    :goto_7
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 2087
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2096
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rank=%d, [no s & b]"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRank:I
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$2000(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 2100
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", [no rect]"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 2104
    :cond_8
    aget v2, v5, v7

    add-int/lit8 v2, v2, 0x1

    aput v2, v5, v7

    .line 2112
    :goto_8
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mBestMap:Ljava/util/HashMap;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mId:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2200(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mRanked:[Lcom/oppo/camera/rewind/app/RectTracker$RankedId;
    invoke-static {v0, v6}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$6502(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;[Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)[Lcom/oppo/camera/rewind/app/RectTracker$RankedId;

    .line 2079
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5

    .line 2106
    :cond_9
    const-string v2, "id %d (best img = ?)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mId:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2200(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 2107
    const-string v2, "%sWARNING: id %d couldn\'t determine best image."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v3, v7

    const/4 v7, 0x1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mId:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2200(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V

    .line 2110
    const/4 v2, 0x1

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mAllSame:Z
    invoke-static {v0, v2}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$6402(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;Z)Z

    goto :goto_8

    .line 2115
    :cond_a
    const/4 v2, -0x1

    .line 2116
    const/4 v0, -0x1

    .line 2117
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v4, :cond_c

    .line 2118
    aget v3, v5, v1

    if-le v3, v2, :cond_b

    .line 2119
    aget v0, v5, v1

    move v2, v0

    move v0, v1

    .line 2117
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2123
    :cond_c
    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mBestImage:I

    .line 2124
    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMaxScoreImage:I

    .line 2125
    return v0
.end method

.method private rectCenterDist(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 4
    .parameter "r0"
    .parameter "r1"

    .prologue
    .line 3014
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float v0, v2, v3

    .line 3015
    .local v0, dx:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float v1, v2, v3

    .line 3016
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 6
    .parameter "r0"
    .parameter "r1"

    .prologue
    .line 1651
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1652
    .local v1, intRect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 1653
    .local v2, overlap:F
    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1654
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    .line 1655
    .local v0, intArea:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v3, v4

    .line 1656
    .local v3, totArea:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 1657
    sub-float/2addr v3, v0

    .line 1658
    div-float v2, v0, v3

    .line 1662
    .end local v0           #intArea:F
    .end local v3           #totArea:F
    :goto_0
    return v2

    .line 1660
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private recycleFaceDetection()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3541
    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    .line 3542
    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    .line 3543
    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    .line 3544
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->totalFaceDetectionTime:J

    .line 3545
    return-void
.end method

.method private relativeFaceDist(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/PointF;
    .locals 8
    .parameter "trPrev"
    .parameter "trCur"

    .prologue
    const/4 v6, 0x0

    .line 1984
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2004
    :cond_0
    :goto_0
    return-object v6

    .line 1987
    :cond_1
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_0

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1990
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v3, v6

    .line 1991
    .local v3, fdw:F
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v2, v6

    .line 1997
    .local v2, fdh:F
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v0, v6

    .line 1998
    .local v0, dx:F
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v1, v6

    .line 2002
    .local v1, dy:F
    div-float v4, v0, v3

    .line 2003
    .local v4, relDx:F
    div-float v5, v1, v2

    .line 2004
    .local v5, relDy:F
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method private setFeatures(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "image"
    .parameter "id"
    .parameter "leftEye"
    .parameter "rightEye"
    .parameter "mouth"
    .parameter "nose"

    .prologue
    const/4 v2, 0x0

    .line 363
    invoke-direct {p0, p2, p1}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v0

    .line 364
    .local v0, tr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    .line 365
    :cond_0
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$900(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_1

    .line 366
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$902(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    .line 368
    :cond_1
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$900(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    aput-object v1, v3, v4

    .line 369
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$900(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz p4, :cond_2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_2
    aput-object v2, v1, v3

    .line 371
    :cond_3
    return-void

    :cond_4
    move-object v1, v2

    .line 368
    goto :goto_0
.end method

.method private updateMapForRect(Ljava/util/HashMap;ILcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    .locals 7
    .parameter
    .parameter "imageIndex"
    .parameter "rect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;I",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1812
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;>;"
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    .line 1813
    .local v4, ti:Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1814
    .local v3, rectIndex:I
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {p3}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v0

    .line 1815
    .local v0, id:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1816
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v1, v5, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 1817
    .local v1, indexes:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 1818
    const/4 v5, 0x0

    aput-object v5, v1, v2

    .line 1817
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1820
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    .end local v1           #indexes:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    .end local v2           #k:I
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    aput-object v6, v5, p2

    .line 1823
    return-void
.end method

.method private updateMinMatches()V
    .locals 3

    .prologue
    .line 3007
    const v0, 0x7fffffff

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMinMatches:I

    .line 3008
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMatches:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3009
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMatches:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMinMatches:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMinMatches:I

    .line 3008
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3011
    :cond_0
    return-void
.end method


# virtual methods
.method public analyze()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 390
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->calculateStatistics()V

    .line 391
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->estimateDeltas()V

    .line 392
    iget-boolean v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mPredefined:Z

    if-nez v1, :cond_1

    .line 393
    iget-boolean v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mGuessRects:Z

    if-eqz v1, :cond_3

    .line 394
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->connectAllImages()V

    .line 395
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 397
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 399
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->guessRects(I)V

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->mergeAllRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 406
    .end local v0           #i:I
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mAlignRectSizes:Z

    if-eqz v1, :cond_2

    .line 408
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->alignRectSizes()V

    .line 411
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->logTranslations()V

    .line 413
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->isComplete(Ljava/util/HashMap;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mIsComplete:Z

    .line 414
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mState:Lcom/oppo/camera/rewind/app/RectTracker$State;

    iget-boolean v2, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mIsComplete:Z

    iput-boolean v2, v1, Lcom/oppo/camera/rewind/app/RectTracker$State;->isComplete:Z

    .line 415
    return-void

    .line 403
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    goto :goto_1
.end method

.method public analyzeImages()Lcom/oppo/camera/rewind/app/RectTracker$State;
    .locals 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mAnalyzeComplete:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mState:Lcom/oppo/camera/rewind/app/RectTracker$State;

    .line 279
    :goto_0
    return-object v0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->analyze()V

    .line 267
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mState:Lcom/oppo/camera/rewind/app/RectTracker$State;

    iget-boolean v0, v0, Lcom/oppo/camera/rewind/app/RectTracker$State;->error:Z

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mState:Lcom/oppo/camera/rewind/app/RectTracker$State;

    goto :goto_0

    .line 270
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->analyze2()V

    .line 271
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceScaleX:F

    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceScaleY:F

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->enlargeRectangles(FF)V

    .line 272
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->rankImages()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mBestImage:I

    .line 273
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->calculateOptimalImages2()V

    .line 274
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->optimizeSelection()V

    .line 275
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->recycleFaceDetection()V

    .line 276
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mListener:Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mListener:Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;->onAnalyzeComplete()V

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mState:Lcom/oppo/camera/rewind/app/RectTracker$State;

    goto :goto_0
.end method

.method public deltaX(II)I
    .locals 2
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 1043
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->getTransforms()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->accumulateDelta(IILjava/util/Vector;)Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    move-result-object v0

    .line 1044
    .local v0, translation:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$300(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public deltaY(II)I
    .locals 2
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 1056
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->getTransforms()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/oppo/camera/rewind/app/RectTracker;->accumulateDelta(IILjava/util/Vector;)Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    move-result-object v0

    .line 1057
    .local v0, translation:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public getBestStartImage()I
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mBestImage:I

    return v0
.end method

.method public getId(II)I
    .locals 1
    .parameter "imageIndex"
    .parameter "rectIndex"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v0

    return v0
.end method

.method public getRect(II)Landroid/graphics/Rect;
    .locals 2
    .parameter "imageIndex"
    .parameter "rectIndex"

    .prologue
    .line 831
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 832
    .local v0, r:Landroid/graphics/Rect;
    return-object v0
.end method

.method public getRectById(II)Landroid/graphics/Rect;
    .locals 3
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 846
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 847
    .local v0, indexes:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 848
    :cond_0
    const/4 v1, 0x0

    .line 850
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getSafeEnlargedRect(II)Landroid/graphics/Rect;
    .locals 7
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 909
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 910
    .local v2, indexes:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    if-eqz v2, :cond_0

    aget-object v5, v2, p1

    if-nez v5, :cond_2

    .line 913
    :cond_0
    const/4 v4, 0x0

    .line 934
    :cond_1
    :goto_0
    return-object v4

    .line 915
    :cond_2
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    .line 916
    .local v0, face:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 917
    const/4 v4, 0x0

    .line 918
    .local v4, r:Landroid/graphics/Rect;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mInstances:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2400(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_3

    .line 919
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #r:Landroid/graphics/Rect;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mInstances:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2400(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 921
    .restart local v4       #r:Landroid/graphics/Rect;
    :cond_3
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    .line 922
    .local v3, lockedFace:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mInstances:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2400(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 925
    if-eqz v4, :cond_5

    .line 926
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mInstances:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2400(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 928
    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #r:Landroid/graphics/Rect;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mInstances:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2400(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v4       #r:Landroid/graphics/Rect;
    goto :goto_1

    .line 934
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #lockedFace:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    .end local v4           #r:Landroid/graphics/Rect;
    :cond_6
    aget-object v5, v2, p1

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mIsComplete:Z

    return v0
.end method

.method public numRects()I
    .locals 1

    .prologue
    .line 769
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mMaxNumRects:I

    return v0
.end method

.method public numRects(I)I
    .locals 1
    .parameter "imageIndex"

    .prologue
    const/4 v0, -0x1

    .line 765
    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public recycle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1092
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    .line 1093
    .local v1, ti:Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;
    invoke-static {v1, v3}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$502(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;Lcom/scalado/base/Image;)Lcom/scalado/base/Image;

    goto :goto_0

    .line 1095
    .end local v1           #ti:Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker;->recycleFaceDetection()V

    .line 1096
    iput-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;

    .line 1097
    iput-object v3, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mUtils:Lcom/oppo/camera/rewind/app/TrackerUtils;

    .line 1098
    return-void
.end method

.method public setFaceDetectionDims(Lcom/scalado/base/Size;)V
    .locals 1
    .parameter "dims"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 239
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mUtils:Lcom/oppo/camera/rewind/app/TrackerUtils;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/app/TrackerUtils;->setFaceDetectionDims(Lcom/scalado/base/Size;)V

    .line 240
    return-void
.end method

.method public setRectScaling(FF)V
    .locals 0
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 219
    iput p1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceScaleX:F

    .line 220
    iput p2, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mFaceScaleY:F

    .line 221
    return-void
.end method

.method public setScreenDims(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 206
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mScreenDims:Lcom/scalado/base/Size;

    .line 207
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mUtils:Lcom/oppo/camera/rewind/app/TrackerUtils;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/rewind/app/TrackerUtils;->setScreenDims(II)V

    .line 208
    return-void
.end method

.method public setSmileBlink(IIII)V
    .locals 1
    .parameter "image"
    .parameter "id"
    .parameter "smile"
    .parameter "blink"

    .prologue
    .line 382
    invoke-direct {p0, p2, p1}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectInImage(II)Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v0

    .line 383
    .local v0, tr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->setSmileBlink(II)V
    invoke-static {v0, p3, p4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1000(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;II)V

    .line 384
    return-void
.end method

.method public trackImage(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 243
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mUtils:Lcom/oppo/camera/rewind/app/TrackerUtils;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/rewind/app/TrackerUtils;->getFaceTrackingImage(I)Lcom/scalado/base/Image;

    move-result-object v0

    .line 244
    .local v0, image:Lcom/scalado/base/Image;
    iget-boolean v1, p0, Lcom/oppo/camera/rewind/app/RectTracker;->mUseVfTracker:Z

    if-eqz v1, :cond_0

    .line 245
    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/RectTracker;->applyViewfinderTracker(Lcom/scalado/base/Image;)V

    .line 247
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/oppo/camera/rewind/app/RectTracker;->privateAddImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V

    .line 248
    return-void
.end method
