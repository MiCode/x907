.class public Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimplePasswordUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimplePasswordUnlockScreen"


# instance fields
.field private mBtn:[Landroid/widget/ImageButton;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mCreationHardKeyboardHidden:I

.field private final mCreationOrientation:I

.field private mCurTextLength:I

.field private mDelete:Landroid/widget/ImageButton;

.field private mEdit1:Lcom/oppo/widget/OppoEditText;

.field private mEdit2:Lcom/oppo/widget/OppoEditText;

.field private mEdit3:Lcom/oppo/widget/OppoEditText;

.field private mEdit4:Lcom/oppo/widget/OppoEditText;

.field private mEditView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mReset:Landroid/widget/ImageButton;

.field private mResuming:Z

.field private final mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mTargetView:Lcom/oppo/widget/OppoEditText;

.field private final mTimeoutTask:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const v2, 0x1090073

    const/4 v5, 0x1

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mCurTextLength:I

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;-><init>(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTimeoutTask:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;

    .line 69
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    .line 70
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mCreationOrientation:I

    .line 71
    iput-object p4, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 72
    iput-object p5, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 73
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 77
    .local v6, layoutInflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mCreationOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 78
    invoke-virtual {v6, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 91
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040685

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setDefaultMessage(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->initLayout()V

    .line 95
    return-void

    .line 80
    :cond_0
    invoke-virtual {v6, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->changeTheFocusToPre()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    return-object v0
.end method

.method private changeTheFocusToNext(Lcom/oppo/widget/OppoEditText;)V
    .locals 4
    .parameter "edit"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    if-nez v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/widget/OppoEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTimeoutTask:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;

    iput-object p1, v0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;->edit:Lcom/oppo/widget/OppoEditText;

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTimeoutTask:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTimeoutTask:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private changeTheFocusToPre()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mCurTextLength:I

    if-lez v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    if-ne v0, v1, :cond_2

    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    if-ne v0, v1, :cond_3

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    goto :goto_0

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    if-ne v0, v1, :cond_4

    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    goto :goto_0

    .line 385
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEditView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method private clearAllText()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTimeoutTask:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    .line 410
    return-void
.end method

.method private clearText()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 393
    :cond_0
    return-void
.end method

.method private getAllText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 415
    const-string v0, ""

    .line 417
    .local v0, pwd:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    if-eqz v1, :cond_0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    if-eqz v1, :cond_1

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    if-eqz v1, :cond_2

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    if-eqz v1, :cond_3

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    :cond_3
    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->setEditTextEnable(Z)V

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 304
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$2;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$2;->start()Landroid/os/CountDownTimer;

    .line 321
    return-void
.end method

.method private initEditText(Lcom/oppo/widget/OppoEditText;)V
    .locals 2
    .parameter "edit"

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-virtual {p1}, Lcom/oppo/widget/OppoEditText;->setPassWordAttribute()Z

    .line 134
    new-instance v0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)V

    invoke-virtual {p1, v0}, Lcom/oppo/widget/OppoEditText;->setTextDeletedListener(Lcom/oppo/widget/OppoEditText$mPasswordTextDeletedListener;)V

    .line 140
    const v0, 0x1080637

    invoke-virtual {p1, v0}, Lcom/oppo/widget/OppoEditText;->setBackgroundResource(I)V

    .line 141
    invoke-virtual {p1, v1}, Lcom/oppo/widget/OppoEditText;->setEnableDoubleClickToEnlargeIfEditable(Z)V

    .line 142
    invoke-virtual {p1, v1}, Lcom/oppo/widget/OppoEditText;->setSwitchInputMethodEnable(Z)V

    .line 143
    invoke-virtual {p1, p0}, Lcom/oppo/widget/OppoEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    invoke-virtual {p1, p0}, Lcom/oppo/widget/OppoEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    invoke-virtual {p1, p0}, Lcom/oppo/widget/OppoEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p1, v1}, Lcom/oppo/widget/OppoEditText;->setIndicateMenuEnable(Z)V

    .line 147
    invoke-virtual {p1, v1}, Lcom/oppo/widget/OppoEditText;->setLongClickable(Z)V

    .line 148
    invoke-virtual {p1, v1}, Lcom/oppo/widget/OppoEditText;->setInputType(I)V

    .line 150
    return-void
.end method

.method private initLayout()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 99
    const v2, 0x102036e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mReset:Landroid/widget/ImageButton;

    .line 100
    const v2, 0x1020370

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mDelete:Landroid/widget/ImageButton;

    .line 101
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mReset:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    const v2, 0x1020364

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoEditText;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    .line 105
    const v2, 0x1020365

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoEditText;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    .line 106
    const v2, 0x1020366

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoEditText;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    .line 107
    const v2, 0x1020367

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoEditText;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    .line 108
    const v2, 0x1020363

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEditView:Landroid/view/View;

    .line 109
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    .line 111
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->initEditText(Lcom/oppo/widget/OppoEditText;)V

    .line 112
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->initEditText(Lcom/oppo/widget/OppoEditText;)V

    .line 113
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->initEditText(Lcom/oppo/widget/OppoEditText;)V

    .line 114
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->initEditText(Lcom/oppo/widget/OppoEditText;)V

    .line 116
    new-array v2, v4, [Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mBtn:[Landroid/widget/ImageButton;

    .line 117
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 125
    .local v0, btn_id:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 126
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mBtn:[Landroid/widget/ImageButton;

    aget v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    aput-object v2, v3, v1

    .line 127
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mBtn:[Landroid/widget/ImageButton;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void

    .line 117
    :array_0
    .array-data 0x4
        0x6ft 0x3t 0x2t 0x1t
        0x19t 0x0t 0x2t 0x1t
        0x1at 0x0t 0x2t 0x1t
        0x1bt 0x0t 0x2t 0x1t
        0x68t 0x3t 0x2t 0x1t
        0x69t 0x3t 0x2t 0x1t
        0x6at 0x3t 0x2t 0x1t
        0x6bt 0x3t 0x2t 0x1t
        0x6ct 0x3t 0x2t 0x1t
        0x6dt 0x3t 0x2t 0x1t
    .end array-data
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    if-nez v1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 231
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 232
    .local v0, event:Landroid/view/KeyEvent;
    const/16 v1, 0x1c

    if-ne p1, v1, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->clearAllText()V

    goto :goto_0

    .line 234
    :cond_1
    const/16 v1, 0x43

    if-ne p1, v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1, p1, v0}, Lcom/oppo/widget/OppoEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 238
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 239
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->clearText()V

    .line 242
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1, p1, v0}, Lcom/oppo/widget/OppoEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method private verifyPasswordAndUnlock()V
    .locals 6

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->getAllText()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, entry:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 298
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 273
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 274
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 278
    const-string v3, "OppoLockscreen"

    const-string v4, "sendBroadcast:oppo.intent.action.UNLOCK_SUCCEEDED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "oppo.intent.action.UNLOCK_SUCCEEDED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 297
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->clearAllText()V

    goto :goto_0

    .line 283
    :cond_1
    const-string v3, "OppoLockscreen"

    const-string v4, "sendBroadcast:oppo.intent.action.UNLOCK_FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "oppo.intent.action.UNLOCK_FAILED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 288
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 289
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v3

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_2

    .line 291
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 292
    .local v0, deadline:J
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 294
    .end local v0           #deadline:J
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mContext:Landroid/content/Context;

    const v5, 0x10402ef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    if-nez v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 253
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->changeTheFocusToNext(Lcom/oppo/widget/OppoEditText;)V

    .line 256
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->getAllText()Ljava/lang/String;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->verifyPasswordAndUnlock()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 340
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 156
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 162
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoEditText;->setSelection(I)V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1020364
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 332
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 333
    check-cast p1, Lcom/oppo/widget/OppoEditText;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoEditText;->setSelection(I)V

    .line 336
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 445
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 449
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mResuming:Z

    .line 451
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 454
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 455
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 456
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 458
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mResuming:Z

    .line 459
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 344
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 172
    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v4

    .line 174
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 176
    .local v0, id:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 177
    sparse-switch v0, :sswitch_data_0

    .line 216
    const/4 v1, -0x1

    .line 219
    .local v1, keyCode:I
    :goto_1
    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    .line 220
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->keyPressed(I)V

    goto :goto_0

    .line 179
    .end local v1           #keyCode:I
    :sswitch_0
    const/4 v1, 0x7

    .line 180
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 182
    .end local v1           #keyCode:I
    :sswitch_1
    const/16 v1, 0x8

    .line 183
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 185
    .end local v1           #keyCode:I
    :sswitch_2
    const/16 v1, 0x9

    .line 186
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 188
    .end local v1           #keyCode:I
    :sswitch_3
    const/16 v1, 0xa

    .line 189
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 191
    .end local v1           #keyCode:I
    :sswitch_4
    const/16 v1, 0xb

    .line 192
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 194
    .end local v1           #keyCode:I
    :sswitch_5
    const/16 v1, 0xc

    .line 195
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 197
    .end local v1           #keyCode:I
    :sswitch_6
    const/16 v1, 0xd

    .line 198
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 200
    .end local v1           #keyCode:I
    :sswitch_7
    const/16 v1, 0xe

    .line 201
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 203
    .end local v1           #keyCode:I
    :sswitch_8
    const/16 v1, 0xf

    .line 204
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 206
    .end local v1           #keyCode:I
    :sswitch_9
    const/16 v1, 0x10

    .line 207
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 209
    .end local v1           #keyCode:I
    :sswitch_a
    const/16 v1, 0x1c

    .line 210
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 212
    .end local v1           #keyCode:I
    :sswitch_b
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mCurTextLength:I

    .line 213
    const/16 v1, 0x43

    .line 214
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_1
        0x102001a -> :sswitch_2
        0x102001b -> :sswitch_3
        0x1020368 -> :sswitch_4
        0x1020369 -> :sswitch_5
        0x102036a -> :sswitch_6
        0x102036b -> :sswitch_7
        0x102036c -> :sswitch_8
        0x102036d -> :sswitch_9
        0x102036e -> :sswitch_a
        0x102036f -> :sswitch_0
        0x1020370 -> :sswitch_b
    .end sparse-switch
.end method

.method public setEditTextEnable(Z)V
    .locals 1
    .parameter "able"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoEditText;->setEnabled(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoEditText;->setEnabled(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoEditText;->setEnabled(Z)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoEditText;->setEnabled(Z)V

    .line 329
    return-void
.end method
