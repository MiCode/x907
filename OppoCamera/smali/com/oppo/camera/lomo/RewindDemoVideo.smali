.class public Lcom/oppo/camera/lomo/RewindDemoVideo;
.super Landroid/app/Activity;
.source "RewindDemoVideo.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mIsBroadcastPauseMusic:Z

.field mUri:Landroid/net/Uri;

.field mVideoBack:Landroid/widget/Button;

.field mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-instance v0, Lcom/oppo/camera/lomo/RewindDemoVideo$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/RewindDemoVideo$2;-><init>(Lcom/oppo/camera/lomo/RewindDemoVideo;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mClickListener:Landroid/view/View$OnClickListener;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mIsBroadcastPauseMusic:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/lomo/RewindDemoVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oppo/camera/lomo/RewindDemoVideo;->sendBoradCastToRestoreMusic()V

    return-void
.end method

.method private sendBoradCastToPauseMusic()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 80
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/oppo/camera/lomo/RewindDemoVideo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 81
    .local v1, manager:Landroid/media/AudioManager;
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    .line 83
    .local v2, result:I
    if-ne v2, v5, :cond_0

    .line 84
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mIsBroadcastPauseMusic:Z

    .line 86
    :cond_0
    if-nez v2, :cond_1

    .line 87
    iput-boolean v5, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mIsBroadcastPauseMusic:Z

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.oppo.music.musicservicecommand.pause"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/RewindDemoVideo;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private sendBoradCastToRestoreMusic()V
    .locals 5

    .prologue
    .line 95
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/oppo/camera/lomo/RewindDemoVideo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 96
    .local v1, manager:Landroid/media/AudioManager;
    const/4 v2, 0x0

    .line 97
    .local v2, result:I
    iget-boolean v3, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mIsBroadcastPauseMusic:Z

    if-nez v3, :cond_1

    .line 98
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v2

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-boolean v3, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mIsBroadcastPauseMusic:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.oppo.music.musicservicecommand.resume"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/RewindDemoVideo;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/RewindDemoVideo;->setContentView(I)V

    .line 30
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/RewindDemoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mVideoView:Landroid/widget/VideoView;

    .line 31
    invoke-direct {p0}, Lcom/oppo/camera/lomo/RewindDemoVideo;->sendBoradCastToPauseMusic()V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/lomo/RewindDemoVideo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mUri:Landroid/net/Uri;

    .line 33
    iget-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 34
    iget-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 35
    iget-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/oppo/camera/lomo/RewindDemoVideo$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/lomo/RewindDemoVideo$1;-><init>(Lcom/oppo/camera/lomo/RewindDemoVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 48
    iget-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 49
    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/RewindDemoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mVideoBack:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mVideoBack:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 69
    iget-object v0, p0, Lcom/oppo/camera/lomo/RewindDemoVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 70
    invoke-direct {p0}, Lcom/oppo/camera/lomo/RewindDemoVideo;->sendBoradCastToRestoreMusic()V

    .line 72
    invoke-virtual {p0, v1, v1}, Lcom/oppo/camera/lomo/RewindDemoVideo;->overridePendingTransition(II)V

    .line 74
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/RewindDemoVideo;->finish()V

    .line 75
    return-void
.end method
