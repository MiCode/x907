.class public Lcom/android/internal/atfwd/AtCASPCmdHandler;
.super Lcom/android/internal/atfwd/AtCmdBaseHandler;
.source "AtCASPCmdHandler.java"


# static fields
.field private static final ACTION_KEYBOARD_LIGHT:I = 0x5

.field private static final ACTION_LCM_SCREEN:I = 0x0

.field private static final ACTION_VIBRATE:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "AtCASPCmdHandler"

.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private contx:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;

.field private player:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmdBaseHandler;-><init>(Landroid/content/Context;)V

    .line 46
    const-string v0, "/system/media/audio/ringtones/Hello_Find.mp3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->mUri:Landroid/net/Uri;

    .line 52
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->contx:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->contx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->player:Landroid/media/MediaPlayer;

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/atfwd/AtCASPCmdHandler;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 104
    sget-object v1, Lcom/android/internal/atfwd/AtCASPCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 111
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "Eng"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/internal/atfwd/AtCASPCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 117
    sget-object v1, Lcom/android/internal/atfwd/AtCASPCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method static releaseCpuLock()V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 125
    :cond_0
    return-void
.end method

.method private startring(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->player:Landroid/media/MediaPlayer;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 134
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/internal/atfwd/AtCASPCmdHandler$1;

    invoke-direct {v1, p0}, Lcom/android/internal/atfwd/AtCASPCmdHandler$1;-><init>(Lcom/android/internal/atfwd/AtCASPCmdHandler;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 141
    return-void
.end method

.method private stopring()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "+CASP"

    return-object v0
.end method

.method public handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 7
    .parameter "cmd"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getTokens()[Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, tokens:[Ljava/lang/String;
    array-length v2, v1

    packed-switch v2, :pswitch_data_0

    .line 91
    :pswitch_0
    const-string v2, "AtCASPCmdHandler"

    const-string v3, "+CASP:  +CASP=1,151,2,20/2,151 are supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v0           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v2, "+CME ERROR: 1"

    invoke-direct {v0, v4, v2}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 96
    .restart local v0       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :goto_0
    return-object v0

    .line 67
    :pswitch_1
    aget-object v2, v1, v4

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v1, v5

    const-string v3, "151"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const-string v2, "AtCASPCmdHandler"

    const-string v3, "+CASP: stop ring"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lcom/android/internal/atfwd/AtCASPCmdHandler;->stopring()V

    .line 70
    invoke-static {}, Lcom/android/internal/atfwd/AtCASPCmdHandler;->releaseCpuLock()V

    .line 71
    new-instance v0, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v0           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    invoke-direct {v0, v5, v6}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .restart local v0       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_0

    .line 74
    :cond_0
    const-string v2, "AtCASPCmdHandler"

    const-string v3, "+CASP:  +CASP=2,151 are supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v0           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v2, "+CME ERROR: 1"

    invoke-direct {v0, v4, v2}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 77
    .restart local v0       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_0

    .line 79
    :pswitch_2
    aget-object v2, v1, v4

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v1, v5

    const-string v3, "151"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    aget-object v2, v1, v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    aget-object v2, v1, v2

    const-string v3, "20"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    const-string v2, "AtCASPCmdHandler"

    const-string v3, "+CASP: start ring"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->contx:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/atfwd/AtCASPCmdHandler;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 82
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler;->contx:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/internal/atfwd/AtCASPCmdHandler;->startring(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v0           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    invoke-direct {v0, v5, v6}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .restart local v0       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_0

    .line 86
    :cond_1
    const-string v2, "AtCASPCmdHandler"

    const-string v3, "+CASP:  +CASP=1,151,2,20 are supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v0           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v2, "+CME ERROR: 1"

    invoke-direct {v0, v4, v2}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 89
    .restart local v0       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto/16 :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
