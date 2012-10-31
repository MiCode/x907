.class public Lcom/android/internal/policy/impl/OppoFPDUtils;
.super Ljava/lang/Object;
.source "OppoFPDUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;
    }
.end annotation


# static fields
.field public static final ACTION_ENABLE_KEYGUARD:Ljava/lang/String; = "android.action.fpd_enable_keyguard"

.field public static ACTION_EXIT_FPD_MODE:Ljava/lang/String; = null

.field public static ACTION_KEY_EVENT:Ljava/lang/String; = null

.field public static final ACTION_RESTORE_LCD_BACKLIGHT:Ljava/lang/String; = "action.fpd.restore_lcd_brightness"

.field public static ACTION_START_PERSIST_APP:Ljava/lang/String; = null

.field public static ACTION_TOUCH_ACTIVITY:Ljava/lang/String; = null

.field public static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.android.alarmclock.alarmclock.ALARM_ALERT"

.field public static final ALARM_ALERT_SNOOZE:Ljava/lang/String; = "com.android.alarmclock.alarmclock.SNOOZE"

.field public static final ALARM_START_UP_ACTION:Ljava/lang/String; = "com.android.alarmclock.alarmclock.STARTUP_CHOICE"

.field public static final ALRAM_ARRIVED_ACTION:Ljava/lang/String; = "fpd.alram_arrived"

.field public static final ALRAM_ARRIVED_ACTION_TARGET_EXTRA:Ljava/lang/String; = "fpd_alram_target_extra"

.field public static final BOOT_COMPLETED_FOR_ALARM_APP:Ljava/lang/String; = "android.fpd.boot_completed"

.field public static final FAKE_ACTION_BATTERY_CHANGED:Ljava/lang/String; = "FPD_android.intent.action.BATTERY_CHANGED"

.field private static final FPD_INTENT_PASS_BY:Ljava/lang/String; = "fpd_passby"

.field public static final KEY_BROADCAST_WAKE_UP_TIME:J = 0x1388L

.field public static final KEY_DISABLE_SYS_KEYS:Ljava/lang/String; = "sys.disable_sys_keys"

.field private static final KEY_LAST_AIRPLANE_MODE:Ljava/lang/String; = "persist.sys.last_apm"

.field public static final KEY_RTC_ALRAM_TARGET:Ljava/lang/String; = "persist.sys.poweralarm.target"

.field public static final KEY_SYSTEM_PID:Ljava/lang/String; = "sys.system_pid"

.field public static final KEY_TOUCH_APP_PID:Ljava/lang/String; = "sys.touch_app_pid"

.field private static final SERVER_BOOT_REASON_FPD:Ljava/lang/String; = "sys.fpd_reboot_server"

.field public static final SETTING_START_UP_ACTION:Ljava/lang/String; = "fpd.setting.startup"

.field private static final TAG:Ljava/lang/String; = "OppoFPDUtils"

.field public static final TARGET_ALARM:Ljava/lang/String; = "com.android.alarmclock"

.field public static final TARGET_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field public static final TIMESTAMP_EXTRA:Ljava/lang/String; = "timestamp"

.field static sBlackActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sBlackPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const-string v0, "android.action.exit_FPD_mode"

    sput-object v0, Lcom/android/internal/policy/impl/OppoFPDUtils;->ACTION_EXIT_FPD_MODE:Ljava/lang/String;

    .line 44
    const-string v0, "android.action.start_persist_apps"

    sput-object v0, Lcom/android/internal/policy/impl/OppoFPDUtils;->ACTION_START_PERSIST_APP:Ljava/lang/String;

    .line 45
    const-string v0, "android.action.key_power"

    sput-object v0, Lcom/android/internal/policy/impl/OppoFPDUtils;->ACTION_KEY_EVENT:Ljava/lang/String;

    .line 46
    const-string v0, "android.action.touch_activity"

    sput-object v0, Lcom/android/internal/policy/impl/OppoFPDUtils;->ACTION_TOUCH_ACTIVITY:Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/OppoFPDUtils;->sBlackPackage:Ljava/util/HashSet;

    .line 248
    sget-object v0, Lcom/android/internal/policy/impl/OppoFPDUtils;->sBlackPackage:Ljava/util/HashSet;

    const-string v1, "com.android.stk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/OppoFPDUtils;->sBlackActions:Ljava/util/HashMap;

    .line 281
    sget-object v0, Lcom/android/internal/policy/impl/OppoFPDUtils;->sBlackActions:Ljava/util/HashMap;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    const-string v2, "FPD_android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/internal/policy/impl/OppoFPDUtils;->sBlackActions:Ljava/util/HashMap;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const-string v2, "android.fpd.boot_completed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-static {}, Lcom/android/internal/policy/impl/OppoFPDUtils;->tryShowBootAnimation()V

    .line 492
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 399
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/android/internal/policy/impl/OppoFPDUtils;->setSystemServerReboot()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/android/internal/policy/impl/OppoFPDUtils;->turnOffHDMI()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lcom/android/internal/policy/impl/OppoFPDUtils;->checkRadioState(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/android/internal/policy/impl/OppoFPDUtils;->crashSystemServer()V

    return-void
.end method

.method public static applyNewAPMSettings(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 395
    new-instance v0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;-><init>()V

    .line 396
    .local v0, h:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;
    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->applyAirplaneMode(Landroid/content/Context;)V

    .line 397
    return-void
.end method

.method public static changeAPMSettingsIfNecessary(Landroid/content/Context;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 359
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const-string v3, "airplane_mode_on"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 361
    .local v0, airplaneModeOn:Z
    :cond_0
    if-nez v0, :cond_1

    .line 363
    const-string v3, "OppoFPDUtils"

    const-string v4, "need change apm to 1"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v3, "airplane_mode_on"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    const-string v2, "OppoFPDUtils"

    const-string v3, "set KEY_LAST_AIRPLANE_MODE 0"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v2, "persist.sys.last_apm"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_1
    return-void
.end method

.method private static changeActions(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, action:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/policy/impl/OppoFPDUtils;->sBlackActions:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 295
    .local v1, to:Ljava/lang/String;
    const-string v2, "OppoFPDUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fpd change action form ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    return-void
.end method

.method private static checkRadioState(Landroid/content/Context;J)V
    .locals 9
    .parameter "c"
    .parameter "animStartTime"

    .prologue
    .line 167
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 168
    .local v3, phone:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v4

    .line 169
    .local v4, radioOn:Z
    if-eqz v4, :cond_1

    .line 171
    const-string v5, "OppoFPDUtils"

    const-string v6, "turn off radio timeout, fall to shutdown"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-wide/16 v5, 0x1f40

    add-long/2addr v5, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    sub-long v1, v5, v7

    .line 174
    .local v1, leftTime:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 178
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {p0}, Lcom/android/internal/policy/impl/OppoFPDUtils;->vibrate(Landroid/content/Context;)V

    .line 185
    invoke-static {}, Landroid/os/Power;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    .end local v1           #leftTime:J
    .end local v3           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v4           #radioOn:Z
    :cond_1
    :goto_1
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #leftTime:J
    .restart local v3       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v4       #radioOn:Z
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static clearSystemServerReboot()V
    .locals 2

    .prologue
    .line 563
    const-string v0, "sys.fpd_reboot_server"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method private static crashSystemServer()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "sys.system_pid"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 83
    return-void
.end method

.method public static getFPDPassByIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .parameter "t"

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 271
    .local v0, y:Landroid/content/Intent;
    const-string v1, "fpd_passby"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    return-object p0
.end method

.method private static getKernelBootReason()Ljava/lang/String;
    .locals 2

    .prologue
    .line 649
    const-string v0, "ro.bootmode"

    const-string v1, "normal"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasForbiddenActions(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, action:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/policy/impl/OppoFPDUtils;->sBlackActions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static hasForbiddenComponent(Landroid/content/Intent;)Z
    .locals 6
    .parameter "t"

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 224
    .local v1, n:Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, p:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/policy/impl/OppoFPDUtils;->sBlackPackage:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 229
    .local v0, forbid:Z
    if-eqz v0, :cond_0

    .line 231
    const-string v3, "OppoFPDUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start package ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is not allowed at fpd mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v0           #forbid:Z
    .end local v2           #p:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasSpecialExtra(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 257
    :try_start_0
    const-string v3, "fpd_passby"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, b:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    .end local v0           #b:Ljava/lang/String;
    :goto_0
    return v2

    .line 258
    .restart local v0       #b:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 260
    .end local v0           #b:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 262
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isFPDMode()Z
    .locals 3

    .prologue
    .line 68
    const-string v0, "1"

    const-string v1, "sys.disable_sys_keys"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isHome(Landroid/content/Intent;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 240
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPassByIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 310
    invoke-static {}, Lcom/android/internal/policy/impl/OppoFPDUtils;->isFPDMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 318
    const-string v1, "fpdmode"

    const-string v2, "true"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 322
    :cond_2
    invoke-static {p0}, Lcom/android/internal/policy/impl/OppoFPDUtils;->hasSpecialExtra(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    invoke-static {p0}, Lcom/android/internal/policy/impl/OppoFPDUtils;->hasForbiddenActions(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 331
    invoke-static {p0}, Lcom/android/internal/policy/impl/OppoFPDUtils;->changeActions(Landroid/content/Intent;)V

    goto :goto_0

    .line 334
    :cond_3
    invoke-static {p0}, Lcom/android/internal/policy/impl/OppoFPDUtils;->hasForbiddenComponent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 336
    goto :goto_0

    .line 338
    :cond_4
    invoke-static {p0}, Lcom/android/internal/policy/impl/OppoFPDUtils;->isHome(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 340
    goto :goto_0
.end method

.method public static isSystemServerRebooting()Z
    .locals 3

    .prologue
    .line 555
    const-string v0, "1"

    const-string v1, "sys.fpd_reboot_server"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static onFPDFail()V
    .locals 2

    .prologue
    .line 199
    const-string v0, "OppoFPDUtils"

    const-string v1, "exit fdp mode faild and touch app died, restart zygote"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v0, "sys.disable_sys_keys"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "sys.fpd_reboot_server"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "ctl.stop"

    const-string v1, "tbootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, "ctl.stop"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "ctl.stop"

    const-string v1, "rbootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "sys.touch_app_pid"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/android/internal/policy/impl/OppoFPDUtils;->crashSystemServer()V

    .line 211
    return-void
.end method

.method public static restartSystem(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 111
    new-instance v0, Lcom/android/internal/policy/impl/OppoFPDUtils$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoFPDUtils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoFPDUtils$1;->start()V

    .line 160
    return-void
.end method

.method public static restoreAPMSettingsIfNecessary(Landroid/content/Context;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 377
    const-string v2, "persist.sys.last_apm"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, persist:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    const-string v2, "OppoFPDUtils"

    const-string v3, "need restore apm mode to 0"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 384
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    :cond_0
    const-string v2, "OppoFPDUtils"

    const-string v3, "set KEY_LAST_AIRPLANE_MODE -1"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v2, "persist.sys.last_apm"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method private static setSystemServerReboot()V
    .locals 2

    .prologue
    .line 559
    const-string v0, "sys.fpd_reboot_server"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method private static tryShowBootAnimation()V
    .locals 7

    .prologue
    .line 568
    const/4 v2, 0x1

    .line 569
    .local v2, normalBootServer:Z
    const/4 v0, 0x0

    .line 570
    .local v0, isFPDReboot:Z
    invoke-static {}, Lcom/android/internal/policy/impl/OppoFPDUtils;->isSystemServerRebooting()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 572
    const-string v4, "OppoFPDUtils"

    const-string v5, "FPD [server reboot]"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v0, 0x1

    .line 574
    const/4 v2, 0x0

    .line 611
    :goto_0
    if-nez v2, :cond_0

    if-eqz v0, :cond_7

    .line 613
    :cond_0
    if-eqz v0, :cond_6

    .line 632
    :goto_1
    if-eqz v2, :cond_8

    .line 634
    const-string v4, "sys.disable_sys_keys"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :goto_2
    return-void

    .line 579
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/OppoFPDUtils;->getKernelBootReason()Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, kernelBootReason:Ljava/lang/String;
    const-string v4, "charger"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "modem"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 585
    :cond_2
    const/4 v2, 0x0

    .line 586
    const-string v4, "OppoFPDUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FPD [charger | rtc | modem] = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 588
    :cond_3
    const-string v4, "rtc"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 590
    const-string v4, "persist.sys.poweralarm.target"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, targetPackage:Ljava/lang/String;
    const-string v4, "OppoFPDUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rtc of package["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v4, "com.android.settings"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 595
    const/4 v2, 0x1

    goto :goto_0

    .line 599
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 605
    .end local v3           #targetPackage:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x1

    .line 606
    const-string v4, "OppoFPDUtils"

    const-string v5, "FPD [normal boot]"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 621
    .end local v1           #kernelBootReason:Ljava/lang/String;
    :cond_6
    const-string v4, "ctl.start"

    const-string v5, "bootanim"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v4, "OppoFPDUtils"

    const-string v5, "animation bootanim"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 627
    :cond_7
    const-string v4, "ctl.start"

    const-string v5, "tbootanim"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v4, "OppoFPDUtils"

    const-string v5, "animation tbootanim"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 638
    :cond_8
    const-string v4, "sys.disable_sys_keys"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static turnOffButtonLight()V
    .locals 4

    .prologue
    .line 498
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 499
    .local v1, pm:Landroid/os/IPowerManager;
    invoke-interface {v1}, Landroid/os/IPowerManager;->turnoffBrightness()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 503
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "OppoFPDUtils"

    const-string v3, "PowerManager service died!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static turnOffHDMI()V
    .locals 4

    .prologue
    .line 88
    const-string v2, "hdmi"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IHDMIService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHDMIService;

    move-result-object v1

    .line 92
    .local v1, hdmi:Landroid/os/IHDMIService;
    if-eqz v1, :cond_0

    .line 95
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/IHDMIService;->setHDMIOutput(Z)V

    .line 96
    const-string v2, "OppoFPDUtils"

    const-string v3, "setHDMIOutput false"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "OppoFPDUtils"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static unmount()V
    .locals 4

    .prologue
    .line 525
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 529
    .local v1, mount:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_0

    .line 531
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 543
    :goto_0
    return-void

    .line 535
    :cond_0
    const-string v2, "OppoFPDUtils"

    const-string v3, "MountService unavailable for shutdown"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 540
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OppoFPDUtils"

    const-string v3, "Exception during MountService shutdown"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static vibrate(Landroid/content/Context;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 510
    const-wide/16 v0, 0xc8

    .line 511
    .local v0, milliseconds:J
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 512
    .local v2, vib:Landroid/os/Vibrator;
    invoke-virtual {v2, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 515
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v3

    goto :goto_0
.end method
