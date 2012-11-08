.class Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedRect"
.end annotation


# instance fields
.field private mBlink:I

.field private mEnlargedRect:Landroid/graphics/Rect;

.field private mEyes:[Landroid/graphics/Rect;

.field private mFace:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

.field private mHasSmileBlink:Z

.field private mId:I

.field private mImage:I

.field private mLockedWith:Z

.field private mNeighbours:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mOrgEnlargedRect:Landroid/graphics/Rect;

.field private mRank:I

.field private mRect:Landroid/graphics/Rect;

.field private mRelDeltaNext:Landroid/graphics/PointF;

.field private mRelDeltaPrev:Landroid/graphics/PointF;

.field private mScore:F

.field private mSessionRect:Landroid/graphics/Rect;

.field private mSmile:I

.field private mSupersededBlink:I

.field private mSupersededHasRect:Z

.field private mSupersededHasSmileBlink:Z

.field private mSupersededIsDontCare:Z

.field private mSupersededSmile:I

.field private mUsed:Z

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RectTracker;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;IILandroid/graphics/Rect;)V
    .locals 2
    .parameter
    .parameter "image"
    .parameter "id"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2710
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2691
    iput v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSmile:I

    .line 2692
    iput v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mBlink:I

    .line 2693
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mHasSmileBlink:Z

    .line 2703
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mLockedWith:Z

    .line 2708
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSupersededIsDontCare:Z

    .line 2711
    iput p2, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mImage:I

    .line 2712
    iput p3, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I

    .line 2713
    if-eqz p4, :cond_0

    .line 2714
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    .line 2718
    :goto_0
    iput v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRank:I

    .line 2719
    return-void

    .line 2716
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;IILandroid/graphics/Rect;Lcom/oppo/camera/rewind/app/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 2684
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2684
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->setSmileBlink(II)V

    return-void
.end method

.method static synthetic access$10900(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mUsed:Z

    return v0
.end method

.method static synthetic access$10902(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mUsed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I

    return v0
.end method

.method static synthetic access$1402(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mId:I

    return p1
.end method

.method static synthetic access$1500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->addNeighbour(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mImage:I

    return v0
.end method

.method static synthetic access$2000(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRank:I

    return v0
.end method

.method static synthetic access$2002(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRank:I

    return p1
.end method

.method static synthetic access$2500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mHasSmileBlink:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSmile:I

    return v0
.end method

.method static synthetic access$2700(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mBlink:I

    return v0
.end method

.method static synthetic access$4500(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mFace:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;)Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mFace:Lcom/oppo/camera/rewind/app/RectTracker$AbstractFace;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mLockedWith:Z

    return p1
.end method

.method static synthetic access$6002(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSupersededBlink:I

    return p1
.end method

.method static synthetic access$6102(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSupersededSmile:I

    return p1
.end method

.method static synthetic access$6202(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSupersededHasSmileBlink:Z

    return p1
.end method

.method static synthetic access$6302(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSupersededHasRect:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mScore:F

    return v0
.end method

.method static synthetic access$6602(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mScore:F

    return p1
.end method

.method static synthetic access$6700(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->computeScore()F

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSessionRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->hasRect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->hasSmileBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->blink()I

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->smile()I

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;Landroid/graphics/PointF;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->translationRelativeToBg(Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)[Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$902(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2684
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;

    return-object p1
.end method

.method private addNeighbour(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    .locals 1
    .parameter "neighbour"

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 2807
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;

    .line 2809
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2810
    return-void
.end method

.method private blink()I
    .locals 1

    .prologue
    .line 2736
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_0

    .line 2737
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mBlink:I

    .line 2739
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSupersededBlink:I

    goto :goto_0
.end method

.method private computeScore()F
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x42c8

    const/high16 v3, 0x3f80

    .line 2760
    const/4 v0, 0x0

    .line 2761
    .local v0, score:F
    iget-boolean v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mHasSmileBlink:Z

    if-eqz v1, :cond_5

    .line 2762
    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mBlink:I

    if-ne v1, v5, :cond_1

    .line 2763
    invoke-static {}, Lcom/oppo/camera/rewind/app/RectTracker;->access$9200()F

    move-result v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 2781
    :goto_0
    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSmile:I

    if-ne v1, v5, :cond_4

    .line 2802
    :cond_0
    :goto_1
    return v0

    .line 2764
    :cond_1
    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mBlink:I

    if-nez v1, :cond_2

    .line 2765
    const/high16 v1, -0x4000

    invoke-static {}, Lcom/oppo/camera/rewind/app/RectTracker;->access$9200()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 2773
    :cond_2
    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mBlink:I

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_3

    .line 2776
    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mBlink:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    neg-float v1, v1

    invoke-static {}, Lcom/oppo/camera/rewind/app/RectTracker;->access$9200()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 2778
    :cond_3
    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mBlink:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float v1, v3, v1

    invoke-static {}, Lcom/oppo/camera/rewind/app/RectTracker;->access$9200()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 2783
    :cond_4
    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSmile:I

    if-eqz v1, :cond_0

    .line 2786
    iget v1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSmile:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    goto :goto_1

    .line 2800
    :cond_5
    const/high16 v0, -0x3f80

    goto :goto_1
.end method

.method private hasRect()Z
    .locals 1

    .prologue
    .line 2752
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_1

    .line 2753
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2755
    :goto_0
    return v0

    .line 2753
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2755
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSupersededHasRect:Z

    goto :goto_0
.end method

.method private hasSmileBlink()Z
    .locals 1

    .prologue
    .line 2744
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_0

    .line 2745
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mHasSmileBlink:Z

    .line 2747
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSupersededHasSmileBlink:Z

    goto :goto_0
.end method

.method private setSmileBlink(II)V
    .locals 1
    .parameter "smile"
    .parameter "blink"

    .prologue
    .line 2722
    iput p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSmile:I

    .line 2723
    iput p2, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mBlink:I

    .line 2724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mHasSmileBlink:Z

    .line 2725
    return-void
.end method

.method private smile()I
    .locals 1

    .prologue
    .line 2728
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_0

    .line 2729
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSmile:I

    .line 2731
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mSupersededSmile:I

    goto :goto_0
.end method

.method private translationRelativeToBg(Landroid/graphics/PointF;)Z
    .locals 11
    .parameter "point"

    .prologue
    const/4 v8, 0x0

    const/high16 v10, 0x3f80

    .line 2813
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    if-nez v7, :cond_0

    move v7, v8

    .line 2842
    :goto_0
    return v7

    .line 2816
    :cond_0
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7600(Lcom/oppo/camera/rewind/app/RectTracker;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 2817
    .local v5, fdw:F
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7600(Lcom/oppo/camera/rewind/app/RectTracker;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    int-to-float v4, v7

    .line 2818
    .local v4, fdh:F
    const/4 v0, 0x0

    .line 2819
    .local v0, dx:F
    const/4 v2, 0x0

    .line 2820
    .local v2, dy:F
    const/4 v1, 0x0

    .line 2821
    .local v1, dxVft:F
    const/4 v3, 0x0

    .line 2822
    .local v3, dyVft:F
    const/4 v6, 0x0

    .line 2823
    .local v6, n:F
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mImage:I

    add-int/lit8 v7, v7, 0x1

    iget-object v9, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v9}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7500(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 2824
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v0, v7

    .line 2825
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v2, v7

    .line 2826
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker;->access$9300(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v9, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mImage:I

    invoke-virtual {v7, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$300(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v1, v7

    .line 2827
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker;->access$9300(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v9, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mImage:I

    invoke-virtual {v7, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v3, v7

    .line 2828
    add-float/2addr v6, v10

    .line 2830
    :cond_1
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mImage:I

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_2

    .line 2831
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v0, v7

    .line 2832
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v2, v7

    .line 2833
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker;->access$9300(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v9, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mImage:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$300(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v1, v7

    .line 2834
    iget-object v7, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mVftDeltas:Ljava/util/Vector;
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker;->access$9300(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v9, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;->mImage:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v7}, Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;->access$400(Lcom/oppo/camera/rewind/app/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v3, v7

    .line 2835
    add-float/2addr v6, v10

    .line 2837
    :cond_2
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    .line 2838
    sub-float v7, v0, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v5, v6

    div-float/2addr v7, v8

    iput v7, p1, Landroid/graphics/PointF;->x:F

    .line 2839
    sub-float v7, v2, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v4, v6

    div-float/2addr v7, v8

    iput v7, p1, Landroid/graphics/PointF;->y:F

    .line 2840
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_3
    move v7, v8

    .line 2842
    goto/16 :goto_0
.end method
