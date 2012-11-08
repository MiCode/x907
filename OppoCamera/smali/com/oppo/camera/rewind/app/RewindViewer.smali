.class public abstract Lcom/oppo/camera/rewind/app/RewindViewer;
.super Landroid/view/SurfaceView;
.source "RewindViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/app/RewindViewer$SurfaceCallback;,
        Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;
    }
.end annotation


# instance fields
.field protected mCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

.field protected mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

.field protected mHolder:Landroid/view/SurfaceHolder;

.field protected mHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field protected mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

.field public mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    .line 24
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindViewer$SurfaceCallback;

    invoke-direct {v0, p0}, Lcom/oppo/camera/rewind/app/RewindViewer$SurfaceCallback;-><init>(Lcom/oppo/camera/rewind/app/RewindViewer;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 26
    new-instance v0, Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-direct {v0}, Lcom/oppo/camera/rewind/ui/UiManager;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    .line 45
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/RewindViewer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    .line 46
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 47
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/ui/UiManager;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 48
    return-void
.end method


# virtual methods
.method public clearDisplay(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 86
    return-void
.end method

.method public commit()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public abstract display()V
.end method

.method protected abstract onSurfaceChanged(II)V
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public requestDraw()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public abstract reset()V
.end method

.method public abstract save(Ljava/lang/String;)V
.end method

.method public selectBackground(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 68
    return-void
.end method

.method public setCallback(Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    .line 64
    return-void
.end method

.method public setConfig(Lcom/oppo/camera/rewind/app/RewindViewerConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    .line 60
    return-void
.end method

.method public abstract setRewindSession(Lcom/oppo/camera/rewind/app/RewindSession;I)V
.end method

.method public showPostview([BLcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V
    .locals 0
    .parameter "buffer"
    .parameter "dims"
    .parameter "config"

    .prologue
    .line 93
    return-void
.end method

.method public startBenchmark()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
