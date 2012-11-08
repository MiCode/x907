.class Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionOptimizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;
    }
.end annotation


# instance fields
.field private MAX_COST:F

.field private mCandidates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;",
            ">;"
        }
    .end annotation
.end field

.field private mCurBgIndex:I

.field private mEndReached:Z

.field private mNumPossibilities:I

.field private mWorkPoint:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RectTracker;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;)V
    .locals 1
    .parameter

    .prologue
    .line 2450
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2443
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    .line 2444
    const v0, 0x3d75c28f

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->MAX_COST:F

    .line 2448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mEndReached:Z

    .line 2458
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;Lcom/oppo/camera/rewind/app/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2439
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2439
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->optimize()V

    return-void
.end method

.method static synthetic access$4800(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2439
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mEndReached:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2439
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    return v0
.end method

.method private eval()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2526
    new-instance v5, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;

    iget v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    const/4 v8, 0x0

    invoke-direct {v5, p0, v7, v8}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;-><init>(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;ILcom/oppo/camera/rewind/app/RectTracker$1;)V

    .line 2527
    .local v5, selection:Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;
    const/4 v6, 0x0

    .line 2528
    .local v6, sumCost:F
    const/4 v3, 0x0

    .line 2529
    .local v3, maxCost:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7800(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 2530
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7800(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    .line 2531
    .local v1, face:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$7900(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)I

    move-result v7

    iget v8, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    if-ne v7, v8, :cond_0

    .line 2532
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5200(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v7

    iget v8, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    aput v8, v7, v2

    .line 2533
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5400(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v7

    aput v10, v7, v2

    .line 2534
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mCanReplace:Z
    invoke-static {v1, v9}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$8402(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;Z)Z

    .line 2529
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2537
    :cond_0
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$8300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 2540
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5200(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v7

    const/4 v8, -0x1

    aput v8, v7, v2

    .line 2541
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5400(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v7

    aput v10, v7, v2

    .line 2542
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mCanReplace:Z
    invoke-static {v1, v9}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$8402(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;Z)Z

    goto :goto_1

    .line 2553
    :cond_1
    iget v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$7900(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)I

    move-result v8

    invoke-direct {p0, v1, v7, v8}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->getCost(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;II)F

    move-result v0

    .line 2554
    .local v0, curCost:F
    cmpg-float v7, v0, v10

    if-gez v7, :cond_2

    .line 2555
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mUnreliable:Z
    invoke-static {v5, v9}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$8702(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;Z)Z

    .line 2557
    const/high16 v0, 0x42c8

    .line 2561
    :goto_2
    add-float/2addr v6, v0

    .line 2562
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2563
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5400(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v7

    aput v0, v7, v2

    .line 2564
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5200(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v7

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$7900(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)I

    move-result v8

    aput v8, v7, v2

    goto :goto_1

    .line 2559
    :cond_2
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mCanReplace:Z
    invoke-static {v1, v9}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$8402(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;Z)Z

    goto :goto_2

    .line 2569
    .end local v0           #curCost:F
    .end local v1           #face:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    :cond_3
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v5, v6}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5102(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;F)F

    .line 2571
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2572
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2590
    :cond_4
    :goto_3
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_8

    .line 2591
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    iget-object v8, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 2574
    :cond_5
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v2

    .line 2575
    :goto_4
    if-lez v2, :cond_6

    .line 2576
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5100(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)F

    move-result v7

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5100(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_7

    .line 2581
    :cond_6
    const/4 v7, 0x0

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2582
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7, v5, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 2583
    add-int/lit8 v7, v2, 0x1

    iget-object v8, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 2584
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;

    .line 2585
    .local v4, pone:Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5100(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)F

    move-result v7

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->access$5100(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    .line 2586
    const-string v7, "Muppet!"

    #calls: Lcom/oppo/camera/rewind/app/RectTracker;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker;->access$8800(Ljava/lang/String;)V

    goto :goto_3

    .line 2579
    .end local v4           #pone:Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 2593
    :cond_8
    iput-boolean v9, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mEndReached:Z

    .line 2594
    return-void
.end method

.method private getCost(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;II)F
    .locals 16
    .parameter "face"
    .parameter "bg"
    .parameter "fg"

    .prologue
    .line 2597
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_1

    .line 2598
    const/4 v4, 0x0

    .line 2640
    :cond_0
    :goto_0
    return v4

    .line 2600
    :cond_1
    const/4 v4, 0x0

    .line 2601
    .local v4, curCost:F
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 2602
    .local v12, start:I
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2603
    .local v5, end:I
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static/range {p1 .. p1}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v14

    if-nez v14, :cond_6

    .line 2604
    move v8, v12

    .local v8, i:I
    :goto_1
    if-gt v8, v5, :cond_4

    .line 2605
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mInstances:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    invoke-static/range {p1 .. p1}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2400(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v14

    aget-object v13, v14, v8

    .line 2606
    .local v13, tr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    if-nez v13, :cond_2

    .line 2607
    const/high16 v4, -0x4080

    goto :goto_0

    .line 2609
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->translationRelativeToBg(Landroid/graphics/PointF;)Z
    invoke-static {v13, v14}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$8900(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Landroid/graphics/PointF;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 2610
    const/high16 v4, -0x4080

    goto :goto_0

    .line 2612
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-float/2addr v4, v14

    .line 2604
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2614
    .end local v13           #tr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->absoluteRelativeDist(IILandroid/graphics/PointF;)Z
    invoke-static {v0, v1, v2, v14}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$9000(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;IILandroid/graphics/PointF;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 2615
    const/high16 v4, -0x4080

    goto :goto_0

    .line 2617
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-float/2addr v4, v14

    goto :goto_0

    .line 2619
    .end local v8           #i:I
    :cond_6
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->getAllLocked()[Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    invoke-static/range {p1 .. p1}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$9100(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    move-result-object v7

    .line 2620
    .local v7, faces:[Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    const/high16 v4, -0x4080

    .line 2621
    move-object v3, v7

    .local v3, arr$:[Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    array-length v11, v3

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v11, :cond_0

    aget-object v10, v3, v9

    .line 2622
    .local v10, iterFace:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    const/4 v6, 0x0

    .line 2623
    .local v6, faceCost:F
    move v8, v12

    .restart local v8       #i:I
    :goto_3
    if-gt v8, v5, :cond_9

    .line 2624
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mInstances:[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    invoke-static {v10}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$2400(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;

    move-result-object v14

    aget-object v13, v14, v8

    .line 2625
    .restart local v13       #tr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    if-nez v13, :cond_7

    .line 2626
    const/high16 v4, -0x4080

    goto :goto_0

    .line 2628
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->translationRelativeToBg(Landroid/graphics/PointF;)Z
    invoke-static {v13, v14}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->access$8900(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Landroid/graphics/PointF;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 2629
    const/high16 v4, -0x4080

    goto/16 :goto_0

    .line 2631
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-float/2addr v6, v14

    .line 2623
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2633
    .end local v13           #tr:Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    move/from16 v0, p2

    move/from16 v1, p3

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->absoluteRelativeDist(IILandroid/graphics/PointF;)Z
    invoke-static {v10, v0, v1, v14}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$9000(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;IILandroid/graphics/PointF;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 2634
    const/high16 v4, -0x4080

    goto/16 :goto_0

    .line 2636
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-float/2addr v6, v14

    .line 2637
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2621
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method private optimize()V
    .locals 10

    .prologue
    const v8, 0x186a0

    const/4 v9, 0x0

    .line 2461
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7500(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    iput v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    .line 2462
    new-instance v5, Ljava/util/Vector;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/util/Vector;-><init>(I)V

    iput-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    .line 2463
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7800(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    .line 2464
    .local v0, face:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    const/4 v5, -0x1

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v0, v5}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$7902(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;I)I

    .line 2465
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mAllSame:Z
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$6400(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2468
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mRanked:[Lcom/oppo/camera/rewind/app/RectTracker$RankedId;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$6500(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$RankedId;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7500(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v4, v5, v6

    .line 2470
    .local v4, rank:Lcom/oppo/camera/rewind/app/RectTracker$RankedId;
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->hasNoRealibleInfo()Z
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->access$8000(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2471
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7500(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    iget v6, v4, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mImageIndex:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    .line 2472
    .local v3, img:Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->addPossibility(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)V
    invoke-static {v0, v3}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$8100(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)V

    .line 2474
    .end local v3           #img:Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;
    :cond_1
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7500(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x2

    .line 2476
    .local v1, i:I
    :goto_1
    if-lez v1, :cond_3

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mRanked:[Lcom/oppo/camera/rewind/app/RectTracker$RankedId;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$6500(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$RankedId;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mRanked:[Lcom/oppo/camera/rewind/app/RectTracker$RankedId;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$6500(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$RankedId;

    move-result-object v6

    aget-object v6, v6, v1

    #calls: Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->isGoodEnoughEqual(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z
    invoke-static {v5, v6}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->access$8200(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2478
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mRanked:[Lcom/oppo/camera/rewind/app/RectTracker$RankedId;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$6500(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)[Lcom/oppo/camera/rewind/app/RectTracker$RankedId;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7500(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v4, v5, v6

    .line 2479
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7500(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    iget v6, v4, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->mImageIndex:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    .line 2480
    .restart local v3       #img:Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->hasNoRealibleInfo()Z
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/RectTracker$RankedId;->access$8000(Lcom/oppo/camera/rewind/app/RectTracker$RankedId;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2481
    #calls: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->addPossibility(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)V
    invoke-static {v0, v3}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$8100(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)V

    .line 2483
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2485
    .end local v3           #img:Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;
    :cond_3
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$8300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 2486
    iget v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$8300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    mul-int/2addr v5, v6

    iput v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    .line 2488
    :cond_4
    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mCanReplace:Z
    invoke-static {v0, v9}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$8402(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;Z)Z

    goto/16 :goto_0

    .line 2490
    .end local v0           #face:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    .end local v1           #i:I
    .end local v4           #rank:Lcom/oppo/camera/rewind/app/RectTracker$RankedId;
    :cond_5
    iget v5, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    if-le v5, v8, :cond_6

    .line 2491
    const-string v5, "%s failed, # possibilites > "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/oppo/camera/rewind/app/RectTracker;->logw(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/RectTracker;->access$8500(Ljava/lang/String;)V

    .line 2493
    iput-boolean v9, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mEndReached:Z

    .line 2497
    :goto_2
    return-void

    .line 2496
    :cond_6
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->optimizeBg()V

    goto :goto_2
.end method

.method private optimizeBg()V
    .locals 2

    .prologue
    .line 2500
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7500(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2501
    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    .line 2502
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    .line 2500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2504
    :cond_0
    return-void
.end method

.method private optimizeFace(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 2507
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7800(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 2508
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->eval()V

    .line 2523
    :cond_0
    :goto_0
    return-void

    .line 2511
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7800(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    .line 2512
    .local v0, face:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$8300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 2513
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    goto :goto_0

    .line 2514
    :cond_2
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$8300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2515
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$8300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mIndex:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1300(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)I

    move-result v2

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v0, v2}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$7902(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;I)I

    .line 2516
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    goto :goto_0

    .line 2518
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$8300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2519
    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$8300(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mIndex:I
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->access$1300(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)I

    move-result v2

    #setter for: Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v0, v2}, Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;->access$7902(Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;I)I

    .line 2520
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    .line 2518
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
