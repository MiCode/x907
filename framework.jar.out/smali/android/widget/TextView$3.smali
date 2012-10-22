.class Landroid/widget/TextView$3;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 13590
    iput-object p1, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 13595
    iget-object v1, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mIndicateMenuStarter:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/widget/TextView;->access$9400(Landroid/widget/TextView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13597
    iget-object v1, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierOffset:I
    invoke-static {v1}, Landroid/widget/TextView;->access$9500(Landroid/widget/TextView;)I

    move-result v0

    .line 13598
    .local v0, offset:I
    iget-object v1, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13599
    const/4 v0, 0x0

    .line 13614
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->showIndicateMenuAfresh(I)V

    .line 13615
    return-void

    .line 13600
    :cond_1
    if-gez v0, :cond_2

    .line 13601
    iget-object v1, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 13603
    if-gez v0, :cond_0

    .line 13604
    const/4 v0, 0x0

    goto :goto_0

    .line 13606
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 13607
    iget-object v1, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 13609
    if-gez v0, :cond_0

    .line 13610
    iget-object v1, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method
