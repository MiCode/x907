.class Lcom/oppo/widget/OppoTabHost$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoTabHost;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoTabHost;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost$1;->this$0:Lcom/oppo/widget/OppoTabHost;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$1;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;
    invoke-static {v0}, Lcom/oppo/widget/OppoTabHost;->access$000(Lcom/oppo/widget/OppoTabHost;)Lcom/oppo/widget/OppoTabWidget;

    move-result-object v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$1;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/oppo/widget/OppoTabHost;->access$100(Lcom/oppo/widget/OppoTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$1;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/oppo/widget/OppoTabHost;->access$100(Lcom/oppo/widget/OppoTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$1;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mWindowHasFocus:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoTabHost;->access$200(Lcom/oppo/widget/OppoTabHost;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost$1;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mHideImeAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoTabHost;->access$300(Lcom/oppo/widget/OppoTabHost;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    const-string v0, "ime-hide"

    const-string v1, "oppo tabhost receive ime hide msg."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$1;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;
    invoke-static {v0}, Lcom/oppo/widget/OppoTabHost;->access$000(Lcom/oppo/widget/OppoTabHost;)Lcom/oppo/widget/OppoTabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTabWidget;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$1;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;
    invoke-static {v0}, Lcom/oppo/widget/OppoTabHost;->access$000(Lcom/oppo/widget/OppoTabHost;)Lcom/oppo/widget/OppoTabWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost$1;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mOppoTabsEnterAniSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/oppo/widget/OppoTabHost;->access$400(Lcom/oppo/widget/OppoTabHost;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTabWidget;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost$1;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mShowImeAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/widget/OppoTabHost;->access$500(Lcom/oppo/widget/OppoTabHost;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$1;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;
    invoke-static {v0}, Lcom/oppo/widget/OppoTabHost;->access$000(Lcom/oppo/widget/OppoTabHost;)Lcom/oppo/widget/OppoTabWidget;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTabWidget;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$1;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;
    invoke-static {v0}, Lcom/oppo/widget/OppoTabHost;->access$000(Lcom/oppo/widget/OppoTabHost;)Lcom/oppo/widget/OppoTabWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost$1;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mOppoTabsExitAniSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/oppo/widget/OppoTabHost;->access$600(Lcom/oppo/widget/OppoTabHost;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTabWidget;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
