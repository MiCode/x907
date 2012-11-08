.class public Lcom/oppo/camera/rewind/app/RewindViewer$SurfaceCallback;
.super Ljava/lang/Object;
.source "RewindViewer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindViewer;


# direct methods
.method protected constructor <init>(Lcom/oppo/camera/rewind/app/RewindViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindViewer$SurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 109
    if-ge p3, p4, :cond_0

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer$SurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindViewer;

    iput-object p1, v0, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    .line 113
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer$SurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindViewer;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer$SurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindViewer;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/ui/UiManager;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 114
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer$SurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindViewer;

    invoke-virtual {v0, p3, p4}, Lcom/oppo/camera/rewind/app/RewindViewer;->onSurfaceChanged(II)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 104
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 100
    return-void
.end method
