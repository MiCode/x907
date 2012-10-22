.class Lcom/oppo/widget/OppoShortCutBar$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoShortCutBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoShortCutBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoShortCutBar;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoShortCutBar;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    iget-boolean v0, v0, Lcom/oppo/widget/OppoShortCutBar;->relayoutWhenInput:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->flp:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v1, v0, Lcom/oppo/widget/OppoShortCutBar;->flp:Landroid/widget/FrameLayout$LayoutParams;

    .line 252
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    iget-object v1, v1, Lcom/oppo/widget/OppoShortCutBar;->hideImeAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    iget-boolean v0, v0, Lcom/oppo/widget/OppoShortCutBar;->relayoutWhenInput:Z

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->flp:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    iget v1, v1, Lcom/oppo/widget/OppoShortCutBar;->requestBottom:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 255
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->requestView:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    iget-object v1, v1, Lcom/oppo/widget/OppoShortCutBar;->flp:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->myself:Lcom/oppo/widget/OppoShortCutBar;

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoShortCutBar;->setVisibility(I)V

    .line 266
    :cond_2
    :goto_0
    return-void

    .line 259
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    iget-object v1, v1, Lcom/oppo/widget/OppoShortCutBar;->showImeAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    iget-boolean v0, v0, Lcom/oppo/widget/OppoShortCutBar;->relayoutWhenInput:Z

    if-eqz v0, :cond_4

    .line 261
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->flp:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 262
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->requestView:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    iget-object v1, v1, Lcom/oppo/widget/OppoShortCutBar;->flp:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutBar$1;->this$0:Lcom/oppo/widget/OppoShortCutBar;

    iget-object v0, v0, Lcom/oppo/widget/OppoShortCutBar;->myself:Lcom/oppo/widget/OppoShortCutBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutBar;->setVisibility(I)V

    goto :goto_0
.end method
