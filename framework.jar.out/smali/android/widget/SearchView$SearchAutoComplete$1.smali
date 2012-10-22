.class Landroid/widget/SearchView$SearchAutoComplete$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SearchView$SearchAutoComplete;->showDropDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView$SearchAutoComplete;


# direct methods
.method constructor <init>(Landroid/widget/SearchView$SearchAutoComplete;)V
    .locals 0
    .parameter

    .prologue
    .line 1806
    iput-object p1, p0, Landroid/widget/SearchView$SearchAutoComplete$1;->this$0:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1809
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    .line 1810
    iget-object v7, p0, Landroid/widget/SearchView$SearchAutoComplete$1;->this$0:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    #setter for: Landroid/widget/SearchView$SearchAutoComplete;->mTouchDownPosX:I
    invoke-static {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->access$2602(Landroid/widget/SearchView$SearchAutoComplete;I)I

    .line 1811
    iget-object v7, p0, Landroid/widget/SearchView$SearchAutoComplete$1;->this$0:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    #setter for: Landroid/widget/SearchView$SearchAutoComplete;->mTouchDownPosY:I
    invoke-static {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->access$2702(Landroid/widget/SearchView$SearchAutoComplete;I)I

    .line 1812
    iget-object v7, p0, Landroid/widget/SearchView$SearchAutoComplete$1;->this$0:Landroid/widget/SearchView$SearchAutoComplete;

    #setter for: Landroid/widget/SearchView$SearchAutoComplete;->mOverMaxTouchMoveDistance:Z
    invoke-static {v7, v9}, Landroid/widget/SearchView$SearchAutoComplete;->access$2802(Landroid/widget/SearchView$SearchAutoComplete;Z)Z

    .line 1814
    :cond_0
    const/4 v7, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 1815
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v0, v7

    .line 1816
    .local v0, envX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v1, v7

    .line 1817
    .local v1, envY:I
    iget-object v7, p0, Landroid/widget/SearchView$SearchAutoComplete$1;->this$0:Landroid/widget/SearchView$SearchAutoComplete;

    #getter for: Landroid/widget/SearchView$SearchAutoComplete;->mTouchDownPosX:I
    invoke-static {v7}, Landroid/widget/SearchView$SearchAutoComplete;->access$2600(Landroid/widget/SearchView$SearchAutoComplete;)I

    move-result v7

    sub-int v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v11, :cond_1

    iget-object v7, p0, Landroid/widget/SearchView$SearchAutoComplete$1;->this$0:Landroid/widget/SearchView$SearchAutoComplete;

    #getter for: Landroid/widget/SearchView$SearchAutoComplete;->mTouchDownPosY:I
    invoke-static {v7}, Landroid/widget/SearchView$SearchAutoComplete;->access$2700(Landroid/widget/SearchView$SearchAutoComplete;)I

    move-result v7

    sub-int v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v11, :cond_2

    .line 1819
    :cond_1
    iget-object v7, p0, Landroid/widget/SearchView$SearchAutoComplete$1;->this$0:Landroid/widget/SearchView$SearchAutoComplete;

    #setter for: Landroid/widget/SearchView$SearchAutoComplete;->mOverMaxTouchMoveDistance:Z
    invoke-static {v7, v10}, Landroid/widget/SearchView$SearchAutoComplete;->access$2802(Landroid/widget/SearchView$SearchAutoComplete;Z)Z

    .line 1822
    .end local v0           #envX:I
    .end local v1           #envY:I
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v10, v7, :cond_3

    .line 1823
    iget-object v7, p0, Landroid/widget/SearchView$SearchAutoComplete$1;->this$0:Landroid/widget/SearchView$SearchAutoComplete;

    #getter for: Landroid/widget/SearchView$SearchAutoComplete;->mOverMaxTouchMoveDistance:Z
    invoke-static {v7}, Landroid/widget/SearchView$SearchAutoComplete;->access$2800(Landroid/widget/SearchView$SearchAutoComplete;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1824
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 1825
    .local v5, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 1826
    .local v6, y:I
    iget-object v7, p0, Landroid/widget/SearchView$SearchAutoComplete$1;->this$0:Landroid/widget/SearchView$SearchAutoComplete;

    #getter for: Landroid/widget/SearchView$SearchAutoComplete;->mListView:Landroid/widget/ListView;
    invoke-static {v7}, Landroid/widget/SearchView$SearchAutoComplete;->access$2900(Landroid/widget/SearchView$SearchAutoComplete;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v4

    .line 1827
    .local v4, position:I
    iget-object v7, p0, Landroid/widget/SearchView$SearchAutoComplete$1;->this$0:Landroid/widget/SearchView$SearchAutoComplete;

    #getter for: Landroid/widget/SearchView$SearchAutoComplete;->mListView:Landroid/widget/ListView;
    invoke-static {v7}, Landroid/widget/SearchView$SearchAutoComplete;->access$2900(Landroid/widget/SearchView$SearchAutoComplete;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1828
    .local v2, firstVisiblePosition:I
    iget-object v7, p0, Landroid/widget/SearchView$SearchAutoComplete$1;->this$0:Landroid/widget/SearchView$SearchAutoComplete;

    #getter for: Landroid/widget/SearchView$SearchAutoComplete;->mListView:Landroid/widget/ListView;
    invoke-static {v7}, Landroid/widget/SearchView$SearchAutoComplete;->access$2900(Landroid/widget/SearchView$SearchAutoComplete;)Landroid/widget/ListView;

    move-result-object v7

    sub-int v8, v4, v2

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_3

    .line 1829
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1830
    .local v3, intent:Landroid/content/Intent;
    const-string/jumbo v7, "searchdialog_dismiss"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1831
    iget-object v7, p0, Landroid/widget/SearchView$SearchAutoComplete$1;->this$0:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1835
    .end local v2           #firstVisiblePosition:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #position:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_3
    return v9
.end method
