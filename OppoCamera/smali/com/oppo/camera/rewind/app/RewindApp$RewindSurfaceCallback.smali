.class public Lcom/oppo/camera/rewind/app/RewindApp$RewindSurfaceCallback;
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
    name = "RewindSurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindApp;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp$RewindSurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

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
    .line 685
    if-ge p3, p4, :cond_0

    .line 690
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$RewindSurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindApp$State;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$RewindSurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1300(Lcom/oppo/camera/rewind/app/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp$State;->surfaceChanged(Landroid/view/SurfaceView;)V

    .line 689
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$RewindSurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$RewindSurfaceCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1300(Lcom/oppo/camera/rewind/app/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v1

    #setter for: Lcom/oppo/camera/rewind/app/RewindApp;->mCurSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1002(Lcom/oppo/camera/rewind/app/RewindApp;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 678
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 681
    return-void
.end method
