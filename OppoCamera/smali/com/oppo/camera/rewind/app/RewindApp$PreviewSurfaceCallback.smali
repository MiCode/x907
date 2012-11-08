.class public Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;
.super Ljava/lang/Object;
.source "RewindApp.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewSurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindApp;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 0
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 666
    if-ge p3, p4, :cond_0

    .line 673
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #setter for: Lcom/oppo/camera/rewind/app/RewindApp;->mDisplayWidth:I
    invoke-static {v0, p3}, Lcom/oppo/camera/rewind/app/RewindApp;->access$802(Lcom/oppo/camera/rewind/app/RewindApp;I)I

    .line 670
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #setter for: Lcom/oppo/camera/rewind/app/RewindApp;->mDisplayHeight:I
    invoke-static {v0, p4}, Lcom/oppo/camera/rewind/app/RewindApp;->access$902(Lcom/oppo/camera/rewind/app/RewindApp;I)I

    .line 671
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1100(Lcom/oppo/camera/rewind/app/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v1

    #setter for: Lcom/oppo/camera/rewind/app/RewindApp;->mCurSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1002(Lcom/oppo/camera/rewind/app/RewindApp;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;

    .line 672
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindApp$State;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1100(Lcom/oppo/camera/rewind/app/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp$State;->surfaceChanged(Landroid/view/SurfaceView;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/camera/rewind/app/RewindApp;->mIsPreviewSurfaceDestoryed:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$602(Lcom/oppo/camera/rewind/app/RewindApp;Z)Z

    .line 657
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v1, 0x1

    #setter for: Lcom/oppo/camera/rewind/app/RewindApp;->mIsSurfaceCreated:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$702(Lcom/oppo/camera/rewind/app/RewindApp;Z)Z

    .line 658
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v1, 0x1

    #setter for: Lcom/oppo/camera/rewind/app/RewindApp;->mIsPreviewSurfaceDestoryed:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$602(Lcom/oppo/camera/rewind/app/RewindApp;Z)Z

    .line 662
    return-void
.end method
