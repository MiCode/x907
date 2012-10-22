.class public Lcom/android/internal/atfwd/AtESLPCmdHandler;
.super Lcom/android/internal/atfwd/AtCmdBaseHandler;
.source "AtESLPCmdHandler.java"


# static fields
.field private static final ACTION_KEYBOARD_LIGHT:I = 0x5

.field private static final ACTION_LCM_SCREEN:I = 0x0

.field private static final ACTION_VIBRATE:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "AtEDFTCmdHandler"

.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private contx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmdBaseHandler;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/android/internal/atfwd/AtESLPCmdHandler;->contx:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 79
    sget-object v1, Lcom/android/internal/atfwd/AtESLPCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 86
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "Eng"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/internal/atfwd/AtESLPCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 92
    sget-object v1, Lcom/android/internal/atfwd/AtESLPCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method static releaseCpuLock()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/internal/atfwd/AtESLPCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/android/internal/atfwd/AtESLPCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/atfwd/AtESLPCmdHandler;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "+ESLP"

    return-object v0
.end method

.method public handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 6
    .parameter "cmd"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getTokens()[Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, tokens:[Ljava/lang/String;
    array-length v2, v1

    if-eq v2, v5, :cond_0

    .line 55
    const-string v2, "AtEDFTCmdHandler"

    const-string v3, "+ESLP: Only +ESLP=(0,1) supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v0           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v2, "+CME ERROR: 1"

    invoke-direct {v0, v4, v2}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 71
    .restart local v0       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :goto_0
    return-object v0

    .line 58
    :cond_0
    aget-object v2, v1, v4

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const-string v2, "AtEDFTCmdHandler"

    const-string v3, "+ESLP: stop sleep"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v2, p0, Lcom/android/internal/atfwd/AtESLPCmdHandler;->contx:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/atfwd/AtESLPCmdHandler;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 68
    :goto_1
    new-instance v0, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v0           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const/4 v2, 0x0

    invoke-direct {v0, v5, v2}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .restart local v0       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_0

    .line 65
    :cond_1
    const-string v2, "AtEDFTCmdHandler"

    const-string v3, "+ESLP: enable sleep"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lcom/android/internal/atfwd/AtESLPCmdHandler;->releaseCpuLock()V

    goto :goto_1
.end method
