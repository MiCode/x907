.class public Lcom/oppo/camera/lomo/LomoCameraMenuLayout;
.super Landroid/widget/FrameLayout;
.source "LomoCameraMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;
    }
.end annotation


# static fields
.field private static mSharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private mCancelHint:Ljava/lang/Runnable;

.field private mChangeCamera:Landroid/widget/ImageView;

.field private mChangeCameraListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mCurClickItem:I

.field private mCurClickMainItem:I

.field private mCurrentItem:Landroid/widget/ImageView;

.field private mEffectListener:Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;

.field private mHandler:Landroid/os/Handler;

.field private mMainMenuId:I

.field private mMenuSelectedChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

.field private mPanelView:Lcom/oppo/camera/lomo/PanelView;

.field private mPhotoAlbumImage:Landroid/widget/ImageView;

.field private mPhotoAlbumText:Landroid/widget/TextView;

.field private mSavePath:Ljava/lang/String;

.field private mScreenHint:Lcom/oppo/camera/utils/OnScreenHint;

.field private mSpecialCameraLayout:Lcom/oppo/camera/lomo/LomoCameraLayout;

.field private mSubItemId:I

.field private mSubItemLayout:Landroid/widget/RelativeLayout;

.field private mSubItem_Id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickItem:I

    .line 53
    iput v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickMainItem:I

    .line 54
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mScreenHint:Lcom/oppo/camera/utils/OnScreenHint;

    .line 56
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v2, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$1;

    invoke-direct {v2, p0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$1;-><init>(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)V

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCancelHint:Ljava/lang/Runnable;

    .line 256
    new-instance v2, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$3;

    invoke-direct {v2, p0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$3;-><init>(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)V

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCameraListener:Landroid/view/View$OnClickListener;

    .line 298
    new-instance v2, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;

    invoke-direct {v2, p0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$5;-><init>(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)V

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mMenuSelectedChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    .line 70
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->initLayout()V

    .line 72
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, hintString:Ljava/lang/String;
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oppo/camera/utils/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/oppo/camera/utils/OnScreenHint;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mScreenHint:Lcom/oppo/camera/utils/OnScreenHint;

    .line 74
    sget-object v2, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "camera save mode"

    sget-object v4, Lcom/oppo/camera/CommConfig;->INTERNAL_IMG_PATH:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, savePath:Ljava/lang/String;
    sget-object v2, Lcom/oppo/camera/CommConfig;->EXTERNAL_IMG_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    sget-object v2, Lcom/oppo/camera/CommConfig;->EXTERNAL_LOMO_IMG_PATH:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSavePath:Ljava/lang/String;

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v2, Lcom/oppo/camera/CommConfig;->INTERNAL_LOMO_IMG_PATH:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSavePath:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Lcom/oppo/camera/utils/OnScreenHint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mScreenHint:Lcom/oppo/camera/utils/OnScreenHint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mMainMenuId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItemLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickMainItem:I

    return p1
.end method

.method static synthetic access$1200(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCamera:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Lcom/oppo/camera/lomo/LomoCameraLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSpecialCameraLayout:Lcom/oppo/camera/lomo/LomoCameraLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mEffectListener:Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->showToast(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->clickItemToSetEffect(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->saveSetting(II)V

    return-void
.end method

.method private clickItemToSetEffect(II)V
    .locals 3
    .parameter "mainMenu"
    .parameter "select"

    .prologue
    const/4 v2, -0x1

    .line 372
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickMainItem:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickItem:I

    if-ne v0, p2, :cond_1

    .line 373
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mPanelView:Lcom/oppo/camera/lomo/PanelView;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/PanelView;->getAnimationState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mScreenHint:Lcom/oppo/camera/utils/OnScreenHint;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/OnScreenHint;->cancel()V

    .line 375
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCancelHint:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    iput v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickMainItem:I

    .line 377
    iput v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickItem:I

    .line 378
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mEffectListener:Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;

    invoke-interface {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;->setViewVisibles()V

    .line 379
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mEffectListener:Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;

    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;->setShotMode(II)V

    .line 380
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 381
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->setVisibility(I)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->saveSetting(II)V

    .line 385
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mEffectListener:Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;

    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;->setPreviewEffect(II)V

    .line 386
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickMainItem:I

    .line 387
    iput p2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickItem:I

    .line 388
    const v0, 0x7f0a0019

    invoke-direct {p0, v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->showToast(I)V

    goto :goto_0
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 95
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03000b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 96
    const v1, 0x7f0b0046

    invoke-virtual {p0, v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurrentItem:Landroid/widget/ImageView;

    .line 97
    const v1, 0x7f0b0048

    invoke-virtual {p0, v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mPhotoAlbumImage:Landroid/widget/ImageView;

    .line 98
    const v1, 0x7f0b0047

    invoke-virtual {p0, v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCamera:Landroid/widget/ImageView;

    .line 99
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCamera:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCameraListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v1, 0x7f0b0049

    invoke-virtual {p0, v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mPhotoAlbumText:Landroid/widget/TextView;

    .line 102
    const v1, 0x7f0b004a

    invoke-virtual {p0, v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/lomo/LomoCameraLayout;

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSpecialCameraLayout:Lcom/oppo/camera/lomo/LomoCameraLayout;

    .line 103
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSpecialCameraLayout:Lcom/oppo/camera/lomo/LomoCameraLayout;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mMenuSelectedChangeListener:Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/lomo/LomoCameraLayout;->setOnMeunSelectedChangeListener(Lcom/oppo/camera/lomo/LomoCameraLayout$OnMeunSelectedChangeListener;)V

    .line 104
    const v1, 0x7f0b004c

    invoke-virtual {p0, v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/lomo/PanelView;

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mPanelView:Lcom/oppo/camera/lomo/PanelView;

    .line 105
    const v1, 0x7f0b004d

    invoke-virtual {p0, v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItemLayout:Landroid/widget/RelativeLayout;

    .line 106
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->showMenu()V

    .line 107
    return-void
.end method

.method private saveSetting(II)V
    .locals 2
    .parameter "mainValue"
    .parameter "subValue"

    .prologue
    .line 399
    sget-object v0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 400
    sget-object v0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lomo main menu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 401
    sget-object v0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lomo sub menu"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 403
    :cond_0
    return-void
.end method

.method private showToast(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mScreenHint:Lcom/oppo/camera/utils/OnScreenHint;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mScreenHint:Lcom/oppo/camera/utils/OnScreenHint;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mScreenHint:Lcom/oppo/camera/utils/OnScreenHint;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/OnScreenHint;->cancel()V

    .line 87
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mScreenHint:Lcom/oppo/camera/utils/OnScreenHint;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/OnScreenHint;->show()V

    .line 88
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCancelHint:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCancelHint:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    :cond_0
    return-void
.end method

.method private startAnimation()V
    .locals 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 228
    .local v0, animation:Landroid/view/animation/Animation;
    new-instance v1, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$2;-><init>(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 245
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurrentItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 247
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f040004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mContext:Landroid/content/Context;

    const v2, 0x10a0008

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 249
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mPhotoAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 250
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mPhotoAlbumText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 251
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCamera:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCamera:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 254
    :cond_0
    return-void
.end method


# virtual methods
.method public SetChangeEffectListener(Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;)V
    .locals 0
    .parameter "changeEffectListener"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mEffectListener:Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;

    .line 413
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public setBrowseImage(Lcom/oppo/camera/utils/OppoBrowseImage;)V
    .locals 3
    .parameter "bi"

    .prologue
    .line 267
    move-object v0, p1

    .line 269
    .local v0, mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;
    new-instance v1, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$4;

    invoke-direct {v1, p0, v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout$4;-><init>(Lcom/oppo/camera/lomo/LomoCameraMenuLayout;Lcom/oppo/camera/utils/OppoBrowseImage;)V

    .line 295
    .local v1, mPhotoAlbumListener:Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mPhotoAlbumText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    return-void
.end method

.method public showMenu()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/oppo/camera/CommConfig;->CAMERA_SETTING_SHAREPREFERENCE:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 124
    sget-object v1, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 125
    sget-object v1, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "lomo main menu"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 126
    .local v0, temp:I
    iput v0, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickMainItem:I

    .line 127
    sget-object v1, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "lomo sub menu"

    const/4 v3, 0x7

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItemId:I

    .line 128
    iget v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItemId:I

    iput v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    .line 129
    iget v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItemId:I

    iput v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mCurClickItem:I

    .line 130
    packed-switch v0, :pswitch_data_0

    .line 222
    .end local v0           #temp:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mPanelView:Lcom/oppo/camera/lomo/PanelView;

    invoke-virtual {v1}, Lcom/oppo/camera/lomo/PanelView;->enableClick()V

    .line 223
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->startAnimation()V

    .line 224
    invoke-virtual {p0, v4}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->setVisibility(I)V

    .line 225
    return-void

    .line 132
    .restart local v0       #temp:I
    :pswitch_0
    iput v4, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mMainMenuId:I

    .line 133
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCamera:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItemId:I

    sparse-switch v1, :sswitch_data_0

    .line 149
    iput v4, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 136
    :sswitch_0
    iput v4, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 139
    :sswitch_1
    iput v5, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 143
    :sswitch_2
    iput v7, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 146
    :sswitch_3
    iput v7, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 153
    :pswitch_1
    iput v5, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mMainMenuId:I

    .line 154
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCamera:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItemId:I

    packed-switch v1, :pswitch_data_1

    .line 163
    iput v4, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 157
    :pswitch_2
    iput v4, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 160
    :pswitch_3
    iput v6, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 167
    :pswitch_4
    iput v6, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mMainMenuId:I

    .line 168
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCamera:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItemId:I

    packed-switch v1, :pswitch_data_2

    .line 183
    iput v4, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 171
    :pswitch_5
    iput v4, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 174
    :pswitch_6
    iput v5, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 177
    :pswitch_7
    iput v6, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 180
    :pswitch_8
    iput v7, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 187
    :pswitch_9
    iput v7, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mMainMenuId:I

    .line 188
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCamera:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItemId:I

    packed-switch v1, :pswitch_data_3

    .line 203
    iput v4, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 191
    :pswitch_a
    iput v4, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 194
    :pswitch_b
    iput v5, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 197
    :pswitch_c
    iput v6, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 200
    :pswitch_d
    iput v7, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto :goto_0

    .line 207
    :pswitch_e
    const/4 v1, 0x4

    iput v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mMainMenuId:I

    .line 208
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mChangeCamera:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget v1, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItemId:I

    packed-switch v1, :pswitch_data_4

    .line 217
    iput v4, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto/16 :goto_0

    .line 211
    :pswitch_f
    iput v4, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto/16 :goto_0

    .line 214
    :pswitch_10
    iput v6, p0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->mSubItem_Id:I

    goto/16 :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_9
        :pswitch_e
    .end packed-switch

    .line 134
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_3
    .end sparse-switch

    .line 155
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 169
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 189
    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 209
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
