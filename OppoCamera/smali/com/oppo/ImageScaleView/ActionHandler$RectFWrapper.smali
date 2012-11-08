.class Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;
.super Ljava/lang/Object;
.source "ActionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/ImageScaleView/ActionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RectFWrapper"
.end annotation


# instance fields
.field private mCurrentRect:Landroid/graphics/RectF;

.field private mInitRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/oppo/ImageScaleView/ActionHandler;


# direct methods
.method public constructor <init>(Lcom/oppo/ImageScaleView/ActionHandler;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 47
    iput-object p1, p0, Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mViewWidth:I
    invoke-static {p1}, Lcom/oppo/ImageScaleView/ActionHandler;->access$000(Lcom/oppo/ImageScaleView/ActionHandler;)I

    move-result v1

    int-to-float v1, v1

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mViewHeight:I
    invoke-static {p1}, Lcom/oppo/ImageScaleView/ActionHandler;->access$100(Lcom/oppo/ImageScaleView/ActionHandler;)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;->mInitRect:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mViewWidth:I
    invoke-static {p1}, Lcom/oppo/ImageScaleView/ActionHandler;->access$000(Lcom/oppo/ImageScaleView/ActionHandler;)I

    move-result v1

    int-to-float v1, v1

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mViewHeight:I
    invoke-static {p1}, Lcom/oppo/ImageScaleView/ActionHandler;->access$100(Lcom/oppo/ImageScaleView/ActionHandler;)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;->mCurrentRect:Landroid/graphics/RectF;

    .line 50
    return-void
.end method


# virtual methods
.method public copyTo(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 63
    return-void
.end method

.method public init(FFFF)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;->mInitRect:Landroid/graphics/RectF;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;->mInitRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;->mCurrentRect:Landroid/graphics/RectF;

    .line 55
    return-void
.end method
