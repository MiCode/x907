.class public Lcom/oppo/camera/views/FocusSurfaceView$FocusThread;
.super Ljava/lang/Thread;
.source "FocusSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/views/FocusSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FocusThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/views/FocusSurfaceView;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/views/FocusSurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oppo/camera/views/FocusSurfaceView$FocusThread;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView$FocusThread;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #getter for: Lcom/oppo/camera/views/FocusSurfaceView;->mSize:I
    invoke-static {v0}, Lcom/oppo/camera/views/FocusSurfaceView;->access$000(Lcom/oppo/camera/views/FocusSurfaceView;)I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView$FocusThread;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    iget-object v1, p0, Lcom/oppo/camera/views/FocusSurfaceView$FocusThread;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #getter for: Lcom/oppo/camera/views/FocusSurfaceView;->mSize:I
    invoke-static {v1}, Lcom/oppo/camera/views/FocusSurfaceView;->access$000(Lcom/oppo/camera/views/FocusSurfaceView;)I

    move-result v1

    #calls: Lcom/oppo/camera/views/FocusSurfaceView;->reCalcFocusRect(I)V
    invoke-static {v0, v1}, Lcom/oppo/camera/views/FocusSurfaceView;->access$100(Lcom/oppo/camera/views/FocusSurfaceView;I)V

    .line 85
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView$FocusThread;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    #calls: Lcom/oppo/camera/views/FocusSurfaceView;->drawFocus()V
    invoke-static {v0}, Lcom/oppo/camera/views/FocusSurfaceView;->access$200(Lcom/oppo/camera/views/FocusSurfaceView;)V

    .line 86
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView$FocusThread;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oppo/camera/views/FocusSurfaceView;->access$020(Lcom/oppo/camera/views/FocusSurfaceView;I)I

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/views/FocusSurfaceView$FocusThread;->this$0:Lcom/oppo/camera/views/FocusSurfaceView;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/camera/views/FocusSurfaceView;->mIsDoingAnimation:Z
    invoke-static {v0, v1}, Lcom/oppo/camera/views/FocusSurfaceView;->access$302(Lcom/oppo/camera/views/FocusSurfaceView;Z)Z

    .line 89
    return-void
.end method
