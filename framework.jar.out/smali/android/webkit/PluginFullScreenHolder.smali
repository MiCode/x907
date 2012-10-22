.class Landroid/webkit/PluginFullScreenHolder;
.super Ljava/lang/Object;
.source "PluginFullScreenHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;
    }
.end annotation


# static fields
.field private static mLayout:Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;


# instance fields
.field private final mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mContentView:Landroid/view/View;

.field private mFirstTime:Z

.field private final mNpp:I

.field private final mOrientation:I

.field private mRunnable:Ljava/lang/Runnable;

.field private final mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;II)V
    .locals 1
    .parameter "webView"
    .parameter "orientation"
    .parameter "npp"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/PluginFullScreenHolder;->mFirstTime:Z

    .line 152
    new-instance v0, Landroid/webkit/PluginFullScreenHolder$2;

    invoke-direct {v0, p0}, Landroid/webkit/PluginFullScreenHolder$2;-><init>(Landroid/webkit/PluginFullScreenHolder;)V

    iput-object v0, p0, Landroid/webkit/PluginFullScreenHolder;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 51
    iput-object p1, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    .line 52
    iput p3, p0, Landroid/webkit/PluginFullScreenHolder;->mNpp:I

    .line 53
    iput p2, p0, Landroid/webkit/PluginFullScreenHolder;->mOrientation:I

    .line 54
    new-instance v0, Landroid/webkit/PluginFullScreenHolder$1;

    invoke-direct {v0, p0}, Landroid/webkit/PluginFullScreenHolder$1;-><init>(Landroid/webkit/PluginFullScreenHolder;)V

    iput-object v0, p0, Landroid/webkit/PluginFullScreenHolder;->mRunnable:Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method static synthetic access$000()Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroid/webkit/PluginFullScreenHolder;->mLayout:Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;

    return-object v0
.end method

.method static synthetic access$002(Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;)Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    sput-object p0, Landroid/webkit/PluginFullScreenHolder;->mLayout:Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;

    return-object p0
.end method

.method static synthetic access$100(Landroid/webkit/PluginFullScreenHolder;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/PluginFullScreenHolder;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/PluginFullScreenHolder;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/PluginFullScreenHolder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Landroid/webkit/PluginFullScreenHolder;->mNpp:I

    return v0
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 107
    .local v0, client:Landroid/webkit/WebChromeClient;
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 108
    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/PluginFullScreenHolder;->mFirstTime:Z

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/PluginFullScreenHolder;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 110
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 5
    .parameter "contentView"

    .prologue
    const/4 v4, -0x1

    .line 67
    new-instance v2, Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;

    iget-object v3, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;-><init>(Landroid/webkit/PluginFullScreenHolder;Landroid/content/Context;)V

    sput-object v2, Landroid/webkit/PluginFullScreenHolder;->mLayout:Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;

    .line 68
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 73
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    sget-object v2, Landroid/webkit/PluginFullScreenHolder;->mLayout:Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;

    invoke-virtual {v2, p1}, Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;->addView(Landroid/view/View;)V

    .line 74
    sget-object v2, Landroid/webkit/PluginFullScreenHolder;->mLayout:Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;->setVisibility(I)V

    .line 80
    instance-of v2, p1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 81
    check-cast v1, Landroid/view/SurfaceView;

    .line 82
    .local v1, sView:Landroid/view/SurfaceView;
    invoke-virtual {v1}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 87
    .end local v1           #sView:Landroid/view/SurfaceView;
    :cond_0
    iput-object p1, p0, Landroid/webkit/PluginFullScreenHolder;->mContentView:Landroid/view/View;

    .line 88
    return-void
.end method

.method public setFirstTime(Z)V
    .locals 0
    .parameter "firstTime"

    .prologue
    .line 91
    iput-boolean p1, p0, Landroid/webkit/PluginFullScreenHolder;->mFirstTime:Z

    .line 92
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 96
    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->hideAll()V

    .line 99
    :cond_0
    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 100
    .local v0, client:Landroid/webkit/WebChromeClient;
    sget-object v1, Landroid/webkit/PluginFullScreenHolder;->mLayout:Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;

    iget v2, p0, Landroid/webkit/PluginFullScreenHolder;->mOrientation:I

    iget-object v3, p0, Landroid/webkit/PluginFullScreenHolder;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 101
    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/webkit/PluginFullScreenHolder;->mFirstTime:Z

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/PluginFullScreenHolder;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    :cond_1
    return-void
.end method
