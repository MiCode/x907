.class public Lcom/oppo/camera/setting/IconsPanelController;
.super Ljava/lang/Object;
.source "IconsPanelController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;,
        Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;,
        Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;,
        Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;,
        Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    }
.end annotation


# instance fields
.field private initTrackRunnable:Ljava/lang/Runnable;

.field private isPhotoMode:Z

.field private isRunning:Z

.field private mActionDownPoint:Landroid/graphics/Point;

.field private mActionUpPoint:Landroid/graphics/Point;

.field private mBottomRect:Landroid/graphics/Rect;

.field private mCameraId:I

.field private mCameraSavePath:Ljava/lang/String;

.field private mCameraSettingsChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;

.field private mCameraSoundMode:Ljava/lang/String;

.field private mCameraWheelMenu:Lcom/oppo/camera/setting/CameraSettingsMenu;

.field private mFeatureMode:I

.field private mHandler:Landroid/os/Handler;

.field private mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

.field private mIconTrackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/camera/setting/IconsPanelController$IconPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mIconsAnimationListener:Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;

.field private mInAnimationRunnable:Ljava/lang/Runnable;

.field private mIsClickAvaliable:Z

.field private mIsMoveUpTrigger:Z

.field private mIsVideoCaptureIntent:Z

.field private mLastClickTime:J

.field private mMiddleItemIndex:I

.field private mMiddleRect:Landroid/graphics/Rect;

.field private mOnMenuAnimationListener:Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;

.field private mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

.field private mOneStepAnimation:Ljava/lang/Runnable;

.field private mOutAnimationRunnable:Ljava/lang/Runnable;

.field private mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

.field private mSVGAIconBitmap:Landroid/graphics/Bitmap;

.field private mSettingItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/camera/setting/CameraSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingSharePreferences:Landroid/content/SharedPreferences;

.field private mToDegree:F

.field private mTopRect:Landroid/graphics/Rect;

.field private mVideoFileFormat:Ljava/lang/String;

.field private mVideoRecordMode:Ljava/lang/String;

.field private mVideoSavePath:Ljava/lang/String;

.field private mVideoSettingChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;

.field private mVideoSizeMode:Ljava/lang/String;

.field private mWheelHeadDegree:F


# direct methods
.method public constructor <init>(Lcom/oppo/camera/setting/CameraSettingsMenu;Lcom/oppo/camera/setting/IconsPanelView;)V
    .locals 7
    .parameter "cameraWheelMenu"
    .parameter "iconsPanelView"

    .prologue
    const/16 v6, 0x4b

    const/4 v5, 0x5

    const/high16 v0, 0x42fc

    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mWheelHeadDegree:F

    .line 57
    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mToDegree:F

    .line 123
    new-instance v0, Lcom/oppo/camera/setting/IconsPanelController$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/setting/IconsPanelController$1;-><init>(Lcom/oppo/camera/setting/IconsPanelController;)V

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;

    .line 321
    new-instance v0, Lcom/oppo/camera/setting/IconsPanelController$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/setting/IconsPanelController$2;-><init>(Lcom/oppo/camera/setting/IconsPanelController;)V

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->initTrackRunnable:Ljava/lang/Runnable;

    .line 329
    new-instance v0, Lcom/oppo/camera/setting/IconsPanelController$3;

    invoke-direct {v0, p0}, Lcom/oppo/camera/setting/IconsPanelController$3;-><init>(Lcom/oppo/camera/setting/IconsPanelController;)V

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnMenuAnimationListener:Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;

    .line 377
    new-instance v0, Lcom/oppo/camera/setting/IconsPanelController$4;

    invoke-direct {v0, p0}, Lcom/oppo/camera/setting/IconsPanelController$4;-><init>(Lcom/oppo/camera/setting/IconsPanelController;)V

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOneStepAnimation:Ljava/lang/Runnable;

    .line 457
    new-instance v0, Lcom/oppo/camera/setting/IconsPanelController$5;

    invoke-direct {v0, p0}, Lcom/oppo/camera/setting/IconsPanelController$5;-><init>(Lcom/oppo/camera/setting/IconsPanelController;)V

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mInAnimationRunnable:Ljava/lang/Runnable;

    .line 489
    new-instance v0, Lcom/oppo/camera/setting/IconsPanelController$6;

    invoke-direct {v0, p0}, Lcom/oppo/camera/setting/IconsPanelController$6;-><init>(Lcom/oppo/camera/setting/IconsPanelController;)V

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOutAnimationRunnable:Ljava/lang/Runnable;

    .line 613
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mLastClickTime:J

    .line 892
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x2d

    const/16 v2, 0x73

    invoke-direct {v0, v5, v1, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mTopRect:Landroid/graphics/Rect;

    .line 893
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x3c

    const/16 v2, 0x96

    const/16 v3, 0x82

    const/16 v4, 0xdc

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleRect:Landroid/graphics/Rect;

    .line 894
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0xfa

    const/16 v2, 0x140

    invoke-direct {v0, v5, v1, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mBottomRect:Landroid/graphics/Rect;

    .line 164
    invoke-virtual {p1}, Lcom/oppo/camera/setting/CameraSettingsMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oppo/camera/CommConfig;->CAMERA_SETTING_SHAREPREFERENCE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    .line 165
    iput-object p1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraWheelMenu:Lcom/oppo/camera/setting/CameraSettingsMenu;

    .line 166
    iput-object p2, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

    .line 167
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/setting/IconsPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/IconsPanelView;->getSettingItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    .line 169
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->init()V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/camera/setting/IconsPanelController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mInAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/camera/setting/IconsPanelController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOutAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oppo/camera/setting/IconsPanelController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mWheelHeadDegree:F

    return v0
.end method

.method static synthetic access$1002(Lcom/oppo/camera/setting/IconsPanelController;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mWheelHeadDegree:F

    return p1
.end method

.method static synthetic access$1016(Lcom/oppo/camera/setting/IconsPanelController;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iget v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mWheelHeadDegree:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mWheelHeadDegree:F

    return v0
.end method

.method static synthetic access$1024(Lcom/oppo/camera/setting/IconsPanelController;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iget v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mWheelHeadDegree:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mWheelHeadDegree:F

    return v0
.end method

.method static synthetic access$1102(Lcom/oppo/camera/setting/IconsPanelController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/oppo/camera/setting/IconsPanelController;->isRunning:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/oppo/camera/setting/IconsPanelController;F)Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oppo/camera/setting/IconsPanelController;->searchPosition(F)Lcom/oppo/camera/setting/IconsPanelController$IconPosition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oppo/camera/setting/IconsPanelController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->getFirstItem()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/oppo/camera/setting/IconsPanelController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->getLastItem()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/oppo/camera/setting/IconsPanelController;)Lcom/oppo/camera/setting/IconsPanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oppo/camera/setting/IconsPanelController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mToDegree:F

    return v0
.end method

.method static synthetic access$1700(Lcom/oppo/camera/setting/IconsPanelController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->resetIconPosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/camera/setting/IconsPanelController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOneStepAnimation:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oppo/camera/setting/IconsPanelController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIsClickAvaliable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/camera/setting/IconsPanelController;)Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIconsAnimationListener:Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/camera/setting/IconsPanelController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/oppo/camera/setting/IconsPanelController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I

    return p1
.end method

.method static synthetic access$508(Lcom/oppo/camera/setting/IconsPanelController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I

    return v0
.end method

.method static synthetic access$510(Lcom/oppo/camera/setting/IconsPanelController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/oppo/camera/setting/IconsPanelController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->initTrack()V

    return-void
.end method

.method static synthetic access$700(Lcom/oppo/camera/setting/IconsPanelController;)Lcom/oppo/camera/setting/CameraSettingsMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraWheelMenu:Lcom/oppo/camera/setting/CameraSettingsMenu;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/camera/setting/IconsPanelController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/camera/setting/IconsPanelController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIsMoveUpTrigger:Z

    return v0
.end method

.method private getClickedSettingName(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->getLastItem()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 898
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->getFirstItem()I

    move-result p1

    .line 902
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 899
    .restart local p1
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->getFirstItem()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 900
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->getLastItem()I

    move-result p1

    goto :goto_0
.end method

.method private getFirstItem()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 455
    iget-boolean v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->isPhotoMode:Z

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static getIconPositionInstance()Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    .locals 1

    .prologue
    .line 956
    new-instance v0, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;

    invoke-direct {v0}, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;-><init>()V

    return-object v0
.end method

.method private getLastItem()I
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 451
    iget-boolean v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->isPhotoMode:Z

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method private handAction()V
    .locals 3

    .prologue
    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIsClickAvaliable:Z

    .line 573
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionDownPoint:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionUpPoint:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraWheelMenu:Lcom/oppo/camera/setting/CameraSettingsMenu;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->isExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->isRunning:Z

    if-eqz v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionUpPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionDownPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 584
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionUpPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionDownPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    const/16 v1, -0x14

    if-lt v0, v1, :cond_0

    .line 591
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mBottomRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionUpPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionUpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraWheelMenu:Lcom/oppo/camera/setting/CameraSettingsMenu;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 596
    iget v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/oppo/camera/setting/IconsPanelController;->getClickedSettingName(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/IconsPanelController;->onSettingChanged(I)V

    .line 610
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/IconsPanelView;->invalidate()V

    goto :goto_0

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mTopRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionUpPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionUpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraWheelMenu:Lcom/oppo/camera/setting/CameraSettingsMenu;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 602
    iget v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/camera/setting/IconsPanelController;->getClickedSettingName(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/IconsPanelController;->onSettingChanged(I)V

    goto :goto_1

    .line 603
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionUpPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionUpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraWheelMenu:Lcom/oppo/camera/setting/CameraSettingsMenu;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    iget v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I

    invoke-direct {p0, v0}, Lcom/oppo/camera/setting/IconsPanelController;->getClickedSettingName(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/setting/IconsPanelController;->onSettingChanged(I)V

    goto :goto_1
.end method

.method private hideSVGAIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1036
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSVGAIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSVGAIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/IconsPanelView;->getSettingItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSVGAIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->setIsDrawSVGA(ZLandroid/graphics/Bitmap;)V

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    const-string v1, "vdieo size mode"

    const-string v2, "720p"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSizeMode:Ljava/lang/String;

    .line 1040
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSizeMode:Ljava/lang/String;

    const-string v1, "720p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->setValue(I)V

    .line 1045
    :goto_0
    return-void

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->setValue(I)V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraWheelMenu:Lcom/oppo/camera/setting/CameraSettingsMenu;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->getMenuMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->isPhotoMode:Z

    .line 174
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->initSettings()V

    .line 175
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->initTrackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionDownPoint:Landroid/graphics/Point;

    .line 177
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionUpPoint:Landroid/graphics/Point;

    .line 178
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraWheelMenu:Lcom/oppo/camera/setting/CameraSettingsMenu;

    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnMenuAnimationListener:Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingsMenu;->setOnMenuAnimationListener(Lcom/oppo/camera/setting/CameraSettingsMenu$OnWheelStateChangedListener;)V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIconTrackList:Ljava/util/ArrayList;

    .line 180
    return-void
.end method

.method private initCameraItemState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 238
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraSoundMode:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->setValue(I)V

    .line 244
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->resetFeature()V

    .line 245
    iget v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraId:I

    if-eq v0, v2, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->initFeature()V

    .line 248
    :cond_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->setValue(I)V

    goto :goto_0
.end method

.method private initFeature()V
    .locals 2

    .prologue
    .line 251
    iget v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mFeatureMode:I

    packed-switch v0, :pswitch_data_0

    .line 265
    :goto_0
    :pswitch_0
    return-void

    .line 253
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->setValue(I)V

    goto :goto_0

    .line 259
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->setValue(I)V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera sound mode"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraSoundMode:Ljava/lang/String;

    .line 185
    iget-boolean v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->isPhotoMode:Z

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera save mode"

    sget-object v2, Lcom/oppo/camera/CommConfig;->INTERNAL_IMG_PATH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraSavePath:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera feature mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mFeatureMode:I

    .line 190
    iget v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mFeatureMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 191
    iput v3, p0, Lcom/oppo/camera/setting/IconsPanelController;->mFeatureMode:I

    .line 192
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera feature mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera_middle_item_index"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I

    .line 199
    iget v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I

    if-eqz v0, :cond_1

    .line 200
    iput v3, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I

    .line 201
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_middle_item_index"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera face mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraId:I

    .line 206
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->initCameraItemState()V

    .line 224
    :goto_0
    return-void

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    const-string v1, "vdieo size mode"

    const-string v2, "720p"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSizeMode:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    const-string v1, "video save mode"

    sget-object v2, Lcom/oppo/camera/CommConfig;->INTERNAL_VID_PATH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSavePath:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    const-string v1, "video file format mode"

    const-string v2, ".3gp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoFileFormat:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    const-string v1, "vdieo record mode"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoRecordMode:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    const-string v1, "video_middle_item_index"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I

    .line 213
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    const-string v1, "video face mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraId:I

    .line 214
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->initVideoItemState()V

    .line 216
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraWheelMenu:Lcom/oppo/camera/setting/CameraSettingsMenu;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/CameraSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSVGAIconBitmap:Landroid/graphics/Bitmap;

    .line 217
    iget v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraId:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_4

    .line 218
    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->showSVGAIcon()V

    goto :goto_0

    .line 220
    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->hideSVGAIcon()V

    goto :goto_0
.end method

.method private initTrack()V
    .locals 15

    .prologue
    .line 523
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v7, 0xb5

    if-ge v1, v7, :cond_0

    .line 524
    const/high16 v7, 0x4000

    int-to-float v8, v1

    mul-float v0, v7, v8

    .line 525
    .local v0, curDegree:F
    const-wide v7, 0x405f400000000000L

    float-to-double v9, v0

    const-wide v11, 0x400921fb54442d18L

    mul-double/2addr v9, v11

    const-wide v11, 0x4066800000000000L

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    const-wide v9, 0x4041800000000000L

    sub-double/2addr v7, v9

    const-wide/high16 v9, 0x403e

    sub-double v3, v7, v9

    .line 526
    .local v3, x:D
    const-wide/high16 v7, 0x405e

    const-wide v9, 0x405f400000000000L

    float-to-double v11, v0

    const-wide v13, 0x400921fb54442d18L

    mul-double/2addr v11, v13

    const-wide v13, 0x4066800000000000L

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    const-wide/high16 v9, 0x404e

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x403e

    sub-double v5, v7, v9

    .line 528
    .local v5, y:D
    new-instance v2, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;

    invoke-direct {v2}, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;-><init>()V

    .line 529
    .local v2, position:Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    double-to-float v7, v3

    iput v7, v2, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;->mLeft:F

    .line 530
    double-to-float v7, v5

    iput v7, v2, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;->mTop:F

    .line 531
    iget-object v7, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIconTrackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    .end local v0           #curDegree:F
    .end local v2           #position:Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    .end local v3           #x:D
    .end local v5           #y:D
    :cond_0
    return-void
.end method

.method private initVideoItemState()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoFileFormat:Ljava/lang/String;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->setValue(I)V

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSizeMode:Ljava/lang/String;

    const-string v1, "720p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->setValue(I)V

    .line 285
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoRecordMode:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->setValue(I)V

    .line 291
    :goto_2
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->setValue(I)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->setValue(I)V

    goto :goto_1

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->setValue(I)V

    goto :goto_2
.end method

.method private resetFeature()V
    .locals 2

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->setValue(I)V

    .line 1049
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->setValue(I)V

    .line 1051
    return-void
.end method

.method private resetFeatureSetting(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 887
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/setting/CameraSettingItem;

    invoke-virtual {v1}, Lcom/oppo/camera/setting/CameraSettingItem;->getValue()I

    move-result v0

    .line 888
    .local v0, temp:I
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->resetFeature()V

    .line 889
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/setting/CameraSettingItem;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/setting/CameraSettingItem;->setValue(I)V

    .line 890
    return-void
.end method

.method private resetIconPosition()V
    .locals 4

    .prologue
    const/high16 v3, 0x42fc

    .line 537
    iput v3, p0, Lcom/oppo/camera/setting/IconsPanelController;->mWheelHeadDegree:F

    .line 538
    iput v3, p0, Lcom/oppo/camera/setting/IconsPanelController;->mToDegree:F

    .line 539
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

    invoke-virtual {v2}, Lcom/oppo/camera/setting/IconsPanelView;->getIconPositionsList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 540
    invoke-direct {p0, v3}, Lcom/oppo/camera/setting/IconsPanelController;->searchPosition(F)Lcom/oppo/camera/setting/IconsPanelController$IconPosition;

    move-result-object v1

    .line 541
    .local v1, iconPosition:Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    iget-object v2, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

    invoke-virtual {v2}, Lcom/oppo/camera/setting/IconsPanelView;->getIconPositionsList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    .end local v1           #iconPosition:Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    :cond_0
    return-void
.end method

.method private searchPosition(F)Lcom/oppo/camera/setting/IconsPanelController$IconPosition;
    .locals 3
    .parameter "angle"

    .prologue
    const/high16 v2, 0x43b4

    .line 367
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    rem-float/2addr p1, v2

    .line 368
    :goto_0
    const/high16 v1, 0x4000

    div-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 369
    .local v0, index:I
    if-ltz v0, :cond_0

    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    .line 370
    :cond_0
    const/high16 v1, 0x42fc

    invoke-direct {p0, v1}, Lcom/oppo/camera/setting/IconsPanelController;->searchPosition(F)Lcom/oppo/camera/setting/IconsPanelController$IconPosition;

    move-result-object v1

    .line 372
    :goto_1
    return-object v1

    .line 367
    .end local v0           #index:I
    :cond_1
    rem-float v1, p1, v2

    add-float p1, v1, v2

    goto :goto_0

    .line 372
    .restart local v0       #index:I
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIconTrackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/setting/IconsPanelController$IconPosition;

    goto :goto_1
.end method

.method private showSVGAIcon()V
    .locals 3

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSVGAIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSVGAIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIconPanelView:Lcom/oppo/camera/setting/IconsPanelView;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/IconsPanelView;->getSettingItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSVGAIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/setting/CameraSettingItem;->setIsDrawSVGA(ZLandroid/graphics/Bitmap;)V

    .line 1033
    :cond_0
    return-void
.end method


# virtual methods
.method public changeVisibility(Z)V
    .locals 2
    .parameter "isExpand"

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    const/high16 v0, 0x42fc

    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mToDegree:F

    .line 346
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 348
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->isRunning:Z

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-boolean v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->isPhotoMode:Z

    if-eqz v0, :cond_0

    const-string v0, "camera_middle_item_index"

    :goto_0
    iget v2, p0, Lcom/oppo/camera/setting/IconsPanelController;->mMiddleItemIndex:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 319
    return-void

    .line 317
    :cond_0
    const-string v0, "video_middle_item_index"

    goto :goto_0
.end method

.method public onSettingChanged(I)V
    .locals 7
    .parameter "settingName"

    .prologue
    const/16 v6, 0xa

    const/16 v2, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 624
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/CameraSettingItem;

    .line 625
    .local v0, curItem:Lcom/oppo/camera/setting/CameraSettingItem;
    iget-boolean v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->isPhotoMode:Z

    if-eqz v1, :cond_12

    .line 626
    packed-switch p1, :pswitch_data_0

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 662
    :pswitch_0
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    invoke-virtual {v1}, Lcom/oppo/camera/utils/PlayEffectSound;->getRingerMode()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 665
    invoke-virtual {v0}, Lcom/oppo/camera/setting/CameraSettingItem;->getValue()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 666
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->onSettingChanged(I)V

    .line 667
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    if-eqz v1, :cond_1

    .line 668
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v2, 0x7f0a004c

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraSettingsChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;

    if-eqz v1, :cond_2

    .line 671
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraSettingsChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;

    const-string v2, "off"

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;->onSoundStateChanged(Ljava/lang/String;)V

    .line 673
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/utils/PlayEffectSound;->setShutterSound(Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "camera sound mode"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 676
    :cond_3
    invoke-virtual {v0, v6}, Lcom/oppo/camera/setting/CameraSettingItem;->onSettingChanged(I)V

    .line 677
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    if-eqz v1, :cond_4

    .line 678
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v2, 0x7f0a004b

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    .line 680
    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraSettingsChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;

    if-eqz v1, :cond_5

    .line 681
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraSettingsChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;

    const-string v2, "on"

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;->onSoundStateChanged(Ljava/lang/String;)V

    .line 683
    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    const-string v2, "on"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/utils/PlayEffectSound;->setShutterSound(Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "camera sound mode"

    const-string v3, "on"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 688
    :pswitch_1
    iget v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraId:I

    if-ne v1, v4, :cond_6

    .line 689
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    if-eqz v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v2, 0x7f0a001d

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    goto/16 :goto_0

    .line 694
    :cond_6
    invoke-direct {p0, v3}, Lcom/oppo/camera/setting/IconsPanelController;->resetFeatureSetting(I)V

    .line 695
    invoke-virtual {v0}, Lcom/oppo/camera/setting/CameraSettingItem;->getValue()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 696
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->onSettingChanged(I)V

    .line 697
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    if-eqz v1, :cond_7

    .line 698
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v2, 0x7f0a0059

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    .line 700
    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraSettingsChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;

    if-eqz v1, :cond_8

    .line 701
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraSettingsChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;

    invoke-interface {v1, v3}, Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;->onFeatureModeChanged(I)V

    .line 703
    :cond_8
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "camera feature mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 705
    :cond_9
    invoke-virtual {v0, v2}, Lcom/oppo/camera/setting/CameraSettingItem;->onSettingChanged(I)V

    .line 706
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    if-eqz v1, :cond_a

    .line 707
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v2, 0x7f0a0058

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    .line 709
    :cond_a
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraSettingsChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;

    if-eqz v1, :cond_b

    .line 710
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraSettingsChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;

    invoke-interface {v1, v4}, Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;->onFeatureModeChanged(I)V

    .line 712
    :cond_b
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "camera feature mode"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 744
    :pswitch_2
    iget v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraId:I

    if-ne v1, v4, :cond_c

    .line 745
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v2, 0x7f0a001e

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    goto/16 :goto_0

    .line 750
    :cond_c
    invoke-direct {p0, v5}, Lcom/oppo/camera/setting/IconsPanelController;->resetFeatureSetting(I)V

    .line 751
    invoke-virtual {v0}, Lcom/oppo/camera/setting/CameraSettingItem;->getValue()I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_f

    .line 752
    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->onSettingChanged(I)V

    .line 753
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    if-eqz v1, :cond_d

    .line 754
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v2, 0x7f0a0055

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    .line 756
    :cond_d
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraSettingsChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;

    if-eqz v1, :cond_e

    .line 757
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraSettingsChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;

    invoke-interface {v1, v3}, Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;->onFeatureModeChanged(I)V

    .line 759
    :cond_e
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "camera feature mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 761
    :cond_f
    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->onSettingChanged(I)V

    .line 762
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    if-eqz v1, :cond_10

    .line 763
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v2, 0x7f0a0054

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    .line 765
    :cond_10
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraSettingsChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;

    if-eqz v1, :cond_11

    .line 766
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraSettingsChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;

    invoke-interface {v1, v5}, Lcom/oppo/camera/setting/IconsPanelController$OnCameraSettingsChangedListener;->onFeatureModeChanged(I)V

    .line 768
    :cond_11
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "camera feature mode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 776
    :cond_12
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 856
    :pswitch_3
    iget v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraId:I

    if-eq v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_0

    .line 859
    invoke-virtual {v0}, Lcom/oppo/camera/setting/CameraSettingItem;->getValue()I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_1f

    .line 860
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->onSettingChanged(I)V

    .line 861
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    if-eqz v1, :cond_13

    .line 862
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v2, 0x7f0a0064

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    .line 864
    :cond_13
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSettingChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;

    if-eqz v1, :cond_14

    .line 865
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSettingChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;

    const-string v2, "1080p"

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;->onVideoSizeChanged(Ljava/lang/String;)V

    .line 867
    :cond_14
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vdieo size mode"

    const-string v3, "1080p"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 814
    :pswitch_4
    invoke-virtual {v0}, Lcom/oppo/camera/setting/CameraSettingItem;->getValue()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_17

    .line 815
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->onSettingChanged(I)V

    .line 816
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    if-eqz v1, :cond_15

    .line 817
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v2, 0x7f0a005e

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    .line 819
    :cond_15
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSettingChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;

    if-eqz v1, :cond_16

    .line 820
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSettingChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;

    const-string v2, ".mp4"

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;->onFileFormatStateChanged(Ljava/lang/String;)V

    .line 822
    :cond_16
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "video file format mode"

    const-string v3, ".mp4"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 824
    :cond_17
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->onSettingChanged(I)V

    .line 825
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    if-eqz v1, :cond_18

    .line 826
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v2, 0x7f0a005f

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    .line 828
    :cond_18
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSettingChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;

    if-eqz v1, :cond_19

    .line 829
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSettingChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;

    const-string v2, ".3gp"

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;->onFileFormatStateChanged(Ljava/lang/String;)V

    .line 831
    :cond_19
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "video file format mode"

    const-string v3, ".3gp"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 835
    :pswitch_5
    invoke-virtual {v0}, Lcom/oppo/camera/setting/CameraSettingItem;->getValue()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1c

    .line 836
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->onSettingChanged(I)V

    .line 837
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    if-eqz v1, :cond_1a

    .line 838
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v2, 0x7f0a0063

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    .line 840
    :cond_1a
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSettingChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;

    if-eqz v1, :cond_1b

    .line 841
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSettingChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;

    const-string v2, "off"

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;->onAudioRecordStateChanged(Ljava/lang/String;)V

    .line 843
    :cond_1b
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vdieo record mode"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 845
    :cond_1c
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->onSettingChanged(I)V

    .line 846
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    if-eqz v1, :cond_1d

    .line 847
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v2, 0x7f0a0062

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    .line 849
    :cond_1d
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSettingChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;

    if-eqz v1, :cond_1e

    .line 850
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSettingChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;

    const-string v2, "on"

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;->onAudioRecordStateChanged(Ljava/lang/String;)V

    .line 852
    :cond_1e
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vdieo record mode"

    const-string v3, "on"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 869
    :cond_1f
    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/CameraSettingItem;->onSettingChanged(I)V

    .line 870
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    if-eqz v1, :cond_20

    .line 871
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v2, 0x7f0a0065

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    .line 873
    :cond_20
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSettingChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;

    if-eqz v1, :cond_21

    .line 874
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mVideoSettingChangedListener:Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;

    const-string v2, "720p"

    invoke-interface {v1, v2}, Lcom/oppo/camera/setting/IconsPanelController$OnVideoSettingChangedListener;->onVideoSizeChanged(Ljava/lang/String;)V

    .line 876
    :cond_21
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mSettingSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vdieo size mode"

    const-string v3, "720p"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 626
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 776
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 547
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mCameraWheelMenu:Lcom/oppo/camera/setting/CameraSettingsMenu;

    invoke-virtual {v1}, Lcom/oppo/camera/setting/CameraSettingsMenu;->isExpand()Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    const/4 v0, 0x0

    .line 564
    :goto_0
    return v0

    .line 550
    :cond_0
    iput-boolean v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIsClickAvaliable:Z

    .line 551
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 554
    :pswitch_0
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionDownPoint:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 557
    :pswitch_1
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionUpPoint:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 558
    iget-object v1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mActionUpPoint:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 559
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->handAction()V

    goto :goto_0

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIconsAnimationListener(Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;)V
    .locals 0
    .parameter "iconsAnimationListener"

    .prologue
    .line 965
    iput-object p1, p0, Lcom/oppo/camera/setting/IconsPanelController;->mIconsAnimationListener:Lcom/oppo/camera/setting/IconsPanelController$OnIconAnimationListener;

    .line 966
    return-void
.end method

.method public startArrangeIcons()V
    .locals 2

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/oppo/camera/setting/IconsPanelController;->resetIconPosition()V

    .line 355
    const/high16 v0, -0x3da8

    iput v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mToDegree:F

    .line 356
    iget-object v0, p0, Lcom/oppo/camera/setting/IconsPanelController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 357
    return-void
.end method
