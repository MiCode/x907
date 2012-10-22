.class Landroid/webkit/PluginFullScreenHolder$1;
.super Ljava/lang/Object;
.source "PluginFullScreenHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/PluginFullScreenHolder;-><init>(Landroid/webkit/WebView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/PluginFullScreenHolder;


# direct methods
.method constructor <init>(Landroid/webkit/PluginFullScreenHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Landroid/webkit/PluginFullScreenHolder$1;->this$0:Landroid/webkit/PluginFullScreenHolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Landroid/webkit/PluginFullScreenHolder;->access$000()Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/PluginFullScreenHolder$1;->this$0:Landroid/webkit/PluginFullScreenHolder;

    #getter for: Landroid/webkit/PluginFullScreenHolder;->mContentView:Landroid/view/View;
    invoke-static {v0}, Landroid/webkit/PluginFullScreenHolder;->access$100(Landroid/webkit/PluginFullScreenHolder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Landroid/webkit/PluginFullScreenHolder;->access$000()Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder$1;->this$0:Landroid/webkit/PluginFullScreenHolder;

    #getter for: Landroid/webkit/PluginFullScreenHolder;->mContentView:Landroid/view/View;
    invoke-static {v1}, Landroid/webkit/PluginFullScreenHolder;->access$100(Landroid/webkit/PluginFullScreenHolder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;->removeView(Landroid/view/View;)V

    .line 58
    invoke-static {}, Landroid/webkit/PluginFullScreenHolder;->access$000()Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder$1;->this$0:Landroid/webkit/PluginFullScreenHolder;

    #getter for: Landroid/webkit/PluginFullScreenHolder;->mContentView:Landroid/view/View;
    invoke-static {v1}, Landroid/webkit/PluginFullScreenHolder;->access$100(Landroid/webkit/PluginFullScreenHolder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;->addView(Landroid/view/View;)V

    .line 60
    :cond_0
    return-void
.end method
