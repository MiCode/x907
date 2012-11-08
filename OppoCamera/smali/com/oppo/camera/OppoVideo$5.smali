.class Lcom/oppo/camera/OppoVideo$5;
.super Ljava/lang/Thread;
.source "OppoVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/OppoVideo;->onResume()V
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
    .line 871
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$5;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$5;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->startPreview()V
    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->access$1300(Lcom/oppo/camera/OppoVideo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :goto_0
    return-void

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 877
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo$5;->this$0:Lcom/oppo/camera/OppoVideo;

    const/4 v2, 0x1

    #setter for: Lcom/oppo/camera/OppoVideo;->mStartPreviewFail:Z
    invoke-static {v1, v2}, Lcom/oppo/camera/OppoVideo;->access$1002(Lcom/oppo/camera/OppoVideo;Z)Z

    goto :goto_0
.end method
