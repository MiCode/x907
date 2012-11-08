.class public Lcom/oppo/camera/lomo/LomoCameraLayout;
.super Landroid/widget/LinearLayout;
.source "LomoCameraLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    }
.end annotation


# instance fields
.field private mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

.field private mContext:Landroid/content/Context;

.field private mCurItemTitle:Landroid/widget/TextView;

.field private mCurSecItemId:I

.field private mCurSecSubItemId:I

.field private mDailyItemName:[Ljava/lang/String;

.field private mHahaItemName:[Ljava/lang/String;

.field private mInterestItemName:[Ljava/lang/String;

.field private mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mPanelView:Lcom/oppo/camera/lomo/PanelView;

.field private mRewindItemName:[Ljava/lang/String;

.field private mSecondSubMenuLayout:Landroid/widget/RelativeLayout;

.field private mStrengthItemName:[Ljava/lang/String;

.field private mSubItemBtns:[Landroid/widget/TextView;

.field private mSubItemLayout:Landroid/widget/RelativeLayout;

.field private mSubItemName:[Ljava/lang/String;

.field public mWhiteLightAnimationListener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecSubItemId:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecItemId:I

    .line 76
    new-instance v0, Lcom/oppo/camera/lomo/LomoCameraLayout$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCameraLayout$1;-><init>(Lcom/oppo/camera/lomo/LomoCameraLayout;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    .line 217
    new-instance v0, Lcom/oppo/camera/lomo/LomoCameraLayout$3;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCameraLayout$3;-><init>(Lcom/oppo/camera/lomo/LomoCameraLayout;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 311
    new-instance v0, Lcom/oppo/camera/lomo/LomoCameraLayout$4;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCameraLayout$4;-><init>(Lcom/oppo/camera/lomo/LomoCameraLayout;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mWhiteLightAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 54
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCameraLayout;->initLayout()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/lomo/LomoCameraLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecItemId:I

    return v0
.end method

.method static synthetic access$002(Lcom/oppo/camera/lomo/LomoCameraLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecItemId:I

    return p1
.end method

.method static synthetic access$100(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/camera/lomo/LomoCameraLayout;)Lcom/oppo/camera/lomo/PanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mPanelView:Lcom/oppo/camera/lomo/PanelView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/camera/lomo/LomoCameraLayout;)[Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/camera/lomo/LomoCameraLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecSubItemId:I

    return v0
.end method

.method static synthetic access$402(Lcom/oppo/camera/lomo/LomoCameraLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecSubItemId:I

    return p1
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 60
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03000d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    const v1, 0x7f0b004d

    invoke-virtual {p0, v1}, Lcom/oppo/camera/lomo/LomoCameraLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemLayout:Landroid/widget/RelativeLayout;

    .line 62
    const v1, 0x7f0b004c

    invoke-virtual {p0, v1}, Lcom/oppo/camera/lomo/LomoCameraLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/lomo/PanelView;

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mPanelView:Lcom/oppo/camera/lomo/PanelView;

    .line 63
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mPanelView:Lcom/oppo/camera/lomo/PanelView;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mAnimationStateListener:Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/lomo/PanelView;->setOnAnimationStateListener(Lcom/oppo/camera/lomo/PanelView$OnAnimationStateListener;)V

    .line 66
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemName:[Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mInterestItemName:[Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mRewindItemName:[Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mHahaItemName:[Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mDailyItemName:[Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mStrengthItemName:[Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public hideSubMenu()V
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f04001b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 206
    .local v0, animation:Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 207
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v1, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 208
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 209
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    const v2, 0x3e4ccccd

    invoke-virtual {v1, v2}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 210
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSecondSubMenuLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSecondSubMenuLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 213
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurItemTitle:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :cond_0
    return-void
.end method

.method public setOnMeunSelectedChangeListener(Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    .line 310
    return-void
.end method

.method public showSubMenu(II)V
    .locals 9
    .parameter "mainItemId"
    .parameter "subItemId"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 109
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 111
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 112
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030013

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 113
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0b005e

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSecondSubMenuLayout:Landroid/widget/RelativeLayout;

    .line 114
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0b005d

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurItemTitle:Landroid/widget/TextView;

    .line 115
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurItemTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurItemTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemName:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    new-array v2, v8, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    .line 119
    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    const v2, 0x7f0b005f

    invoke-virtual {p0, v2}, Lcom/oppo/camera/lomo/LomoCameraLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v5

    .line 120
    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    const v2, 0x7f0b0060

    invoke-virtual {p0, v2}, Lcom/oppo/camera/lomo/LomoCameraLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v4

    .line 121
    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    const v2, 0x7f0b0061

    invoke-virtual {p0, v2}, Lcom/oppo/camera/lomo/LomoCameraLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v7

    .line 122
    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    const v2, 0x7f0b0062

    invoke-virtual {p0, v2}, Lcom/oppo/camera/lomo/LomoCameraLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v6

    .line 124
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, p2

    const v3, 0x7f020093

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 125
    iput p2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecSubItemId:I

    .line 126
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mCurSecItemId:I

    .line 128
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f04001a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 183
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 184
    new-instance v2, Lcom/oppo/camera/lomo/LomoCameraLayout$2;

    invoke-direct {v2, p0}, Lcom/oppo/camera/lomo/LomoCameraLayout$2;-><init>(Lcom/oppo/camera/lomo/LomoCameraLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 196
    new-instance v2, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v2, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 197
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v2, v5}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 198
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    const v3, 0x3dcccccd

    invoke-virtual {v2, v3}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 199
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSecondSubMenuLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 202
    return-void

    .line 134
    .end local v0           #animation:Landroid/view/animation/Animation;
    :pswitch_0
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v7

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mInterestItemName:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mInterestItemName:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mInterestItemName:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mRewindItemName:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mRewindItemName:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 153
    :pswitch_2
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mHahaItemName:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mHahaItemName:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mHahaItemName:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mHahaItemName:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 163
    :pswitch_3
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mDailyItemName:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mDailyItemName:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mDailyItemName:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mDailyItemName:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 173
    :pswitch_4
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mStrengthItemName:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mSubItemBtns:[Landroid/widget/TextView;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCameraLayout;->mStrengthItemName:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
