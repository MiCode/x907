.class Lcom/oppo/widget/OppoTabHost$2;
.super Ljava/lang/Object;
.source "OppoTabHost.java"

# interfaces
.implements Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;


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
    .line 206
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost$2;->this$0:Lcom/oppo/widget/OppoTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOppoTabSelectionChanged(IZ)V
    .locals 2
    .parameter "tabIndex"
    .parameter "clicked"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$2;->this$0:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoTabHost;->setCurrentTab(I)V

    .line 209
    if-eqz p2, :cond_0

    .line 210
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$2;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/oppo/widget/OppoTabHost;->access$100(Lcom/oppo/widget/OppoTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$2;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mOnTabSelectionChangedListener:Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;
    invoke-static {v0}, Lcom/oppo/widget/OppoTabHost;->access$800(Lcom/oppo/widget/OppoTabHost;)Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$2;->this$0:Lcom/oppo/widget/OppoTabHost;

    #getter for: Lcom/oppo/widget/OppoTabHost;->mOnTabSelectionChangedListener:Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;
    invoke-static {v0}, Lcom/oppo/widget/OppoTabHost;->access$800(Lcom/oppo/widget/OppoTabHost;)Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;->onTabSelectionChanged(IZ)V

    .line 215
    :cond_1
    return-void
.end method
