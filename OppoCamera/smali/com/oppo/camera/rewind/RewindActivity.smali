.class public Lcom/oppo/camera/rewind/RewindActivity;
.super Landroid/app/Activity;
.source "RewindActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/RewindActivity$TouchAFCallback;,
        Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;,
        Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;,
        Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;,
        Lcom/oppo/camera/rewind/RewindActivity$MyAutoFocusCallback;,
        Lcom/oppo/camera/rewind/RewindActivity$MediaScannerNotifier;,
        Lcom/oppo/camera/rewind/RewindActivity$MyHandler;,
        Lcom/oppo/camera/rewind/RewindActivity$MyTopbarListener;,
        Lcom/oppo/camera/rewind/RewindActivity$MyIndexListener;,
        Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;,
        Lcom/oppo/camera/rewind/RewindActivity$MyPostviewCallback;,
        Lcom/oppo/camera/rewind/RewindActivity$MyRawCallback;,
        Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;,
        Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;,
        Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;,
        Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;
    }
.end annotation


# static fields
.field private static FOCUSAREA_RIGHT:I

.field public static OFF:Ljava/lang/String;

.field public static ON:Ljava/lang/String;

.field public static mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;


# instance fields
.field private mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

.field private mBurstJpegCallback:Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;

.field private mCameraInterface:Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;

.field private mCancelCommitBtn:Lcom/oppo/camera/views/RotateImageView;

.field private mCancelSaveBtn:Lcom/oppo/camera/views/RotateImageView;

.field private mCapturingEnabled:Z

.field private mCommitBtn:Lcom/oppo/camera/views/RotateImageView;

.field private mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

.field private final mContinuousAfCallback:Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;

.field private mContinuousAfState:Ljava/lang/String;

.field private mFCamera:Lcom/scalado/camera/FeatureCamera;

.field private mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

.field private mFaceChanged:Z

.field private mFocusState:I

.field private mFocusView:Lcom/oppo/camera/views/FocusView;

.field private mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

.field private mHint:Lcom/oppo/camera/utils/OnScreenHint;

.field private mIndexSelector:Lcom/oppo/camera/rewind/IndexSelector;

.field private mIsRunning:Z

.field private mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

.field private mLomoControl:Landroid/view/View;

.field private mLomoModeBtn:Lcom/oppo/camera/views/RotateImageView;

.field private mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

.field private mMoveType:I

.field private mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;

.field private mPreviewCallback:Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;

.field private mPreviewFormat:I

.field private mPreviewSurfaceView:Landroid/view/SurfaceView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

.field private mRewindControl:Landroid/view/View;

.field private mRewindSurfaceView:Landroid/view/SurfaceView;

.field private mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

.field private mSaveBtn:Lcom/oppo/camera/views/RotateImageView;

.field private mSavePath:Ljava/lang/String;

.field private mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

.field private mSettingsPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

.field private mShutterCallback:Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;

.field private mShutterSound:Ljava/lang/String;

.field private mStartSpan:F

.field private mStartZoomValue:I

.field private mStorageManager:Lcom/oppo/camera/utils/StorageManager;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

.field private mTopbar:Lcom/oppo/camera/rewind/Topbar;

.field private mTouchAFCallback:Lcom/oppo/camera/rewind/RewindActivity$TouchAFCallback;

.field private mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

.field private mZoomArrayLength:I

.field private mZoomImage:Landroid/widget/ImageView;

.field private mZoomLayout:Landroid/widget/RelativeLayout;

.field private mZoomMax:I

.field protected mZoomRatios:[F

.field private mZoomText:Lcom/oppo/camera/views/RotateZoomView;

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0x2b7

    sput v0, Lcom/oppo/camera/rewind/RewindActivity;->FOCUSAREA_RIGHT:I

    .line 158
    const-string v0, "on"

    sput-object v0, Lcom/oppo/camera/rewind/RewindActivity;->ON:Ljava/lang/String;

    .line 159
    const-string v0, "off"

    sput-object v0, Lcom/oppo/camera/rewind/RewindActivity;->OFF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    new-instance v0, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;-><init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCameraInterface:Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;

    .line 116
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIsRunning:Z

    .line 117
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCapturingEnabled:Z

    .line 140
    new-instance v0, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;-><init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    .line 148
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mStartSpan:F

    .line 155
    new-instance v0, Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mContinuousAfCallback:Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;

    .line 156
    new-instance v0, Lcom/oppo/camera/rewind/RewindActivity$TouchAFCallback;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/rewind/RewindActivity$TouchAFCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mTouchAFCallback:Lcom/oppo/camera/rewind/RewindActivity$TouchAFCallback;

    .line 157
    sget-object v0, Lcom/oppo/camera/rewind/RewindActivity;->OFF:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mContinuousAfState:Ljava/lang/String;

    .line 164
    iput v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mMoveType:I

    .line 168
    iput v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusState:I

    .line 175
    new-instance v0, Lcom/oppo/camera/rewind/RewindActivity$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/rewind/RewindActivity$1;-><init>(Lcom/oppo/camera/rewind/RewindActivity;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFaceChanged:Z

    .line 233
    new-instance v0, Lcom/oppo/camera/rewind/RewindActivity$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/rewind/RewindActivity$2;-><init>(Lcom/oppo/camera/rewind/RewindActivity;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    .line 1067
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mOrientation:I

    .line 1069
    iput v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mOrientationCompensation:I

    .line 1548
    new-instance v0, Lcom/oppo/camera/rewind/RewindActivity$3;

    invoke-direct {v0, p0}, Lcom/oppo/camera/rewind/RewindActivity$3;-><init>(Lcom/oppo/camera/rewind/RewindActivity;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/oppo/camera/rewind/RewindActivity;Lcom/scalado/camera/FeatureCamera;)Lcom/scalado/camera/FeatureCamera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mBurstJpegCallback:Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;)Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mBurstJpegCallback:Lcom/oppo/camera/rewind/RewindActivity$MyJpegCallback;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->showShutterControlBar()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->openCamera()V

    return-void
.end method

.method static synthetic access$1500(Lcom/oppo/camera/rewind/RewindActivity;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oppo/camera/rewind/RewindActivity;Landroid/view/SurfaceView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity;->setPreviewDisplay(Landroid/view/SurfaceView;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mContinuousAfCallback:Lcom/oppo/camera/rewind/RewindActivity$ContinuousAfCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/scalado/camera/FeatureCamera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/oppo/camera/rewind/RewindActivity;Lcom/scalado/camera/FeatureCamera$Parameters;)Lcom/scalado/camera/FeatureCamera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mPreviewCallback:Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/oppo/camera/rewind/RewindActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCapturingEnabled:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->turnOnContiniousAF()V

    return-void
.end method

.method static synthetic access$2400(Lcom/oppo/camera/rewind/RewindActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/oppo/camera/rewind/RewindActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->turnOffContiniousAF()V

    return-void
.end method

.method static synthetic access$2600(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mShutterCallback:Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;)Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mShutterCallback:Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/oppo/camera/rewind/RewindActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mOrientation:I

    return v0
.end method

.method static synthetic access$3002(Lcom/oppo/camera/rewind/RewindActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mOrientation:I

    return p1
.end method

.method static synthetic access$3100(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->loadImages()V

    return-void
.end method

.method static synthetic access$3300(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/app/RewindApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCameraInterface:Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/IndexSelector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIndexSelector:Lcom/oppo/camera/rewind/IndexSelector;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/Topbar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mTopbar:Lcom/oppo/camera/rewind/Topbar;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->showRewindControlBar()V

    return-void
.end method

.method static synthetic access$3800(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->refreshThumbNail()V

    return-void
.end method

.method static synthetic access$3900(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/RewindActivity$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/camera/rewind/RewindActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity;->showHintView(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/app/RewindViewer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->onStartShowWheel()V

    return-void
.end method

.method static synthetic access$4200(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->onEndShowWheel()V

    return-void
.end method

.method static synthetic access$4300(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->onStartHideWheel()V

    return-void
.end method

.method static synthetic access$4400(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->onEndHideWheel()V

    return-void
.end method

.method static synthetic access$4500(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->doSafeSetParameters()V

    return-void
.end method

.method static synthetic access$4602(Lcom/oppo/camera/rewind/RewindActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mContinuousAfState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/oppo/camera/rewind/RewindActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/oppo/camera/rewind/RewindActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$4802(Lcom/oppo/camera/rewind/RewindActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$4900(Lcom/oppo/camera/rewind/RewindActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/views/RotateZoomView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/oppo/camera/rewind/RewindActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mStartSpan:F

    return v0
.end method

.method static synthetic access$5102(Lcom/oppo/camera/rewind/RewindActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mStartSpan:F

    return p1
.end method

.method static synthetic access$5200(Lcom/oppo/camera/rewind/RewindActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mStartZoomValue:I

    return v0
.end method

.method static synthetic access$5202(Lcom/oppo/camera/rewind/RewindActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mStartZoomValue:I

    return p1
.end method

.method static synthetic access$5300(Lcom/oppo/camera/rewind/RewindActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomMax:I

    return v0
.end method

.method static synthetic access$5400(Lcom/oppo/camera/rewind/RewindActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity;->setZoomValue(I)V

    return-void
.end method

.method static synthetic access$5502(Lcom/oppo/camera/rewind/RewindActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mMoveType:I

    return p1
.end method

.method static synthetic access$5600(Lcom/oppo/camera/rewind/RewindActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomValue:I

    return v0
.end method

.method static synthetic access$5700(Lcom/oppo/camera/rewind/RewindActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/oppo/camera/rewind/RewindActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusState:I

    return p1
.end method

.method static synthetic access$5900(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/views/FocusView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/oppo/camera/rewind/RewindActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/RewindActivity;->playFocusSound(Z)V

    return-void
.end method

.method static synthetic access$6100(Lcom/oppo/camera/rewind/RewindActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->turnOnContiniousAFDelayed()V

    return-void
.end method

.method private bitmapFromAssets(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "name"

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 410
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 414
    :goto_0
    return-object v0

    .line 411
    :catch_0
    move-exception v1

    .line 412
    .local v1, ioe:Ljava/io/IOException;
    const-string v2, "RewindActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private brightnessMax()V
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 275
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 276
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 277
    return-void
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 643
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 644
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createViewerConfig()Lcom/oppo/camera/rewind/app/RewindViewerConfig;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f00

    .line 434
    new-instance v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    invoke-direct {v1}, Lcom/oppo/camera/rewind/app/RewindViewerConfig;-><init>()V

    .line 435
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mTopbar:Lcom/oppo/camera/rewind/Topbar;

    iput-object v0, v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

    .line 436
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIndexSelector:Lcom/oppo/camera/rewind/IndexSelector;

    iput-object v0, v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->indexSelector:Lcom/oppo/camera/rewind/app/ExtIndexSelector;

    .line 443
    sget v0, Lcom/oppo/camera/rewind/Config;->burstSize:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 444
    const-string v0, "rewind_wheel.png"

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->bitmapFromAssets(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 448
    :goto_0
    const-string v2, "rewind_wheel_selecter.png"

    invoke-direct {p0, v2}, Lcom/oppo/camera/rewind/RewindActivity;->bitmapFromAssets(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 450
    iput-object v0, v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->wheelBitmap:Landroid/graphics/Bitmap;

    .line 451
    iput-object v2, v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->wheelIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 454
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->relCenter:Landroid/graphics/PointF;

    .line 455
    const v0, 0x3ed70a3d

    iput v0, v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->relR:F

    .line 456
    const v0, 0x3d80bb3f

    iput v0, v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->relRimW:F

    .line 457
    const v0, 0x3f57a91d

    iput v0, v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->indicatorY:F

    .line 458
    const v0, 0x3d6a0ea1

    iput v0, v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->indicatorExtraY:F

    .line 460
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 461
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 462
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 463
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b7

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 465
    iput-object v0, v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->jobbingBitmap:Landroid/graphics/Bitmap;

    .line 467
    sget v0, Lcom/oppo/camera/rewind/Config;->rewindMode:I

    iput v0, v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->mMode:I

    .line 468
    return-object v1

    .line 446
    :cond_0
    const-string v0, "rewind_wheel_no_holes.png"

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->bitmapFromAssets(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private doSafeSetParameters()V
    .locals 3

    .prologue
    .line 1516
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v1, v2}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    :goto_0
    return-void

    .line 1517
    :catch_0
    move-exception v0

    .line 1518
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1519
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->showCameraErrorAndFinish()V

    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 1103
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1104
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 1114
    :goto_0
    :pswitch_0
    return v1

    .line 1108
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 1110
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 1112
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 1104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getZoomRatios()[F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1321
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    .line 1323
    if-eqz v3, :cond_1

    .line 1324
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [F

    move v1, v0

    .line 1325
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 1326
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x42c8

    div-float/2addr v0, v4

    aput v0, v2, v1

    .line 1325
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1328
    :cond_0
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, 0x4080

    aput v1, v2, v0

    .line 1329
    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    const v1, 0x40766666

    aput v1, v2, v0

    move-object v0, v2

    .line 1337
    :goto_1
    return-object v0

    .line 1333
    :cond_1
    iget v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomMax:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [F

    .line 1334
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1335
    const/high16 v2, 0x3f80

    int-to-float v3, v0

    const v4, 0x3e4ccccd

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 1334
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 1337
    goto :goto_1
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 345
    const v3, 0x7f030012

    invoke-virtual {p0, v3}, Lcom/oppo/camera/rewind/RewindActivity;->setContentView(I)V

    .line 347
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->initControlBar()V

    .line 348
    const v3, 0x7f0b001c

    invoke-virtual {p0, v3}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    .line 349
    const v3, 0x7f0b0052

    invoke-virtual {p0, v3}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iput-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindSurfaceView:Landroid/view/SurfaceView;

    .line 351
    const v3, 0x7f0b001d

    invoke-virtual {p0, v3}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/views/FocusView;

    iput-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;

    .line 352
    const v3, 0x7f0b001e

    invoke-virtual {p0, v3}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;

    .line 353
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0b0020

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/views/RotateZoomView;

    iput-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    .line 354
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0b001f

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomImage:Landroid/widget/ImageView;

    .line 355
    new-instance v3, Landroid/view/ScaleGestureDetector;

    new-instance v4, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;

    invoke-direct {v4, p0, v5}, Lcom/oppo/camera/rewind/RewindActivity$MultiGestureListener;-><init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V

    invoke-direct {v3, p0, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 356
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 357
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 359
    const v3, 0x7f0b0056

    invoke-virtual {p0, v3}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/rewind/Topbar;

    iput-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mTopbar:Lcom/oppo/camera/rewind/Topbar;

    .line 360
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mTopbar:Lcom/oppo/camera/rewind/Topbar;

    invoke-virtual {v3, v6}, Lcom/oppo/camera/rewind/Topbar;->setVisibility(I)V

    .line 361
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mTopbar:Lcom/oppo/camera/rewind/Topbar;

    new-instance v4, Lcom/oppo/camera/rewind/RewindActivity$MyTopbarListener;

    invoke-direct {v4, p0, v5}, Lcom/oppo/camera/rewind/RewindActivity$MyTopbarListener;-><init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/Topbar;->setListener(Lcom/oppo/camera/rewind/Topbar$TopbarListener;)V

    .line 362
    const v3, 0x7f0b0039

    invoke-virtual {p0, v3}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/rewind/IndexSelector;

    iput-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIndexSelector:Lcom/oppo/camera/rewind/IndexSelector;

    .line 363
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIndexSelector:Lcom/oppo/camera/rewind/IndexSelector;

    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity;->mTopbar:Lcom/oppo/camera/rewind/Topbar;

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/IndexSelector;->setTopbar(Lcom/oppo/camera/rewind/Timeoutable;)V

    .line 364
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIndexSelector:Lcom/oppo/camera/rewind/IndexSelector;

    new-instance v4, Lcom/oppo/camera/rewind/RewindActivity$MyIndexListener;

    invoke-direct {v4, p0, v5}, Lcom/oppo/camera/rewind/RewindActivity$MyIndexListener;-><init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/IndexSelector;->setIndexListener(Lcom/oppo/camera/rewind/IndexSelector$IndexListener;)V

    .line 365
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIndexSelector:Lcom/oppo/camera/rewind/IndexSelector;

    sget v4, Lcom/oppo/camera/rewind/Config;->burstSize:I

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/IndexSelector;->setNumberOfItems(I)V

    .line 366
    sget-boolean v3, Lcom/oppo/camera/rewind/Config;->backgroundSelectionEnabled:Z

    if-nez v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIndexSelector:Lcom/oppo/camera/rewind/IndexSelector;

    invoke-virtual {v3, v6}, Lcom/oppo/camera/rewind/IndexSelector;->setVisibility(I)V

    .line 369
    :cond_0
    const v3, 0x7f0b0022

    invoke-virtual {p0, v3}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/views/RotateHintView;

    iput-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

    .line 370
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->initRewind()V

    .line 372
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02005c

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 374
    .local v1, diodOn:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02005b

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 376
    .local v0, diodOff:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIndexSelector:Lcom/oppo/camera/rewind/IndexSelector;

    invoke-virtual {v3, v0, v1}, Lcom/oppo/camera/rewind/IndexSelector;->setCheckBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 378
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mTopbar:Lcom/oppo/camera/rewind/Topbar;

    invoke-virtual {v3, p0}, Lcom/oppo/camera/rewind/Topbar;->setActivity(Landroid/app/Activity;)V

    .line 380
    return-void
.end method

.method private initCamera()V
    .locals 3

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->openCamera()V

    .line 473
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 475
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewFormat()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mPreviewFormat:I

    .line 476
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mPreviewFormat:I

    invoke-static {v0}, Lcom/oppo/camera/rewind/app/PixelFormat;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    .line 477
    sget-boolean v0, Lcom/oppo/camera/rewind/Config;->previewCallbacksEnabled:Z

    if-eqz v0, :cond_0

    .line 478
    new-instance v0, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;ILcom/oppo/camera/rewind/RewindActivity$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mPreviewCallback:Lcom/oppo/camera/rewind/RewindActivity$MyPreviewCallback;

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    const-string v1, "off"

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 482
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getZoomRatios()[F

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomRatios:[F

    .line 483
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomRatios:[F

    array-length v0, v0

    iput v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomArrayLength:I

    .line 484
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomMax:I

    .line 485
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 486
    return-void
.end method

.method private initControlBar()V
    .locals 2

    .prologue
    .line 384
    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLomoControl:Landroid/view/View;

    .line 386
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindControl:Landroid/view/View;

    .line 388
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    .line 389
    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    .line 390
    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLomoModeBtn:Lcom/oppo/camera/views/RotateImageView;

    .line 391
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCancelSaveBtn:Lcom/oppo/camera/views/RotateImageView;

    .line 392
    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSaveBtn:Lcom/oppo/camera/views/RotateImageView;

    .line 393
    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCancelCommitBtn:Lcom/oppo/camera/views/RotateImageView;

    .line 394
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCommitBtn:Lcom/oppo/camera/views/RotateImageView;

    .line 396
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCancelSaveBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSaveBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCancelCommitBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCommitBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 402
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLomoModeBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    return-void
.end method

.method private initRewind()V
    .locals 6

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->createViewerConfig()Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    .line 419
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    .line 421
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindApp;

    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCameraInterface:Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;

    sget-boolean v3, Lcom/oppo/camera/rewind/Config;->previewEnabled:Z

    sget v4, Lcom/oppo/camera/rewind/Config;->burstSize:I

    iget-object v5, p0, Lcom/oppo/camera/rewind/RewindActivity;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/rewind/app/RewindApp;-><init>(Landroid/content/Context;Lcom/oppo/camera/rewind/app/RewindApp$CameraInterface;ZILcom/oppo/camera/rewind/app/RewindViewerConfig;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    .line 423
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindSurfaceView:Landroid/view/SurfaceView;

    iget-object v5, p0, Lcom/oppo/camera/rewind/RewindActivity;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/rewind/app/RewindApp;->init(Landroid/content/Context;Landroid/app/Activity;Landroid/view/SurfaceView;Landroid/view/SurfaceView;Lcom/oppo/camera/rewind/app/RewindViewer;)V

    .line 426
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    new-instance v1, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/rewind/RewindActivity$MyRewindViewerCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;Lcom/oppo/camera/rewind/RewindActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->setCallback(Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;)V

    .line 427
    sget-boolean v0, Lcom/oppo/camera/rewind/Config;->previewEnabled:Z

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    const/16 v1, 0x320

    const/16 v2, 0x1e0

    iget v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mPreviewFormat:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/camera/rewind/app/RewindApp;->setPreviewConfig(III)V

    .line 431
    :cond_0
    return-void
.end method

.method private loadImages()V
    .locals 1

    .prologue
    .line 596
    sget-boolean v0, Lcom/oppo/camera/rewind/Config;->previewEnabled:Z

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCameraInterface:Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/RewindActivity$MyCameraInterface;->release()V

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->loadImages()V

    .line 600
    return-void
.end method

.method private onEndHideWheel()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1269
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCommitBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 1270
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCancelCommitBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 1272
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSaveBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 1273
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCancelSaveBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 1275
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSaveBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1276
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCancelSaveBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1277
    return-void
.end method

.method private onEndShowWheel()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1248
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSaveBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 1249
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCancelSaveBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 1251
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCommitBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 1252
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCancelCommitBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 1254
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCommitBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1255
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCancelCommitBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1256
    return-void
.end method

.method private onStartHideWheel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1261
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCommitBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1262
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCancelCommitBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1263
    return-void
.end method

.method private onStartShowWheel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1240
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSaveBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1241
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCancelSaveBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1242
    return-void
.end method

.method private openCamera()V
    .locals 3

    .prologue
    .line 490
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 491
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory;->open(Landroid/hardware/Camera;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    .line 492
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 493
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSnapshotCount(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 495
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    const-string v1, "RewindActivity"

    const-string v2, "Failed opening camera: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->finish()V

    goto :goto_0
.end method

.method private playFocusSound(Z)V
    .locals 2
    .parameter "focused"

    .prologue
    .line 1402
    if-eqz p1, :cond_2

    .line 1403
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->showSuccess()V

    .line 1406
    :cond_0
    sget-object v0, Lcom/oppo/camera/rewind/RewindActivity;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    if-eqz v0, :cond_1

    .line 1407
    sget-object v0, Lcom/oppo/camera/rewind/RewindActivity;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 1414
    :cond_1
    :goto_0
    return-void

    .line 1410
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1411
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->showFail()V

    goto :goto_0
.end method

.method private refreshThumbNail()V
    .locals 5

    .prologue
    .line 314
    new-instance v1, Lcom/oppo/camera/utils/StringUtil;

    invoke-direct {v1}, Lcom/oppo/camera/utils/StringUtil;-><init>()V

    .line 315
    .local v1, stringUtil:Lcom/oppo/camera/utils/StringUtil;
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/utils/StringUtil;->getLatestFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, lastName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 317
    .local v2, thumbnail:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSavePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/camera/rewind/RewindActivity;->getLatestDrawabel(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    .line 322
    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 323
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/oppo/camera/views/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    invoke-virtual {v3, v0}, Lcom/oppo/camera/utils/OppoBrowseImage;->updateLastPictureUri(Ljava/lang/String;)V

    .line 329
    :goto_1
    return-void

    .line 320
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 327
    iget-object v3, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v3, v2}, Lcom/oppo/camera/views/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private roundOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1118
    add-int/lit8 v0, p1, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private saveRewind()V
    .locals 4

    .prologue
    .line 603
    sget-boolean v0, Lcom/oppo/camera/rewind/Config;->saveEnabled:Z

    if-nez v0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSavePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 607
    sget-object v0, Lcom/oppo/camera/CommConfig;->INTERNAL_LOMO_IMG_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSavePath:Ljava/lang/String;

    .line 609
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSavePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 611
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 613
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 615
    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/rewind/RewindActivity;->createName(J)Ljava/lang/String;

    move-result-object v1

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0066

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 619
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHint:Lcom/oppo/camera/utils/OnScreenHint;

    if-nez v2, :cond_3

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oppo/camera/utils/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/oppo/camera/utils/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHint:Lcom/oppo/camera/utils/OnScreenHint;

    .line 624
    :goto_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHint:Lcom/oppo/camera/utils/OnScreenHint;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Lcom/oppo/camera/utils/OnScreenHint;->show(I)V

    .line 625
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/rewind/app/RewindApp;->saveRewind(Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHint:Lcom/oppo/camera/utils/OnScreenHint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oppo/camera/utils/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setEnable()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1128
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLomoModeBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1129
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1130
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1131
    return-void
.end method

.method private setOrientationIndicator(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLomoModeBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1094
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1095
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1096
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCancelSaveBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1097
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCancelCommitBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1098
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSaveBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1099
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCommitBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1100
    return-void
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceView;)V
    .locals 3
    .parameter

    .prologue
    .line 581
    sget-boolean v0, Lcom/oppo/camera/rewind/Config;->previewEnabled:Z

    if-nez v0, :cond_0

    .line 593
    :goto_0
    return-void

    .line 585
    :cond_0
    if-eqz p1, :cond_1

    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    const-string v1, "RewindActivity"

    const-string v2, "Exception when setting preview display:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 588
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setUnEnable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1122
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLomoModeBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1123
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1124
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1125
    return-void
.end method

.method private setZoomValue(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x42e6

    .line 1282
    if-gtz p1, :cond_3

    move p1, v1

    .line 1288
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 1289
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;

    .line 1290
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b0020

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateZoomView;

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    .line 1291
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b001f

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomImage:Landroid/widget/ImageView;

    .line 1293
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomRatios:[F

    if-nez v0, :cond_4

    .line 1318
    :cond_2
    :goto_1
    return-void

    .line 1284
    :cond_3
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomArrayLength:I

    if-lt p1, v0, :cond_0

    .line 1285
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomArrayLength:I

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    .line 1297
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1298
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomRatios:[F

    aget v2, v2, p1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1299
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomRatios:[F

    aget v2, v2, p1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1300
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1302
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomRatios:[F

    aget v4, v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/camera/views/RotateZoomView;->setText(Ljava/lang/CharSequence;)V

    .line 1303
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v0}, Lcom/oppo/camera/views/RotateZoomView;->setLength(I)V

    .line 1305
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1306
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomValue:I

    if-eq v0, p1, :cond_2

    .line 1307
    iput p1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomValue:I

    .line 1308
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    if-eqz v0, :cond_2

    .line 1311
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 1312
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1313
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    iget v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomValue:I

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setZoom(I)V

    .line 1316
    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->doSafeSetParameters()V

    goto :goto_1
.end method

.method private showCameraErrorAndFinish()V
    .locals 2

    .prologue
    .line 1523
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getResources()Landroid/content/res/Resources;

    .line 1526
    const-string v0, "RewindActivity"

    const-string v1, "Some error happen,finish Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->finish()V

    .line 1528
    return-void
.end method

.method private showHintView(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateHintView;->setText(I)V

    .line 230
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

    iget v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateHintView;->setDegree(I)V

    .line 231
    return-void
.end method

.method private showRewindControlBar()V
    .locals 2

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindControl:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLomoControl:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1231
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->onEndHideWheel()V

    .line 1232
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindControl:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 1233
    return-void
.end method

.method private showShutterControlBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1216
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindControl:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1217
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLomoControl:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLomoControl:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 1219
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1220
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1221
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLomoModeBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1222
    return-void
.end method

.method private turnOffContiniousAF()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1445
    sget-object v0, Lcom/oppo/camera/rewind/RewindActivity;->OFF:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mContinuousAfState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1463
    :cond_0
    :goto_0
    return-void

    .line 1448
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1449
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->removeMessages(I)V

    .line 1452
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;

    if-eqz v0, :cond_3

    .line 1453
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->clear()V

    .line 1457
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 1459
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    const-string v1, "auto"

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1460
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->doSafeSetParameters()V

    .line 1461
    sget-object v0, Lcom/oppo/camera/rewind/RewindActivity;->OFF:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mContinuousAfState:Ljava/lang/String;

    goto :goto_0
.end method

.method private turnOnContiniousAF()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1425
    sget-object v0, Lcom/oppo/camera/rewind/RewindActivity;->ON:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mContinuousAfState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    :goto_0
    return-void

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1429
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->removeMessages(I)V

    .line 1431
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private turnOnContiniousAFDelayed()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1435
    sget-object v0, Lcom/oppo/camera/rewind/RewindActivity;->ON:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mContinuousAfState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1442
    :goto_0
    return-void

    .line 1438
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1439
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->removeMessages(I)V

    .line 1441
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1468
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1469
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIsRunning:Z

    if-nez v0, :cond_1

    .line 1511
    :cond_0
    :goto_0
    return v5

    .line 1472
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->isPreviewSurfaceDestoryed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 1476
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mMoveType:I

    .line 1479
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_3

    .line 1480
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1482
    :cond_3
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mMoveType:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1483
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusState:I

    if-eq v0, v5, :cond_0

    .line 1486
    iput v5, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusState:I

    .line 1487
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->clear()V

    .line 1489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1490
    sget v1, Lcom/oppo/camera/rewind/RewindActivity;->FOCUSAREA_RIGHT:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 1493
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->turnOffContiniousAF()V

    .line 1494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1496
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/oppo/camera/views/FocusView;->setPosition(II)V

    .line 1497
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v2}, Lcom/oppo/camera/views/FocusView;->showStart()V

    .line 1498
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    if-eqz v2, :cond_0

    .line 1499
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v2}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 1500
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setTouchIndexAec(II)V

    .line 1501
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/hardware/Camera$Parameters;->setTouchIndexAf(II)V

    .line 1502
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "touch-on"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 1503
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->doSafeSetParameters()V

    .line 1505
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mTouchAFCallback:Lcom/oppo/camera/rewind/RewindActivity$TouchAFCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_0
.end method

.method public getLatestDrawabel(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "filepath"

    .prologue
    .line 333
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 334
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v2, 0x10

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 335
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 336
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 340
    :goto_0
    return-object v0

    .line 339
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 340
    .local v0, mDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method protected keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1542
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->removeMessages(I)V

    .line 1543
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1544
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, v3, v1, v2}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1545
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1135
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->keepScreenOnAwhile()V

    .line 1136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1138
    :sswitch_0
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->finish()V

    goto :goto_0

    .line 1141
    :sswitch_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->isStoragePlaceEnough()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1142
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->setEnable()V

    goto :goto_0

    .line 1146
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCapturingEnabled:Z

    if-eqz v0, :cond_2

    .line 1147
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->capture()V

    .line 1148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mCapturingEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1155
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1156
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mLomoModeBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    goto :goto_0

    .line 1159
    :sswitch_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-static {}, Lcom/oppo/camera/utils/StorageManager;->hasInternalStorage()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1160
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->checkStorage()V

    goto :goto_0

    .line 1164
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/utils/Util;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1165
    const v0, 0x7f0a002e

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->showHintView(I)V

    goto :goto_0

    .line 1169
    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->setUnEnable()V

    .line 1170
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    new-instance v1, Lcom/oppo/camera/utils/StringUtil;

    invoke-direct {v1}, Lcom/oppo/camera/utils/StringUtil;-><init>()V

    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/utils/StringUtil;->getLatestFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OppoBrowseImage;->updateLastPictureUri(Ljava/lang/String;)V

    .line 1171
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OppoBrowseImage;->getPictureCount(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 1172
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OppoBrowseImage;->viewLastPicture(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->setEnable()V

    goto :goto_0

    .line 1176
    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->setEnable()V

    goto :goto_0

    .line 1181
    :sswitch_3
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFaceChanged:Z

    .line 1182
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v0, v3, v4}, Lcom/oppo/camera/rewind/app/RewindApp;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 1183
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->showShutterControlBar()V

    goto/16 :goto_0

    .line 1186
    :sswitch_4
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->isStoragePlaceEnough()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1187
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->setEnable()V

    goto/16 :goto_0

    .line 1190
    :cond_6
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFaceChanged:Z

    if-ne v0, v2, :cond_7

    .line 1191
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->saveRewind()V

    .line 1192
    iput-boolean v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFaceChanged:Z

    goto/16 :goto_0

    .line 1194
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0067

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1195
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHint:Lcom/oppo/camera/utils/OnScreenHint;

    if-nez v1, :cond_8

    .line 1196
    invoke-static {p0, v0}, Lcom/oppo/camera/utils/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/oppo/camera/utils/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHint:Lcom/oppo/camera/utils/OnScreenHint;

    .line 1200
    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHint:Lcom/oppo/camera/utils/OnScreenHint;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OnScreenHint;->show(I)V

    goto/16 :goto_0

    .line 1198
    :cond_8
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHint:Lcom/oppo/camera/utils/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/utils/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1204
    :sswitch_5
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v0, v3, v4}, Lcom/oppo/camera/rewind/app/RewindApp;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 1207
    :sswitch_6
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindViewer;->commit()V

    .line 1208
    iput-boolean v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFaceChanged:Z

    goto/16 :goto_0

    .line 1152
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 1136
    :sswitch_data_0
    .sparse-switch
        0x7f0b000b -> :sswitch_1
        0x7f0b0029 -> :sswitch_2
        0x7f0b004b -> :sswitch_0
        0x7f0b0058 -> :sswitch_5
        0x7f0b0059 -> :sswitch_3
        0x7f0b005a -> :sswitch_6
        0x7f0b005b -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v1, 0x400

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {p0, v3}, Lcom/oppo/camera/rewind/RewindActivity;->requestWindowFeature(I)Z

    .line 199
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 201
    sget-object v0, Lcom/oppo/camera/CommConfig;->CAMERA_SETTING_SHAREPREFERENCE:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/oppo/camera/rewind/RewindActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSettingsPreferences:Landroid/content/SharedPreferences;

    .line 202
    sget-object v0, Lcom/oppo/camera/CommConfig;->INTERNAL_LOMO_IMG_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSavePath:Ljava/lang/String;

    .line 203
    invoke-static {p0}, Lcom/oppo/camera/utils/ScreenOffUtil;->instance(Landroid/content/Context;)Lcom/oppo/camera/utils/ScreenOffUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    .line 204
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/ScreenOffUtil;->registerScreenOffReceiver()V

    .line 205
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/utils/ScreenOffUtil;->setOnScreenOffListener(Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;)V

    .line 207
    new-instance v0, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;-><init>(Lcom/oppo/camera/rewind/RewindActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mOrientationListener:Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;

    .line 208
    sget-boolean v0, Lcom/oppo/camera/rewind/Config;->previewEnabled:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->initCamera()V

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->init()V

    .line 212
    new-instance v0, Lcom/oppo/camera/utils/OppoBrowseImage;

    invoke-direct {v0, p0}, Lcom/oppo/camera/utils/OppoBrowseImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    .line 213
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OppoBrowseImage;->setScreenHintListener(Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;)V

    .line 214
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a001b

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 217
    sget-object v0, Lcom/oppo/camera/CommConfig;->CAMERA_SETTING_SHAREPREFERENCE:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/oppo/camera/rewind/RewindActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 218
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera sound mode"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mShutterSound:Ljava/lang/String;

    .line 219
    new-instance v0, Lcom/oppo/camera/utils/PlayEffectSound;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mShutterSound:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/camera/rewind/RewindActivity;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    .line 220
    sget-object v0, Lcom/oppo/camera/rewind/RewindActivity;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/PlayEffectSound;->loadLomoCameraSound()V

    .line 222
    new-instance v0, Lcom/oppo/camera/utils/StorageManager;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSavePath:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/oppo/camera/utils/StorageManager;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    .line 223
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->checkStorage()V

    .line 224
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    const-string v1, "rewind"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/StorageManager;->setShotMode(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/StorageManager;->setScreenHintListener(Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;)V

    .line 226
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 298
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->destroy()V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 303
    iput-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 305
    :cond_1
    sget-object v0, Lcom/oppo/camera/rewind/RewindActivity;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    if-eqz v0, :cond_2

    .line 306
    sget-object v0, Lcom/oppo/camera/rewind/RewindActivity;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/PlayEffectSound;->destory()V

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/ScreenOffUtil;->setOnScreenOffListener(Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;)V

    .line 309
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/ScreenOffUtil;->unRegisterScreenOffReceiver()V

    .line 310
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 504
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v2, p1, p2}, Lcom/oppo/camera/rewind/app/RewindApp;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 546
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 507
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/app/RewindApp;->isPreviewSurfaceDestoryed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 510
    sparse-switch p1, :sswitch_data_0

    .line 546
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 512
    :sswitch_1
    iget-boolean v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIsRunning:Z

    if-eqz v2, :cond_0

    .line 515
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->turnOffContiniousAF()V

    .line 517
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 518
    const/4 v0, 0x1

    .line 522
    .local v0, step:I
    :goto_1
    iget v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomValue:I

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/oppo/camera/rewind/RewindActivity;->setZoomValue(I)V

    goto :goto_0

    .line 520
    .end local v0           #step:I
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    div-int/lit8 v0, v2, 0x3

    .restart local v0       #step:I
    goto :goto_1

    .line 526
    .end local v0           #step:I
    :sswitch_2
    iget-boolean v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIsRunning:Z

    if-eqz v2, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->turnOffContiniousAF()V

    .line 531
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 532
    const/4 v0, 0x1

    .line 536
    .restart local v0       #step:I
    :goto_2
    iget v2, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomValue:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/oppo/camera/rewind/RewindActivity;->setZoomValue(I)V

    goto :goto_0

    .line 534
    .end local v0           #step:I
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    div-int/lit8 v0, v2, 0x3

    .restart local v0       #step:I
    goto :goto_2

    .line 510
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    .line 550
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 551
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mFaceChanged:Z

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/rewind/app/RewindApp;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    :cond_1
    :goto_0
    return v0

    .line 556
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/RewindApp;->isPreviewSurfaceDestoryed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 559
    packed-switch p1, :pswitch_data_0

    .line 577
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 561
    :pswitch_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 562
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 564
    :cond_3
    iget-boolean v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIsRunning:Z

    if-eqz v1, :cond_1

    .line 565
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->turnOnContiniousAF()V

    goto :goto_0

    .line 569
    :pswitch_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    .line 570
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 572
    :cond_4
    iget-boolean v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mIsRunning:Z

    if-eqz v1, :cond_1

    .line 573
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->turnOnContiniousAF()V

    goto :goto_0

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 281
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mZoomLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mOrientationListener:Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;->disable()V

    .line 285
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->stop()V

    .line 287
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->resetScreenOn()V

    .line 288
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 252
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 256
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 257
    sget-object v1, Lcom/oppo/camera/CommConfig;->INTERNAL_LOMO_IMG_PATH:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mSavePath:Ljava/lang/String;

    .line 258
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mOrientationListener:Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/RewindActivity$MyOrientationEventListener;->enable()V

    .line 259
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/RewindViewer;->requestFocus()Z

    .line 260
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/RewindApp;->resume()V

    .line 261
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->refreshThumbNail()V

    .line 262
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v1}, Lcom/oppo/camera/utils/ScreenOffUtil;->registerScreenOffReceiver()V

    .line 263
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v1}, Lcom/oppo/camera/utils/StorageManager;->registerReceiver()V

    .line 264
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 265
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 266
    const-string v1, "CAM_ON_BEFOR_HDMI_PLUG_IN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/oppo/camera/rewind/RewindActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/rewind/RewindActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->setEnable()V

    .line 269
    invoke-direct {p0}, Lcom/oppo/camera/rewind/RewindActivity;->brightnessMax()V

    .line 270
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->keepScreenOnAwhile()V

    .line 271
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 1560
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/rewind/RewindActivity;->setRequestedOrientation(I)V

    .line 1561
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->finish()V

    .line 1562
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 244
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 292
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/ScreenOffUtil;->unRegisterScreenOffReceiver()V

    .line 293
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->unRegisterReveiver()V

    .line 294
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1532
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1533
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->keepScreenOnAwhile()V

    .line 1534
    return-void
.end method

.method protected resetScreenOn()V
    .locals 2

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity;->mHandler:Lcom/oppo/camera/rewind/RewindActivity$MyHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/RewindActivity$MyHandler;->removeMessages(I)V

    .line 1538
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/RewindActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1539
    return-void
.end method
