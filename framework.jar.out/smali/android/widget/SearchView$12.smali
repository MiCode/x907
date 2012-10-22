.class Landroid/widget/SearchView$12;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1634
    iput-object p1, p0, Landroid/widget/SearchView$12;->this$0:Landroid/widget/SearchView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1656
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 1636
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 1640
    iget-object v0, p0, Landroid/widget/SearchView$12;->this$0:Landroid/widget/SearchView;

    #calls: Landroid/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V
    invoke-static {v0, p1}, Landroid/widget/SearchView;->access$2000(Landroid/widget/SearchView;Ljava/lang/CharSequence;)V

    .line 1642
    iget-object v0, p0, Landroid/widget/SearchView$12;->this$0:Landroid/widget/SearchView;

    #calls: Landroid/widget/SearchView;->getOppoManufacture()Z
    invoke-static {v0}, Landroid/widget/SearchView;->access$2100(Landroid/widget/SearchView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Landroid/widget/SearchView$12;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;
    invoke-static {v0}, Landroid/widget/SearchView;->access$400(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1644
    iget-object v0, p0, Landroid/widget/SearchView$12;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Landroid/widget/SearchView;->access$2300(Landroid/widget/SearchView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SearchView$12;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/widget/SearchView;->access$2200(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1645
    iget-object v0, p0, Landroid/widget/SearchView$12;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Landroid/widget/SearchView;->access$2300(Landroid/widget/SearchView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SearchView$12;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/widget/SearchView;->access$2200(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SearchView$12;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v2}, Landroid/widget/SearchView;->access$2400(Landroid/widget/SearchView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1646
    iget-object v0, p0, Landroid/widget/SearchView$12;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/SearchView;->access$900(Landroid/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1653
    :cond_0
    :goto_0
    return-void

    .line 1648
    :cond_1
    iget-object v0, p0, Landroid/widget/SearchView$12;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Landroid/widget/SearchView;->access$2300(Landroid/widget/SearchView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SearchView$12;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/widget/SearchView;->access$2200(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1649
    iget-object v0, p0, Landroid/widget/SearchView$12;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/SearchView;->access$900(Landroid/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
