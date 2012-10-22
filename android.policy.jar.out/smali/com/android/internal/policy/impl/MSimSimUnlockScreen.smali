.class public Lcom/android/internal/policy/impl/MSimSimUnlockScreen;
.super Lcom/android/internal/policy/impl/SimUnlockScreen;
.source "MSimSimUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;,
        Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;
    }
.end annotation


# instance fields
.field private mSubscription:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"
    .parameter "subscription"

    .prologue
    const/4 v5, 0x1

    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/SimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mSubscription:I

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->layoutType(Landroid/content/Context;)V

    .line 63
    iput p6, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mSubscription:I

    .line 64
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mSubscription:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, displayText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .end local v6           #displayText:Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 81
    :goto_1
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10402d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mSubscription:I

    return v0
.end method


# virtual methods
.method protected checkPin()V
    .locals 2

    .prologue
    .line 205
    iget v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mEnteredDigits:I

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 263
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 215
    new-instance v0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$3;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$3;->start()V

    goto :goto_0
.end method

.method protected layoutType(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 86
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mKeyboardHidden:I

    if-ne v3, v4, :cond_1

    .line 88
    const v3, 0x1090092

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 95
    const v3, 0x10203ac

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoShortCutButton;

    .line 96
    .local v1, landShortCutBtn:Lcom/oppo/widget/OppoShortCutButton;
    if-eqz v1, :cond_0

    .line 97
    new-instance v3, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)V

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoShortCutButton;->setShortButtonListener(Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;)V

    .line 144
    .end local v1           #landShortCutBtn:Lcom/oppo/widget/OppoShortCutButton;
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const v3, 0x1090093

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 117
    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    .line 123
    const v3, 0x1020362

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutButton;

    .line 124
    .local v2, portShortCutBtn:Lcom/oppo/widget/OppoShortCutButton;
    if-eqz v2, :cond_0

    .line 125
    new-instance v3, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)V

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoShortCutButton;->setShortButtonListener(Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 150
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402d9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mSubscription:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, displayText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .end local v0           #displayText:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mEnteredDigits:I

    .line 164
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 165
    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x10402d8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
