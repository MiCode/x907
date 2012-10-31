.class Landroid/view/IndicateMenuView$MenuItemView;
.super Landroid/widget/Button;
.source "IndicateMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IndicateMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuItemView"
.end annotation


# instance fields
.field private mClickPerformed:Z

.field private mIgnoreTouch:Z

.field private mMenuItem:Landroid/view/IndicateMenuItemImpl;

.field final synthetic this$0:Landroid/view/IndicateMenuView;


# direct methods
.method public constructor <init>(Landroid/view/IndicateMenuView;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 863
    iput-object p1, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    .line 864
    invoke-direct {p0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 860
    iput-boolean v2, p0, Landroid/view/IndicateMenuView$MenuItemView;->mClickPerformed:Z

    .line 861
    iput-boolean v2, p0, Landroid/view/IndicateMenuView$MenuItemView;->mIgnoreTouch:Z

    .line 866
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10600bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/IndicateMenuView$MenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 868
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->setSingleLine()V

    .line 869
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/view/IndicateMenuView$MenuItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 871
    invoke-virtual {p0, v2}, Landroid/view/IndicateMenuView$MenuItemView;->setFadeEffectEnabled(Z)V

    .line 872
    return-void
.end method

.method static synthetic access$1400(Landroid/view/IndicateMenuView$MenuItemView;)Landroid/view/IndicateMenuItemImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 858
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuItemView;->mMenuItem:Landroid/view/IndicateMenuItemImpl;

    return-object v0
.end method

.method private refreshParent()V
    .locals 6

    .prologue
    .line 1010
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1011
    .local v2, parent:Landroid/view/View;
    if-nez v2, :cond_0

    .line 1021
    :goto_0
    return-void

    .line 1015
    :cond_0
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->getLeft()I

    move-result v1

    .line 1016
    .local v1, left:I
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->getRight()I

    move-result v3

    .line 1017
    .local v3, right:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1018
    .local v4, top:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1020
    .local v0, bottom:I
    iget-object v5, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;
    invoke-static {v5}, Landroid/view/IndicateMenuView;->access$1500(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuView$MenuView;

    move-result-object v5

    invoke-virtual {v5, v1, v4, v3, v0}, Landroid/view/IndicateMenuView$MenuView;->invalidate(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 919
    iget-boolean v3, p0, Landroid/view/IndicateMenuView$MenuItemView;->mIgnoreTouch:Z

    if-eqz v3, :cond_0

    .line 949
    :goto_0
    return v2

    .line 923
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/IndicateMenuView$MenuItemView;->mClickPerformed:Z

    .line 925
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 926
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->isClickable()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->isLongClickable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 927
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 949
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 929
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->isPrePressed()Z

    move-result v1

    .line 930
    .local v1, prepressed:Z
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v1, :cond_2

    .line 931
    :cond_3
    const/4 v0, 0x0

    .line 932
    .local v0, focusTaken:Z
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_4

    .line 934
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->requestFocus()Z

    move-result v0

    .line 937
    :cond_4
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->hasPerformedLongPress()Z

    move-result v3

    if-nez v3, :cond_2

    .line 938
    if-nez v0, :cond_2

    .line 939
    iput-boolean v2, p0, Landroid/view/IndicateMenuView$MenuItemView;->mIgnoreTouch:Z

    .line 940
    iput-boolean v1, p0, Landroid/view/IndicateMenuView$MenuItemView;->mClickPerformed:Z

    goto :goto_1

    .line 927
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 905
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    :cond_0
    :goto_0
    return v3

    .line 909
    :cond_1
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v0}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuItemView;->mMenuItem:Landroid/view/IndicateMenuItemImpl;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v0}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuItemView;->mMenuItem:Landroid/view/IndicateMenuItemImpl;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/view/IndicateMenuImpl;->performItemAction(Landroid/view/IndicateMenuItem;I)Z

    goto :goto_0
.end method

.method public refreshDrawableState()V
    .locals 8

    .prologue
    .line 954
    iget-boolean v6, p0, Landroid/view/IndicateMenuView$MenuItemView;->mClickPerformed:Z

    if-eqz v6, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    invoke-super {p0}, Landroid/widget/Button;->refreshDrawableState()V

    .line 960
    iget-object v6, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;
    invoke-static {v6}, Landroid/view/IndicateMenuView;->access$1500(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuView$MenuView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 964
    sget-object v1, Landroid/view/IndicateMenuView$INDICATOR_STATE;->NORMAL:Landroid/view/IndicateMenuView$INDICATOR_STATE;

    .line 965
    .local v1, state:Landroid/view/IndicateMenuView$INDICATOR_STATE;
    const/4 v0, 0x0

    .line 967
    .local v0, divide:I
    iget-object v6, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;
    invoke-static {v6}, Landroid/view/IndicateMenuView;->access$1500(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuView$MenuView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/IndicateMenuView$MenuView;->isTriangleVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 971
    iget-object v6, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;
    invoke-static {v6}, Landroid/view/IndicateMenuView;->access$1500(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuView$MenuView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/IndicateMenuView$MenuView;->getTriangleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 972
    .local v2, triangleDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;
    invoke-static {v6}, Landroid/view/IndicateMenuView;->access$1500(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuView$MenuView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/IndicateMenuView$MenuView;->getTrianglePaddingLeft()I

    move-result v4

    .line 974
    .local v4, trianglePaddingLeft:I
    move v3, v4

    .line 975
    .local v3, triangleLeft:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int v5, v3, v6

    .line 978
    .local v5, triangleRight:I
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->getLeft()I

    move-result v6

    if-le v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->getRight()I

    move-result v6

    if-lt v3, v6, :cond_3

    .line 980
    :cond_2
    iget-object v6, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;
    invoke-static {v6}, Landroid/view/IndicateMenuView;->access$1500(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuView$MenuView;

    move-result-object v6

    invoke-virtual {v6, v1, v0}, Landroid/view/IndicateMenuView$MenuView;->setTriangleState(Landroid/view/IndicateMenuView$INDICATOR_STATE;I)V

    goto :goto_0

    .line 984
    :cond_3
    invoke-static {}, Landroid/view/IndicateMenuView;->access$1600()[I

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->getDrawableState()[I

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 985
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->getLeft()I

    move-result v6

    if-lt v3, v6, :cond_5

    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->getRight()I

    move-result v6

    if-gt v5, v6, :cond_5

    .line 987
    sget-object v1, Landroid/view/IndicateMenuView$INDICATOR_STATE;->WHOLE_PRESSED:Landroid/view/IndicateMenuView$INDICATOR_STATE;

    .line 988
    const/4 v0, 0x0

    .line 1004
    :cond_4
    :goto_1
    iget-object v6, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mView:Landroid/view/IndicateMenuView$MenuView;
    invoke-static {v6}, Landroid/view/IndicateMenuView;->access$1500(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuView$MenuView;

    move-result-object v6

    invoke-virtual {v6, v1, v0}, Landroid/view/IndicateMenuView$MenuView;->setTriangleState(Landroid/view/IndicateMenuView$INDICATOR_STATE;I)V

    .line 1006
    invoke-direct {p0}, Landroid/view/IndicateMenuView$MenuItemView;->refreshParent()V

    goto :goto_0

    .line 989
    :cond_5
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->getLeft()I

    move-result v6

    if-lt v3, v6, :cond_6

    .line 991
    sget-object v1, Landroid/view/IndicateMenuView$INDICATOR_STATE;->LEFT_PRESSED:Landroid/view/IndicateMenuView$INDICATOR_STATE;

    .line 992
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->getRight()I

    move-result v6

    sub-int/2addr v6, v3

    add-int/lit8 v0, v6, -0x1

    goto :goto_1

    .line 998
    :cond_6
    sget-object v1, Landroid/view/IndicateMenuView$INDICATOR_STATE;->RIGHT_PRESSED:Landroid/view/IndicateMenuView$INDICATOR_STATE;

    .line 999
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->getLeft()I

    move-result v6

    sub-int/2addr v6, v3

    add-int/lit8 v0, v6, 0x1

    goto :goto_1
.end method

.method public setMenuItem(Landroid/view/IndicateMenuItemImpl;)V
    .locals 1
    .parameter "menuItem"

    .prologue
    .line 875
    iput-object p1, p0, Landroid/view/IndicateMenuView$MenuItemView;->mMenuItem:Landroid/view/IndicateMenuItemImpl;

    .line 876
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->updateStatus()V

    .line 877
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/IndicateMenuView$MenuItemView;->mIgnoreTouch:Z

    .line 878
    return-void
.end method

.method public updateStatus()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 881
    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuItemView;->mMenuItem:Landroid/view/IndicateMenuItemImpl;

    if-eqz v1, :cond_1

    .line 882
    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuItemView;->mMenuItem:Landroid/view/IndicateMenuItemImpl;

    invoke-virtual {v1}, Landroid/view/IndicateMenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/IndicateMenuView$MenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuItemView;->mMenuItem:Landroid/view/IndicateMenuItemImpl;

    invoke-virtual {v1}, Landroid/view/IndicateMenuItemImpl;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/IndicateMenuView$MenuItemView;->setEnabled(Z)V

    .line 885
    invoke-virtual {p0}, Landroid/view/IndicateMenuView$MenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 886
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 887
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 889
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v1}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 891
    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v1}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 894
    invoke-virtual {p0, v0}, Landroid/view/IndicateMenuView$MenuItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v1}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v1}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/IndicateMenuImpl;->getTextSize()F

    move-result v1

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/IndicateMenuView$MenuItemView;->setTextSize(F)V

    .line 899
    return-void

    .line 889
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v1}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v1

    iget-object v3, p0, Landroid/view/IndicateMenuView$MenuItemView;->mMenuItem:Landroid/view/IndicateMenuItemImpl;

    invoke-virtual {v1, v3}, Landroid/view/IndicateMenuImpl;->getItemWidth(Landroid/view/IndicateMenuItemImpl;)I

    move-result v1

    goto :goto_0

    .line 891
    :cond_3
    iget-object v1, p0, Landroid/view/IndicateMenuView$MenuItemView;->this$0:Landroid/view/IndicateMenuView;

    #getter for: Landroid/view/IndicateMenuView;->mMenu:Landroid/view/IndicateMenuImpl;
    invoke-static {v1}, Landroid/view/IndicateMenuView;->access$700(Landroid/view/IndicateMenuView;)Landroid/view/IndicateMenuImpl;

    move-result-object v1

    iget-object v2, p0, Landroid/view/IndicateMenuView$MenuItemView;->mMenuItem:Landroid/view/IndicateMenuItemImpl;

    invoke-virtual {v1, v2}, Landroid/view/IndicateMenuImpl;->getItemHeight(Landroid/view/IndicateMenuItemImpl;)I

    move-result v2

    goto :goto_1

    .line 897
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/high16 v1, 0x4180

    goto :goto_2
.end method
