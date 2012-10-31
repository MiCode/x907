.class final Lcom/android/internal/policy/impl/OppoFPDUtils$1;
.super Ljava/lang/Thread;
.source "OppoFPDUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OppoFPDUtils;->restartSystem(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$1;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 117
    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 121
    .local v5, wm:Landroid/view/IWindowManager;
    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->DisablePowerKey(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    const-string v6, "ctl.start"

    const-string v7, "rbootanim"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 130
    .local v1, animStartTime:J
    const-string v6, "OppoFPDUtils"

    const-string v7, "animation rbootanim"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    #calls: Lcom/android/internal/policy/impl/OppoFPDUtils;->setSystemServerReboot()V
    invoke-static {}, Lcom/android/internal/policy/impl/OppoFPDUtils;->access$000()V

    .line 132
    const-string v6, "activity"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 133
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 137
    const/16 v6, 0xbb8

    :try_start_1
    invoke-interface {v0, v6}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/OppoFPDUtils;->unmount()V

    .line 146
    const-string v6, "ctl.stop"

    const-string v7, "media"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    #calls: Lcom/android/internal/policy/impl/OppoFPDUtils;->turnOffHDMI()V
    invoke-static {}, Lcom/android/internal/policy/impl/OppoFPDUtils;->access$100()V

    .line 148
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$1;->val$c:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/impl/OppoFPDUtils;->changeAPMSettingsIfNecessary(Landroid/content/Context;)V

    .line 149
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$1;->val$c:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/impl/OppoFPDUtils;->applyNewAPMSettings(Landroid/content/Context;)V

    .line 150
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$1;->val$c:Landroid/content/Context;

    #calls: Lcom/android/internal/policy/impl/OppoFPDUtils;->checkRadioState(Landroid/content/Context;J)V
    invoke-static {v6, v1, v2}, Lcom/android/internal/policy/impl/OppoFPDUtils;->access$200(Landroid/content/Context;J)V

    .line 151
    const-string v6, "sys.fpd_reboot_server"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, tmp:Ljava/lang/String;
    const-string v6, "OppoFPDUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SERVER_BOOT_REASON_FPD = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcom/android/internal/policy/impl/OppoFPDUtils;->turnOffButtonLight()V

    .line 157
    #calls: Lcom/android/internal/policy/impl/OppoFPDUtils;->crashSystemServer()V
    invoke-static {}, Lcom/android/internal/policy/impl/OppoFPDUtils;->access$300()V

    .line 158
    return-void

    .line 123
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #animStartTime:J
    .end local v4           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 125
    .local v3, exc:Landroid/os/RemoteException;
    const-string v6, "OppoFPDUtils"

    const-string v7, "Unable to save auto-rotate setting"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    .end local v3           #exc:Landroid/os/RemoteException;
    .restart local v0       #am:Landroid/app/IActivityManager;
    .restart local v1       #animStartTime:J
    :catch_1
    move-exception v6

    goto :goto_1
.end method
