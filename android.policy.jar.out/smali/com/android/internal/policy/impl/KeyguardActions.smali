.class public final Lcom/android/internal/policy/impl/KeyguardActions;
.super Landroid/widget/LinearLayout;
.source "KeyguardActions.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardActions"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFlightMode:Landroid/widget/LinearLayout;

.field private mFlightModeImage:Landroid/widget/ImageView;

.field private mFlightModeText:Landroid/widget/TextView;

.field private mFlightModeText2:Landroid/widget/TextView;

.field private mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

.field private mReboot:Landroid/widget/LinearLayout;

.field private mRebootText:Landroid/widget/TextView;

.field private mShutdown:Landroid/widget/LinearLayout;

.field private mShutdownText:Landroid/widget/TextView;

.field private mSilentMode:Landroid/widget/LinearLayout;

.field private mSilentModeImage:Landroid/widget/ImageView;

.field private mSilentModeText:Landroid/widget/TextView;

.field private mSilentModeText2:Landroid/widget/TextView;

.field private mStatusBar:Landroid/app/StatusBarManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewManager;)V
    .locals 4
    .parameter "context"
    .parameter "keyguardViewManager"

    .prologue
    const/4 v3, 0x1

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 205
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardActions$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardActions$5;-><init>(Lcom/android/internal/policy/impl/KeyguardActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 65
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x109006a

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 67
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/KeyguardActions;->setFocusable(Z)V

    .line 68
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/KeyguardActions;->setFocusableInTouchMode(Z)V

    .line 69
    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/KeyguardActions;->setDescendantFocusability(I)V

    .line 70
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mAudioManager:Landroid/media/AudioManager;

    .line 73
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mStatusBar:Landroid/app/StatusBarManager;

    .line 74
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 77
    const v2, 0x102032a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/KeyguardActions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mShutdown:Landroid/widget/LinearLayout;

    .line 78
    const v2, 0x102032d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/KeyguardActions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mReboot:Landroid/widget/LinearLayout;

    .line 79
    const v2, 0x1020330

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/KeyguardActions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mSilentMode:Landroid/widget/LinearLayout;

    .line 80
    const v2, 0x1020334

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/KeyguardActions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mFlightMode:Landroid/widget/LinearLayout;

    .line 82
    const v2, 0x102032c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/KeyguardActions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mShutdownText:Landroid/widget/TextView;

    .line 83
    const v2, 0x102032f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/KeyguardActions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mRebootText:Landroid/widget/TextView;

    .line 85
    const v2, 0x1020331

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/KeyguardActions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mSilentModeImage:Landroid/widget/ImageView;

    .line 86
    const v2, 0x1020332

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/KeyguardActions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mSilentModeText:Landroid/widget/TextView;

    .line 87
    const v2, 0x1020333

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/KeyguardActions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mSilentModeText2:Landroid/widget/TextView;

    .line 89
    const v2, 0x1020335

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/KeyguardActions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mFlightModeImage:Landroid/widget/ImageView;

    .line 90
    const v2, 0x1020336

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/KeyguardActions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mFlightModeText:Landroid/widget/TextView;

    .line 91
    const v2, 0x1020337

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/KeyguardActions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mFlightModeText2:Landroid/widget/TextView;

    .line 93
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardActions;->updateItemStatus()V

    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardActions;->initItemListener()V

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/KeyguardActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardActions;->shutdown()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardActions;->reboot()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/KeyguardActions;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardActions;)Lcom/android/internal/policy/impl/KeyguardViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/KeyguardActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardActions;->updateResource()V

    return-void
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 238
    return-void

    .line 233
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initItemListener()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mShutdown:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/internal/policy/impl/KeyguardActions$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardActions$1;-><init>(Lcom/android/internal/policy/impl/KeyguardActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mReboot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/internal/policy/impl/KeyguardActions$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardActions$2;-><init>(Lcom/android/internal/policy/impl/KeyguardActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mSilentMode:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/internal/policy/impl/KeyguardActions$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardActions$3;-><init>(Lcom/android/internal/policy/impl/KeyguardActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mFlightMode:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/internal/policy/impl/KeyguardActions$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardActions$4;-><init>(Lcom/android/internal/policy/impl/KeyguardActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method

.method private reboot()V
    .locals 3

    .prologue
    .line 146
    const-string v0, "ro.SHUT_DOWN_DEVICE"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 148
    return-void
.end method

.method private shutdown()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "KeyguardActions"

    const-string v1, "shutdown......."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 143
    return-void
.end method

.method private updateItemStatus()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 116
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    move v2, v3

    .line 117
    .local v2, silentModeOn:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 118
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mSilentModeImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardActions;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10803de

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mSilentModeText2:Landroid/widget/TextView;

    const v6, 0x1040139

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 125
    :goto_1
    const/4 v1, 0x0

    .line 127
    .local v1, isFlightMode:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 131
    :goto_2
    if-eqz v1, :cond_3

    .line 132
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mFlightModeImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardActions;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10803db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mFlightModeText2:Landroid/widget/TextView;

    const v4, 0x104013c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 138
    :goto_3
    return-void

    .end local v1           #isFlightMode:Z
    .end local v2           #silentModeOn:Z
    :cond_0
    move v2, v4

    .line 116
    goto :goto_0

    .line 121
    .restart local v2       #silentModeOn:Z
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mSilentModeImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardActions;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10803df

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mSilentModeText2:Landroid/widget/TextView;

    const v6, 0x104013a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .restart local v1       #isFlightMode:Z
    :cond_2
    move v1, v4

    .line 127
    goto :goto_2

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 135
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mFlightModeImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardActions;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10803da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mFlightModeText2:Landroid/widget/TextView;

    const v4, 0x104013d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3
.end method

.method private updateResource()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mShutdownText:Landroid/widget/TextView;

    const v1, 0x1040137

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mRebootText:Landroid/widget/TextView;

    const v1, 0x104061f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mSilentModeText:Landroid/widget/TextView;

    const v1, 0x1040138

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mFlightModeText:Landroid/widget/TextView;

    const v1, 0x104013b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardActions;->updateItemStatus()V

    .line 113
    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 221
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardActions;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->hideKeyguardActions()V

    .line 224
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method
