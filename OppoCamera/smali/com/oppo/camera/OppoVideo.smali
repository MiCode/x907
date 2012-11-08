.class public Lcom/oppo/camera/OppoVideo;
.super Landroid/app/Activity;
.source "OppoVideo.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;
.implements Lcom/oppo/camera/views/Switcher$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/OppoVideo$ErrorCallback;,
        Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;,
        Lcom/oppo/camera/OppoVideo$MultiGestureListener;,
        Lcom/oppo/camera/OppoVideo$MainHandler;,
        Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;
    }
.end annotation


# static fields
.field private static FOCUSAREA_LEFT:I

.field private static FOCUSAREA_RIGHT:I

.field public static OFF:Ljava/lang/String;

.field public static ON:Ljava/lang/String;


# instance fields
.field private isGetThumbnailSuccess:Z

.field private mAnimationListener:Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;

.field private mAttemptGetThumbnailCount:I

.field private mAvailableSpace:J

.field private mBtnCameraIcon:Lcom/oppo/camera/views/RotateImageView;

.field private mBtnCancel:Lcom/oppo/camera/views/RotateImageView;

.field private mBtnDone:Lcom/oppo/camera/views/RotateImageView;

.field private mBtnPlay:Lcom/oppo/camera/views/RotateImageView;

.field private mBtnRetake:Lcom/oppo/camera/views/RotateImageView;

.field private mBtnVideoIcon:Lcom/oppo/camera/views/RotateImageView;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mClickBackCount:I

.field private mCloseActivity:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinuousAfState:Ljava/lang/String;

.field private mControlBarRoot:Landroid/view/ViewGroup;

.field private mCurrentState:Z

.field mCurrentTime:J

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDevlatch:Ljava/util/concurrent/CountDownLatch;

.field private mDisableKey:[I

.field private mDoingAnimation:Z

.field private final mErrorCallback:Lcom/oppo/camera/OppoVideo$ErrorCallback;

.field private mFlashMode:Ljava/lang/String;

.field private mFocusState:I

.field private mFocusView:Lcom/oppo/camera/views/FocusView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mHasFirstSetOrientationIndicator:Z

.field private mHasRegisterReceiver:Z

.field private mHideTimeViewRunnable:Ljava/lang/Runnable;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mITelephony:Lcom/android/internal/telephony/ITelephony;

.field private mIntentStart:Z

.field private mIsBroadcastPauseMusic:Z

.field private mIsScaling:Z

.field private mIsVideoCaptureIntent:Z

.field private mLastClickTime:J

.field private mLastPausingTime:J

.field private mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

.field private mMoveType:I

.field private mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mNewVideoFilePath:Ljava/lang/String;

.field private mNewVideoName:Ljava/lang/String;

.field private mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

.field private mNumberOfCameras:I

.field private mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPauseBtn:Lcom/oppo/camera/views/RotateImageView;

.field private mPausing:Z

.field private mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

.field mPreTouchFocusTime:J

.field mPressCount:I

.field private mPreviewing:Z

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordMode:Ljava/lang/String;

.field private mRecording:Z

.field private mRecordingControlBar:Landroid/widget/RelativeLayout;

.field private mRecordingLastTime:J

.field private mRecordingStartTime:J

.field private mRecordingTimeView:Lcom/oppo/camera/views/RotateRecordingTimeView;

.field private mRestartCounter:I

.field private mResumeBtn:Lcom/oppo/camera/views/RotateImageView;

.field private mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

.field private mSavePath:Ljava/lang/String;

.field private mScreenHintListener:Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;

.field private mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

.field private mShotAnimBitmapSmall:Landroid/graphics/Bitmap;

.field protected mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

.field private mShowRecordingMsg:Z

.field private mShutterSound:Ljava/lang/String;

.field private mStartPreviewFail:Z

.field private mStartRecordBtn:Lcom/oppo/camera/views/RotateImageView;

.field private mStartSpan:F

.field mStartStopRecord:J

.field private mStartZoomValue:I

.field private mStopBtn:Lcom/oppo/camera/views/RotateImageView;

.field private mStoping:Z

.field private mStorageManager:Lcom/oppo/camera/utils/StorageManager;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSwitchChangedRunnable:Ljava/lang/Runnable;

.field private mSwitcher:Lcom/oppo/camera/views/Switcher;

.field private mTempBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mTotalPausingTime:J

.field private mVideSettingChangedListener:Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;

.field private mVideoBrowser:Lcom/oppo/camera/utils/OppoBrowseVideo;

.field private mVideoControlBar:Landroid/widget/RelativeLayout;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFormat:Ljava/lang/String;

.field private mVideoFrame:Landroid/widget/ImageView;

.field private mVideoSettingSharePref:Landroid/content/SharedPreferences;

.field private mVideoSize:Ljava/lang/String;

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
    .line 110
    const-string v0, "on"

    sput-object v0, Lcom/oppo/camera/OppoVideo;->ON:Ljava/lang/String;

    .line 111
    const-string v0, "off"

    sput-object v0, Lcom/oppo/camera/OppoVideo;->OFF:Ljava/lang/String;

    .line 123
    const/16 v0, 0x2b3

    sput v0, Lcom/oppo/camera/OppoVideo;->FOCUSAREA_RIGHT:I

    .line 124
    const/16 v0, 0x78

    sput v0, Lcom/oppo/camera/OppoVideo;->FOCUSAREA_LEFT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    sget-object v0, Lcom/oppo/camera/OppoVideo;->OFF:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mContinuousAfState:Ljava/lang/String;

    .line 113
    iput v1, p0, Lcom/oppo/camera/OppoVideo;->mFocusState:I

    .line 125
    iput v1, p0, Lcom/oppo/camera/OppoVideo;->mMoveType:I

    .line 131
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/oppo/camera/OppoVideo;->mStartSpan:F

    .line 146
    iput-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mShowRecordingMsg:Z

    .line 167
    iput v1, p0, Lcom/oppo/camera/OppoVideo;->mOrientationCompensation:I

    .line 180
    new-instance v0, Lcom/oppo/camera/OppoVideo$MainHandler;

    invoke-direct {v0, p0, v4}, Lcom/oppo/camera/OppoVideo$MainHandler;-><init>(Lcom/oppo/camera/OppoVideo;Lcom/oppo/camera/OppoVideo$1;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    .line 201
    iput-wide v2, p0, Lcom/oppo/camera/OppoVideo;->mTotalPausingTime:J

    .line 202
    iput-wide v2, p0, Lcom/oppo/camera/OppoVideo;->mLastPausingTime:J

    .line 203
    iput-wide v2, p0, Lcom/oppo/camera/OppoVideo;->mLastClickTime:J

    .line 222
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/OppoVideo;->mRestartCounter:I

    .line 223
    new-instance v0, Lcom/oppo/camera/OppoVideo$ErrorCallback;

    invoke-direct {v0, p0, v4}, Lcom/oppo/camera/OppoVideo$ErrorCallback;-><init>(Lcom/oppo/camera/OppoVideo;Lcom/oppo/camera/OppoVideo$1;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mErrorCallback:Lcom/oppo/camera/OppoVideo$ErrorCallback;

    .line 235
    iput-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mStartPreviewFail:Z

    .line 241
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mDisableKey:[I

    .line 250
    new-instance v0, Lcom/oppo/camera/OppoVideo$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoVideo$1;-><init>(Lcom/oppo/camera/OppoVideo;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 392
    new-instance v0, Lcom/oppo/camera/OppoVideo$3;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoVideo$3;-><init>(Lcom/oppo/camera/OppoVideo;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mAnimationListener:Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;

    .line 430
    iput-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mIsBroadcastPauseMusic:Z

    .line 499
    new-instance v0, Lcom/oppo/camera/OppoVideo$4;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoVideo$4;-><init>(Lcom/oppo/camera/OppoVideo;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideSettingChangedListener:Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;

    .line 999
    new-instance v0, Lcom/oppo/camera/OppoVideo$6;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoVideo$6;-><init>(Lcom/oppo/camera/OppoVideo;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mSwitchChangedRunnable:Ljava/lang/Runnable;

    .line 1415
    new-instance v0, Lcom/oppo/camera/OppoVideo$7;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoVideo$7;-><init>(Lcom/oppo/camera/OppoVideo;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHideTimeViewRunnable:Ljava/lang/Runnable;

    .line 1725
    new-instance v0, Lcom/oppo/camera/OppoVideo$8;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoVideo$8;-><init>(Lcom/oppo/camera/OppoVideo;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mScreenHintListener:Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;

    .line 1733
    new-instance v0, Lcom/oppo/camera/OppoVideo$9;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoVideo$9;-><init>(Lcom/oppo/camera/OppoVideo;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    .line 2072
    iput-wide v2, p0, Lcom/oppo/camera/OppoVideo;->mPreTouchFocusTime:J

    .line 2073
    iput-wide v2, p0, Lcom/oppo/camera/OppoVideo;->mCurrentTime:J

    .line 2604
    new-instance v0, Lcom/oppo/camera/OppoVideo$10;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoVideo$10;-><init>(Lcom/oppo/camera/OppoVideo;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

    return-void

    .line 241
    nop

    :array_0
    .array-data 0x4
        0x1at 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1002(Lcom/oppo/camera/OppoVideo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/oppo/camera/OppoVideo;->mStartPreviewFail:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oppo/camera/OppoVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oppo/camera/OppoVideo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo;->ensureCameraDevice(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->startPreview()V

    return-void
.end method

.method static synthetic access$1600(Lcom/oppo/camera/OppoVideo;[I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/oppo/camera/OppoVideo;->fixKeyEventInterceptorInProcess([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/oppo/camera/OppoVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/oppo/camera/OppoVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mOrientation:I

    return v0
.end method

.method static synthetic access$1902(Lcom/oppo/camera/OppoVideo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/oppo/camera/OppoVideo;->mOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/camera/OppoVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oppo/camera/OppoVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/oppo/camera/OppoVideo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->recycleBitmap()V

    return-void
.end method

.method static synthetic access$2300(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->enableUI()V

    return-void
.end method

.method static synthetic access$2400(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->updateLastVideoUri()V

    return-void
.end method

.method static synthetic access$2500(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->turnOnContinuousAF()V

    return-void
.end method

.method static synthetic access$2602(Lcom/oppo/camera/OppoVideo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/oppo/camera/OppoVideo;->mDoingAnimation:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/OppoVideo;->handleCameraFaceChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/OppoVideo;->handleFlashModeChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/OppoVideo;->handleVideoSizeChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/camera/OppoVideo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo;->showHintView(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/OppoVideo;->handleVideoFormatChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/OppoVideo;->handleRecordModeChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo;->activityChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/oppo/camera/OppoVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$3302(Lcom/oppo/camera/OppoVideo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/oppo/camera/OppoVideo;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$3400(Lcom/oppo/camera/OppoVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIntentStart:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/oppo/camera/OppoVideo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/RotateZoomView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/RotateRecordingTimeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordingTimeView:Lcom/oppo/camera/views/RotateRecordingTimeView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$3900(Lcom/oppo/camera/OppoVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->restartPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/camera/OppoVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->onStopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/oppo/camera/OppoVideo;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/oppo/camera/OppoVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->isGetThumbnailSuccess:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/oppo/camera/OppoVideo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/oppo/camera/OppoVideo;->isGetThumbnailSuccess:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/oppo/camera/OppoVideo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo;->removeMessage(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/oppo/camera/OppoVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mAttemptGetThumbnailCount:I

    return v0
.end method

.method static synthetic access$4302(Lcom/oppo/camera/OppoVideo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/oppo/camera/OppoVideo;->mAttemptGetThumbnailCount:I

    return p1
.end method

.method static synthetic access$4308(Lcom/oppo/camera/OppoVideo;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mAttemptGetThumbnailCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/OppoVideo;->mAttemptGetThumbnailCount:I

    return v0
.end method

.method static synthetic access$4400(Lcom/oppo/camera/OppoVideo;[I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/oppo/camera/OppoVideo;->fixKeyEventInterceptorInProcess([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/oppo/camera/OppoVideo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->getLastVideoName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4602(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo;->mTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/oppo/camera/OppoVideo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/utils/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/oppo/camera/OppoVideo;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo;->getLastVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/camera/OppoVideo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/oppo/camera/OppoVideo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo;->getSmallShotAnimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/oppo/camera/OppoVideo;[I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/oppo/camera/OppoVideo;->fixKeyEventInterceptorInProcess([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5202(Lcom/oppo/camera/OppoVideo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/oppo/camera/OppoVideo;->mClickBackCount:I

    return p1
.end method

.method static synthetic access$5300(Lcom/oppo/camera/OppoVideo;[I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/oppo/camera/OppoVideo;->fixKeyEventInterceptorInProcess([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/oppo/camera/OppoVideo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo;->changeRecordingControlBar(Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/oppo/camera/OppoVideo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/oppo/camera/OppoVideo;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->closeCamera()V

    return-void
.end method

.method static synthetic access$5800(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->showCameraErrorAndFinish()V

    return-void
.end method

.method static synthetic access$5900(Lcom/oppo/camera/OppoVideo;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/setting/NewVideoSettingMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/oppo/camera/OppoVideo;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mStartSpan:F

    return v0
.end method

.method static synthetic access$6002(Lcom/oppo/camera/OppoVideo;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/oppo/camera/OppoVideo;->mStartSpan:F

    return p1
.end method

.method static synthetic access$6100(Lcom/oppo/camera/OppoVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mStartZoomValue:I

    return v0
.end method

.method static synthetic access$6102(Lcom/oppo/camera/OppoVideo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/oppo/camera/OppoVideo;->mStartZoomValue:I

    return p1
.end method

.method static synthetic access$6200(Lcom/oppo/camera/OppoVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomMax:I

    return v0
.end method

.method static synthetic access$6300(Lcom/oppo/camera/OppoVideo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo;->setZoomValue(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->turnOffContinuousAF()V

    return-void
.end method

.method static synthetic access$6500(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->clearFocusView()V

    return-void
.end method

.method static synthetic access$6602(Lcom/oppo/camera/OppoVideo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/oppo/camera/OppoVideo;->mIsScaling:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/oppo/camera/OppoVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomValue:I

    return v0
.end method

.method static synthetic access$6800(Lcom/oppo/camera/OppoVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mMoveType:I

    return v0
.end method

.method static synthetic access$6802(Lcom/oppo/camera/OppoVideo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/oppo/camera/OppoVideo;->mMoveType:I

    return p1
.end method

.method static synthetic access$6900(Lcom/oppo/camera/OppoVideo;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->disableUI()V

    return-void
.end method

.method static synthetic access$7000(Lcom/oppo/camera/OppoVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mFocusState:I

    return v0
.end method

.method static synthetic access$7002(Lcom/oppo/camera/OppoVideo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/oppo/camera/OppoVideo;->mFocusState:I

    return p1
.end method

.method static synthetic access$7100(Lcom/oppo/camera/OppoVideo;)Lcom/oppo/camera/views/FocusView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mFocusView:Lcom/oppo/camera/views/FocusView;

    return-object v0
.end method

.method static synthetic access$7200()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/oppo/camera/OppoVideo;->FOCUSAREA_RIGHT:I

    return v0
.end method

.method static synthetic access$7300()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/oppo/camera/OppoVideo;->FOCUSAREA_LEFT:I

    return v0
.end method

.method static synthetic access$7400(Lcom/oppo/camera/OppoVideo;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/oppo/camera/OppoVideo;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/oppo/camera/OppoVideo;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->setParametersUnSafe()V

    return-void
.end method

.method static synthetic access$7700(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->turnOnContinuousAFDelayed()V

    return-void
.end method

.method static synthetic access$7800(Lcom/oppo/camera/OppoVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mRestartCounter:I

    return v0
.end method

.method static synthetic access$7802(Lcom/oppo/camera/OppoVideo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/oppo/camera/OppoVideo;->mRestartCounter:I

    return p1
.end method

.method static synthetic access$7900(Lcom/oppo/camera/OppoVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$800(Lcom/oppo/camera/OppoVideo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/oppo/camera/OppoVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->refreshThumbnail()V

    return-void
.end method

.method static synthetic access$900(Lcom/oppo/camera/OppoVideo;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mDevlatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private activityChange(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 690
    invoke-static {p0, p1}, Lcom/oppo/camera/ActivityChange;->gotoVideoMode(Landroid/app/Activity;Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method private brightnessMax()V
    .locals 2

    .prologue
    .line 1747
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1748
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1749
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1750
    return-void
.end method

.method private changeRecordingControlBar(Z)V
    .locals 4
    .parameter "isRecording"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 463
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_2

    .line 464
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo;->mVideoControlBar:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordingControlBar:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 469
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 464
    goto :goto_0

    :cond_1
    move v2, v1

    .line 465
    goto :goto_1

    .line 467
    :cond_2
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo;->updateRecordingIndicator(Z)V

    goto :goto_2
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1711
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1712
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1713
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1714
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;

    .line 1717
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private clearFocusView()V
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mFocusView:Lcom/oppo/camera/views/FocusView;

    if-eqz v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->clear()V

    .line 2032
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 659
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 660
    const-string v0, "OppoVideo"

    const-string v1, "closeCamera E "

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 661
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 662
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 663
    invoke-static {}, Lcom/oppo/camera/CameraHolder;->instance()Lcom/oppo/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/CameraHolder;->release()V

    .line 664
    iput-object v2, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    .line 668
    :cond_0
    const-string v0, "OppoVideo"

    const-string v1, "closeCamera X "

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 669
    return-void
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 962
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 963
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'VID\'yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 964
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createVideoPath()V
    .locals 7

    .prologue
    .line 939
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 940
    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/OppoVideo;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 941
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/OppoVideo;->mVideoFormat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 943
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/oppo/camera/OppoVideo;->mSavePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 944
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/oppo/camera/OppoVideo;->mSavePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 946
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 949
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 950
    const-string v6, "title"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const-string v2, "_display_name"

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string v2, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 953
    const-string v0, "mime_type"

    const-string v1, "video/3gpp"

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string v0, "_data"

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iput-object v5, p0, Lcom/oppo/camera/OppoVideo;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 957
    iput-object v3, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoName:Ljava/lang/String;

    .line 958
    iput-object v4, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;

    .line 959
    return-void
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2347
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2348
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoVideo;->deleteVideoFile(Ljava/lang/String;)Z

    .line 2349
    iput-object v2, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;

    .line 2351
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 2352
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2353
    iput-object v2, p0, Lcom/oppo/camera/OppoVideo;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2356
    :cond_1
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "fileName"

    .prologue
    .line 1702
    const/4 v0, 0x1

    .line 1703
    .local v0, delet:Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1704
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1705
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1707
    :cond_0
    return v0
.end method

.method private disableUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 473
    const-string v0, "OppoVideo"

    const-string v1, "--disable UI--"

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 475
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStartRecordBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 477
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 478
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/Switcher;->setEnabled(Z)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setCameraState(I)V

    .line 481
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->refreshAudioRecordingUi()V

    .line 482
    return-void
.end method

.method private discardCurrentVideoAndInitRecorder()V
    .locals 0

    .prologue
    .line 2337
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->deleteCurrentVideo()V

    .line 2338
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->hideAlertAndInitializeRecorder()V

    .line 2339
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 2322
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2324
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 2325
    const/4 v0, -0x1

    .line 2327
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2332
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/OppoVideo;->setResult(ILandroid/content/Intent;)V

    .line 2333
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->finish()V

    .line 2334
    return-void

    .line 2330
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private doSafeSetParameters()V
    .locals 2

    .prologue
    .line 2564
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2571
    :goto_0
    return-void

    .line 2565
    :catch_0
    move-exception v0

    .line 2566
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 2567
    const-string v0, "OppoVideo"

    const-string v1, "doSafeSetParameters RuntimeException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->showCameraErrorAndFinish()V

    goto :goto_0
.end method

.method private enableUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 486
    const-string v0, "OppoVideo"

    const-string v1, "--enable UI--"

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 488
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 490
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStartRecordBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 491
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/Switcher;->setEnabled(Z)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setCameraState(I)V

    .line 494
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->show()V

    .line 495
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 496
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->refreshAudioRecordingUi()V

    .line 497
    return-void
.end method

.method private declared-synchronized ensureCameraDevice(I)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 645
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 646
    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    .line 647
    const/4 p1, 0x0

    .line 649
    :cond_0
    invoke-static {}, Lcom/oppo/camera/CameraHolder;->instance()Lcom/oppo/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    .line 650
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 651
    const-string v0, "OppoVideo"

    const-string v1, "Open camera fail !"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    :cond_1
    monitor-exit p0

    return-void

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2429
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2433
    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2436
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2440
    return-void
.end method

.method private getAudioRecordingState()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1010
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_0

    .line 1011
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/OppoVideo;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 1013
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 1015
    :try_start_0
    const-string v1, "OppoVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio recording state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/OppoVideo;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getAudioRecordState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1016
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getAudioRecordState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1021
    :cond_1
    :goto_0
    return v0

    .line 1017
    :catch_0
    move-exception v1

    .line 1018
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getLastVideoName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 694
    new-instance v1, Lcom/oppo/camera/utils/StringUtil;

    invoke-direct {v1}, Lcom/oppo/camera/utils/StringUtil;-><init>()V

    .line 695
    .local v1, stringUtil:Lcom/oppo/camera/utils/StringUtil;
    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/utils/StringUtil;->getLatestFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, lastName:Ljava/lang/String;
    return-object v0
.end method

.method private getLastVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "path"

    .prologue
    .line 701
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getSmallShotAnimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "original"

    .prologue
    const/16 v2, 0x4e

    .line 1658
    const/16 v1, 0x4e

    .line 1659
    .local v1, miniThumbWidth:I
    const/16 v0, 0x4e

    .line 1660
    .local v0, miniThumbHeight:I
    invoke-static {p1, v2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private handleCameraFaceChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->switchCameraId()V

    .line 519
    return-void
.end method

.method private handleFlashModeChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    iput-object p2, p0, Lcom/oppo/camera/OppoVideo;->mFlashMode:Ljava/lang/String;

    .line 524
    const-string v0, "on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->turnOnLight()V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->turnOffLight()V

    goto :goto_0
.end method

.method private handleRecordModeChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordMode:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iput-object p2, p0, Lcom/oppo/camera/OppoVideo;->mRecordMode:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vdieo record mode"

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mRecordMode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 559
    :cond_0
    return-void
.end method

.method private handleVideoFormatChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoFormat:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    iput-object p2, p0, Lcom/oppo/camera/OppoVideo;->mVideoFormat:Ljava/lang/String;

    .line 550
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "video file format mode"

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mVideoFormat:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 552
    :cond_0
    return-void
.end method

.method private handleVideoSizeChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSize:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iput-object p2, p0, Lcom/oppo/camera/OppoVideo;->mVideoSize:Ljava/lang/String;

    .line 535
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-eqz v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mDisableKey:[I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->fixKeyEventInterceptorInProcess([I)Z

    .line 539
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->disableUI()V

    .line 540
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->stopPreview()V

    .line 541
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->closeCamera()V

    .line 542
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 543
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vdieo size mode"

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mVideoSize:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private hideAlert()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2417
    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoVideo;->updateRecordingIndicator(Z)V

    .line 2418
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2419
    const v1, 0x7f0b0010

    invoke-virtual {p0, v1}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/OppoVideo;->fadeIn(Landroid/view/View;)V

    .line 2420
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 2421
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 2422
    invoke-virtual {p0, v3}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2423
    invoke-static {v3}, Lcom/oppo/camera/OppoVideo;->fadeOut(Landroid/view/View;)V

    .line 2421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2425
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->enableUI()V

    .line 2426
    return-void

    .line 2420
    nop

    :array_0
    .array-data 0x4
        0xdt 0x0t 0xbt 0x7ft
        0xft 0x0t 0xbt 0x7ft
        0x11t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method private hideAlertAndInitializeRecorder()V
    .locals 0

    .prologue
    .line 2342
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->hideAlert()V

    .line 2344
    return-void
.end method

.method private inflateShotAnimView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 383
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mControlBarRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-nez v1, :cond_0

    .line 384
    new-instance v1, Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    .line 385
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mAnimationListener:Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setOnAnimationListener(Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;)V

    .line 386
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    .line 387
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 388
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mControlBarRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method private initControlBar()V
    .locals 3

    .prologue
    .line 2276
    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mControlBarRoot:Landroid/view/ViewGroup;

    .line 2277
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2279
    iget-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_0

    .line 2280
    const v1, 0x7f030015

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mControlBarRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2281
    const v0, 0x7f0b006e

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnCameraIcon:Lcom/oppo/camera/views/RotateImageView;

    .line 2282
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnVideoIcon:Lcom/oppo/camera/views/RotateImageView;

    .line 2283
    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoControlBar:Landroid/widget/RelativeLayout;

    .line 2284
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordingControlBar:Landroid/widget/RelativeLayout;

    .line 2285
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordingControlBar:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b0071

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStopBtn:Lcom/oppo/camera/views/RotateImageView;

    .line 2286
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStopBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2287
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordingControlBar:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b0072

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mPauseBtn:Lcom/oppo/camera/views/RotateImageView;

    .line 2288
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mPauseBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2289
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordingControlBar:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b0073

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mResumeBtn:Lcom/oppo/camera/views/RotateImageView;

    .line 2290
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mResumeBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2292
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/Switcher;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    .line 2293
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/Switcher;->setOnSwitchListener(Lcom/oppo/camera/views/Switcher$OnSwitchListener;)V

    .line 2294
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/Switcher;->setState(Z)V

    .line 2296
    const v0, 0x7f0b006f

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;

    .line 2297
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2298
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 2311
    :goto_0
    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStartRecordBtn:Lcom/oppo/camera/views/RotateImageView;

    .line 2312
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStartRecordBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2314
    return-void

    .line 2300
    :cond_0
    const v1, 0x7f030002

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mControlBarRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2301
    const v0, 0x7f0b000e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnCancel:Lcom/oppo/camera/views/RotateImageView;

    .line 2302
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnCancel:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2303
    const v0, 0x7f0b000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnRetake:Lcom/oppo/camera/views/RotateImageView;

    .line 2304
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnRetake:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2305
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnRetake:Lcom/oppo/camera/views/RotateImageView;

    const v2, 0x7f020023

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setImageResource(I)V

    .line 2306
    const v0, 0x7f0b0011

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnPlay:Lcom/oppo/camera/views/RotateImageView;

    .line 2307
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnPlay:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2308
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnDone:Lcom/oppo/camera/views/RotateImageView;

    .line 2309
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnDone:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private initUi()V
    .locals 5

    .prologue
    .line 358
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/StorageManager;->setScreenHintListener(Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;)V

    .line 359
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/StorageManager;->setMountStateChangedListener(Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;)V

    .line 360
    new-instance v0, Lcom/oppo/camera/utils/OppoBrowseVideo;

    invoke-direct {v0, p0}, Lcom/oppo/camera/utils/OppoBrowseVideo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoBrowser:Lcom/oppo/camera/utils/OppoBrowseVideo;

    .line 361
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoBrowser:Lcom/oppo/camera/utils/OppoBrowseVideo;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OppoBrowseVideo;->setScreenHintListener(Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;)V

    .line 363
    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/NewVideoSettingMenu;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    .line 364
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    iget v1, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mFlashMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppo/camera/OppoVideo;->mVideoSize:Ljava/lang/String;

    iget-object v4, p0, Lcom/oppo/camera/OppoVideo;->mRecordMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->initSettings(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mScreenHintListener:Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setOnScreenHintListener(Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;)V

    .line 366
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mVideSettingChangedListener:Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setOnSettingsChangedListener(Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;)V

    .line 368
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateHintView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

    .line 369
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->refreshMenu()V

    .line 370
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->initControlBar()V

    .line 372
    const v0, 0x7f0b0066

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;

    .line 373
    const v0, 0x7f0b0065

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateRecordingTimeView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordingTimeView:Lcom/oppo/camera/views/RotateRecordingTimeView;

    .line 375
    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mSurfaceView:Landroid/view/SurfaceView;

    .line 376
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/FocusView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mFocusView:Lcom/oppo/camera/views/FocusView;

    .line 377
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    .line 378
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateZoomView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    .line 379
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomImage:Landroid/widget/ImageView;

    .line 380
    return-void
.end method

.method private initVideoSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 623
    sget-object v0, Lcom/oppo/camera/CommConfig;->CAMERA_SETTING_SHAREPREFERENCE:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/oppo/camera/OppoVideo;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    .line 624
    invoke-static {}, Lcom/oppo/camera/CameraHolder;->instance()Lcom/oppo/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/OppoVideo;->mNumberOfCameras:I

    .line 626
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    const-string v1, "camera sound mode"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mShutterSound:Ljava/lang/String;

    .line 627
    new-instance v0, Lcom/oppo/camera/utils/PlayEffectSound;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mShutterSound:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    .line 628
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/PlayEffectSound;->loadCameraSound()V

    .line 630
    sget-object v0, Lcom/oppo/camera/CommConfig;->INTERNAL_VID_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mSavePath:Ljava/lang/String;

    .line 632
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    const-string v1, "video face mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    .line 633
    const-string v0, "off"

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mFlashMode:Ljava/lang/String;

    .line 635
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoFormat:Ljava/lang/String;

    .line 636
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    const-string v1, "vdieo record mode"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordMode:Ljava/lang/String;

    .line 637
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    const-string v1, "vdieo size mode"

    const-string v2, "720p"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSize:Ljava/lang/String;

    .line 639
    new-instance v0, Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oppo/camera/OppoVideo;->mSavePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/utils/StorageManager;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    .line 640
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/StorageManager;->setShotMode(Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->checkStorage()V

    .line 642
    return-void
.end method

.method private isClickValid()Z
    .locals 6

    .prologue
    .line 1935
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1936
    .local v0, now:J
    iget-wide v2, p0, Lcom/oppo/camera/OppoVideo;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1937
    iput-wide v0, p0, Lcom/oppo/camera/OppoVideo;->mLastClickTime:J

    .line 1938
    const/4 v2, 0x1

    .line 1940
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 2317
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2318
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1964
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1965
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1957
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1958
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1959
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1960
    return-void
.end method

.method private onStopVideoRecording()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2511
    iget-wide v1, p0, Lcom/oppo/camera/OppoVideo;->mRecordingLastTime:J

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 2512
    const/4 v0, 0x0

    .line 2533
    :goto_0
    return v0

    .line 2515
    :cond_0
    iput-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    .line 2517
    iget-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_3

    .line 2518
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 2519
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2521
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    invoke-virtual {v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->hide()V

    .line 2522
    const v1, 0x7f0b0069

    invoke-virtual {p0, v1}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2523
    iget-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mQuickCapture:Z

    if-eqz v1, :cond_2

    .line 2524
    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoVideo;->stopVideoRecordingAndReturn(Z)V

    goto :goto_0

    .line 2526
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->stopVideoRecordingAndShowAlert()V

    goto :goto_0

    .line 2529
    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->stopVideoRecording()V

    .line 2530
    iget-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    invoke-direct {p0, v1}, Lcom/oppo/camera/OppoVideo;->changeRecordingControlBar(Z)V

    goto :goto_0
.end method

.method private recordClick()V
    .locals 2

    .prologue
    .line 1917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/OppoVideo;->mLastClickTime:J

    .line 1918
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    if-eqz v0, :cond_1

    .line 1926
    :cond_0
    :goto_0
    return-void

    .line 1921
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->isStoragePlaceEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1925
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->onStopVideoRecording()Z

    goto :goto_0
.end method

.method private recycleBitmap()V
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 710
    :cond_0
    return-void
.end method

.method private refreshAudioRecordingUi()V
    .locals 4

    .prologue
    .line 1025
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-eqz v0, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 1028
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->getAudioRecordingState()Z

    move-result v0

    .line 1029
    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    const-string v1, "key_video_record"

    const-string v2, "video_record_off"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    const-string v1, "key_video_record"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setEnable(Ljava/lang/String;Z)V

    .line 1032
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    const-string v1, "key_video_record"

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setAlpha(Ljava/lang/String;I)V

    goto :goto_0

    .line 1034
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    const-string v2, "key_video_record"

    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordMode:Ljava/lang/String;

    const-string v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "video_record_on"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    const-string v1, "key_video_record"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setEnable(Ljava/lang/String;Z)V

    .line 1036
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    const-string v1, "key_video_record"

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setAlpha(Ljava/lang/String;I)V

    goto :goto_0

    .line 1034
    :cond_2
    const-string v0, "video_record_off"

    goto :goto_1
.end method

.method private refreshMenu()V
    .locals 2

    .prologue
    .line 562
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 563
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    const-string v1, "key_video_size"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->hideView(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    const-string v1, "key_video_flash"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->hideView(Ljava/lang/String;)V

    .line 573
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->refreshAudioRecordingUi()V

    .line 574
    return-void

    .line 566
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    const-string v1, "key_video_size"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->showView(Ljava/lang/String;)V

    .line 571
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    const-string v1, "key_video_flash"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->showView(Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    const-string v1, "key_video_size"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->hideView(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private refreshThumbnail()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 2598
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-nez v0, :cond_0

    .line 2599
    invoke-direct {p0, v1}, Lcom/oppo/camera/OppoVideo;->removeMessage(I)V

    .line 2600
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2602
    :cond_0
    return-void
.end method

.method private registerVideo()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x3e8

    .line 2459
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    .line 2460
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2462
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "_size"

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2463
    iget-wide v1, p0, Lcom/oppo/camera/OppoVideo;->mRecordingLastTime:J

    cmp-long v1, v1, v5

    if-gez v1, :cond_0

    .line 2464
    iput-wide v5, p0, Lcom/oppo/camera/OppoVideo;->mRecordingLastTime:J

    .line 2466
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "duration"

    iget-wide v3, p0, Lcom/oppo/camera/OppoVideo;->mRecordingLastTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2468
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oppo/camera/OppoVideo;->mRecordingLastTime:J

    .line 2470
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2479
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 2480
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2482
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2507
    :cond_1
    return-void

    .line 2471
    :catch_0
    move-exception v0

    .line 2474
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2476
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private releaseMediaRecorder()V
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1199
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->cleanupEmptyFile()V

    .line 1200
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1201
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1203
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 1205
    :cond_0
    return-void
.end method

.method private removeMessage(I)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1352
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1953
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1954
    return-void
.end method

.method private resetWhenCameraError()V
    .locals 1

    .prologue
    .line 2593
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2594
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2595
    :cond_0
    return-void
.end method

.method private restartPreview()Z
    .locals 2

    .prologue
    .line 714
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 715
    :catch_0
    move-exception v0

    .line 716
    const-string v0, "OppoVideo"

    const-string v1, "restartPreview failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->showCameraErrorAndFinish()V

    .line 718
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendBoradCastToPauseMusic()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 433
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/oppo/camera/OppoVideo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 434
    .local v1, manager:Landroid/media/AudioManager;
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    .line 435
    .local v2, result:I
    if-ne v2, v5, :cond_0

    .line 436
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/camera/OppoVideo;->mIsBroadcastPauseMusic:Z

    .line 438
    :cond_0
    if-nez v2, :cond_1

    .line 439
    iput-boolean v5, p0, Lcom/oppo/camera/OppoVideo;->mIsBroadcastPauseMusic:Z

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.oppo.music.musicservicecommand.pause"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->sendBroadcast(Landroid/content/Intent;)V

    .line 443
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private sendBoradCastToRestoreMusic()V
    .locals 4

    .prologue
    .line 446
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/OppoVideo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 447
    .local v1, manager:Landroid/media/AudioManager;
    iget-boolean v2, p0, Lcom/oppo/camera/OppoVideo;->mIsBroadcastPauseMusic:Z

    if-nez v2, :cond_1

    .line 448
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-boolean v2, p0, Lcom/oppo/camera/OppoVideo;->mIsBroadcastPauseMusic:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.oppo.music.musicservicecommand.resume"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendBoradCastToStopRecordSound()V
    .locals 2

    .prologue
    .line 457
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.multimedia.soundrecorder.stopRecroderNormal"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, stopintent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->sendBroadcast(Landroid/content/Intent;)V

    .line 459
    return-void
.end method

.method private setCameraParameters()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1263
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1264
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setShutterSound(I)V

    .line 1267
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0x320

    const/16 v2, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1270
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1273
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_3

    .line 1274
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-size"

    const-string v2, "800x480"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :goto_0
    const-string v0, "debug.camera.yv12"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1286
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    const-string v0, "OppoVideo"

    const-string v1, "preview format set to YV12"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    const v1, 0x32315659

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 1292
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getZoomRatios()[F

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomRatios:[F

    .line 1293
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomRatios:[F

    array-length v0, v0

    iput v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomArrayLength:I

    .line 1294
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomMax:I

    .line 1295
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomValue:I

    if-eqz v0, :cond_1

    .line 1296
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/oppo/camera/OppoVideo;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1299
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneDetectMode(Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mFlashMode:Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    if-eq v0, v3, :cond_5

    .line 1309
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->turnOnLight()V

    .line 1316
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1318
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    :cond_2
    sget-object v0, Lcom/oppo/camera/OppoVideo;->OFF:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mContinuousAfState:Ljava/lang/String;

    .line 1323
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->turnOnContinuousAF()V

    .line 1325
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->doSafeSetParameters()V

    .line 1326
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1327
    return-void

    .line 1276
    :cond_3
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSize:Ljava/lang/String;

    const-string v1, "1080p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1277
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-size"

    const-string v2, "1920x1088"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1279
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-size"

    const-string v2, "1280x720"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1311
    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->turnOffLight()V

    goto :goto_1
.end method

.method private setOrientationIndicator(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 1375
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mHasFirstSetOrientationIndicator:Z

    if-nez v0, :cond_2

    .line 1376
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_1

    .line 1377
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnCameraIcon:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 1378
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnVideoIcon:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 1379
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStopBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 1380
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mResumeBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 1381
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mPauseBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 1382
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 1389
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStartRecordBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 1390
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setDegreeWithoutAnimation(I)V

    .line 1391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mHasFirstSetOrientationIndicator:Z

    .line 1410
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordingTimeView:Lcom/oppo/camera/views/RotateRecordingTimeView;

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordingTimeView:Lcom/oppo/camera/views/RotateRecordingTimeView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateRecordingTimeView;->setDegree(I)V

    .line 1413
    :cond_0
    return-void

    .line 1384
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnCancel:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 1385
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnRetake:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 1386
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnPlay:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 1387
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnDone:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    goto :goto_0

    .line 1393
    :cond_2
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_3

    .line 1394
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnCameraIcon:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1395
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnVideoIcon:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1396
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStopBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1397
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mResumeBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1398
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mPauseBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1399
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mLastVideoPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1406
    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStartRecordBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1407
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->setDegree(I)V

    goto :goto_1

    .line 1401
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnCancel:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1402
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnRetake:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1403
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnPlay:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1404
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnDone:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    goto :goto_2
.end method

.method private setParametersUnSafe()V
    .locals 3

    .prologue
    .line 1216
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    :goto_0
    return-void

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->closeCamera()V

    .line 685
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized setZoomValue(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v3, 0x42e6

    .line 1971
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 2003
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1974
    :cond_1
    if-gtz p1, :cond_4

    move p1, v0

    .line 1980
    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    .line 1981
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    .line 1982
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateZoomView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    .line 1983
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomImage:Landroid/widget/ImageView;

    .line 1985
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomRatios:[F

    if-eqz v0, :cond_0

    .line 1988
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    mul-int/lit16 v0, p1, 0x11c

    int-to-float v0, v0

    const/high16 v1, 0x4220

    div-float/2addr v0, v1

    .line 1989
    :goto_2
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mZoomImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1990
    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mZoomRatios:[F

    aget v2, v2, p1

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1991
    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mZoomRatios:[F

    aget v2, v2, p1

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1992
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1994
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oppo/camera/OppoVideo;->mZoomRatios:[F

    aget v3, v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateZoomView;->setText(Ljava/lang/CharSequence;)V

    .line 1995
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateZoomView;->setLength(I)V

    .line 1997
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1998
    iput p1, p0, Lcom/oppo/camera/OppoVideo;->mZoomValue:I

    .line 1999
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/oppo/camera/OppoVideo;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2002
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->setParametersUnSafe()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1971
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1976
    :cond_4
    :try_start_2
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomArrayLength:I

    if-lt p1, v0, :cond_2

    .line 1977
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomArrayLength:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 p1, v0, -0x1

    goto/16 :goto_1

    .line 1988
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private showAlert()V
    .locals 4

    .prologue
    .line 2398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/OppoVideo;->mLastClickTime:J

    .line 2399
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/OppoVideo;->fadeOut(Landroid/view/View;)V

    .line 2409
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 2410
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 2411
    invoke-virtual {p0, v3}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2412
    invoke-static {v3}, Lcom/oppo/camera/OppoVideo;->fadeIn(Landroid/view/View;)V

    .line 2410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2414
    :cond_0
    return-void

    .line 2409
    nop

    :array_0
    .array-data 0x4
        0xdt 0x0t 0xbt 0x7ft
        0xft 0x0t 0xbt 0x7ft
        0x11t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method private showCameraErrorAndFinish()V
    .locals 2

    .prologue
    .line 2581
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getResources()Landroid/content/res/Resources;

    .line 2582
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->resetWhenCameraError()V

    .line 2583
    const-string v0, "OppoVideo"

    const-string v1, "Some error happen,finish Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->finish()V

    .line 2586
    return-void
.end method

.method private showHintView(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateHintView;->setText(I)V

    .line 1722
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

    iget v1, p0, Lcom/oppo/camera/OppoVideo;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateHintView;->setDegree(I)V

    .line 1723
    return-void
.end method

.method private startPlayVideoActivity()V
    .locals 3

    .prologue
    .line 2443
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2446
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2449
    :goto_0
    return-void

    .line 2447
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startPreview()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 593
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    const-string v0, "OppoVideo"

    const-string v1, "startPreview E"

    invoke-static {v0, v1, v4}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 596
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoVideo;->ensureCameraDevice(I)V

    .line 597
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mErrorCallback:Lcom/oppo/camera/OppoVideo$ErrorCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 601
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    if-eqz v0, :cond_2

    .line 602
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->stopPreview()V

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_3

    .line 605
    const-string v0, "OppoVideo"

    const-string v1, "startPreview, mHolder.getSurface == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoVideo;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 608
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->setCameraParameters()V

    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 611
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    iput-boolean v4, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    .line 618
    iput v4, p0, Lcom/oppo/camera/OppoVideo;->mRestartCounter:I

    .line 619
    const-string v0, "OppoVideo"

    const-string v1, "startPreview X"

    invoke-static {v0, v1, v4}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->closeCamera()V

    .line 614
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startRecording()Z
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1041
    const-string v0, "OppoVideo"

    const-string v3, "startRecording E"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    if-eqz v0, :cond_0

    .line 1043
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->enableUI()V

    move v0, v1

    .line 1193
    :goto_0
    return v0

    .line 1047
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->turnOffContinuousAF()V

    .line 1048
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->sendBoradCastToPauseMusic()V

    .line 1049
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1051
    const-wide/16 v3, 0x0

    .line 1052
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    .line 1053
    const-string v0, "output"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1054
    if-eqz v0, :cond_1

    .line 1056
    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/OppoVideo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "rw"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/OppoVideo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1057
    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    :cond_1
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1066
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 1067
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1068
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v5}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1069
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1070
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/oppo/camera/OppoVideo;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1074
    :goto_2
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->getAudioRecordingState()Z

    move-result v5

    .line 1075
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordMode:Ljava/lang/String;

    const-string v6, "on"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v5, :cond_3

    .line 1076
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1079
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1082
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 1090
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_9

    .line 1091
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v6, 0x320

    const/16 v7, 0x1e0

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1093
    invoke-static {}, Lcom/oppo/camera/CameraHolder;->instance()Lcom/oppo/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v6, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    aget-object v0, v0, v6

    .line 1094
    iget v6, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v2, :cond_8

    .line 1095
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v6, p0, Lcom/oppo/camera/OppoVideo;->mOrientation:I

    sub-int/2addr v0, v6

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 1099
    :goto_3
    iget-object v6, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1118
    :cond_4
    :goto_4
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_d

    .line 1119
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v6, 0x61a80

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1120
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 1136
    :goto_5
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordMode:Ljava/lang/String;

    const-string v6, "on"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v5, :cond_5

    .line 1137
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 1141
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-static {}, Lcom/oppo/camera/utils/StorageManager;->getInternalAvailableStorage()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/oppo/camera/OppoVideo;->mAvailableSpace:J

    .line 1142
    iget-wide v5, p0, Lcom/oppo/camera/OppoVideo;->mAvailableSpace:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/32 v7, 0x1400000

    sub-long/2addr v5, v7

    .line 1143
    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-lez v0, :cond_12

    cmp-long v0, v3, v5

    if-gez v0, :cond_12

    .line 1146
    :goto_6
    const-wide v5, 0xc0000000L

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    .line 1147
    const-wide v3, 0xc0000000L

    .line 1150
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1155
    :goto_7
    :try_start_3
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->createVideoPath()V

    .line 1156
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoVideo;->deleteVideoFile(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    .line 1157
    goto/16 :goto_0

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1060
    const-string v3, "OppoVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1072
    :cond_7
    :try_start_4
    const-string v0, "OppoVideo"

    const-string v5, "startRecording , mMediaRecorder.setPreviewDisplay(surface) mHolder.getSurface == null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 1186
    :catch_1
    move-exception v0

    .line 1187
    invoke-direct {p0, v9}, Lcom/oppo/camera/OppoVideo;->removeMessage(I)V

    .line 1188
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1189
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->releaseMediaRecorder()V

    .line 1192
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v1

    .line 1193
    goto/16 :goto_0

    .line 1097
    :cond_8
    :try_start_5
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v6, p0, Lcom/oppo/camera/OppoVideo;->mOrientation:I

    add-int/2addr v0, v6

    rem-int/lit16 v0, v0, 0x168

    goto/16 :goto_3

    .line 1101
    :cond_9
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    if-ne v0, v2, :cond_a

    .line 1102
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v6, 0x500

    const/16 v7, 0x2d0

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1103
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mOrientation:I

    const/16 v6, 0x10e

    if-eq v0, v6, :cond_4

    .line 1104
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v6, 0xb4

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto/16 :goto_4

    .line 1107
    :cond_a
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mOrientation:I

    const/16 v6, 0x5a

    if-ne v0, v6, :cond_b

    .line 1108
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v6, 0xb4

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1110
    :cond_b
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSize:Ljava/lang/String;

    const-string v6, "1080p"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1111
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v6, 0x780

    const/16 v7, 0x440

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto/16 :goto_4

    .line 1113
    :cond_c
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v6, 0x500

    const/16 v7, 0x2d0

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto/16 :goto_4

    .line 1122
    :cond_d
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    if-nez v0, :cond_f

    .line 1124
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSize:Ljava/lang/String;

    const-string v6, "1080p"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1125
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v6, 0x7a1200

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1133
    :goto_8
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    goto/16 :goto_5

    .line 1127
    :cond_e
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v6, 0x5b8d80

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto :goto_8

    .line 1131
    :cond_f
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v6, 0x5b8d80

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto :goto_8

    .line 1151
    :catch_2
    move-exception v0

    .line 1152
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 1159
    :cond_10
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_11

    .line 1160
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/oppo/camera/OppoVideo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1162
    :try_start_6
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1169
    :goto_9
    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mShowRecordingMsg:Z

    .line 1170
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1171
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1173
    :try_start_8
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 1174
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1183
    :try_start_9
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->keepScreenOn()V

    .line 1184
    const-string v0, "OppoVideo"

    const-string v3, "startRecording X"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1185
    goto/16 :goto_0

    .line 1166
    :cond_11
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_9

    .line 1176
    :catch_3
    move-exception v0

    .line 1177
    const-string v2, "OppoVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecording Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1178
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoVideo;->removeMessage(I)V

    .line 1179
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->showCameraErrorAndFinish()V

    .line 1180
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->releaseMediaRecorder()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move v0, v1

    .line 1181
    goto/16 :goto_0

    .line 1163
    :catch_4
    move-exception v0

    goto :goto_9

    :cond_12
    move-wide v3, v5

    goto/16 :goto_6
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 672
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 673
    const-string v0, "OppoVideo"

    const-string v1, "stopPreview E"

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 674
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 676
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    .line 677
    const-string v0, "OppoVideo"

    const-string v1, "stopPreview X"

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 678
    return-void
.end method

.method private stopRecording()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 895
    const-string v0, "OppoVideo"

    const-string v1, "stopRecording E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iput-boolean v5, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    .line 897
    iput-boolean v6, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    .line 898
    iput-wide v2, p0, Lcom/oppo/camera/OppoVideo;->mTotalPausingTime:J

    .line 899
    iput-wide v2, p0, Lcom/oppo/camera/OppoVideo;->mLastPausingTime:J

    .line 900
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 903
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mShowRecordingMsg:Z

    if-nez v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 905
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 906
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 907
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->updateRecordingTime()V

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 911
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/StorageManager;->fileScan(Ljava/lang/String;)V

    .line 919
    iput-object v4, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 920
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_1

    .line 923
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 924
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 933
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->keepScreenOnAwhile()V

    .line 934
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->sendBoradCastToRestoreMusic()V

    .line 935
    const-string v0, "OppoVideo"

    const-string v1, "stopRecording X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return-void

    .line 912
    :catch_0
    move-exception v0

    .line 913
    const-string v1, "OppoVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 914
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 915
    iput-boolean v5, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    .line 916
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->cleanupEmptyFile()V

    goto :goto_0

    .line 925
    :catch_1
    move-exception v0

    .line 926
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->closeCamera()V

    .line 927
    const-string v1, "OppoVideo"

    const-string v2, "stopRecording exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->showCameraErrorAndFinish()V

    .line 929
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "failed to connect camera service"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private stopVideoRecording()V
    .locals 4

    .prologue
    .line 1646
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->stopRecording()V

    .line 1647
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->turnOnContinuousAFDelayed()V

    .line 1648
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 1649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/OppoVideo;->mStartStopRecord:J

    .line 1650
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mHideTimeViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1651
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1652
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1655
    :cond_0
    return-void
.end method

.method private stopVideoRecordingAndReturn(Z)V
    .locals 4
    .parameter "valid"

    .prologue
    .line 2360
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->stopRecording()V

    .line 2361
    if-eqz p1, :cond_0

    .line 2362
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 2364
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mHideTimeViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2365
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2366
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    if-nez v0, :cond_1

    .line 2368
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->registerVideo()V

    .line 2369
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2370
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoBrowser:Lcom/oppo/camera/utils/OppoBrowseVideo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OppoBrowseVideo;->updateThumbnailUri(Ljava/lang/String;)V

    .line 2371
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoBrowser:Lcom/oppo/camera/utils/OppoBrowseVideo;

    iget-object v0, v0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mLastVideoUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2374
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo;->doReturnToCaller(Z)V

    .line 2375
    return-void
.end method

.method private stopVideoRecordingAndShowAlert()V
    .locals 4

    .prologue
    .line 2379
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->stopRecording()V

    .line 2380
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 2381
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mHideTimeViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2382
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2383
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2384
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    if-nez v0, :cond_0

    .line 2386
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->registerVideo()V

    .line 2387
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2388
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoBrowser:Lcom/oppo/camera/utils/OppoBrowseVideo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OppoBrowseVideo;->updateThumbnailUri(Ljava/lang/String;)V

    .line 2389
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoBrowser:Lcom/oppo/camera/utils/OppoBrowseVideo;

    iget-object v0, v0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mLastVideoUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2392
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->showAlert()V

    .line 2393
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->fixKeyEventInterceptorInProcess([I)Z

    .line 2395
    return-void
.end method

.method private switchCameraId()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 577
    const-string v0, "OppoVideo"

    const-string v1, "switchCameraId E"

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 578
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    if-nez v0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/oppo/camera/OppoVideo;->mNumberOfCameras:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    .line 582
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "video face mode"

    iget v2, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 583
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomValue:I

    .line 584
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->disableUI()V

    .line 585
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->refreshMenu()V

    .line 586
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->stopPreview()V

    .line 587
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->closeCamera()V

    .line 588
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->restartPreview()Z

    .line 589
    const-string v0, "OppoVideo"

    const-string v1, "switchCameraId X"

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private turnOffContinuousAF()V
    .locals 2

    .prologue
    .line 1355
    sget-object v0, Lcom/oppo/camera/OppoVideo;->OFF:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mContinuousAfState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1372
    :cond_0
    :goto_0
    return-void

    .line 1359
    :cond_1
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoVideo;->removeMessage(I)V

    .line 1361
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mFocusView:Lcom/oppo/camera/views/FocusView;

    if-eqz v0, :cond_2

    .line 1362
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->clear()V

    .line 1365
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1367
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1368
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->setParametersUnSafe()V

    .line 1369
    sget-object v0, Lcom/oppo/camera/OppoVideo;->OFF:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mContinuousAfState:Ljava/lang/String;

    goto :goto_0
.end method

.method private turnOffLight()V
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1225
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->setParametersUnSafe()V

    .line 1227
    :cond_0
    return-void
.end method

.method private turnOnContinuousAF()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1330
    sget-object v0, Lcom/oppo/camera/OppoVideo;->ON:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mContinuousAfState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1333
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-nez v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1335
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1336
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v2}, Landroid/hardware/Camera$Parameters;->setTouchIndexAec(II)V

    .line 1337
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v2}, Landroid/hardware/Camera$Parameters;->setTouchIndexAf(II)V

    .line 1338
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->setParametersUnSafe()V

    .line 1339
    sget-object v0, Lcom/oppo/camera/OppoVideo;->ON:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mContinuousAfState:Ljava/lang/String;

    goto :goto_0
.end method

.method private turnOnContinuousAFDelayed()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 1344
    invoke-direct {p0, v3}, Lcom/oppo/camera/OppoVideo;->removeMessage(I)V

    .line 1345
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1346
    return-void
.end method

.method private turnOnLight()V
    .locals 2

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1210
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->setParametersUnSafe()V

    .line 1212
    :cond_0
    return-void
.end method

.method private updateLastVideoUri()V
    .locals 5

    .prologue
    .line 1929
    new-instance v1, Lcom/oppo/camera/utils/StringUtil;

    invoke-direct {v1}, Lcom/oppo/camera/utils/StringUtil;-><init>()V

    .line 1930
    .local v1, stringUtil:Lcom/oppo/camera/utils/StringUtil;
    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/utils/StringUtil;->getLatestFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1931
    .local v0, lastName:Ljava/lang/String;
    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mVideoBrowser:Lcom/oppo/camera/utils/OppoBrowseVideo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oppo/camera/OppoVideo;->mSavePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/camera/utils/OppoBrowseVideo;->updateThumbnailUri(Ljava/lang/String;)V

    .line 1932
    return-void
.end method

.method private updateRecordingIndicator(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2452
    if-eqz p1, :cond_0

    const v0, 0x7f0200cc

    .line 2453
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2454
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mStartRecordBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/views/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2455
    return-void

    .line 2452
    :cond_0
    const v0, 0x7f0200b8

    goto :goto_0
.end method

.method private updateRecordingTime()V
    .locals 12

    .prologue
    const-wide/16 v3, 0x3e8

    const/4 v11, 0x2

    const-wide/16 v9, 0x3c

    .line 1424
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 1461
    :goto_0
    return-void

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getDuration()I

    move-result v0

    int-to-long v0, v0

    .line 1428
    iput-wide v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordingLastTime:J

    .line 1429
    iget-boolean v2, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-nez v2, :cond_1

    .line 1430
    div-long/2addr v0, v3

    .line 1431
    mul-long/2addr v0, v3

    .line 1433
    :cond_1
    div-long v3, v0, v3

    .line 1434
    div-long v0, v3, v9

    .line 1435
    div-long v5, v0, v9

    .line 1436
    mul-long v7, v5, v9

    sub-long v7, v0, v7

    .line 1437
    mul-long/2addr v0, v9

    sub-long v0, v3, v0

    .line 1439
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1440
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v11, :cond_2

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1443
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1444
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v11, :cond_3

    .line 1445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1448
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1449
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v11, :cond_4

    .line 1450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1452
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1454
    const-wide/16 v1, 0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_5

    .line 1455
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mStartRecordBtn:Lcom/oppo/camera/views/RotateImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 1457
    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mRecordingTimeView:Lcom/oppo/camera/views/RotateRecordingTimeView;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/views/RotateRecordingTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 1459
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    const/4 v2, 0x1

    .line 2251
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2252
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    if-eqz v0, :cond_1

    .line 2272
    :cond_0
    :goto_0
    return v2

    .line 2255
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2258
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 2259
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/OppoVideo;->mMoveType:I

    .line 2261
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 2262
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2264
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mFocusView:Lcom/oppo/camera/views/FocusView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->isFocusing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2265
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2268
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsScaling:Z

    if-nez v0, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method protected getZoomRatios()[F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2006
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    .line 2008
    if-eqz v3, :cond_2

    .line 2009
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [F

    move v1, v0

    .line 2010
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 2011
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x42c8

    div-float/2addr v0, v4

    aput v0, v2, v1

    .line 2010
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2013
    :cond_0
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraId:I

    if-nez v0, :cond_1

    .line 2014
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, 0x4080

    aput v1, v2, v0

    .line 2015
    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    const v1, 0x40766666

    aput v1, v2, v0

    :cond_1
    move-object v0, v2

    .line 2024
    :goto_1
    return-object v0

    .line 2020
    :cond_2
    iget v1, p0, Lcom/oppo/camera/OppoVideo;->mZoomMax:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [F

    .line 2021
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 2022
    const/high16 v2, 0x3f80

    int-to-float v3, v0

    const v4, 0x3e4ccccd

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 2021
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 2024
    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2199
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    if-eqz v0, :cond_1

    .line 2221
    :cond_0
    :goto_0
    return-void

    .line 2202
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-eqz v0, :cond_2

    .line 2203
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->recordClick()V

    goto :goto_0

    .line 2217
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->finish()V

    .line 2220
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v2, 0x3e8

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1756
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    if-eqz v0, :cond_1

    .line 1909
    :cond_0
    :goto_0
    return-void

    .line 1760
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1874
    :sswitch_0
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->isClickValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1877
    iput-boolean v4, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    .line 1878
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->discardCurrentVideoAndInitRecorder()V

    .line 1880
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 1881
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1888
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->show()V

    .line 1889
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1762
    :sswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/OppoVideo;->mLastClickTime:J

    .line 1763
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_2

    .line 1764
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    invoke-virtual {v0}, Lcom/oppo/camera/views/Switcher;->setVideoMode()V

    .line 1766
    :cond_2
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    if-nez v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->isStoragePlaceEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-static {}, Lcom/oppo/camera/utils/StorageManager;->getInternalAvailableStorage()J

    move-result-wide v0

    .line 1771
    const-wide/32 v2, 0x1400000

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x200000

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 1772
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v1, 0x7f0a0007

    invoke-interface {v0, v1}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    goto :goto_0

    .line 1779
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mDisableKey:[I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->fixKeyEventInterceptorInProcess([I)Z

    .line 1780
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-nez v0, :cond_5

    .line 1783
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->disableUI()V

    .line 1784
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mNewVideoSettingMenu:Lcom/oppo/camera/setting/NewVideoSettingMenu;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/NewVideoSettingMenu;->hide()V

    .line 1785
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1786
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->startRecording()Z

    .line 1787
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mShowRecordingMsg:Z

    if-nez v0, :cond_0

    .line 1790
    iput-boolean v5, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    .line 1791
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 1792
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoVideo;->changeRecordingControlBar(Z)V

    .line 1793
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_4

    .line 1794
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mResumeBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v7}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 1795
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mPauseBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 1798
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordingStartTime:J

    .line 1799
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordingTimeView:Lcom/oppo/camera/views/RotateRecordingTimeView;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/views/RotateRecordingTimeView;->setVisibility(I)V

    .line 1800
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->updateRecordingTime()V

    goto/16 :goto_0

    .line 1802
    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->onStopVideoRecording()Z

    goto/16 :goto_0

    .line 1806
    :sswitch_2
    const-string v0, "OppoVideo"

    const-string v1, "Go to MoviePlayer review "

    invoke-static {v0, v1, v5}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1807
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_6

    .line 1808
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    invoke-virtual {v0}, Lcom/oppo/camera/views/Switcher;->setVideoMode()V

    .line 1810
    :cond_6
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mDoingAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    if-nez v0, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-static {}, Lcom/oppo/camera/utils/StorageManager;->hasInternalStorage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1815
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->checkStorage()V

    goto/16 :goto_0

    .line 1818
    :cond_7
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->disableUI()V

    .line 1819
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->updateLastVideoUri()V

    .line 1820
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoBrowser:Lcom/oppo/camera/utils/OppoBrowseVideo;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OppoBrowseVideo;->getVideoCount(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    .line 1821
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoBrowser:Lcom/oppo/camera/utils/OppoBrowseVideo;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OppoBrowseVideo;->viewLastVideo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1824
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->enableUI()V

    goto/16 :goto_0

    .line 1827
    :cond_8
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->enableUI()V

    goto/16 :goto_0

    .line 1831
    :sswitch_3
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->isClickValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordingLastTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    if-nez v0, :cond_0

    .line 1834
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->disableUI()V

    .line 1835
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->stopVideoRecording()V

    goto/16 :goto_0

    .line 1839
    :sswitch_4
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->isClickValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordingLastTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    if-nez v0, :cond_0

    .line 1842
    invoke-direct {p0, v6}, Lcom/oppo/camera/OppoVideo;->removeMessage(I)V

    .line 1845
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mPauseBtn:Lcom/oppo/camera/views/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 1846
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mResumeBtn:Lcom/oppo/camera/views/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 1847
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    .line 1848
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/OppoVideo;->mLastPausingTime:J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1849
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1855
    :sswitch_5
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->isClickValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/oppo/camera/OppoVideo;->mRecordingLastTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    if-nez v0, :cond_0

    .line 1858
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1860
    :try_start_2
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    .line 1861
    iget-wide v0, p0, Lcom/oppo/camera/OppoVideo;->mTotalPausingTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oppo/camera/OppoVideo;->mLastPausingTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oppo/camera/OppoVideo;->mTotalPausingTime:J

    .line 1862
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/OppoVideo;->mLastPausingTime:J

    .line 1863
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mResumeBtn:Lcom/oppo/camera/views/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 1864
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mPauseBtn:Lcom/oppo/camera/views/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1865
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 1871
    :sswitch_6
    invoke-direct {p0, v4}, Lcom/oppo/camera/OppoVideo;->stopVideoRecordingAndReturn(Z)V

    goto/16 :goto_0

    .line 1882
    :catch_2
    move-exception v0

    .line 1883
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->closeCamera()V

    .line 1884
    const-string v1, "OppoVideo"

    const-string v2, "onClick btn_retake Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->showCameraErrorAndFinish()V

    .line 1886
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "failed to connect camera service"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1893
    :sswitch_7
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-static {}, Lcom/oppo/camera/utils/StorageManager;->hasInternalStorage()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1894
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->checkStorage()V

    goto/16 :goto_0

    .line 1897
    :cond_9
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->startPlayVideoActivity()V

    goto/16 :goto_0

    .line 1902
    :sswitch_8
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-static {}, Lcom/oppo/camera/utils/StorageManager;->hasInternalStorage()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1903
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->checkStorage()V

    goto/16 :goto_0

    .line 1906
    :cond_a
    invoke-direct {p0, v5}, Lcom/oppo/camera/OppoVideo;->doReturnToCaller(Z)V

    goto/16 :goto_0

    .line 1760
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b000d -> :sswitch_0
        0x7f0b000e -> :sswitch_6
        0x7f0b000f -> :sswitch_8
        0x7f0b0010 -> :sswitch_1
        0x7f0b0011 -> :sswitch_7
        0x7f0b006f -> :sswitch_2
        0x7f0b0071 -> :sswitch_3
        0x7f0b0072 -> :sswitch_4
        0x7f0b0073 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 291
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mDisableKey:[I

    invoke-virtual {p0, v1}, Lcom/oppo/camera/OppoVideo;->fixKeyEventInterceptorInProcess([I)Z

    .line 292
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->initVideoSettings()V

    .line 295
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/oppo/camera/OppoVideo;->mDevlatch:Ljava/util/concurrent/CountDownLatch;

    .line 296
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oppo/camera/OppoVideo$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/OppoVideo$2;-><init>(Lcom/oppo/camera/OppoVideo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 317
    .local v0, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 319
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 320
    const v1, 0x7f030014

    invoke-virtual {p0, v1}, Lcom/oppo/camera/OppoVideo;->setContentView(I)V

    .line 322
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->isVideoCaptureIntent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    .line 323
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->initUi()V

    .line 325
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/utils/ScreenOffUtil;->instance(Landroid/content/Context;)Lcom/oppo/camera/utils/ScreenOffUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/OppoVideo;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    .line 326
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/OppoVideo;->mContentResolver:Landroid/content/ContentResolver;

    .line 327
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.quickCapture"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mQuickCapture:Z

    .line 329
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mDevlatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 331
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/OppoVideo;->mHolder:Landroid/view/SurfaceHolder;

    .line 332
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 333
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 335
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->disableUI()V

    .line 336
    new-instance v1, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;

    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;-><init>(Lcom/oppo/camera/OppoVideo;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/camera/OppoVideo;->mOrientationListener:Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;

    .line 337
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v1}, Lcom/oppo/camera/utils/ScreenOffUtil;->registerScreenOffReceiver()V

    .line 338
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v1, p0}, Lcom/oppo/camera/utils/ScreenOffUtil;->setOnScreenOffListener(Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;)V

    .line 339
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->inflateShotAnimView()V

    .line 341
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 342
    iget-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mStartPreviewFail:Z

    if-eqz v1, :cond_0

    .line 343
    const-string v1, "OppoVideo"

    const-string v2, "onCreate, mStartPreviewFail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->showCameraErrorAndFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v1

    .line 350
    :cond_0
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/oppo/camera/OppoVideo$MultiGestureListener;

    invoke-direct {v3, p0, v4}, Lcom/oppo/camera/OppoVideo$MultiGestureListener;-><init>(Lcom/oppo/camera/OppoVideo;Lcom/oppo/camera/OppoVideo$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/oppo/camera/OppoVideo;->mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 351
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;

    invoke-direct {v3, p0, v4}, Lcom/oppo/camera/OppoVideo$TouchGestureDetectorListener;-><init>(Lcom/oppo/camera/OppoVideo;Lcom/oppo/camera/OppoVideo$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/oppo/camera/OppoVideo;->mGestureDetector:Landroid/view/GestureDetector;

    .line 352
    iput-object v4, p0, Lcom/oppo/camera/OppoVideo;->mDevlatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 758
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 759
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->recycleBitmap()V

    .line 760
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 762
    iput-object v1, p0, Lcom/oppo/camera/OppoVideo;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/ScreenOffUtil;->setOnScreenOffListener(Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;)V

    .line 765
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/ScreenOffUtil;->unRegisterScreenOffReceiver()V

    .line 766
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/PlayEffectSound;->destory()V

    .line 767
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1665
    if-ne p2, v2, :cond_0

    .line 1668
    const-string v0, "OppoVideo"

    const-string v1, "Error : MEDIA_RECORDER_ERROR_UNKNOWN"

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1669
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->onStopVideoRecording()Z

    .line 1670
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->fixKeyEventInterceptorInProcess([I)Z

    .line 1672
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1681
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1682
    const-string v0, "OppoVideo"

    const-string v1, "Error : MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1683
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->onStopVideoRecording()Z

    .line 1699
    :cond_0
    :goto_0
    return-void

    .line 1684
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1685
    const-string v0, "OppoVideo"

    const-string v1, "Error : MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1686
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-eqz v0, :cond_2

    .line 1687
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->onStopVideoRecording()Z

    .line 1689
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

    if-eqz v0, :cond_0

    .line 1690
    const v0, 0x7f0a0015

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoVideo;->showHintView(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    .line 2162
    sparse-switch p1, :sswitch_data_0

    .line 2194
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 2166
    :sswitch_1
    iget-boolean v2, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    if-eqz v2, :cond_0

    .line 2167
    iget-boolean v2, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    if-nez v2, :cond_2

    .line 2168
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->turnOffContinuousAF()V

    .line 2171
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 2172
    const/4 v0, 0x1

    .line 2176
    .local v0, step:I
    :goto_1
    iget v2, p0, Lcom/oppo/camera/OppoVideo;->mZoomValue:I

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/oppo/camera/OppoVideo;->setZoomValue(I)V

    goto :goto_0

    .line 2174
    .end local v0           #step:I
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    div-int/lit8 v0, v2, 0x3

    .restart local v0       #step:I
    goto :goto_1

    .line 2180
    .end local v0           #step:I
    :sswitch_2
    iget-boolean v2, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    if-eqz v2, :cond_0

    .line 2181
    iget-boolean v2, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    if-nez v2, :cond_5

    .line 2182
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->turnOffContinuousAF()V

    .line 2185
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 2186
    const/4 v0, 0x1

    .line 2190
    .restart local v0       #step:I
    :goto_2
    iget v2, p0, Lcom/oppo/camera/OppoVideo;->mZoomValue:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/oppo/camera/OppoVideo;->setZoomValue(I)V

    goto :goto_0

    .line 2188
    .end local v0           #step:I
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    div-int/lit8 v0, v2, 0x3

    .restart local v0       #step:I
    goto :goto_2

    .line 2162
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 2226
    sparse-switch p1, :sswitch_data_0

    .line 2246
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 2230
    :sswitch_1
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 2231
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2233
    :cond_1
    iget-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    if-nez v1, :cond_0

    .line 2234
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->turnOnContinuousAF()V

    goto :goto_0

    .line 2238
    :sswitch_2
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 2239
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2241
    :cond_3
    iget-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    :cond_4
    iget-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    if-nez v1, :cond_0

    .line 2242
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->turnOnContinuousAF()V

    goto :goto_0

    .line 2226
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 770
    const-string v0, "OppoVideo"

    const-string v1, "onPause E"

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 771
    iput-boolean v3, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    .line 772
    iput-boolean v2, p0, Lcom/oppo/camera/OppoVideo;->mIsScaling:Z

    .line 773
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mZoomLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->onPause()V

    .line 779
    :cond_1
    iput-boolean v2, p0, Lcom/oppo/camera/OppoVideo;->mDoingAnimation:Z

    .line 784
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mHasRegisterReceiver:Z

    if-eqz v0, :cond_2

    .line 785
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 786
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->unRegisterReveiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 793
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 794
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-eqz v0, :cond_3

    .line 795
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->stopVideoRecording()V

    .line 796
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoVideo;->changeRecordingControlBar(Z)V

    .line 806
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    .line 808
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 809
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->turnOffLight()V

    .line 810
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "video flash mode"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 816
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->stopPreview()V

    .line 817
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->closeCamera()V

    .line 822
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mOrientationListener:Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;->disable()V

    .line 824
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->resetScreenOn()V

    .line 826
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 827
    const-string v0, "OppoVideo"

    const-string v1, "onPause X"

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 828
    return-void

    .line 788
    :catch_0
    move-exception v0

    .line 789
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 811
    :catch_1
    move-exception v0

    .line 812
    const-string v0, "OppoVideo"

    const-string v1, "onPause, lock camera device exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->showCameraErrorAndFinish()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 831
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 832
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->disableUI()V

    .line 833
    const-string v0, "OppoVideo"

    const-string v1, "onResume E"

    invoke-static {v0, v1, v5}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 834
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 835
    sget-object v0, Lcom/oppo/camera/CommConfig;->CAMERA_SETTING_SHAREPREFERENCE:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/oppo/camera/OppoVideo;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    .line 836
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mVideoSettingSharePref:Landroid/content/SharedPreferences;

    const-string v1, "camera sound mode"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mShutterSound:Ljava/lang/String;

    .line 837
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mShutterSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->setShutterSound(Ljava/lang/String;)V

    .line 838
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mShutterSound:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnCancel:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/views/RotateImageView;->setSoundEffectsEnabled(Z)V

    .line 840
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnRetake:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/views/RotateImageView;->setSoundEffectsEnabled(Z)V

    .line 841
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnPlay:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/views/RotateImageView;->setSoundEffectsEnabled(Z)V

    .line 842
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mBtnDone:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/views/RotateImageView;->setSoundEffectsEnabled(Z)V

    .line 844
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->fixKeyEventInterceptorInProcess([I)Z

    .line 845
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mOrientationListener:Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/oppo/camera/OppoVideo$MyOrientationEventListener;->enable()V

    .line 846
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->sendBoradCastToStopRecordSound()V

    .line 847
    iput-boolean v4, p0, Lcom/oppo/camera/OppoVideo;->mPausing:Z

    .line 848
    iput-boolean v4, p0, Lcom/oppo/camera/OppoVideo;->mStoping:Z

    .line 849
    iput-boolean v4, p0, Lcom/oppo/camera/OppoVideo;->mIsScaling:Z

    .line 850
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->onResume()V

    .line 853
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->brightnessMax()V

    .line 854
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_2

    .line 855
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 857
    :cond_2
    iput-boolean v4, p0, Lcom/oppo/camera/OppoVideo;->mHasFirstSetOrientationIndicator:Z

    .line 859
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->registerReceiver()V

    .line 861
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 862
    const-string v1, "CAM_ON_BEFOR_HDMI_PLUG_IN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 863
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 864
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 865
    const-string v1, "android.intent.action.ACTION_USB_SELECED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 866
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 867
    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/OppoVideo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 868
    iput-boolean v5, p0, Lcom/oppo/camera/OppoVideo;->mHasRegisterReceiver:Z

    .line 869
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mStartPreviewFail:Z

    if-nez v0, :cond_3

    .line 871
    new-instance v0, Lcom/oppo/camera/OppoVideo$5;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoVideo$5;-><init>(Lcom/oppo/camera/OppoVideo;)V

    .line 881
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 882
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 884
    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->keepScreenOnAwhile()V

    .line 885
    iput-wide v6, p0, Lcom/oppo/camera/OppoVideo;->mCurrentTime:J

    .line 886
    iput-wide v6, p0, Lcom/oppo/camera/OppoVideo;->mPreTouchFocusTime:J

    .line 887
    iput-wide v6, p0, Lcom/oppo/camera/OppoVideo;->mLastClickTime:J

    .line 888
    const-string v0, "OppoVideo"

    const-string v1, "onResume X"

    invoke-static {v0, v1, v5}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 889
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->getAudioRecordingState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 890
    const v0, 0x7f0a002c

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 892
    :cond_4
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 2575
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoVideo;->setRequestedOrientation(I)V

    .line 2576
    invoke-virtual {p0}, Lcom/oppo/camera/OppoVideo;->finish()V

    .line 2577
    return-void
.end method

.method public onSwitchChanged(Lcom/oppo/camera/views/Switcher;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    .line 971
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    if-nez v0, :cond_1

    .line 972
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    invoke-virtual {v0}, Lcom/oppo/camera/views/Switcher;->setVideoMode()V

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/camera/views/Switcher;->getState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mCurrentState:Z

    .line 976
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-eqz v0, :cond_2

    .line 980
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/Switcher;->setState(Z)V

    goto :goto_0

    .line 987
    :cond_2
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mCurrentState:Z

    if-eqz v0, :cond_0

    .line 989
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mPressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/OppoVideo;->mPressCount:I

    .line 990
    iget v0, p0, Lcom/oppo/camera/OppoVideo;->mPressCount:I

    if-ne v0, v1, :cond_0

    .line 991
    iput-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mIntentStart:Z

    .line 992
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->disableUI()V

    .line 993
    iput-boolean v1, p0, Lcom/oppo/camera/OppoVideo;->mCloseActivity:Z

    .line 994
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/OppoVideo;->mSwitchChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1946
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1947
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mRecording:Z

    if-nez v0, :cond_0

    .line 1948
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->keepScreenOnAwhile()V

    .line 1949
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 726
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iput-object p1, p0, Lcom/oppo/camera/OppoVideo;->mHolder:Landroid/view/SurfaceHolder;

    .line 730
    iget-object v0, p0, Lcom/oppo/camera/OppoVideo;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 733
    iget-boolean v0, p0, Lcom/oppo/camera/OppoVideo;->mPreviewing:Z

    if-eqz v0, :cond_3

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 734
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 735
    const-string v0, "OppoVideo"

    const-string v1, "surfaceChanged , holder.getSurface == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_2
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoVideo;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 739
    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->restartPreview()Z

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 745
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 746
    const-string v0, "OppoVideo"

    const-string v1, "surfaceCreated , holder.getSurface == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/oppo/camera/OppoVideo;->stopPreview()V

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/OppoVideo;->mHolder:Landroid/view/SurfaceHolder;

    .line 754
    return-void
.end method
