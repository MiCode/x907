.class Lcom/oppo/camera/rewind/app/RectTracker$Comparison;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Comparison"
.end annotation


# instance fields
.field private mDdx:F

.field private mDdy:F

.field private mDeltaIndex:I

.field private mIntersection:Landroid/graphics/Rect;

.field private mOverlap:F

.field private mR0:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

.field private mR1:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RectTracker;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;I)V
    .locals 0
    .parameter
    .parameter "r0"
    .parameter "r1"
    .parameter "deltaIndex"

    .prologue
    .line 2908
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2909
    iput-object p2, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mR0:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 2910
    iput-object p3, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mR1:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    .line 2911
    iput p4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mDeltaIndex:I

    .line 2912
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->init()V

    .line 2913
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;ILcom/oppo/camera/rewind/app/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 2898
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/oppo/camera/rewind/app/RectTracker$Comparison;Lcom/oppo/camera/rewind/app/RectTracker$Comparison;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2898
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->compare(Lcom/oppo/camera/rewind/app/RectTracker$Comparison;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/oppo/camera/rewind/app/RectTracker$Comparison;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2898
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->isOk()Z

    move-result v0

    return v0
.end method

.method private compare(Lcom/oppo/camera/rewind/app/RectTracker$Comparison;)I
    .locals 6
    .parameter "comp"

    .prologue
    const/4 v2, 0x1

    .line 2929
    iget v3, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mOverlap:F

    iget v4, p1, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mOverlap:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 2940
    :cond_0
    :goto_0
    return v2

    .line 2931
    :cond_1
    iget v3, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mOverlap:F

    iget v4, p1, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mOverlap:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 2932
    iget v3, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mDdx:F

    iget v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mDdx:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mDdy:F

    iget v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mDdy:F

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    .line 2933
    .local v0, md:F
    iget v3, p1, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mDdx:F

    iget v4, p1, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mDdx:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mDdy:F

    iget v5, p1, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mDdy:F

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 2934
    .local v1, od:F
    cmpg-float v3, v0, v1

    if-ltz v3, :cond_0

    .line 2936
    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    .line 2937
    const/4 v2, 0x0

    goto :goto_0

    .line 2940
    .end local v0           #md:F
    .end local v1           #od:F
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 2916
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    iget v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mDeltaIndex:I

    #calls: Lcom/oppo/camera/rewind/app/RectTracker;->getDelta(I)Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    invoke-static {v4, v5}, Lcom/oppo/camera/rewind/app/RectTracker;->access$9400(Lcom/oppo/camera/rewind/app/RectTracker;I)Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    move-result-object v0

    .line 2917
    .local v0, delta:Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mR0:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$300(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v5

    add-float v2, v4, v5

    .line 2918
    .local v2, xt:F
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mR0:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v5

    add-float v3, v4, v5

    .line 2919
    .local v3, yt:F
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mR1:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    sub-float/2addr v4, v2

    iput v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mDdx:F

    .line 2920
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mR1:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    sub-float/2addr v4, v3

    iput v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mDdy:F

    .line 2922
    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mR0:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2923
    .local v1, moved:Landroid/graphics/Rect;
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->offset(Landroid/graphics/Rect;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$9500(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;Landroid/graphics/Rect;)V

    .line 2924
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mIntersection:Landroid/graphics/Rect;

    .line 2925
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mIntersection:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mR1:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v4, v1, v5}, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->intersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v4

    iput v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mOverlap:F

    .line 2926
    return-void
.end method

.method private intersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 5
    .parameter "intRect"
    .parameter "r0"
    .parameter "r1"

    .prologue
    .line 2955
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2956
    const/4 v1, 0x0

    .line 2957
    .local v1, overlap:F
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2958
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v0, v3

    .line 2959
    .local v0, intArea:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v2, v3

    .line 2960
    .local v2, totArea:F
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 2961
    sub-float/2addr v2, v0

    .line 2962
    div-float v1, v0, v2

    .line 2966
    .end local v0           #intArea:F
    .end local v2           #totArea:F
    :goto_0
    return v1

    .line 2964
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOk()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2944
    const-string v2, "isOk (im=%d, id=%d) -> (im=%d, id=%d) overlap=%f"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mR0:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mImage:I
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1800(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mR0:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mR1:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mImage:I
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1800(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mR1:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mOverlap:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker;->access$8800(Ljava/lang/String;)V

    .line 2951
    iget v2, p0, Lcom/oppo/camera/rewind/app/RectTracker$Comparison;->mOverlap:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
