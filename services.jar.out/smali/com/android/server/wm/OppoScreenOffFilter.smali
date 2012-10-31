.class public Lcom/android/server/wm/OppoScreenOffFilter;
.super Lcom/android/server/wm/InputFilter;
.source "OppoScreenOffFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoScreenOffFilter"


# instance fields
.field private pm:Lcom/android/server/PowerManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/PowerManagerService;)V
    .locals 1
    .parameter "looper"
    .parameter "pm"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OppoScreenOffFilter;->pm:Lcom/android/server/PowerManagerService;

    .line 35
    iput-object p2, p0, Lcom/android/server/wm/OppoScreenOffFilter;->pm:Lcom/android/server/PowerManagerService;

    .line 36
    return-void
.end method

.method private isSource(II)Z
    .locals 1
    .parameter "source"
    .parameter "preDefinedSource"

    .prologue
    .line 89
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 8
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 51
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 52
    .local v0, dev:Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v2

    .line 54
    .local v2, source:I
    iget-object v6, p0, Lcom/android/server/wm/OppoScreenOffFilter;->pm:Lcom/android/server/PowerManagerService;

    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->isScreenLightOffWithoutSleep()Z

    move-result v6

    if-nez v6, :cond_1

    .line 55
    const-string v4, "OppoScreenOffFilter"

    const-string v5, "not in state ScreenLightOffWithoutSleep, keep dispatching events"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/OppoScreenOffFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/wm/OppoScreenOffFilter;->isSource(II)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v1, p1

    .line 61
    check-cast v1, Landroid/view/KeyEvent;

    .line 62
    .local v1, ev:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v4, :cond_2

    move v3, v4

    .line 65
    .local v3, up:Z
    :goto_1
    if-eqz v3, :cond_0

    .line 66
    const-string v6, "OppoScreenOffFilter"

    const-string v7, "receive key up, set screen light on"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v6, p0, Lcom/android/server/wm/OppoScreenOffFilter;->pm:Lcom/android/server/PowerManagerService;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/PowerManagerService;->setScreenLightOffWithoutSleep(ZZ)Z

    goto :goto_0

    .end local v3           #up:Z
    :cond_2
    move v3, v5

    .line 62
    goto :goto_1

    .line 70
    .end local v1           #ev:Landroid/view/KeyEvent;
    :cond_3
    const/4 v6, 0x2

    invoke-direct {p0, v2, v6}, Lcom/android/server/wm/OppoScreenOffFilter;->isSource(II)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v1, p1

    .line 71
    check-cast v1, Landroid/view/MotionEvent;

    .line 72
    .local v1, ev:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v4, :cond_4

    move v3, v4

    .line 75
    .restart local v3       #up:Z
    :goto_2
    if-eqz v3, :cond_0

    .line 76
    const-string v6, "OppoScreenOffFilter"

    const-string v7, "receive motion up, set screen light on"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v6, p0, Lcom/android/server/wm/OppoScreenOffFilter;->pm:Lcom/android/server/PowerManagerService;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/PowerManagerService;->setScreenLightOffWithoutSleep(ZZ)Z

    goto :goto_0

    .end local v3           #up:Z
    :cond_4
    move v3, v5

    .line 72
    goto :goto_2

    .line 81
    .end local v1           #ev:Landroid/view/MotionEvent;
    :cond_5
    const-string v4, "OppoScreenOffFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get undefined event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/OppoScreenOffFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0
.end method

.method public onInstalled()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "OppoScreenOffFilter"

    const-string v1, "my input filter is installed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public onUninstalled()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "OppoScreenOffFilter"

    const-string v1, "my input filter is uninstalled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method
