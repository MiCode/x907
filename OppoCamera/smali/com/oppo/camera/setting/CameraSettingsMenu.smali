.class public Lcom/oppo/camera/setting/CameraSettingsMenu;
.super Landroid/widget/LinearLayout;
.source "CameraSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/setting/CameraSettingsMenu$MyOrientationEventListener;,
        Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;
    }
.end annotation


# instance fields
.field private mArrowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mContext:Landroid/content/Context;

.field private mExpandArrowView:Landroid/widget/ImageView;

.field private mExpandBtn:Landroid/widget/ImageView;

.field private mIconAnimationListener:Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;

.field private mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

.field private mIconsPanelController:Lcom/oppo/camera/setting/IconsPanelController;

.field private mIsCameraMode:Z

.field private mIsEnable:Z

.field private mIsExpand:Z

.field private mMenuAnimationListener:Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;

.field private mOnExpandBtnListener:Landroid/view/View$OnClickListener;

.field private mOnRootViewClickListener:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/oppo/camera/setting/CameraSettingsMenu$MyOrientationEventListener;

.field private mRootView:Landroid/view/View;

.field private mShowMenuListener:Landroid/view/animation/Animation$AnimationListener;

.field private mWheelMenuView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientationCompensation:I

    .line 37
    const/16 v0, 0x10e

    iput v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientation:I

    .line 46
    iput-boolean v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsExpand:Z

    .line 47
    iput-boolean v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsEnable:Z

    .line 48
    iput-boolean v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsCameraMode:Z

    .line 105
    new-instance v0, Lcom/oppo/camera/setting/CameraSettingsMenu$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/setting/CameraSettingsMenu$1;-><init>(Lcom/oppo/camera/setting/CameraSettingsMenu;)V

    iput-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIconAnimationListener:Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;

    .line 120
    new-instance v0, Lcom/oppo/camera/setting/CameraSettingsMenu$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/setting/CameraSettingsMenu$2;-><init>(Lcom/oppo/camera/setting/CameraSettingsMenu;)V

    iput-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOnExpandBtnListener:Landroid/view/View$OnClickListener;

    .line 127
    new-instance v0, Lcom/oppo/camera/setting/CameraSettingsMenu$3;

    invoke-direct {v0, p0}, Lcom/oppo/camera/setting/CameraSettingsMenu$3;-><init>(Lcom/oppo/camera/setting/CameraSettingsMenu;)V

    iput-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOnRootViewClickListener:Landroid/view/View$OnClickListener;

    .line 197
    new-instance v0, Lcom/oppo/camera/setting/CameraSettingsMenu$4;

    invoke-direct {v0, p0}, Lcom/oppo/camera/setting/CameraSettingsMenu$4;-><init>(Lcom/oppo/camera/setting/CameraSettingsMenu;)V

    iput-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mArrowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 213
    new-instance v0, Lcom/oppo/camera/setting/CameraSettingsMenu$5;

    invoke-direct {v0, p0}, Lcom/oppo/camera/setting/CameraSettingsMenu$5;-><init>(Lcom/oppo/camera/setting/CameraSettingsMenu;)V

    iput-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mShowMenuListener:Landroid/view/animation/Animation$AnimationListener;

    .line 77
    iput-object p1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v3, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientationCompensation:I

    .line 37
    const/16 v2, 0x10e

    iput v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientation:I

    .line 46
    iput-boolean v3, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsExpand:Z

    .line 47
    iput-boolean v3, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsEnable:Z

    .line 48
    iput-boolean v3, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsCameraMode:Z

    .line 105
    new-instance v2, Lcom/oppo/camera/setting/CameraSettingsMenu$1;

    invoke-direct {v2, p0}, Lcom/oppo/camera/setting/CameraSettingsMenu$1;-><init>(Lcom/oppo/camera/setting/CameraSettingsMenu;)V

    iput-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIconAnimationListener:Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;

    .line 120
    new-instance v2, Lcom/oppo/camera/setting/CameraSettingsMenu$2;

    invoke-direct {v2, p0}, Lcom/oppo/camera/setting/CameraSettingsMenu$2;-><init>(Lcom/oppo/camera/setting/CameraSettingsMenu;)V

    iput-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOnExpandBtnListener:Landroid/view/View$OnClickListener;

    .line 127
    new-instance v2, Lcom/oppo/camera/setting/CameraSettingsMenu$3;

    invoke-direct {v2, p0}, Lcom/oppo/camera/setting/CameraSettingsMenu$3;-><init>(Lcom/oppo/camera/setting/CameraSettingsMenu;)V

    iput-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOnRootViewClickListener:Landroid/view/View$OnClickListener;

    .line 197
    new-instance v2, Lcom/oppo/camera/setting/CameraSettingsMenu$4;

    invoke-direct {v2, p0}, Lcom/oppo/camera/setting/CameraSettingsMenu$4;-><init>(Lcom/oppo/camera/setting/CameraSettingsMenu;)V

    iput-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mArrowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 213
    new-instance v2, Lcom/oppo/camera/setting/CameraSettingsMenu$5;

    invoke-direct {v2, p0}, Lcom/oppo/camera/setting/CameraSettingsMenu$5;-><init>(Lcom/oppo/camera/setting/CameraSettingsMenu;)V

    iput-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mShowMenuListener:Landroid/view/animation/Animation$AnimationListener;

    .line 54
    iput-object p1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mContext:Landroid/content/Context;

    .line 55
    sget-object v2, Lcom/oppo/camera/R$styleable;->CameraModeSetting:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, cameraMode:Ljava/lang/String;
    const-string v2, "camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsCameraMode:Z

    .line 62
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->init()V

    .line 63
    return-void

    .line 59
    :cond_1
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    iput-boolean v3, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsCameraMode:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oppo/camera/setting/CameraSettingsMenu;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mExpandBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/camera/setting/CameraSettingsMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->enableRootView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oppo/camera/setting/CameraSettingsMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$1002(Lcom/oppo/camera/setting/CameraSettingsMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/oppo/camera/setting/CameraSettingsMenu;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oppo/camera/setting/CameraSettingsMenu;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/camera/setting/CameraSettingsMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->hideMenu()V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/camera/setting/CameraSettingsMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->disableRootView()V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/camera/setting/CameraSettingsMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->changeExpandState()V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/camera/setting/CameraSettingsMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsExpand:Z

    return v0
.end method

.method static synthetic access$600(Lcom/oppo/camera/setting/CameraSettingsMenu;)Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mMenuAnimationListener:Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/camera/setting/CameraSettingsMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->hideArrow()V

    return-void
.end method

.method static synthetic access$800(Lcom/oppo/camera/setting/CameraSettingsMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientation:I

    return v0
.end method

.method static synthetic access$802(Lcom/oppo/camera/setting/CameraSettingsMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientation:I

    return p1
.end method

.method static synthetic access$900(Lcom/oppo/camera/setting/CameraSettingsMenu;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private changeExpandState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsEnable:Z

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsExpand:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsExpand:Z

    .line 152
    iget v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientationCompensation:I

    invoke-direct {p0, v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->setOrientationIndicator(I)V

    .line 153
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mExpandBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mMenuAnimationListener:Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mMenuAnimationListener:Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;

    iget-boolean v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsExpand:Z

    invoke-interface {v0, v1}, Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;->onArrowStateChanged(Z)V

    .line 157
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsExpand:Z

    if-eqz v0, :cond_3

    .line 158
    invoke-direct {p0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->enableRootView()V

    .line 159
    invoke-direct {p0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->showMenu()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 151
    goto :goto_1

    .line 161
    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->disableRootView()V

    goto :goto_0
.end method

.method private disableRootView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 144
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 145
    return-void
.end method

.method private enableRootView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 138
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 139
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 140
    return-void
.end method

.method private hideArrow()V
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f040007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 192
    .local v0, arrowAnimation:Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 193
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mArrowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 194
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mExpandArrowView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 195
    return-void
.end method

.method private hideMenu()V
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f04000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 184
    .local v0, menuAnimation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mShowMenuListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 185
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mWheelMenuView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mWheelMenuView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 88
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    const v1, 0x7f0b0030

    invoke-virtual {p0, v1}, Lcom/oppo/camera/setting/CameraSettingsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mExpandBtn:Landroid/widget/ImageView;

    .line 91
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mExpandBtn:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOnExpandBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v1, 0x7f0b0031

    invoke-virtual {p0, v1}, Lcom/oppo/camera/setting/CameraSettingsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mExpandArrowView:Landroid/widget/ImageView;

    .line 93
    const v1, 0x7f0b002d

    invoke-virtual {p0, v1}, Lcom/oppo/camera/setting/CameraSettingsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mWheelMenuView:Landroid/widget/ImageView;

    .line 94
    const v1, 0x7f0b002f

    invoke-virtual {p0, v1}, Lcom/oppo/camera/setting/CameraSettingsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/setting/IconsPanelView;

    iput-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

    .line 95
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

    iget-boolean v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsCameraMode:Z

    invoke-virtual {v1, v2}, Lcom/oppo/camera/setting/IconsPanelView;->setMenuMode(Z)V

    .line 96
    const v1, 0x7f0b002a

    invoke-virtual {p0, v1}, Lcom/oppo/camera/setting/CameraSettingsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mRootView:Landroid/view/View;

    .line 97
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOnRootViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-direct {p0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->disableRootView()V

    .line 100
    new-instance v1, Lcom/oppo/camera/setting/IconsPanelController;

    iget-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/setting/IconsPanelController;-><init>(Lcom/oppo/camera/setting/CameraSettingsMenu;Lcom/oppo/camera/setting/IconsPanelView;)V

    iput-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIconsPanelController:Lcom/oppo/camera/setting/IconsPanelController;

    .line 101
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIconsPanelController:Lcom/oppo/camera/setting/IconsPanelController;

    iget-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIconAnimationListener:Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController;->setIconsAnimationListener(Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;)V

    .line 102
    new-instance v1, Lcom/oppo/camera/setting/CameraSettingsMenu$MyOrientationEventListener;

    iget-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/setting/CameraSettingsMenu$MyOrientationEventListener;-><init>(Lcom/oppo/camera/setting/CameraSettingsMenu;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientationListener:Lcom/oppo/camera/setting/CameraSettingsMenu$MyOrientationEventListener;

    .line 103
    return-void
.end method

.method private setOrientationIndicator(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsExpand:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/setting/IconsPanelView;->setDegree(I)V

    .line 239
    :cond_0
    return-void
.end method

.method private showMenu()V
    .locals 4

    .prologue
    .line 166
    iget-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mWheelMenuView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mContext:Landroid/content/Context;

    const v3, 0x7f04000c

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 168
    .local v1, menuAnimation:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mShowMenuListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 169
    iget-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mWheelMenuView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 171
    iget-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mContext:Landroid/content/Context;

    const v3, 0x7f040006

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 172
    .local v0, arrowAnimation:Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 173
    iget-object v2, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mExpandArrowView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    return-void
.end method


# virtual methods
.method public getMenuMode()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsCameraMode:Z

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOrientation:I

    return v0
.end method

.method public hideAllViews()V
    .locals 2

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsExpand:Z

    .line 179
    iget-object v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIconsPanelController:Lcom/oppo/camera/setting/IconsPanelController;

    iget-boolean v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsExpand:Z

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/IconsPanelController;->changeVisibility(Z)V

    .line 180
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsEnable:Z

    return v0
.end method

.method public isExpand()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsExpand:Z

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 324
    sparse-switch p1, :sswitch_data_0

    .line 341
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 326
    :sswitch_0
    iget-boolean v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsExpand:Z

    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->hideAllViews()V

    .line 328
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

    invoke-virtual {v1}, Lcom/oppo/camera/setting/IconsPanelView;->invalidate()V

    goto :goto_0

    .line 333
    :sswitch_1
    iget-boolean v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIsExpand:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mIconsPanelController:Lcom/oppo/camera/setting/IconsPanelController;

    invoke-virtual {v1}, Lcom/oppo/camera/setting/IconsPanelController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mOnExpandBtnListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 324
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public setOnMenuAnimationListener(Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;)V
    .locals 0
    .parameter "onMenuAnimationListener"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/oppo/camera/setting/CameraSettingsMenu;->mMenuAnimationListener:Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;

    .line 250
    return-void
.end method
