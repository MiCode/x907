.class public Lcom/oppo/test/TouchActivity;
.super Landroid/app/Activity;
.source "TouchActivity.java"

# interfaces
.implements Lcom/oppo/test/ReleaseListener;


# static fields
.field private static final ANIMTAION_TIME:J = 0x1b58L

.field private static final CHARGE_WAKE_LOCK_TIME:J = 0xbb8L

.field private static final KEY_IS_AIRPLANE_MODE:Ljava/lang/String; = "is_airplane_mode"

.field private static final KEY_IS_ALARM_RUNNING:Ljava/lang/String; = "is_alarm_running"

.field private static final LONG_PRESS_TIME:J = 0x7d0L

.field private static final REQUEST_FOR_STARTUP:I = 0x0

.field private static final SWITCH_TIME:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "TouchAndroid"


# instance fields
.field private mAirplaneModeOn:Z

.field private mAlarmWakeLock:Lcom/oppo/test/FPDWakeLock;

.field private mAnimWakeLock:Lcom/oppo/test/FPDWakeLock;

.field private mAutoShutdown:Lcom/oppo/test/FPDAutoShutdown;

.field private mChargeWakeLock:Lcom/oppo/test/FPDWakeLock;

.field private mChargerHelper:Lcom/oppo/test/ChargerHelper;

.field private mChargerPlugged:Z

.field private mFPDReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mLCDBackLightRestored:Z

.field private mLastBatteryIntent:Landroid/content/Intent;

.field private mLongPreess:Z

.field private mRunnableForLongPress:Ljava/lang/Runnable;

.field private mScreenLockManager:Lcom/oppo/test/ScreenLockManager;

.field private mSleeping:Z

.field private mSwitchWakeLock:Lcom/oppo/test/FPDWakeLock;

.field private mTimerBootWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 549
    const-string v0, "persist.sys.touch_app_pid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 378
    iput-boolean v1, p0, Lcom/oppo/test/TouchActivity;->mLCDBackLightRestored:Z

    .line 562
    iput-boolean v1, p0, Lcom/oppo/test/TouchActivity;->mChargerPlugged:Z

    .line 572
    new-instance v0, Lcom/oppo/test/TouchActivity$4;

    invoke-direct {v0, p0}, Lcom/oppo/test/TouchActivity$4;-><init>(Lcom/oppo/test/TouchActivity;)V

    iput-object v0, p0, Lcom/oppo/test/TouchActivity;->mFPDReceiver:Landroid/content/BroadcastReceiver;

    .line 675
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/test/TouchActivity;->mHandler:Landroid/os/Handler;

    .line 677
    iput-boolean v1, p0, Lcom/oppo/test/TouchActivity;->mLongPreess:Z

    .line 679
    new-instance v0, Lcom/oppo/test/TouchActivity$5;

    invoke-direct {v0, p0}, Lcom/oppo/test/TouchActivity$5;-><init>(Lcom/oppo/test/TouchActivity;)V

    iput-object v0, p0, Lcom/oppo/test/TouchActivity;->mRunnableForLongPress:Ljava/lang/Runnable;

    .line 694
    iput-boolean v1, p0, Lcom/oppo/test/TouchActivity;->mSleeping:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/test/TouchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->popMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/test/TouchActivity;)Lcom/oppo/test/FPDWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mAnimWakeLock:Lcom/oppo/test/FPDWakeLock;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/oppo/test/TouchActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/oppo/test/TouchActivity;->mLongPreess:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oppo/test/TouchActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mRunnableForLongPress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oppo/test/TouchActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/test/TouchActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/oppo/test/TouchActivity;->mSleeping:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/test/TouchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->tryAcquireChargeLock()V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/test/TouchActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/oppo/test/TouchActivity;->onBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/test/TouchActivity;)Lcom/oppo/test/FPDWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mSwitchWakeLock:Lcom/oppo/test/FPDWakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/test/TouchActivity;)Lcom/oppo/test/FPDWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mAlarmWakeLock:Lcom/oppo/test/FPDWakeLock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/test/TouchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->restoreLCDBackLight()V

    return-void
.end method

.method static synthetic access$800(Lcom/oppo/test/TouchActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mTimerBootWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/test/TouchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->exitFPDMode()V

    return-void
.end method

.method private exitFPDMode()V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mAutoShutdown:Lcom/oppo/test/FPDAutoShutdown;

    invoke-virtual {v0}, Lcom/oppo/test/FPDAutoShutdown;->cancelLastAlarm()V

    .line 211
    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mAnimWakeLock:Lcom/oppo/test/FPDWakeLock;

    invoke-virtual {v0}, Lcom/oppo/test/FPDWakeLock;->acquire()V

    .line 217
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mChargerHelper:Lcom/oppo/test/ChargerHelper;

    invoke-virtual {v0}, Lcom/oppo/test/ChargerHelper;->clear()V

    .line 219
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->wakeUp()V

    .line 222
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/test/TouchActivity$1;

    invoke-direct {v1, p0}, Lcom/oppo/test/TouchActivity$1;-><init>(Lcom/oppo/test/TouchActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/test/TouchActivity$2;

    invoke-direct {v1, p0}, Lcom/oppo/test/TouchActivity$2;-><init>(Lcom/oppo/test/TouchActivity;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/test/TouchActivity$3;

    invoke-direct {v1, p0}, Lcom/oppo/test/TouchActivity$3;-><init>(Lcom/oppo/test/TouchActivity;)V

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    return-void
.end method

.method private goToSleep()V
    .locals 3

    .prologue
    .line 275
    const-string v1, "TouchAndroid"

    const-string v2, "goToSleep"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/oppo/test/TouchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 277
    .local v0, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 280
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Power;->setScreenState(Z)I

    .line 281
    return-void
.end method

.method private lockScreen()V
    .locals 4

    .prologue
    .line 285
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/oppo/test/TouchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 287
    .local v2, pm:Landroid/os/PowerManager;
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/oppo/test/TouchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 288
    .local v1, keyguardManager:Landroid/app/KeyguardManager;
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    .line 289
    .local v0, keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 291
    return-void
.end method

.method private onBatteryChanged(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 297
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v7, p0, Lcom/oppo/test/TouchActivity;->mLastBatteryIntent:Landroid/content/Intent;

    .line 298
    iget-object v7, p0, Lcom/oppo/test/TouchActivity;->mLastBatteryIntent:Landroid/content/Intent;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v7, "status"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 301
    .local v3, status:I
    const-string v7, "plugged"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    move v1, v5

    .line 302
    .local v1, plugged:Z
    :goto_0
    const-string v7, "level"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 303
    .local v0, level:I
    const-string v6, "scale"

    const/16 v7, 0x64

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 304
    .local v2, scale:I
    mul-int/lit8 v6, v0, 0x64

    div-int v4, v6, v2

    .line 306
    .local v4, v:I
    iget-object v6, p0, Lcom/oppo/test/TouchActivity;->mChargerHelper:Lcom/oppo/test/ChargerHelper;

    invoke-virtual {v6, v1, v3, v0}, Lcom/oppo/test/ChargerHelper;->draw(ZII)V

    .line 308
    if-eqz v1, :cond_2

    .line 310
    iget-boolean v6, p0, Lcom/oppo/test/TouchActivity;->mChargerPlugged:Z

    if-nez v6, :cond_0

    .line 312
    iput-boolean v5, p0, Lcom/oppo/test/TouchActivity;->mChargerPlugged:Z

    .line 313
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->wakeUp()V

    .line 322
    :cond_0
    :goto_1
    iput-boolean v1, p0, Lcom/oppo/test/TouchActivity;->mChargerPlugged:Z

    .line 323
    const-string v5, "TouchAndroid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] plugged = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] level = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void

    .end local v0           #level:I
    .end local v1           #plugged:Z
    .end local v2           #scale:I
    .end local v4           #v:I
    :cond_1
    move v1, v6

    .line 301
    goto :goto_0

    .line 319
    .restart local v0       #level:I
    .restart local v1       #plugged:Z
    .restart local v2       #scale:I
    .restart local v4       #v:I
    :cond_2
    iget-object v5, p0, Lcom/oppo/test/TouchActivity;->mChargeWakeLock:Lcom/oppo/test/FPDWakeLock;

    invoke-virtual {v5}, Lcom/oppo/test/FPDWakeLock;->release()V

    goto :goto_1
.end method

.method private popMode()V
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->unregisterFPDReceiver()V

    .line 332
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mLastBatteryIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mLastBatteryIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oppo/test/TouchActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 337
    :cond_0
    return-void
.end method

.method private pushMode()V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method private restoreLCDBackLight()V
    .locals 2

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/oppo/test/TouchActivity;->mLCDBackLightRestored:Z

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.fpd.restore_lcd_brightness"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oppo/test/TouchActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/test/TouchActivity;->mLCDBackLightRestored:Z

    .line 387
    :cond_0
    return-void
.end method

.method private setNormalAlarmState(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 350
    return-void
.end method

.method private showAlarm()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method private showCharge()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method private tryAcquireChargeLock()V
    .locals 3

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/oppo/test/TouchActivity;->mChargerPlugged:Z

    if-eqz v0, :cond_0

    .line 368
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Power;->setScreenState(Z)I

    .line 369
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mChargeWakeLock:Lcom/oppo/test/FPDWakeLock;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/oppo/test/FPDWakeLock;->acquire(J)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mChargeWakeLock:Lcom/oppo/test/FPDWakeLock;

    invoke-virtual {v0}, Lcom/oppo/test/FPDWakeLock;->release()V

    goto :goto_0
.end method

.method private unregisterFPDReceiver()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mFPDReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mFPDReceiver:Landroid/content/BroadcastReceiver;

    invoke-super {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/test/TouchActivity;->mFPDReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    :cond_0
    return-void
.end method

.method private wakeUp()V
    .locals 6

    .prologue
    .line 392
    const-string v2, "TouchAndroid"

    const-string v3, "try wakeUp"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->tryAcquireChargeLock()V

    .line 394
    iget-object v2, p0, Lcom/oppo/test/TouchActivity;->mScreenLockManager:Lcom/oppo/test/ScreenLockManager;

    invoke-virtual {v2}, Lcom/oppo/test/ScreenLockManager;->isAnyOneHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    const-string v2, "TouchAndroid"

    const-string v3, "wakeUp"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->restoreLCDBackLight()V

    .line 399
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 403
    .local v1, ipm:Landroid/os/IPowerManager;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .end local v1           #ipm:Landroid/os/IPowerManager;
    :goto_0
    return-void

    .line 405
    .restart local v1       #ipm:Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 412
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ipm:Landroid/os/IPowerManager;
    :cond_0
    const-string v2, "TouchAndroid"

    const-string v3, "no body holds mFPDWakeLock,ignore wakeUp"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public myDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 150
    :cond_0
    :goto_0
    return v4

    .line 112
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->exitFPDMode()V

    goto :goto_0

    .line 119
    :sswitch_1
    const-string v0, "TouchAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key power with action ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 122
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/test/TouchActivity;->mRunnableForLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    iget-boolean v0, p0, Lcom/oppo/test/TouchActivity;->mLongPreess:Z

    if-nez v0, :cond_1

    .line 125
    const-string v0, "TouchAndroid"

    const-string v1, "key click "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-boolean v0, p0, Lcom/oppo/test/TouchActivity;->mSleeping:Z

    if-nez v0, :cond_2

    .line 128
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->goToSleep()V

    .line 136
    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/oppo/test/TouchActivity;->mLongPreess:Z

    goto :goto_0

    .line 133
    :cond_2
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->wakeUp()V

    goto :goto_1

    .line 141
    :cond_3
    iget-boolean v0, p0, Lcom/oppo/test/TouchActivity;->mLongPreess:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/test/TouchActivity;->mRunnableForLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 108
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_1
        0x32a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 420
    packed-switch p1, :pswitch_data_0

    .line 443
    :goto_0
    return-void

    .line 423
    :pswitch_0
    const-string v0, "TouchAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recevie act result ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 426
    const-string v0, "TouchAndroid"

    const-string v1, "star up true"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->exitFPDMode()V

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mAlarmWakeLock:Lcom/oppo/test/FPDWakeLock;

    invoke-virtual {v0}, Lcom/oppo/test/FPDWakeLock;->release()V

    .line 432
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mSwitchWakeLock:Lcom/oppo/test/FPDWakeLock;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/test/FPDWakeLock;->acquire(J)V

    .line 434
    const-string v0, "TouchAndroid"

    const-string v1, "star up false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 458
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 459
    new-instance v4, Lcom/oppo/test/FPDAutoShutdown;

    invoke-direct {v4, p0}, Lcom/oppo/test/FPDAutoShutdown;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oppo/test/TouchActivity;->mAutoShutdown:Lcom/oppo/test/FPDAutoShutdown;

    .line 460
    iget-object v4, p0, Lcom/oppo/test/TouchActivity;->mAutoShutdown:Lcom/oppo/test/FPDAutoShutdown;

    invoke-virtual {v4}, Lcom/oppo/test/FPDAutoShutdown;->setNewAlarm()V

    .line 463
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/oppo/test/TouchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 464
    .local v2, pm:Landroid/os/PowerManager;
    const-string v4, "TouchAndroid"

    invoke-virtual {v2, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/test/TouchActivity;->mTimerBootWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 467
    new-instance v4, Lcom/oppo/test/ScreenLockManager;

    invoke-direct {v4, p0}, Lcom/oppo/test/ScreenLockManager;-><init>(Lcom/oppo/test/ReleaseListener;)V

    iput-object v4, p0, Lcom/oppo/test/TouchActivity;->mScreenLockManager:Lcom/oppo/test/ScreenLockManager;

    .line 469
    iget-object v4, p0, Lcom/oppo/test/TouchActivity;->mScreenLockManager:Lcom/oppo/test/ScreenLockManager;

    invoke-virtual {v4, v7}, Lcom/oppo/test/ScreenLockManager;->getFPDLock(I)Lcom/oppo/test/FPDWakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/test/TouchActivity;->mAnimWakeLock:Lcom/oppo/test/FPDWakeLock;

    .line 470
    iget-object v4, p0, Lcom/oppo/test/TouchActivity;->mScreenLockManager:Lcom/oppo/test/ScreenLockManager;

    invoke-virtual {v4, v5}, Lcom/oppo/test/ScreenLockManager;->getFPDLock(I)Lcom/oppo/test/FPDWakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/test/TouchActivity;->mChargeWakeLock:Lcom/oppo/test/FPDWakeLock;

    .line 471
    iget-object v4, p0, Lcom/oppo/test/TouchActivity;->mScreenLockManager:Lcom/oppo/test/ScreenLockManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/oppo/test/ScreenLockManager;->getFPDLock(I)Lcom/oppo/test/FPDWakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/test/TouchActivity;->mSwitchWakeLock:Lcom/oppo/test/FPDWakeLock;

    .line 472
    iget-object v4, p0, Lcom/oppo/test/TouchActivity;->mScreenLockManager:Lcom/oppo/test/ScreenLockManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/oppo/test/ScreenLockManager;->getFPDLock(I)Lcom/oppo/test/FPDWakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/test/TouchActivity;->mAlarmWakeLock:Lcom/oppo/test/FPDWakeLock;

    .line 474
    iget-object v4, p0, Lcom/oppo/test/TouchActivity;->mSwitchWakeLock:Lcom/oppo/test/FPDWakeLock;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v5, v6}, Lcom/oppo/test/FPDWakeLock;->acquire(J)V

    .line 475
    const-string v4, "TouchAndroid"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v4, Lcom/oppo/test/ChargerHelper;

    invoke-direct {v4, p0}, Lcom/oppo/test/ChargerHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oppo/test/TouchActivity;->mChargerHelper:Lcom/oppo/test/ChargerHelper;

    .line 478
    new-instance v3, Landroid/content/Intent;

    const-string v4, "abc"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v3, t:Landroid/content/Intent;
    iput-boolean v7, p0, Lcom/oppo/test/TouchActivity;->mSleeping:Z

    .line 490
    if-eqz p1, :cond_0

    .line 492
    const-string v4, "is_alarm_running"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 494
    .local v0, alarmRunning:Z
    if-eqz v0, :cond_0

    .line 496
    const-string v4, "TouchAndroid"

    const-string v5, "restore alarm wakelock"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v4, p0, Lcom/oppo/test/TouchActivity;->mAlarmWakeLock:Lcom/oppo/test/FPDWakeLock;

    const-wide/32 v5, 0x493e0

    invoke-virtual {v4, v5, v6}, Lcom/oppo/test/FPDWakeLock;->acquire(J)V

    .line 502
    .end local v0           #alarmRunning:Z
    :cond_0
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->pushMode()V

    .line 512
    iget-object v4, p0, Lcom/oppo/test/TouchActivity;->mChargerHelper:Lcom/oppo/test/ChargerHelper;

    invoke-virtual {v4}, Lcom/oppo/test/ChargerHelper;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppo/test/TouchActivity;->setContentView(Landroid/view/View;)V

    .line 513
    invoke-virtual {p0}, Lcom/oppo/test/TouchActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x7f02

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 514
    const-string v4, "ctl.stop"

    const-string v5, "tbootanim"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v4, "ctl.stop"

    const-string v5, "rbootanim"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 518
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v4, Lcom/android/internal/policy/impl/OppoFPDUtils;->ACTION_KEY_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    const-string v4, "com.android.alarmclock.alarmclock.STARTUP_CHOICE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v4, "FPD_android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    const-string v4, "com.android.alarmclock.alarmclock.ALARM_ALERT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v4, "com.android.alarmclock.alarmclock.SNOOZE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v4, "fpd.alram_arrived"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v4, "android.intent.action.auto_shutdown"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    iget-object v4, p0, Lcom/oppo/test/TouchActivity;->mFPDReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/oppo/test/TouchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 531
    invoke-static {}, Lcom/android/internal/policy/impl/OppoFPDUtils;->isSystemServerRebooting()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 534
    invoke-static {}, Lcom/android/internal/policy/impl/OppoFPDUtils;->clearSystemServerReboot()V

    .line 536
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "TouchAndroid"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 171
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->unregisterFPDReceiver()V

    .line 172
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mScreenLockManager:Lcom/oppo/test/ScreenLockManager;

    invoke-virtual {v0}, Lcom/oppo/test/ScreenLockManager;->clear()V

    .line 175
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 180
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mChargerHelper:Lcom/oppo/test/ChargerHelper;

    invoke-virtual {v0}, Lcom/oppo/test/ChargerHelper;->onPause()V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/test/TouchActivity;->mSleeping:Z

    .line 182
    const-string v0, "TouchAndroid"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public onReleased()V
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mScreenLockManager:Lcom/oppo/test/ScreenLockManager;

    invoke-virtual {v0}, Lcom/oppo/test/ScreenLockManager;->isAnyOneHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->goToSleep()V

    .line 709
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 189
    iget-object v0, p0, Lcom/oppo/test/TouchActivity;->mChargerHelper:Lcom/oppo/test/ChargerHelper;

    invoke-virtual {v0}, Lcom/oppo/test/ChargerHelper;->onResume()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/test/TouchActivity;->mSleeping:Z

    .line 200
    invoke-direct {p0}, Lcom/oppo/test/TouchActivity;->tryAcquireChargeLock()V

    .line 201
    const-string v0, "TouchAndroid"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 450
    const-string v0, "TouchAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save ALARM_RUNNING state ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/test/TouchActivity;->mAlarmWakeLock:Lcom/oppo/test/FPDWakeLock;

    invoke-virtual {v2}, Lcom/oppo/test/FPDWakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v0, "is_alarm_running"

    iget-object v1, p0, Lcom/oppo/test/TouchActivity;->mAlarmWakeLock:Lcom/oppo/test/FPDWakeLock;

    invoke-virtual {v1}, Lcom/oppo/test/FPDWakeLock;->isHeld()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 453
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 454
    return-void
.end method
