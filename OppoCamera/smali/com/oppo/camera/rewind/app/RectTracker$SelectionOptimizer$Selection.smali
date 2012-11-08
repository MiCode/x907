.class Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Selection"
.end annotation


# instance fields
.field private mBg:I

.field private mCost:F

.field private mCosts:[F

.field private mSelecteddImages:[I

.field private mUnreliable:Z

.field final synthetic this$1:Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;I)V
    .locals 1
    .parameter
    .parameter "bg"

    .prologue
    .line 2676
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->this$1:Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2672
    const/high16 v0, 0x7f80

    iput v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCost:F

    .line 2674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mUnreliable:Z

    .line 2677
    iput p2, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mBg:I

    .line 2678
    iget-object v0, p1, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7800(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I

    .line 2679
    iget-object v0, p1, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    #getter for: Lcom/oppo/camera/rewind/app/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RectTracker;->access$7800(Lcom/oppo/camera/rewind/app/RectTracker;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCosts:[F

    .line 2680
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;ILcom/oppo/camera/rewind/app/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2669
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;-><init>(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer;I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2669
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mBg:I

    return v0
.end method

.method static synthetic access$5100(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2669
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCost:F

    return v0
.end method

.method static synthetic access$5102(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2669
    iput p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCost:F

    return p1
.end method

.method static synthetic access$5200(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I

    return-object v0
.end method

.method static synthetic access$5400(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mCosts:[F

    return-object v0
.end method

.method static synthetic access$8702(Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2669
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$SelectionOptimizer$Selection;->mUnreliable:Z

    return p1
.end method
