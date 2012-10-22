.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ANIM_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final MAX_ANIMATION_WAIT_TIME:I = 0x2710

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final RADIO_SHUTDOWN_PROPERTY:Ljava/lang/String; = "sys.radio.shutdown"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = -0x1

.field private static final SYSFS_MDM_EFS_SYNC_COMPLETE:Ljava/lang/String; = "/sys/devices/platform/rs300100a7.65536/sync_sts"

.field private static final SYSFS_MSM_EFS_SYNC_COMPLETE:Ljava/lang/String; = "/sys/devices/platform/rs300000a7.65536/sync_sts"

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 94
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 105
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 191
    const-string v5, "ShutdownThread"

    const-string v6, "begin shutdown sequence..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 194
    :try_start_0
    sget-boolean v5, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v5, :cond_0

    .line 195
    const-string v5, "ShutdownThread"

    const-string v7, "Shutdown sequence already running, returning."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    monitor-exit v6

    .line 286
    :goto_0
    return-void

    .line 198
    :cond_0
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 199
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 205
    .local v4, wm:Landroid/view/IWindowManager;
    const/4 v5, 0x1

    :try_start_1
    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->DisablePowerKey(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    :goto_1
    const-string/jumbo v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 212
    .local v3, pm:Landroid/os/IPowerManager;
    :try_start_2
    invoke-interface {v3}, Landroid/os/IPowerManager;->turnoffBrightness()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 218
    :goto_2
    const-string v5, "alarm"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    .line 220
    .local v0, am:Landroid/app/IAlarmManager;
    :try_start_3
    invoke-interface {v0}, Landroid/app/IAlarmManager;->notifyShutdown()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 238
    :goto_3
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object p0, v5, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 239
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, v6, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 242
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v9, v5, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 244
    :try_start_4
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v8, "ShutdownThread-cpu"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 246
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v5, v5, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 247
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v5, v5, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    .line 254
    :goto_4
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v9, v5, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 257
    :try_start_5
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const v7, 0x1000001a

    const-string v8, "ShutdownThread-screen"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 259
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v5, v5, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 260
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v5, v5, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4

    .line 273
    :goto_5
    :try_start_6
    invoke-interface {v4}, Landroid/view/IWindowManager;->pauseRotationLocked()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 278
    :goto_6
    const-string v5, "ShutdownThread"

    const-string/jumbo v6, "start rboot anima..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v5, "ctl.start"

    const-string/jumbo v6, "rbootanim"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v6, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v6}, Lcom/android/internal/app/ShutdownThread$2;-><init>()V

    iput-object v6, v5, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 285
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v5}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 199
    .end local v0           #am:Landroid/app/IAlarmManager;
    .end local v3           #pm:Landroid/os/IPowerManager;
    .end local v4           #wm:Landroid/view/IWindowManager;
    :catchall_0
    move-exception v5

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v5

    .line 206
    .restart local v4       #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v2

    .line 207
    .local v2, exc:Landroid/os/RemoteException;
    const-string v5, "ShutdownThread"

    const-string v6, "Unable to save auto-rotate setting"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 213
    .end local v2           #exc:Landroid/os/RemoteException;
    .restart local v3       #pm:Landroid/os/IPowerManager;
    :catch_1
    move-exception v1

    .line 214
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "ShutdownThread"

    const-string v6, "error when turn off brightness"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 221
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #am:Landroid/app/IAlarmManager;
    :catch_2
    move-exception v1

    .line 222
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v5, "ShutdownThread"

    const-string v6, "error when notifyShutdown to alarm service"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 248
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 249
    .local v1, e:Ljava/lang/SecurityException;
    const-string v5, "ShutdownThread"

    const-string v6, "No permission to acquire wake lock"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v9, v5, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_4

    .line 261
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_4
    move-exception v1

    .line 262
    .restart local v1       #e:Ljava/lang/SecurityException;
    const-string v5, "ShutdownThread"

    const-string v6, "No permission to acquire wake lock"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v9, v5, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_5

    .line 274
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_5
    move-exception v2

    .line 275
    .restart local v2       #exc:Landroid/os/RemoteException;
    const-string v5, "ShutdownThread"

    const-string v6, "Unable to freeze screen rotation"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 185
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 186
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 187
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 188
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 4
    .parameter "reboot"
    .parameter "reason"

    .prologue
    .line 568
    if-eqz p0, :cond_0

    .line 569
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting, reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :try_start_0
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :cond_0
    :goto_0
    const-string v1, "ShutdownThread"

    const-string v2, "Performing low-level shutdown..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 597
    return-void

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ShutdownThread"

    const-string v2, "Reboot failed, will attempt shutdown instead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "confirm"

    .prologue
    .line 118
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 119
    :try_start_0
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_0

    .line 120
    const-string v4, "ShutdownThread"

    const-string v6, "Request to shutdown already running, returning."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    monitor-exit v5

    .line 152
    :goto_0
    return-void

    .line 123
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 127
    .local v2, longPressBehavior:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const v3, 0x1040132

    .line 131
    .local v3, resourceId:I
    :goto_1
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz p1, :cond_2

    .line 134
    new-instance v0, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x104012c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v6, p0}, Lcom/android/internal/app/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 145
    .local v1, dialog:Landroid/app/AlertDialog;
    iput-object v1, v0, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 146
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 148
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 123
    .end local v0           #closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #longPressBehavior:I
    .end local v3           #resourceId:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 127
    .restart local v2       #longPressBehavior:I
    :cond_1
    const v3, 0x1040131

    goto :goto_1

    .line 150
    .restart local v3       #resourceId:I
    :cond_2
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 291
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 292
    monitor-exit v1

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 37

    .prologue
    .line 304
    const/16 v29, 0x0

    .line 307
    .local v29, msmEfsSyncDone:Z
    new-instance v5, Lcom/android/internal/app/ShutdownThread$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/app/ShutdownThread$3;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 321
    .local v5, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_5

    const-string v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 322
    .local v34, reason:Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v21, v2, v6

    .line 333
    .local v21, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 334
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_0

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v14, v21, v6

    .line 336
    .local v14, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v14, v6

    if-gtz v2, :cond_7

    .line 337
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v14           #delay:J
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 351
    .local v11, am:Landroid/app/IActivityManager;
    if-eqz v11, :cond_1

    .line 353
    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_9

    .line 358
    :cond_1
    :goto_3
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v32

    .line 360
    .local v32, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v12

    .line 364
    .local v12, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v27

    .line 368
    .local v27, mount:Landroid/os/storage/IMountService;
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "shutdown bluetooth..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    if-eqz v12, :cond_2

    :try_start_2
    invoke-interface {v12}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    :cond_2
    const/4 v13, 0x1

    .line 372
    .local v13, bluetoothOff:Z
    :goto_4
    if-nez v13, :cond_3

    .line 373
    const-string v2, "ShutdownThread"

    const-string v3, "Disabling Bluetooth..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 381
    :cond_3
    :goto_5
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "shutdown radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/16 v33, 0x1

    .line 384
    .local v33, radioOff:Z
    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 385
    const-string/jumbo v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v28

    .line 387
    .local v28, mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    if-eqz v28, :cond_c

    .line 389
    const/16 v25, 0x0

    .local v25, i:I
    :goto_6
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_c

    .line 390
    if-eqz v33, :cond_9

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyMSim;->isRadioOn(I)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v33, 0x1

    .line 391
    :goto_7
    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyMSim;->isRadioOn(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 392
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Turning off radio on Subscription :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v2, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/ITelephonyMSim;->setRadio(ZI)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 389
    :cond_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    .line 321
    .end local v11           #am:Landroid/app/IActivityManager;
    .end local v12           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v13           #bluetoothOff:Z
    .end local v21           #endTime:J
    .end local v25           #i:I
    .end local v27           #mount:Landroid/os/storage/IMountService;
    .end local v28           #mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    .end local v32           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v33           #radioOff:Z
    .end local v34           #reason:Ljava/lang/String;
    :cond_5
    const-string v2, "0"

    goto/16 :goto_0

    :cond_6
    const-string v2, ""

    goto/16 :goto_1

    .line 341
    .restart local v14       #delay:J
    .restart local v21       #endTime:J
    .restart local v34       #reason:Ljava/lang/String;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 342
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 345
    .end local v14           #delay:J
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 370
    .restart local v11       #am:Landroid/app/IActivityManager;
    .restart local v12       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v27       #mount:Landroid/os/storage/IMountService;
    .restart local v32       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 376
    :catch_1
    move-exception v23

    .line 377
    .local v23, ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    const/4 v13, 0x1

    .restart local v13       #bluetoothOff:Z
    goto/16 :goto_5

    .line 390
    .end local v23           #ex:Landroid/os/RemoteException;
    .restart local v25       #i:I
    .restart local v28       #mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    .restart local v33       #radioOff:Z
    :cond_9
    const/16 v33, 0x0

    goto :goto_7

    .line 398
    .end local v25           #i:I
    .end local v28           #mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    :cond_a
    if-eqz v32, :cond_b

    :try_start_6
    invoke-interface/range {v32 .. v32}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_b
    const/16 v33, 0x1

    .line 399
    :goto_8
    if-nez v33, :cond_c

    .line 400
    const-string v2, "ShutdownThread"

    const-string v3, "Turning off radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 409
    :cond_c
    :goto_9
    const-string/jumbo v2, "sys.radio.shutdown"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v2, "ShutdownThread"

    const-string v3, "Waiting for radio file system sync to complete ..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/16 v25, 0x0

    .restart local v25       #i:I
    :goto_a
    const/16 v2, 0x10

    move/from16 v0, v25

    if-ge v0, v2, :cond_e

    .line 416
    if-nez v29, :cond_d

    .line 418
    :try_start_7
    new-instance v24, Ljava/io/FileInputStream;

    const-string v2, "/sys/devices/platform/rs300000a7.65536/sync_sts"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 419
    .local v24, fis:Ljava/io/FileInputStream;
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->read()I

    move-result v35

    .line 420
    .local v35, result:I
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 421
    const/16 v2, 0x31

    move/from16 v0, v35

    if-ne v0, v2, :cond_d

    .line 422
    const/16 v29, 0x1

    .line 445
    .end local v24           #fis:Ljava/io/FileInputStream;
    .end local v35           #result:I
    :cond_d
    :goto_b
    if-eqz v29, :cond_11

    .line 446
    const-string v2, "ShutdownThread"

    const-string v3, "Radio file system sync complete."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_e
    const-string v2, "ShutdownThread"

    const-string v3, "Waiting for Bluetooth and Radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/16 v25, 0x0

    :goto_c
    const/16 v2, 0x10

    move/from16 v0, v25

    if-ge v0, v2, :cond_16

    .line 458
    if-nez v13, :cond_f

    .line 460
    :try_start_8
    invoke-interface {v12}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_12

    const/4 v13, 0x1

    .line 467
    :cond_f
    :goto_d
    if-nez v33, :cond_15

    .line 469
    :try_start_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 470
    const/16 v33, 0x1

    .line 471
    const-string/jumbo v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v28

    .line 473
    .restart local v28       #mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    const/16 v26, 0x0

    .local v26, j:I
    :goto_e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_15

    .line 474
    if-eqz v33, :cond_13

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyMSim;->isRadioOn(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    move-result v2

    if-nez v2, :cond_13

    const/16 v33, 0x1

    .line 473
    :goto_f
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 398
    .end local v25           #i:I
    .end local v26           #j:I
    .end local v28           #mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    :cond_10
    const/16 v33, 0x0

    goto/16 :goto_8

    .line 404
    :catch_2
    move-exception v23

    .line 405
    .restart local v23       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    const/16 v33, 0x1

    goto/16 :goto_9

    .line 424
    .end local v23           #ex:Landroid/os/RemoteException;
    .restart local v25       #i:I
    :catch_3
    move-exception v23

    .line 425
    .local v23, ex:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Exception during msmEfsSyncDone"

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    const/16 v29, 0x1

    goto :goto_b

    .line 449
    .end local v23           #ex:Ljava/lang/Exception;
    :cond_11
    const-string v2, "ShutdownThread"

    const-string v3, "Radio file system sync incomplete - retry."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 415
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_a

    .line 460
    :cond_12
    const/4 v13, 0x0

    goto :goto_d

    .line 462
    :catch_4
    move-exception v23

    .line 463
    .local v23, ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    const/4 v13, 0x1

    goto :goto_d

    .line 474
    .end local v23           #ex:Landroid/os/RemoteException;
    .restart local v26       #j:I
    .restart local v28       #mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    :cond_13
    const/16 v33, 0x0

    goto :goto_f

    .line 477
    .end local v26           #j:I
    .end local v28           #mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    :cond_14
    :try_start_a
    invoke-interface/range {v32 .. v32}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    move-result v2

    if-nez v2, :cond_1a

    const/16 v33, 0x1

    .line 484
    :cond_15
    :goto_10
    if-eqz v33, :cond_1b

    if-eqz v13, :cond_1b

    .line 485
    const-string v2, "ShutdownThread"

    const-string v3, "Radio and Bluetooth shutdown complete."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_16
    new-instance v30, Lcom/android/internal/app/ShutdownThread$4;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$4;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 499
    .local v30, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 502
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v19, v2, v6

    .line 503
    .local v19, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 505
    if-eqz v27, :cond_1c

    .line 506
    :try_start_b
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 513
    :goto_11
    :try_start_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_17

    .line 514
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v14, v19, v6

    .line 515
    .restart local v14       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v14, v6

    if-gtz v2, :cond_1d

    .line 516
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v14           #delay:J
    :cond_17
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 526
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "shutdown alarm..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v2, "alarm"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v10

    .line 530
    .local v10, alm:Landroid/app/IAlarmManager;
    :try_start_d
    invoke-interface {v10}, Landroid/app/IAlarmManager;->checkShutdownTriggeredAlarm()Z

    move-result v36

    .line 531
    .local v36, trigerred:Z
    if-eqz v36, :cond_18

    .line 533
    const-string v2, "ShutdownThread"

    const-string v3, "a rtc alarm triggered when is shutting down."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_8

    .line 539
    .end local v36           #trigerred:Z
    :cond_18
    :goto_12
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "wait for rboot animation..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v17, v2, v6

    .line 545
    .local v17, endAnim:J
    :goto_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v14, v17, v2

    .line 547
    .restart local v14       #delay:J
    const-string/jumbo v2, "oem.sf.bootaonce"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 548
    .local v31, once:Ljava/lang/String;
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "once: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v2, "1"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-gtz v2, :cond_1e

    .line 550
    :cond_19
    const-string v2, "ShutdownThread"

    const-string v3, "cancel waiting animation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 558
    return-void

    .line 477
    .end local v10           #alm:Landroid/app/IAlarmManager;
    .end local v14           #delay:J
    .end local v17           #endAnim:J
    .end local v19           #endShutTime:J
    .end local v30           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v31           #once:Ljava/lang/String;
    :cond_1a
    const/16 v33, 0x0

    goto/16 :goto_10

    .line 479
    :catch_5
    move-exception v23

    .line 480
    .restart local v23       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    const/16 v33, 0x1

    goto/16 :goto_10

    .line 488
    .end local v23           #ex:Landroid/os/RemoteException;
    :cond_1b
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 457
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_c

    .line 508
    .restart local v19       #endShutTime:J
    .restart local v30       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_1c
    :try_start_e
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_11

    .line 510
    :catch_6
    move-exception v16

    .line 511
    .local v16, e:Ljava/lang/Exception;
    :try_start_f
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 524
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    throw v2

    .line 520
    .restart local v14       #delay:J
    :cond_1d
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_11

    .line 521
    :catch_7
    move-exception v2

    goto/16 :goto_11

    .line 535
    .end local v14           #delay:J
    .restart local v10       #alm:Landroid/app/IAlarmManager;
    :catch_8
    move-exception v23

    .line 536
    .restart local v23       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "error to call AlarmManager.checkShutdownTriggeredAlarm()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 553
    .end local v23           #ex:Landroid/os/RemoteException;
    .restart local v14       #delay:J
    .restart local v17       #endAnim:J
    .restart local v31       #once:Ljava/lang/String;
    :cond_1e
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_13

    .line 354
    .end local v10           #alm:Landroid/app/IAlarmManager;
    .end local v12           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v13           #bluetoothOff:Z
    .end local v14           #delay:J
    .end local v17           #endAnim:J
    .end local v19           #endShutTime:J
    .end local v25           #i:I
    .end local v27           #mount:Landroid/os/storage/IMountService;
    .end local v30           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v31           #once:Ljava/lang/String;
    .end local v32           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v33           #radioOff:Z
    :catch_9
    move-exception v2

    goto/16 :goto_3
.end method