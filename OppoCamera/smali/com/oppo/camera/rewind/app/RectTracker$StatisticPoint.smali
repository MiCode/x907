.class Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatisticPoint"
.end annotation


# instance fields
.field private mDx:F

.field private mDy:F

.field private mMaxX:F

.field private mMaxY:F

.field private mMinX:F

.field private mMinY:F

.field private mSize:I

.field private mStdDevX:F

.field private mStdDevY:F

.field private mSumX:F

.field private mSumX2:F

.field private mSumY:F

.field private mSumY2:F

.field private mVarX:F

.field private mVarY:F

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RectTracker;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f7fffff

    const/high16 v1, -0x80

    const/4 v0, 0x0

    .line 2864
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2847
    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumX:F

    .line 2848
    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumY:F

    .line 2849
    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F

    .line 2850
    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F

    .line 2851
    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mVarX:F

    .line 2852
    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mVarY:F

    .line 2853
    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mStdDevX:F

    .line 2854
    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mStdDevY:F

    .line 2855
    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumX2:F

    .line 2856
    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumY2:F

    .line 2857
    iput v2, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mMinX:F

    .line 2858
    iput v2, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mMinY:F

    .line 2859
    iput v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mMaxX:F

    .line 2860
    iput v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mMaxY:F

    .line 2862
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSize:I

    .line 2865
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;Lcom/oppo/camera/rewind/app/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2846
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;)V

    return-void
.end method

.method static synthetic access$10000(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2846
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mMaxX:F

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2846
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2846
    iput p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F

    return p1
.end method

.method static synthetic access$316(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2846
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F

    return v0
.end method

.method static synthetic access$324(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2846
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F

    return v0
.end method

.method static synthetic access$3600(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2846
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->addObservation(FF)V

    return-void
.end method

.method static synthetic access$3700(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2846
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->compute()V

    return-void
.end method

.method static synthetic access$3800(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2846
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mStdDevX:F

    return v0
.end method

.method static synthetic access$3900(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2846
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mStdDevY:F

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2846
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F

    return v0
.end method

.method static synthetic access$4000(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2846
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSize:I

    return v0
.end method

.method static synthetic access$402(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2846
    iput p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F

    return p1
.end method

.method static synthetic access$416(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2846
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F

    return v0
.end method

.method static synthetic access$424(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2846
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F

    return v0
.end method

.method static synthetic access$4400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;Landroid/graphics/Rect;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2846
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->offset(Landroid/graphics/Rect;F)V

    return-void
.end method

.method static synthetic access$9500(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2846
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->offset(Landroid/graphics/Rect;)V

    return-void
.end method

.method private addObservation(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2868
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumX:F

    .line 2869
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumY:F

    .line 2870
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumX2:F

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumX2:F

    .line 2871
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumY2:F

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumY2:F

    .line 2872
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mMinX:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mMinX:F

    .line 2873
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mMaxX:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mMaxX:F

    .line 2874
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mMinY:F

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mMinY:F

    .line 2875
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mMaxY:F

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mMaxY:F

    .line 2876
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSize:I

    .line 2877
    return-void
.end method

.method private compute()V
    .locals 3

    .prologue
    .line 2880
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumX:F

    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F

    .line 2881
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumY:F

    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F

    .line 2882
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumX2:F

    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F

    iget v2, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mVarX:F

    .line 2883
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSumY2:F

    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F

    iget v2, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mVarY:F

    .line 2884
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mVarX:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mStdDevX:F

    .line 2885
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mVarY:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mStdDevY:F

    .line 2886
    return-void
.end method

.method private offset(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 2889
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2890
    return-void
.end method

.method private offset(Landroid/graphics/Rect;F)V
    .locals 2
    .parameter "r"
    .parameter "factor"

    .prologue
    .line 2893
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2895
    return-void
.end method
