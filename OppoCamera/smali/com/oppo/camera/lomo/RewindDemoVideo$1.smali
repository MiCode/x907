.class Lcom/oppo/camera/lomo/RewindDemoVideo$1;
.super Ljava/lang/Object;
.source "RewindDemoVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/lomo/RewindDemoVideo;->onCreate(Landroid/os/Bundle;)V
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
    .line 35
    iput-object p1, p0, Lcom/oppo/camera/lomo/RewindDemoVideo$1;->this$0:Lcom/oppo/camera/lomo/RewindDemoVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo$1;->this$0:Lcom/oppo/camera/lomo/RewindDemoVideo;

    invoke-virtual {v0, v1, v1}, Lcom/oppo/camera/lomo/RewindDemoVideo;->overridePendingTransition(II)V

    .line 43
    iget-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo$1;->this$0:Lcom/oppo/camera/lomo/RewindDemoVideo;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/RewindDemoVideo;->finish()V

    .line 45
    return-void
.end method
