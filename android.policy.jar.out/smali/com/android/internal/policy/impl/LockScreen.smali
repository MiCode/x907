.class Lcom/android/internal/policy/impl/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EventDispalyCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;,
        Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;,
        Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;,
        Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field private static final STAY_ON_WHILE_GRABBED_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "LockScreen"

.field private static final TMPEMAIL:Ljava/lang/String; = "temp_email"

.field private static final WAIT_FOR_ANIMATION_TIMEOUT:I

.field private static mTextLinearLayout:Landroid/widget/LinearLayout;

.field private static mTextView:Landroid/widget/TextView;

.field private static mTextViewEmail:Landroid/widget/TextView;

.field private static mTextViewEvent:Landroid/widget/TextView;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mEnableMenuKeyInLockScreen:Z

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMissCallNum:I

.field private mMissEmail:Landroid/widget/ImageView;

.field private mMissEmailNum:I

.field private mMissPhone:Landroid/widget/ImageView;

.field private mMissSms:Landroid/widget/ImageView;

.field private mMissSmsNum:I

.field private final mOnResumePing:Ljava/lang/Runnable;

.field private mSilentMode:Z

.field private mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mUnlockWidget:Landroid/view/View;

.field private mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    sput-object v0, Lcom/android/internal/policy/impl/LockScreen;->mTextView:Landroid/widget/TextView;

    .line 92
    sput-object v0, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEvent:Landroid/widget/TextView;

    .line 93
    sput-object v0, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEmail:Landroid/widget/TextView;

    .line 94
    sput-object v0, Lcom/android/internal/policy/impl/LockScreen;->mTextLinearLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 15
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 343
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 95
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissSmsNum:I

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissCallNum:I

    .line 97
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissEmailNum:I

    .line 535
    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    .line 344
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 345
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 346
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 348
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->shouldEnableMenuKey()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 350
    move-object/from16 v0, p2

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    .line 352
    move-object/from16 v0, p2

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 360
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 362
    .local v8, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 363
    const v1, 0x1090076

    const/4 v2, 0x1

    invoke-virtual {v8, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 368
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 369
    new-instance v1, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 376
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setFocusable(Z)V

    .line 377
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setFocusableInTouchMode(Z)V

    .line 378
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setDescendantFocusability(I)V

    .line 380
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 381
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 383
    const v1, 0x102037a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    .line 384
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/widget/SlidingTab;

    if-eqz v1, :cond_6

    .line 385
    iget-object v12, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v12, Lcom/android/internal/widget/SlidingTab;

    .line 386
    .local v12, slidingTabView:Lcom/android/internal/widget/SlidingTab;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 387
    const v1, 0x104031a

    invoke-virtual {v12, v1}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 388
    const v1, 0x10803d6

    const v2, 0x10804f9

    const v3, 0x10804da

    const v4, 0x10804ed

    invoke-virtual {v12, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 393
    new-instance v11, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;

    invoke-direct {v11, p0, v12}, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/SlidingTab;)V

    .line 394
    .local v11, slidingTabMethods:Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;
    invoke-virtual {v12, v11}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 395
    iput-object v11, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    .line 411
    .end local v11           #slidingTabMethods:Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;
    .end local v12           #slidingTabView:Lcom/android/internal/widget/SlidingTab;
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 413
    move-object/from16 v0, p4

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerEventDispalyCallBack(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EventDispalyCallBack;)V

    .line 414
    const v1, 0x1020376

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissPhone:Landroid/widget/ImageView;

    .line 415
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissPhone:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    const v1, 0x1020377

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextView:Landroid/widget/TextView;

    .line 417
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    const v1, 0x1020374

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissSms:Landroid/widget/ImageView;

    .line 420
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissSms:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    const v1, 0x1020375

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEvent:Landroid/widget/TextView;

    .line 422
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEvent:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    const v1, 0x1020378

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissEmail:Landroid/widget/ImageView;

    .line 425
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissEmail:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    const v1, 0x1020379

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEmail:Landroid/widget/TextView;

    .line 427
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEmail:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    const v1, 0x1020373

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextLinearLayout:Landroid/widget/LinearLayout;

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->readMissEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 431
    .local v7, contentString:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->getMissCallSms()V

    .line 433
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissCallNum:I

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissSmsNum:I

    if-gtz v1, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    .line 434
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextLinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 436
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissCallNum:I

    if-lez v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissPhone:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissCallNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissSmsNum:I

    if-lez v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissSms:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEvent:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEvent:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissSmsNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    :cond_2
    const-string v1, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, " 0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 452
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissEmail:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEmail:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEmail:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :cond_3
    :goto_3
    return-void

    .line 365
    .end local v7           #contentString:Ljava/lang/String;
    :cond_4
    const v1, 0x1090077

    const/4 v2, 0x1

    invoke-virtual {v8, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 372
    :cond_5
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    goto/16 :goto_1

    .line 396
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/widget/WaveView;

    if-eqz v1, :cond_7

    .line 397
    iget-object v13, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v13, Lcom/android/internal/widget/WaveView;

    .line 398
    .local v13, waveView:Lcom/android/internal/widget/WaveView;
    new-instance v14, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;

    invoke-direct {v14, p0, v13}, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/WaveView;)V

    .line 399
    .local v14, waveViewMethods:Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;
    invoke-virtual {v13, v14}, Lcom/android/internal/widget/WaveView;->setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V

    .line 400
    iput-object v14, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    goto/16 :goto_2

    .line 401
    .end local v13           #waveView:Lcom/android/internal/widget/WaveView;
    .end local v14           #waveViewMethods:Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-eqz v1, :cond_8

    .line 402
    iget-object v9, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v9, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 403
    .local v9, multiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    new-instance v10, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;

    invoke-direct {v10, p0, v9}, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    .line 404
    .local v10, multiWaveViewMethods:Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;
    invoke-virtual {v9, v10}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 405
    iput-object v10, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    goto/16 :goto_2

    .line 407
    .end local v9           #multiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    .end local v10           #multiWaveViewMethods:Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized unlock widget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    .restart local v7       #contentString:Ljava/lang/String;
    :cond_9
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 459
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissPhone:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissSms:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEvent:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissEmail:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEmail:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/LockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockScreen;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->requestUnlockScreen()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    return-object v0
.end method

.method private getMissCallSms()V
    .locals 31

    .prologue
    .line 570
    const/16 v25, 0x0

    .line 571
    .local v25, wordsStr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 573
    .local v8, displayContent:Ljava/lang/String;
    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 574
    .local v18, stringContent:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 575
    .local v3, bufferedReader:Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 576
    .local v11, fileReader:Ljava/io/FileReader;
    const/4 v12, 0x0

    .line 578
    .local v12, lineContent:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    const-string v27, "/data"

    const-string v28, "lockscreenevent.txt"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .local v6, contentFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 580
    const/16 v21, 0x0

    .line 583
    .local v21, wordsInputStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v21           #wordsInputStream:Ljava/io/FileInputStream;
    .local v22, wordsInputStream:Ljava/io/FileInputStream;
    move-object/from16 v21, v22

    .line 589
    .end local v22           #wordsInputStream:Ljava/io/FileInputStream;
    .restart local v21       #wordsInputStream:Ljava/io/FileInputStream;
    :goto_0
    const/16 v23, 0x0

    .line 593
    .local v23, wordsReader:Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v24, Ljava/io/InputStreamReader;

    const-string v27, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v23           #wordsReader:Ljava/io/InputStreamReader;
    .local v24, wordsReader:Ljava/io/InputStreamReader;
    move-object/from16 v23, v24

    .line 598
    .end local v24           #wordsReader:Ljava/io/InputStreamReader;
    .restart local v23       #wordsReader:Ljava/io/InputStreamReader;
    :goto_1
    const-wide/16 v4, -0x1

    .line 605
    .local v4, charNumInReader:J
    const-wide/16 v27, 0x800

    :try_start_2
    move-object/from16 v0, v23

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStreamReader;->skip(J)J

    move-result-wide v4

    .line 607
    const-wide/16 v27, 0x0

    cmp-long v27, v4, v27

    if-gtz v27, :cond_0

    .line 610
    :cond_0
    long-to-int v0, v4

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [C

    move-object/from16 v20, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 613
    .local v20, wordsBuf:[C
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 619
    :goto_2
    :try_start_4
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 627
    :goto_3
    :try_start_5
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 634
    .end local v21           #wordsInputStream:Ljava/io/FileInputStream;
    .restart local v22       #wordsInputStream:Ljava/io/FileInputStream;
    :goto_4
    :try_start_6
    new-instance v21, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d

    .line 642
    .end local v22           #wordsInputStream:Ljava/io/FileInputStream;
    .restart local v21       #wordsInputStream:Ljava/io/FileInputStream;
    :goto_5
    if-eqz v21, :cond_1

    .line 643
    :try_start_7
    new-instance v24, Ljava/io/InputStreamReader;

    const-string v27, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .end local v23           #wordsReader:Ljava/io/InputStreamReader;
    .restart local v24       #wordsReader:Ljava/io/InputStreamReader;
    move-object/from16 v23, v24

    .line 650
    .end local v24           #wordsReader:Ljava/io/InputStreamReader;
    .restart local v23       #wordsReader:Ljava/io/InputStreamReader;
    :cond_1
    :goto_6
    if-eqz v23, :cond_2

    .line 651
    if-eqz v20, :cond_2

    .line 652
    :try_start_8
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/InputStreamReader;->read([C)I

    .line 656
    :cond_2
    new-instance v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 657
    .end local v25           #wordsStr:Ljava/lang/String;
    .local v26, wordsStr:Ljava/lang/String;
    :try_start_9
    const-string v16, ""

    .line 658
    .local v16, sms:Ljava/lang/String;
    const-string v15, ""

    .line 660
    .local v15, pho:Ljava/lang/String;
    const-string v27, "unreadshortmessage"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 661
    .local v17, smsIndex:I
    const/16 v27, -0x1

    move/from16 v0, v27

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 662
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "&"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    const-string v29, "&"

    const-string v30, "&"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    add-int/lit8 v30, v30, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v29

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v16

    .line 667
    :try_start_a
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mMissSmsNum:I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 675
    :cond_3
    :goto_7
    :try_start_b
    const-string v27, "unreadphone"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 676
    .local v14, phIndex:I
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v0, v14, :cond_4

    .line 677
    const/16 v27, 0x0

    const-string v28, "&"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 679
    .local v19, temString:Ljava/lang/String;
    const-string v27, "&"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    move-result-object v7

    .line 684
    .local v7, count:Ljava/lang/String;
    :try_start_c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mMissCallNum:I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .end local v7           #count:Ljava/lang/String;
    .end local v19           #temString:Ljava/lang/String;
    :cond_4
    :goto_8
    move-object/from16 v25, v26

    .line 698
    .end local v14           #phIndex:I
    .end local v15           #pho:Ljava/lang/String;
    .end local v16           #sms:Ljava/lang/String;
    .end local v17           #smsIndex:I
    .end local v20           #wordsBuf:[C
    .end local v26           #wordsStr:Ljava/lang/String;
    .restart local v25       #wordsStr:Ljava/lang/String;
    :goto_9
    :try_start_d
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 704
    :goto_a
    :try_start_e
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 712
    .end local v4           #charNumInReader:J
    .end local v21           #wordsInputStream:Ljava/io/FileInputStream;
    .end local v23           #wordsReader:Ljava/io/InputStreamReader;
    :cond_5
    :goto_b
    return-void

    .line 584
    .restart local v21       #wordsInputStream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v10

    .line 585
    .local v10, exc:Ljava/io/FileNotFoundException;
    const-string v27, "LockScreen"

    const-string v28, "updateMissCallView :clearContactsDictionary:create wordsInputStream failed!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 594
    .end local v10           #exc:Ljava/io/FileNotFoundException;
    .restart local v23       #wordsReader:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v9

    .line 595
    .local v9, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 614
    .end local v9           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #charNumInReader:J
    .restart local v20       #wordsBuf:[C
    :catch_2
    move-exception v9

    .line 615
    .local v9, e:Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_2

    .line 693
    .end local v9           #e:Ljava/io/IOException;
    .end local v20           #wordsBuf:[C
    :catch_3
    move-exception v9

    .line 694
    .restart local v9       #e:Ljava/io/IOException;
    :goto_c
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 620
    .end local v9           #e:Ljava/io/IOException;
    .restart local v20       #wordsBuf:[C
    :catch_4
    move-exception v9

    .line 621
    .restart local v9       #e:Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 628
    .end local v9           #e:Ljava/io/IOException;
    :catch_5
    move-exception v10

    .line 629
    .restart local v10       #exc:Ljava/io/FileNotFoundException;
    const-string v27, "LockScreen"

    const-string v28, "updateMissCallView() :clearContactsDictionary:create wordsInputStream failed!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    move-object/from16 v22, v21

    .end local v21           #wordsInputStream:Ljava/io/FileInputStream;
    .restart local v22       #wordsInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 635
    .end local v10           #exc:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v10

    .line 636
    .restart local v10       #exc:Ljava/io/FileNotFoundException;
    :try_start_11
    const-string v27, "LockScreen"

    const-string v28, "updateMissCallView() :clearContactsDictionary:create wordsInputStream failed!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    move-object/from16 v21, v22

    .end local v22           #wordsInputStream:Ljava/io/FileInputStream;
    .restart local v21       #wordsInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 646
    .end local v10           #exc:Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v9

    .line 647
    .local v9, e:Ljava/io/UnsupportedEncodingException;
    :try_start_12
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3

    goto/16 :goto_6

    .line 669
    .end local v9           #e:Ljava/io/UnsupportedEncodingException;
    .end local v25           #wordsStr:Ljava/lang/String;
    .restart local v15       #pho:Ljava/lang/String;
    .restart local v16       #sms:Ljava/lang/String;
    .restart local v17       #smsIndex:I
    .restart local v26       #wordsStr:Ljava/lang/String;
    :catch_8
    move-exception v13

    .line 671
    .local v13, numberformatexception:Ljava/lang/NumberFormatException;
    const/16 v27, 0x0

    :try_start_13
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mMissSmsNum:I

    goto/16 :goto_7

    .line 693
    .end local v13           #numberformatexception:Ljava/lang/NumberFormatException;
    .end local v15           #pho:Ljava/lang/String;
    .end local v16           #sms:Ljava/lang/String;
    .end local v17           #smsIndex:I
    :catch_9
    move-exception v9

    move-object/from16 v25, v26

    .end local v26           #wordsStr:Ljava/lang/String;
    .restart local v25       #wordsStr:Ljava/lang/String;
    goto :goto_c

    .line 686
    .end local v25           #wordsStr:Ljava/lang/String;
    .restart local v7       #count:Ljava/lang/String;
    .restart local v14       #phIndex:I
    .restart local v15       #pho:Ljava/lang/String;
    .restart local v16       #sms:Ljava/lang/String;
    .restart local v17       #smsIndex:I
    .restart local v19       #temString:Ljava/lang/String;
    .restart local v26       #wordsStr:Ljava/lang/String;
    :catch_a
    move-exception v13

    .line 688
    .restart local v13       #numberformatexception:Ljava/lang/NumberFormatException;
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mMissCallNum:I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    goto :goto_8

    .line 699
    .end local v7           #count:Ljava/lang/String;
    .end local v13           #numberformatexception:Ljava/lang/NumberFormatException;
    .end local v14           #phIndex:I
    .end local v15           #pho:Ljava/lang/String;
    .end local v16           #sms:Ljava/lang/String;
    .end local v17           #smsIndex:I
    .end local v19           #temString:Ljava/lang/String;
    .end local v20           #wordsBuf:[C
    .end local v26           #wordsStr:Ljava/lang/String;
    .restart local v25       #wordsStr:Ljava/lang/String;
    :catch_b
    move-exception v9

    .line 700
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 705
    .end local v9           #e:Ljava/io/IOException;
    :catch_c
    move-exception v9

    .line 706
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 693
    .end local v9           #e:Ljava/io/IOException;
    .end local v21           #wordsInputStream:Ljava/io/FileInputStream;
    .restart local v20       #wordsBuf:[C
    .restart local v22       #wordsInputStream:Ljava/io/FileInputStream;
    :catch_d
    move-exception v9

    move-object/from16 v21, v22

    .end local v22           #wordsInputStream:Ljava/io/FileInputStream;
    .restart local v21       #wordsInputStream:Ljava/io/FileInputStream;
    goto :goto_c
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readMissEmail()Ljava/lang/String;
    .locals 16

    .prologue
    .line 715
    const-string v11, ""

    .line 716
    .local v11, wordsStr:Ljava/lang/String;
    const-string v4, ""

    .line 717
    .local v4, email:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v13, "/data"

    const-string v14, "lockscreenevent1.txt"

    invoke-direct {v2, v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    .local v2, contentFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 719
    const/4 v7, 0x0

    .line 722
    .local v7, wordsInputStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9

    .end local v7           #wordsInputStream:Ljava/io/FileInputStream;
    .local v8, wordsInputStream:Ljava/io/FileInputStream;
    move-object v7, v8

    .line 726
    .end local v8           #wordsInputStream:Ljava/io/FileInputStream;
    .restart local v7       #wordsInputStream:Ljava/io/FileInputStream;
    :goto_0
    const/4 v9, 0x0

    .line 730
    .local v9, wordsReader:Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v10, Ljava/io/InputStreamReader;

    const-string v13, "UTF-8"

    invoke-direct {v10, v7, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v9           #wordsReader:Ljava/io/InputStreamReader;
    .local v10, wordsReader:Ljava/io/InputStreamReader;
    move-object v9, v10

    .line 735
    .end local v10           #wordsReader:Ljava/io/InputStreamReader;
    .restart local v9       #wordsReader:Ljava/io/InputStreamReader;
    :goto_1
    const-wide/16 v0, -0x1

    .line 740
    .local v0, charNumInReader:J
    const-wide/16 v13, 0x800

    :try_start_2
    invoke-virtual {v9, v13, v14}, Ljava/io/InputStreamReader;->skip(J)J

    move-result-wide v0

    .line 742
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-gtz v13, :cond_0

    .line 745
    :cond_0
    long-to-int v13, v0

    add-int/lit8 v13, v13, 0x1

    new-array v6, v13, [C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 748
    .local v6, wordsBuf:[C
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 754
    :goto_2
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 762
    :goto_3
    :try_start_5
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v7           #wordsInputStream:Ljava/io/FileInputStream;
    .restart local v8       #wordsInputStream:Ljava/io/FileInputStream;
    move-object v7, v8

    .line 768
    .end local v8           #wordsInputStream:Ljava/io/FileInputStream;
    .restart local v7       #wordsInputStream:Ljava/io/FileInputStream;
    :goto_4
    :try_start_6
    new-instance v10, Ljava/io/InputStreamReader;

    const-string v13, "UTF-8"

    invoke-direct {v10, v7, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .end local v9           #wordsReader:Ljava/io/InputStreamReader;
    .restart local v10       #wordsReader:Ljava/io/InputStreamReader;
    move-object v9, v10

    .line 773
    .end local v10           #wordsReader:Ljava/io/InputStreamReader;
    .restart local v9       #wordsReader:Ljava/io/InputStreamReader;
    :goto_5
    :try_start_7
    invoke-virtual {v9, v6}, Ljava/io/InputStreamReader;->read([C)I

    .line 774
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v6}, Ljava/lang/String;-><init>([C)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 776
    .end local v11           #wordsStr:Ljava/lang/String;
    .local v12, wordsStr:Ljava/lang/String;
    :try_start_8
    const-string v13, "&"

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 777
    .local v5, email_index:I
    const/4 v13, -0x1

    if-eq v5, v13, :cond_2

    .line 778
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v4

    :goto_6
    move-object v11, v12

    .line 787
    .end local v5           #email_index:I
    .end local v6           #wordsBuf:[C
    .end local v12           #wordsStr:Ljava/lang/String;
    .restart local v11       #wordsStr:Ljava/lang/String;
    :goto_7
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 793
    :goto_8
    :try_start_a
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 801
    .end local v0           #charNumInReader:J
    .end local v7           #wordsInputStream:Ljava/io/FileInputStream;
    .end local v9           #wordsReader:Ljava/io/InputStreamReader;
    :cond_1
    :goto_9
    return-object v4

    .line 731
    .restart local v7       #wordsInputStream:Ljava/io/FileInputStream;
    .restart local v9       #wordsReader:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v3

    .line 732
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 749
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #charNumInReader:J
    .restart local v6       #wordsBuf:[C
    :catch_1
    move-exception v3

    .line 750
    .local v3, e:Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_2

    .line 782
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #wordsBuf:[C
    :catch_2
    move-exception v3

    .line 783
    .restart local v3       #e:Ljava/io/IOException;
    :goto_a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 756
    .end local v3           #e:Ljava/io/IOException;
    .restart local v6       #wordsBuf:[C
    :catch_3
    move-exception v3

    .line 757
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 769
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 770
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_5

    .line 780
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .end local v11           #wordsStr:Ljava/lang/String;
    .restart local v5       #email_index:I
    .restart local v12       #wordsStr:Ljava/lang/String;
    :cond_2
    :try_start_d
    const-string v4, ""
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_6

    .line 788
    .end local v5           #email_index:I
    .end local v6           #wordsBuf:[C
    .end local v12           #wordsStr:Ljava/lang/String;
    .restart local v11       #wordsStr:Ljava/lang/String;
    :catch_5
    move-exception v3

    .line 789
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 795
    .end local v3           #e:Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 796
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 782
    .end local v3           #e:Ljava/io/IOException;
    .end local v11           #wordsStr:Ljava/lang/String;
    .restart local v6       #wordsBuf:[C
    .restart local v12       #wordsStr:Ljava/lang/String;
    :catch_7
    move-exception v3

    move-object v11, v12

    .end local v12           #wordsStr:Ljava/lang/String;
    .restart local v11       #wordsStr:Ljava/lang/String;
    goto :goto_a

    .line 763
    :catch_8
    move-exception v13

    goto :goto_4

    .line 723
    .end local v0           #charNumInReader:J
    .end local v6           #wordsBuf:[C
    .end local v9           #wordsReader:Ljava/io/InputStreamReader;
    :catch_9
    move-exception v13

    goto/16 :goto_0
.end method

.method private requestUnlockScreen()V
    .locals 3

    .prologue
    .line 294
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 326
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x111001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 327
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 328
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 329
    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private toggleRingMode()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 303
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 304
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_3

    .line 305
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "vibrate_in_silent"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 309
    .local v0, vibe:Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 315
    .end local v0           #vibe:Z
    :goto_3
    return-void

    :cond_0
    move v1, v3

    .line 303
    goto :goto_0

    :cond_1
    move v0, v3

    .line 305
    goto :goto_1

    .restart local v0       #vibe:Z
    :cond_2
    move v2, v3

    .line 309
    goto :goto_2

    .line 313
    .end local v0           #vibe:Z
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_3
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 550
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 551
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 552
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 553
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 503
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 509
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 510
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 515
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 521
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 522
    return-void
.end method

.method public onDisplayMissCall(III)V
    .locals 4
    .parameter "msmtime"
    .parameter "calltime"
    .parameter "emailtime"

    .prologue
    const/4 v3, 0x0

    .line 807
    if-gtz p1, :cond_0

    if-gtz p2, :cond_0

    if-lez p3, :cond_3

    .line 808
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen;->mTextLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 810
    if-lez p2, :cond_1

    .line 811
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissPhone:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 812
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 813
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen;->mTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    :cond_1
    if-lez p1, :cond_2

    .line 817
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissSms:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 818
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEvent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 819
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEvent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    :cond_2
    if-lez p3, :cond_3

    .line 823
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mMissEmail:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 824
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 825
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen;->mTextViewEmail:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->reset(Z)V

    .line 533
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 565
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 545
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 557
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 558
    .local v0, silent:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_0

    .line 559
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 560
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 562
    :cond_0
    return-void

    .line 557
    .end local v0           #silent:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 489
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 490
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_1

    .line 491
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 493
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 494
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-ne v2, v0, :cond_2

    .line 495
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 496
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 494
    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
