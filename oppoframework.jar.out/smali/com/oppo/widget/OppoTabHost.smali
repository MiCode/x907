.class public Lcom/oppo/widget/OppoTabHost;
.super Landroid/widget/LinearLayout;
.source "OppoTabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;,
        Lcom/oppo/widget/OppoTabHost$IntentContentStrategy;,
        Lcom/oppo/widget/OppoTabHost$FactoryContentStrategy;,
        Lcom/oppo/widget/OppoTabHost$ViewIdContentStrategy;,
        Lcom/oppo/widget/OppoTabHost$ViewIndicatorStrategy;,
        Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;,
        Lcom/oppo/widget/OppoTabHost$LabelIndicatorStrategy;,
        Lcom/oppo/widget/OppoTabHost$ContentStrategy;,
        Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;,
        Lcom/oppo/widget/OppoTabHost$OppoTabSpec;,
        Lcom/oppo/widget/OppoTabHost$TabContentFactory;,
        Lcom/oppo/widget/OppoTabHost$OnTabChangeListener;,
        Lcom/oppo/widget/OppoTabHost$KeyEventDelayDispatch;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoTabHost"

.field private static final TIME_DELAY_TO_DISPATCH_KEY:I = 0xa


# instance fields
.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field private mHideImeAction:Ljava/lang/String;

.field private mImeStateReceiverRegistered:Z

.field private final mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyDelayDispatchHandler:Landroid/os/Handler;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Lcom/oppo/widget/OppoTabHost$OnTabChangeListener;

.field private mOnTabSelectionChangedListener:Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;

.field private mOppoTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoTabHost$OppoTabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

.field private mOppoTabsEnterAniSet:Landroid/view/animation/AnimationSet;

.field private mOppoTabsExitAniSet:Landroid/view/animation/AnimationSet;

.field private mShowImeAction:Ljava/lang/String;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mWindowHasFocus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    .line 58
    iput-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mOnTabSelectionChangedListener:Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    .line 67
    iput-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    .line 73
    iput-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mKeyDelayDispatchHandler:Landroid/os/Handler;

    .line 81
    const-string v0, "com.oppo.android.INPUT_WINDOW_SHOWN"

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mShowImeAction:Ljava/lang/String;

    .line 82
    const-string v0, "com.oppo.android.INPUT_WINDOW_HIDDED"

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mHideImeAction:Ljava/lang/String;

    .line 84
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTabHost;->mWindowHasFocus:Z

    .line 87
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTabHost;->mImeStateReceiverRegistered:Z

    .line 89
    new-instance v0, Lcom/oppo/widget/OppoTabHost$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoTabHost$1;-><init>(Lcom/oppo/widget/OppoTabHost;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    iput-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabsEnterAniSet:Landroid/view/animation/AnimationSet;

    .line 123
    iput-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabsExitAniSet:Landroid/view/animation/AnimationSet;

    .line 132
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabHost;->prepareTabLayoutAnim()V

    .line 133
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabHost;->initOppoTabHost()V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoTabHost;)Lcom/oppo/widget/OppoTabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoTabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoTabHost;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTabHost;->mWindowHasFocus:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoTabHost;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mHideImeAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoTabHost;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabsEnterAniSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoTabHost;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mShowImeAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoTabHost;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabsExitAniSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoTabHost;)Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOnTabSelectionChangedListener:Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoTabHost;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mKeyDelayDispatchHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initOppoTabHost()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabHost;->setFocusableInTouchMode(Z)V

    .line 139
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabHost;->setDescendantFocusability(I)V

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    .line 145
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOnTabChangeListener:Lcom/oppo/widget/OppoTabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOnTabChangeListener:Lcom/oppo/widget/OppoTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 530
    :cond_0
    return-void
.end method

.method private prepareTabLayoutAnim()V
    .locals 11

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x3f80

    const-wide/16 v9, 0x32

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabsEnterAniSet:Landroid/view/animation/AnimationSet;

    .line 150
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3f4ccccd

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 151
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 152
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabsEnterAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 155
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabsExitAniSet:Landroid/view/animation/AnimationSet;

    .line 156
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    invoke-direct {v0, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 157
    .restart local v0       #animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 158
    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabsExitAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 159
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    const/high16 v8, 0x3f00

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 162
    .restart local v0       #animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 163
    return-void
.end method


# virtual methods
.method public addTab(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)V
    .locals 2
    .parameter "tabSpec"

    .prologue
    .line 359
    #getter for: Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mIndicatorStrategy:Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->access$1000(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    #getter for: Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mContentStrategy:Lcom/oppo/widget/OppoTabHost$ContentStrategy;
    invoke-static {p1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->access$1100(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)Lcom/oppo/widget/OppoTabHost$ContentStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoTabWidget;->addOppoTabSpec(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)V

    .line 371
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTabWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 372
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    const/4 v0, -0x1

    iget v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    if-ne v0, v1, :cond_0

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTabWidget;->removeAllOppoTabSpec()V

    .line 385
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabHost;->initOppoTabHost()V

    .line 386
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 387
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 388
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabHost;->requestLayout()V

    .line 389
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabHost;->invalidate()V

    .line 390
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 434
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 438
    .local v0, handled:Z
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabWidget;->requestFocus()Z

    .line 447
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    iget v2, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTabWidget;->requestFocusOnTab(I)V

    .line 448
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTabHost;->playSoundEffect(I)V

    .line 449
    const/4 v0, 0x1

    .line 452
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTabWidget;->moveAndNotUp()V

    .line 470
    :cond_1
    return-void
.end method

.method public forceTabWidgetToReLayout()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTabWidget;->requestLayout()V

    .line 541
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 401
    iget v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 404
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getOppoTabWidget()Lcom/oppo/widget/OppoTabWidget;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public newOppoTabSpec(Ljava/lang/String;)Lcom/oppo/widget/OppoTabHost$OppoTabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 184
    new-instance v0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p0, v1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;-><init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/String;Lcom/oppo/widget/OppoTabHost;Lcom/oppo/widget/OppoTabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 307
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 308
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 309
    .local v1, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 314
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 315
    .local v0, iFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mHideImeAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mShowImeAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabHost;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoTabHost;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/widget/OppoTabHost;->mImeStateReceiverRegistered:Z

    .line 319
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 323
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 324
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 325
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oppo/widget/OppoTabHost;->mImeStateReceiverRegistered:Z

    if-eqz v1, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 334
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoTabHost;->mImeStateReceiverRegistered:Z

    .line 335
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 170
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 171
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 172
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 177
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 341
    if-eqz p1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    iget v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTabWidget;->requestFocusOnTab(I)V

    goto :goto_0
.end method

.method public procWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTabHost;->mWindowHasFocus:Z

    .line 545
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 473
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iget v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    if-eq p1, v1, :cond_0

    .line 484
    iget v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_2

    .line 485
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;

    #getter for: Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mContentStrategy:Lcom/oppo/widget/OppoTabHost$ContentStrategy;
    invoke-static {v1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->access$1100(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)Lcom/oppo/widget/OppoTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/widget/OppoTabHost$ContentStrategy;->tabClosed()V

    .line 488
    :cond_2
    iput p1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    .line 490
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;

    .line 494
    .local v0, spec:Lcom/oppo/widget/OppoTabHost$OppoTabSpec;
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    iget v2, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTabWidget;->focusCurrentTab(I)V

    .line 497
    #getter for: Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->mContentStrategy:Lcom/oppo/widget/OppoTabHost$ContentStrategy;
    invoke-static {v0}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->access$1100(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)Lcom/oppo/widget/OppoTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/widget/OppoTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    .line 498
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 499
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/oppo/widget/OppoTabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    :cond_3
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabWidget;->requestFocus()Z

    .line 510
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabHost;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 417
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabHost;->setCurrentTab(I)V

    .line 423
    :cond_0
    return-void

    .line 417
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnTabChangedListener(Lcom/oppo/widget/OppoTabHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost;->mOnTabChangeListener:Lcom/oppo/widget/OppoTabHost$OnTabChangeListener;

    .line 524
    return-void
.end method

.method public setOnTabSelectionChangedListener(Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost;->mOnTabSelectionChangedListener:Lcom/oppo/widget/OppoTabHost$OnTabSelectionChangedListener;

    .line 303
    return-void
.end method

.method public setTabWidgetAlignMode(I)V
    .locals 2
    .parameter "alignMode"

    .prologue
    .line 533
    const-string v0, "OppoTabHost"

    const-string v1, "this method not in use any more!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 199
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTabWidget;

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    .line 201
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    new-instance v1, Lcom/oppo/widget/OppoTabHost$2;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoTabHost$2;-><init>(Lcom/oppo/widget/OppoTabHost;)V

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTabWidget;->setOppoTabSelectionListener(Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;)V

    .line 218
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 220
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lcom/oppo/widget/OppoTabHost$3;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoTabHost$3;-><init>(Lcom/oppo/widget/OppoTabHost;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 261
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost;->mOppoTabWidget:Lcom/oppo/widget/OppoTabWidget;

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTabWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTabHost;->setup()V

    .line 296
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 298
    return-void
.end method
