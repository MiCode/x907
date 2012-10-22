.class Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OppoToggle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToggleGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoToggle;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoToggle;)V
    .locals 0
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoToggle;Lcom/oppo/widget/OppoToggle$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;-><init>(Lcom/oppo/widget/OppoToggle;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 709
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    .line 711
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    #setter for: Lcom/oppo/widget/OppoToggle;->mHandled:Z
    invoke-static {v0, v5}, Lcom/oppo/widget/OppoToggle;->access$102(Lcom/oppo/widget/OppoToggle;Z)Z

    .line 712
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    #setter for: Lcom/oppo/widget/OppoToggle;->mScrolling:Z
    invoke-static {v0, v4}, Lcom/oppo/widget/OppoToggle;->access$202(Lcom/oppo/widget/OppoToggle;Z)Z

    .line 717
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    #getter for: Lcom/oppo/widget/OppoToggle;->mToggled:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoToggle;->access$300(Lcom/oppo/widget/OppoToggle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->exactlyX:I

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v1, v1, Lcom/oppo/widget/OppoToggle;->mInnerHeight:I

    if-le v0, v1, :cond_0

    .line 719
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v1, v1, Lcom/oppo/widget/OppoToggle;->mMinScrollX:I

    iput v1, v0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    .line 720
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iput v4, v0, Lcom/oppo/widget/OppoToggle;->offSet:I

    .line 721
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v1, v1, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v2, v2, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    #calls: Lcom/oppo/widget/OppoToggle;->snapToPosition(II)V
    invoke-static {v0, v1, v2}, Lcom/oppo/widget/OppoToggle;->access$400(Lcom/oppo/widget/OppoToggle;II)V

    .line 738
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    #setter for: Lcom/oppo/widget/OppoToggle;->mSwitching:Z
    invoke-static {v0, v5}, Lcom/oppo/widget/OppoToggle;->access$502(Lcom/oppo/widget/OppoToggle;Z)Z

    .line 740
    return v4

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v1, v1, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v2, v2, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    iget-object v3, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v3, v3, Lcom/oppo/widget/OppoToggle;->offSet:I

    add-int/2addr v2, v3

    #calls: Lcom/oppo/widget/OppoToggle;->snapToPosition(II)V
    invoke-static {v0, v1, v2}, Lcom/oppo/widget/OppoToggle;->access$400(Lcom/oppo/widget/OppoToggle;II)V

    goto :goto_0

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->exactlyX:I

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v1, v1, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    if-ge v0, v1, :cond_2

    .line 729
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v1, v1, Lcom/oppo/widget/OppoToggle;->mMaxScrollX:I

    iput v1, v0, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    .line 730
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iput v4, v0, Lcom/oppo/widget/OppoToggle;->offSet:I

    .line 731
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v1, v1, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v2, v2, Lcom/oppo/widget/OppoToggle;->mMinScrollX:I

    #calls: Lcom/oppo/widget/OppoToggle;->snapToPosition(II)V
    invoke-static {v0, v1, v2}, Lcom/oppo/widget/OppoToggle;->access$400(Lcom/oppo/widget/OppoToggle;II)V

    goto :goto_0

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v1, v1, Lcom/oppo/widget/OppoToggle;->mMotionX:I

    iget-object v2, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v2, v2, Lcom/oppo/widget/OppoToggle;->mMinScrollX:I

    iget-object v3, p0, Lcom/oppo/widget/OppoToggle$ToggleGestureDetector;->this$0:Lcom/oppo/widget/OppoToggle;

    iget v3, v3, Lcom/oppo/widget/OppoToggle;->offSet:I

    add-int/2addr v2, v3

    #calls: Lcom/oppo/widget/OppoToggle;->snapToPosition(II)V
    invoke-static {v0, v1, v2}, Lcom/oppo/widget/OppoToggle;->access$400(Lcom/oppo/widget/OppoToggle;II)V

    goto :goto_0
.end method
