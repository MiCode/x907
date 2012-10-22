.class Lcom/oppo/widget/OppoShortCutButton$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoShortCutButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoShortCutButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoShortCutButton;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoShortCutButton;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 578
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    #getter for: Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoShortCutButton;->access$000(Lcom/oppo/widget/OppoShortCutButton;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    #getter for: Lcom/oppo/widget/OppoShortCutButton;->mHideImeAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoShortCutButton;->access$100(Lcom/oppo/widget/OppoShortCutButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    const-string v0, "OppoShortCutButton"

    const-string v1, "-- key gard is hide --"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    #getter for: Lcom/oppo/widget/OppoShortCutButton;->mIsShow:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoShortCutButton;->access$200(Lcom/oppo/widget/OppoShortCutButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    #setter for: Lcom/oppo/widget/OppoShortCutButton;->mIsShow:Z
    invoke-static {v0, v2}, Lcom/oppo/widget/OppoShortCutButton;->access$202(Lcom/oppo/widget/OppoShortCutButton;Z)Z

    .line 593
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoShortCutButton;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    #getter for: Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/oppo/widget/OppoShortCutButton;->access$300(Lcom/oppo/widget/OppoShortCutButton;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 597
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    #getter for: Lcom/oppo/widget/OppoShortCutButton;->mShowImeAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoShortCutButton;->access$400(Lcom/oppo/widget/OppoShortCutButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    const-string v0, "OppoShortCutButton"

    const-string v1, "-- key gard is show --"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    #getter for: Lcom/oppo/widget/OppoShortCutButton;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/oppo/widget/OppoShortCutButton;->access$500(Lcom/oppo/widget/OppoShortCutButton;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    const/4 v1, 0x1

    #setter for: Lcom/oppo/widget/OppoShortCutButton;->mIsShow:Z
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoShortCutButton;->access$202(Lcom/oppo/widget/OppoShortCutButton;Z)Z

    .line 606
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutButton;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    #getter for: Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/oppo/widget/OppoShortCutButton;->access$600(Lcom/oppo/widget/OppoShortCutButton;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
