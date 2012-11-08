.class Lcom/oppo/camera/OppoVideo$4;
.super Ljava/lang/Object;
.source "OppoVideo.java"

# interfaces
.implements Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;


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
    .line 499
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo$4;->this$0:Lcom/oppo/camera/OppoVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 503
    const-string v0, "key_video_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$4;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->handleCameraFaceChanged(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/oppo/camera/OppoVideo;->access$2700(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    const-string v0, "key_video_flash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$4;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->handleFlashModeChanged(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/oppo/camera/OppoVideo;->access$2800(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_2
    const-string v0, "key_video_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$4;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->handleVideoSizeChanged(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/oppo/camera/OppoVideo;->access$2900(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_3
    const-string v0, "key_video_format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 510
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$4;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->handleVideoFormatChanged(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/oppo/camera/OppoVideo;->access$3000(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_4
    const-string v0, "key_video_record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo$4;->this$0:Lcom/oppo/camera/OppoVideo;

    #calls: Lcom/oppo/camera/OppoVideo;->handleRecordModeChanged(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/oppo/camera/OppoVideo;->access$3100(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
