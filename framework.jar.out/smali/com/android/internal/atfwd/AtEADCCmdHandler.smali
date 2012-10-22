.class public Lcom/android/internal/atfwd/AtEADCCmdHandler;
.super Lcom/android/internal/atfwd/AtCmdBaseHandler;
.source "AtEADCCmdHandler.java"


# static fields
.field public static final BATTERY_LEVEL:Ljava/lang/String; = "level"

.field public static final BATTERY_SCALE:Ljava/lang/String; = "scale"

.field public static final BATTERY_TEMP:Ljava/lang/String; = "temperature"

.field public static final BATTERY_VOL:Ljava/lang/String; = "voltage"

.field private static final CHARGER_VOL:Ljava/lang/String; = "chargervoltage"

.field private static final ELEC:Ljava/lang/String; = "batterycurrent"

.field private static final LOG_TAG:Ljava/lang/String; = "AtEADCCmdHandler"

.field private static final PLUG:Ljava/lang/String; = "plugged"

.field private static final STATUS:Ljava/lang/String; = "status"


# instance fields
.field private Temp_str:Ljava/lang/String;

.field private contx:Landroid/content/Context;

.field mBatteryFilter:Landroid/content/IntentFilter;

.field mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mChargerVol:Ljava/lang/String;

.field private nVol_str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmdBaseHandler;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler;->mBatteryFilter:Landroid/content/IntentFilter;

    .line 63
    new-instance v0, Lcom/android/internal/atfwd/AtEADCCmdHandler$1;

    invoke-direct {v0, p0}, Lcom/android/internal/atfwd/AtEADCCmdHandler$1;-><init>(Lcom/android/internal/atfwd/AtEADCCmdHandler;)V

    iput-object v0, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    iput-object p1, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler;->contx:Landroid/content/Context;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler;->mBatteryFilter:Landroid/content/IntentFilter;

    .line 89
    iget-object v0, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler;->mBatteryFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler;->contx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler;->mBatteryFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/atfwd/AtEADCCmdHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler;->nVol_str:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/atfwd/AtEADCCmdHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler;->Temp_str:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/internal/atfwd/AtEADCCmdHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler;->mChargerVol:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "+EADC"

    return-object v0
.end method

.method public handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 6
    .parameter "cmd"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getTokens()[Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, tokens:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v5, :cond_0

    aget-object v2, v1, v4

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    :cond_0
    const-string v2, "AtEADCCmdHandler"

    const-string v3, "+EADC: Only +EADC=1\r supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v0           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v2, "+CME ERROR: 1"

    invoke-direct {v0, v4, v2}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 109
    .restart local v0       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :goto_0
    return-object v0

    .line 104
    :cond_1
    const-string v2, "AtEADCCmdHandler"

    const-string v3, "+EADC: return battery info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v0           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler;->nVol_str:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler;->Temp_str:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler;->mChargerVol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .restart local v0       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_0
.end method
