.class public Lcom/android/server/BatteryPolicy;
.super Ljava/lang/Object;
.source "BatteryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryPolicy$WarringDialog;,
        Lcom/android/server/BatteryPolicy$BatteryHealth;,
        Lcom/android/server/BatteryPolicy$BatteryVoltage;,
        Lcom/android/server/BatteryPolicy$ChargerVoltage;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryPolicy"

.field private static final VDBG:Z

.field private static sInstance:Lcom/android/server/BatteryPolicy;


# instance fields
.field private mBatteryHealth:Lcom/android/server/BatteryPolicy$BatteryHealth;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryVoltage:Lcom/android/server/BatteryPolicy$BatteryVoltage;

.field private mChargerVoltage:Lcom/android/server/BatteryPolicy$ChargerVoltage;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPlugged:Z

.field private oldBatteryVolStatus:I

.field private oldBatteryhealthStatus:I

.field private oldChargeVolStatus:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BatteryPolicy;->mPlugged:Z

    .line 61
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/BatteryPolicy;->mHandler:Landroid/os/Handler;

    .line 63
    iput v2, p0, Lcom/android/server/BatteryPolicy;->oldBatteryhealthStatus:I

    .line 64
    iput v2, p0, Lcom/android/server/BatteryPolicy;->oldChargeVolStatus:I

    .line 65
    iput v2, p0, Lcom/android/server/BatteryPolicy;->oldBatteryVolStatus:I

    .line 70
    new-instance v1, Lcom/android/server/BatteryPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryPolicy$1;-><init>(Lcom/android/server/BatteryPolicy;)V

    iput-object v1, p0, Lcom/android/server/BatteryPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    new-instance v1, Lcom/android/server/BatteryPolicy$ChargerVoltage;

    invoke-direct {v1, p0, v4}, Lcom/android/server/BatteryPolicy$ChargerVoltage;-><init>(Lcom/android/server/BatteryPolicy;Lcom/android/server/BatteryPolicy$1;)V

    iput-object v1, p0, Lcom/android/server/BatteryPolicy;->mChargerVoltage:Lcom/android/server/BatteryPolicy$ChargerVoltage;

    .line 160
    new-instance v1, Lcom/android/server/BatteryPolicy$BatteryVoltage;

    invoke-direct {v1, p0, v4}, Lcom/android/server/BatteryPolicy$BatteryVoltage;-><init>(Lcom/android/server/BatteryPolicy;Lcom/android/server/BatteryPolicy$1;)V

    iput-object v1, p0, Lcom/android/server/BatteryPolicy;->mBatteryVoltage:Lcom/android/server/BatteryPolicy$BatteryVoltage;

    .line 185
    new-instance v1, Lcom/android/server/BatteryPolicy$BatteryHealth;

    invoke-direct {v1, p0, v4}, Lcom/android/server/BatteryPolicy$BatteryHealth;-><init>(Lcom/android/server/BatteryPolicy;Lcom/android/server/BatteryPolicy$1;)V

    iput-object v1, p0, Lcom/android/server/BatteryPolicy;->mBatteryHealth:Lcom/android/server/BatteryPolicy$BatteryHealth;

    .line 80
    iput-object p1, p0, Lcom/android/server/BatteryPolicy;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/server/BatteryPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/BatteryPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/BatteryPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BatteryPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/BatteryPolicy;->updateBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/BatteryPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/server/BatteryPolicy;->oldBatteryhealthStatus:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/BatteryPolicy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/server/BatteryPolicy;->oldBatteryhealthStatus:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/BatteryPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/BatteryPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/server/BatteryPolicy;->oldChargeVolStatus:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/BatteryPolicy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/server/BatteryPolicy;->oldChargeVolStatus:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/BatteryPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/server/BatteryPolicy;->mPlugged:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/BatteryPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/server/BatteryPolicy;->oldBatteryVolStatus:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/BatteryPolicy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/server/BatteryPolicy;->oldBatteryVolStatus:I

    return p1
.end method

.method public static installIcons(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    new-instance v0, Lcom/android/server/BatteryPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryPolicy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/BatteryPolicy;->sInstance:Lcom/android/server/BatteryPolicy;

    .line 92
    return-void
.end method

.method private updateBattery(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 95
    const-string v1, "plugged"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/BatteryPolicy;->mPlugged:Z

    .line 98
    iget-object v0, p0, Lcom/android/server/BatteryPolicy;->mBatteryHealth:Lcom/android/server/BatteryPolicy$BatteryHealth;

    #calls: Lcom/android/server/BatteryPolicy$BatteryHealth;->updateBatteryHealth(Landroid/content/Intent;)Z
    invoke-static {v0, p1}, Lcom/android/server/BatteryPolicy$BatteryHealth;->access$100(Lcom/android/server/BatteryPolicy$BatteryHealth;Landroid/content/Intent;)Z

    .line 105
    iget-object v0, p0, Lcom/android/server/BatteryPolicy;->mChargerVoltage:Lcom/android/server/BatteryPolicy$ChargerVoltage;

    #calls: Lcom/android/server/BatteryPolicy$ChargerVoltage;->updateChargerVoltage(Landroid/content/Intent;)V
    invoke-static {v0, p1}, Lcom/android/server/BatteryPolicy$ChargerVoltage;->access$200(Lcom/android/server/BatteryPolicy$ChargerVoltage;Landroid/content/Intent;)V

    .line 107
    iget-object v0, p0, Lcom/android/server/BatteryPolicy;->mBatteryVoltage:Lcom/android/server/BatteryPolicy$BatteryVoltage;

    #calls: Lcom/android/server/BatteryPolicy$BatteryVoltage;->updateBatteryVoltage(Landroid/content/Intent;)V
    invoke-static {v0, p1}, Lcom/android/server/BatteryPolicy$BatteryVoltage;->access$300(Lcom/android/server/BatteryPolicy$BatteryVoltage;Landroid/content/Intent;)V

    .line 122
    return-void
.end method
