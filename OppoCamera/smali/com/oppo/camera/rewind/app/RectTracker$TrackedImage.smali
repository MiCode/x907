.class Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedImage"
.end annotation


# instance fields
.field private mImage:Lcom/scalado/base/Image;

.field private mIndex:I

.field private mRects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RectTracker;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;I)V
    .locals 1
    .parameter
    .parameter "index"

    .prologue
    .line 2347
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->this$0:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2343
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;

    .line 2348
    iput p2, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mIndex:I

    .line 2349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;

    .line 2350
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RectTracker;ILcom/oppo/camera/rewind/app/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2342
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;-><init>(Lcom/oppo/camera/rewind/app/RectTracker;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2342
    iget v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;Lcom/scalado/base/Image;)Lcom/scalado/base/Image;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2342
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2342
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->add(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V

    return-void
.end method

.method private add(Lcom/oppo/camera/rewind/app/RectTracker$TrackedRect;)V
    .locals 1
    .parameter "tr"

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2359
    return-void
.end method
