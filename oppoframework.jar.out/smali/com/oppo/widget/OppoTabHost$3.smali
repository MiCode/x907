.class Lcom/oppo/widget/OppoTabHost$3;
.super Ljava/lang/Object;
.source "OppoTabHost.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoTabHost;->setup()V
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
    .line 227
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost$3;->this$0:Lcom/oppo/widget/OppoTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 230
    sparse-switch p2, :sswitch_data_0

    .line 242
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost$3;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;
    invoke-static {v1}, Lcom/oppo/widget/OppoTabHost;->access$000(Lcom/oppo/widget/OppoTabHost;)Lcom/oppo/widget/OppoTabWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabWidget;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne v1, p2, :cond_0

    .line 256
    :goto_0
    :sswitch_0
    return v0

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost$3;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;
    invoke-static {v1}, Lcom/oppo/widget/OppoTabHost;->access$000(Lcom/oppo/widget/OppoTabHost;)Lcom/oppo/widget/OppoTabWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabWidget;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost$3;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/oppo/widget/OppoTabHost;->access$100(Lcom/oppo/widget/OppoTabHost;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 252
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost$3;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mKeyDelayDispatchHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/widget/OppoTabHost;->access$900(Lcom/oppo/widget/OppoTabHost;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oppo/widget/OppoTabHost$KeyEventDelayDispatch;

    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$3;->this$0:Lcom/oppo/widget/OppoTabHost;

    invoke-direct {v2, v3, p3}, Lcom/oppo/widget/OppoTabHost$KeyEventDelayDispatch;-><init>(Lcom/oppo/widget/OppoTabHost;Landroid/view/KeyEvent;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$3;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/oppo/widget/OppoTabHost;->access$100(Lcom/oppo/widget/OppoTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 230
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
