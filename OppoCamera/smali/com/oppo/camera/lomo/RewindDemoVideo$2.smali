.class Lcom/oppo/camera/lomo/RewindDemoVideo$2;
.super Ljava/lang/Object;
.source "RewindDemoVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/RewindDemoVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/lomo/RewindDemoVideo;


# direct methods
.method constructor <init>(Lcom/oppo/camera/lomo/RewindDemoVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/oppo/camera/lomo/RewindDemoVideo$2;->this$0:Lcom/oppo/camera/lomo/RewindDemoVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo$2;->this$0:Lcom/oppo/camera/lomo/RewindDemoVideo;

    iget-object v0, v0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 59
    iget-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo$2;->this$0:Lcom/oppo/camera/lomo/RewindDemoVideo;

    #calls: Lcom/oppo/camera/lomo/RewindDemoVideo;->sendBoradCastToRestoreMusic()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/RewindDemoVideo;->access$000(Lcom/oppo/camera/lomo/RewindDemoVideo;)V

    .line 61
    iget-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo$2;->this$0:Lcom/oppo/camera/lomo/RewindDemoVideo;

    invoke-virtual {v0, v1, v1}, Lcom/oppo/camera/lomo/RewindDemoVideo;->overridePendingTransition(II)V

    .line 63
    iget-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo$2;->this$0:Lcom/oppo/camera/lomo/RewindDemoVideo;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/RewindDemoVideo;->finish()V

    .line 64
    return-void
.end method
