.class Lcom/oppo/camera/OppoVideo$7;
.super Ljava/lang/Object;
.source "OppoVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/OppoVideo;


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$7;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$7;->this$0:Lcom/oppo/camera/OppoVideo;

    #getter for: Lcom/oppo/camera/OppoVideo;->mRecordingTimeView:Lcom/oppo/camera/views/RotateRecordingTimeView;
    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->access$3700(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/RotateRecordingTimeView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateRecordingTimeView;->setVisibility(I)V

    .line 1420
    return-void
.end method
