.class Lcom/oppo/widget/OppoTabHost$KeyEventDelayDispatch;
.super Ljava/lang/Object;
.source "OppoTabHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyEventDelayDispatch"
.end annotation


# instance fields
.field private mDelayKeyEvent:Landroid/view/KeyEvent;

.field final synthetic this$0:Lcom/oppo/widget/OppoTabHost;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoTabHost;Landroid/view/KeyEvent;)V
    .locals 1
    .parameter
    .parameter "delayKeyEvent"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost$KeyEventDelayDispatch;->this$0:Lcom/oppo/widget/OppoTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost$KeyEventDelayDispatch;->mDelayKeyEvent:Landroid/view/KeyEvent;

    .line 270
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost$KeyEventDelayDispatch;->mDelayKeyEvent:Landroid/view/KeyEvent;

    .line 271
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 274
    iget-object v2, p0, Lcom/oppo/widget/OppoTabHost$KeyEventDelayDispatch;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/oppo/widget/OppoTabHost;->access$100(Lcom/oppo/widget/OppoTabHost;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 275
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$KeyEventDelayDispatch;->mDelayKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 277
    .local v0, downKey:Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/oppo/widget/OppoTabHost$KeyEventDelayDispatch;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/oppo/widget/OppoTabHost;->access$100(Lcom/oppo/widget/OppoTabHost;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 279
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost$KeyEventDelayDispatch;->mDelayKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 281
    .local v1, upKey:Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/oppo/widget/OppoTabHost$KeyEventDelayDispatch;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/oppo/widget/OppoTabHost;->access$100(Lcom/oppo/widget/OppoTabHost;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 283
    .end local v0           #downKey:Landroid/view/KeyEvent;
    .end local v1           #upKey:Landroid/view/KeyEvent;
    :cond_0
    return-void
.end method
