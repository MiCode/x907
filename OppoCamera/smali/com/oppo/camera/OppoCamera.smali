.class public Lcom/oppo/camera/OppoCamera;
.super Landroid/app/Activity;
.source "OppoCamera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;
.implements Lcom/oppo/camera/views/Switcher$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/OppoCamera$TouchFocusCallback;,
        Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;,
        Lcom/oppo/camera/OppoCamera$LocationListener;,
        Lcom/oppo/camera/OppoCamera$MultiGestureListener;,
        Lcom/oppo/camera/OppoCamera$GestureDetectorListener;,
        Lcom/oppo/camera/OppoCamera$MainHandler;,
        Lcom/oppo/camera/OppoCamera$ErrorCallback;,
        Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;
    }
.end annotation


# static fields
.field private static FOCUSAREA_LEFT:I

.field private static FOCUSAREA_RIGHT:I

.field public static OFF:Ljava/lang/String;

.field public static ON:Ljava/lang/String;


# instance fields
.field private FACE_BEAUTIFY_FRONT_ONLY:Z

.field private mAnimationIsActive:Z

.field private mAnimationListener:Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;

.field private mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

.field private mCameraId:I

.field private mCameraRotateIcon:Lcom/oppo/camera/views/RotateImageView;

.field private mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

.field private mCameraSettingsSharePref:Landroid/content/SharedPreferences;

.field private mCaptureOnlyData:[B

.field private mClickBackCount:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContinuousAfCallback:Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;

.field private mContinuousAfState:Ljava/lang/String;

.field private mControlBar:Landroid/view/View;

.field private mControlBarRootView:Landroid/view/ViewGroup;

.field private mCount:I

.field private mCropValue:Ljava/lang/String;

.field private mCurrentState:Z

.field private mDevlatch:Ljava/util/concurrent/CountDownLatch;

.field private mDisableKey:[I

.field private mDoSnapAfterFocusComplete:Z

.field private final mErrorCallback:Lcom/oppo/camera/OppoCamera$ErrorCallback;

.field private mFCamera:Lcom/scalado/camera/FeatureCamera;

.field private mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

.field private mFaceBeautifyMode:Ljava/lang/String;

.field private mFeatureMode:I

.field private mFlashMode:Ljava/lang/String;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusState:I

.field private mFocusView:Lcom/oppo/camera/views/FocusView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHasDoAnimationWithPostView:Z

.field private mHasFirstSetOrientationIndicator:Z

.field private mHdr:Lcom/scalado/camera/hdr2/HDR2;

.field private mHdrListener:Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mImageHasSaved:Z

.field private mIsEnable:Z

.field private mIsExitable:Z

.field private mIsImageCaptureIntent:Z

.field private mIsPhoneCall:Z

.field private mIsPictureTaken:Z

.field private mIsTouchAf:Z

.field private mJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

.field mLocationListeners:[Lcom/oppo/camera/OppoCamera$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLowLightListener:Lcom/scalado/camera/lowlight/LowLight$LowLightListener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

.field private mMoveType:I

.field private mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mNaturalFlashListener:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;

.field private mNumberOfCameras:I

.field private mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;

.field private mPausing:Z

.field private mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

.field private mPostViewCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mPressCount:I

.field private mPreviewing:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordLocation:Z

.field private mRestartCounter:I

.field private mReviewFrame:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/ViewGroup;

.field private mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

.field private mRotation:I

.field private mSavePath:Ljava/lang/String;

.field private mSaveUri:Landroid/net/Uri;

.field private mScreenHintListener:Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;

.field private mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

.field private mSettingsChangedListener:Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;

.field private mShotAnimBitmapSmall:Landroid/graphics/Bitmap;

.field protected mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

.field private mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

.field private final mShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

.field private mShutterSound:Ljava/lang/String;

.field private mShutterWaitProgressView:Lcom/oppo/camera/views/ShutterWaitProgressView;

.field private mStartPreviewFail:Z

.field private mStartSpan:F

.field private mStartZoomValue:I

.field private mStatus:I

.field private mStorageManager:Lcom/oppo/camera/utils/StorageManager;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSwitchChangedRunnable:Ljava/lang/Runnable;

.field private mSwitcher:Lcom/oppo/camera/views/Switcher;

.field private mTempBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

.field private mTimeFlag:J

.field private mTimerModeBackId:Ljava/lang/String;

.field private mTimerModeFrontId:Ljava/lang/String;

.field private mTimerOutListener:Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;

.field private mTimerSnapShotManager:Lcom/oppo/camera/utils/TimerSnapShotManager;

.field private mTouchFocusCallback:Lcom/oppo/camera/OppoCamera$TouchFocusCallback;

.field private mVideoRotatIcon:Lcom/oppo/camera/views/RotateImageView;

.field private mZoomArrayLength:I

.field private mZoomImage:Landroid/widget/ImageView;

.field private mZoomLayout:Landroid/widget/RelativeLayout;

.field private mZoomMax:I

.field protected mZoomRatios:[F

.field private mZoomText:Lcom/oppo/camera/views/RotateZoomView;

.field private mZoomValue:I

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const-string v0, "on"

    sput-object v0, Lcom/oppo/camera/OppoCamera;->ON:Ljava/lang/String;

    .line 165
    const-string v0, "off"

    sput-object v0, Lcom/oppo/camera/OppoCamera;->OFF:Ljava/lang/String;

    .line 204
    const/16 v0, 0x2b7

    sput v0, Lcom/oppo/camera/OppoCamera;->FOCUSAREA_RIGHT:I

    .line 205
    const/16 v0, 0x78

    sput v0, Lcom/oppo/camera/OppoCamera;->FOCUSAREA_LEFT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 136
    iput-boolean v4, p0, Lcom/oppo/camera/OppoCamera;->FACE_BEAUTIFY_FRONT_ONLY:Z

    .line 147
    iput v3, p0, Lcom/oppo/camera/OppoCamera;->mOrientationCompensation:I

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/OppoCamera;->mOrientation:I

    .line 155
    new-instance v0, Lcom/oppo/camera/OppoCamera$ErrorCallback;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/OppoCamera$ErrorCallback;-><init>(Lcom/oppo/camera/OppoCamera;Lcom/oppo/camera/OppoCamera$1;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mErrorCallback:Lcom/oppo/camera/OppoCamera$ErrorCallback;

    .line 161
    new-instance v0, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;-><init>(Lcom/oppo/camera/OppoCamera;Lcom/oppo/camera/OppoCamera$1;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mContinuousAfCallback:Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;

    .line 162
    new-instance v0, Lcom/oppo/camera/OppoCamera$TouchFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/OppoCamera$TouchFocusCallback;-><init>(Lcom/oppo/camera/OppoCamera;Lcom/oppo/camera/OppoCamera$1;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTouchFocusCallback:Lcom/oppo/camera/OppoCamera$TouchFocusCallback;

    .line 163
    sget-object v0, Lcom/oppo/camera/OppoCamera;->OFF:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mContinuousAfState:Ljava/lang/String;

    .line 187
    iput v3, p0, Lcom/oppo/camera/OppoCamera;->mMoveType:I

    .line 193
    iput v3, p0, Lcom/oppo/camera/OppoCamera;->mFocusState:I

    .line 198
    iput-object v1, p0, Lcom/oppo/camera/OppoCamera;->mLocationManager:Landroid/location/LocationManager;

    .line 199
    iput-boolean v4, p0, Lcom/oppo/camera/OppoCamera;->mRecordLocation:Z

    .line 206
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/oppo/camera/OppoCamera;->mStartSpan:F

    .line 243
    iput v4, p0, Lcom/oppo/camera/OppoCamera;->mRestartCounter:I

    .line 250
    iput-boolean v3, p0, Lcom/oppo/camera/OppoCamera;->mAnimationIsActive:Z

    .line 270
    iput-boolean v3, p0, Lcom/oppo/camera/OppoCamera;->mStartPreviewFail:Z

    .line 275
    iput v4, p0, Lcom/oppo/camera/OppoCamera;->mStatus:I

    .line 276
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mDisableKey:[I

    .line 285
    iput-boolean v3, p0, Lcom/oppo/camera/OppoCamera;->mHasDoAnimationWithPostView:Z

    .line 297
    new-instance v0, Lcom/oppo/camera/OppoCamera$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$1;-><init>(Lcom/oppo/camera/OppoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 423
    new-instance v0, Lcom/oppo/camera/OppoCamera$3;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$3;-><init>(Lcom/oppo/camera/OppoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mAnimationListener:Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;

    .line 469
    new-instance v0, Lcom/oppo/camera/OppoCamera$4;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$4;-><init>(Lcom/oppo/camera/OppoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->runnable:Ljava/lang/Runnable;

    .line 546
    new-instance v0, Lcom/oppo/camera/OppoCamera$5;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$5;-><init>(Lcom/oppo/camera/OppoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mSettingsChangedListener:Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;

    .line 1133
    iput v3, p0, Lcom/oppo/camera/OppoCamera;->mRotation:I

    .line 1335
    new-instance v0, Lcom/oppo/camera/OppoCamera$8;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$8;-><init>(Lcom/oppo/camera/OppoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    .line 1438
    new-instance v0, Lcom/oppo/camera/OppoCamera$9;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$9;-><init>(Lcom/oppo/camera/OppoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mPostViewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    .line 1500
    new-instance v0, Lcom/oppo/camera/OppoCamera$10;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$10;-><init>(Lcom/oppo/camera/OppoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mSwitchChangedRunnable:Ljava/lang/Runnable;

    .line 2167
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mMatrix:Landroid/graphics/Matrix;

    .line 2243
    new-array v0, v2, [Lcom/oppo/camera/OppoCamera$LocationListener;

    new-instance v1, Lcom/oppo/camera/OppoCamera$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/OppoCamera$LocationListener;-><init>(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/oppo/camera/OppoCamera$LocationListener;

    const-string v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/OppoCamera$LocationListener;-><init>(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mLocationListeners:[Lcom/oppo/camera/OppoCamera$LocationListener;

    .line 2841
    new-instance v0, Lcom/oppo/camera/OppoCamera$11;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$11;-><init>(Lcom/oppo/camera/OppoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    .line 2861
    new-instance v0, Lcom/oppo/camera/OppoCamera$12;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$12;-><init>(Lcom/oppo/camera/OppoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHdrListener:Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;

    .line 2908
    new-instance v0, Lcom/oppo/camera/OppoCamera$14;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$14;-><init>(Lcom/oppo/camera/OppoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mLowLightListener:Lcom/scalado/camera/lowlight/LowLight$LowLightListener;

    .line 2926
    new-instance v0, Lcom/oppo/camera/OppoCamera$15;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$15;-><init>(Lcom/oppo/camera/OppoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mNaturalFlashListener:Lcom/scalado/camera/naturalflash/NaturalFlash$NaturalFlashListener;

    .line 2957
    new-instance v0, Lcom/oppo/camera/OppoCamera$16;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$16;-><init>(Lcom/oppo/camera/OppoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

    .line 2983
    new-instance v0, Lcom/oppo/camera/OppoCamera$17;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$17;-><init>(Lcom/oppo/camera/OppoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    .line 2992
    new-instance v0, Lcom/oppo/camera/OppoCamera$18;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$18;-><init>(Lcom/oppo/camera/OppoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mScreenHintListener:Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;

    .line 3000
    new-instance v0, Lcom/oppo/camera/OppoCamera$19;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$19;-><init>(Lcom/oppo/camera/OppoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerOutListener:Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;

    return-void

    .line 276
    nop

    :array_0
    .array-data 0x4
        0x1at 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1002(Lcom/oppo/camera/OppoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/oppo/camera/OppoCamera;->mStartPreviewFail:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->startPreview()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oppo/camera/OppoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPausing:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/oppo/camera/OppoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oppo/camera/OppoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->enableUI()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oppo/camera/OppoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mImageHasSaved:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/oppo/camera/OppoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/oppo/camera/OppoCamera;->mImageHasSaved:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/oppo/camera/OppoCamera;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mDisableKey:[I

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oppo/camera/OppoCamera;[I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/oppo/camera/OppoCamera;->fixKeyEventInterceptorInProcess([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/oppo/camera/OppoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mRotation:I

    return v0
.end method

.method static synthetic access$2300(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/views/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->recycleBitmap()V

    return-void
.end method

.method static synthetic access$2502(Lcom/oppo/camera/OppoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/oppo/camera/OppoCamera;->mAnimationIsActive:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/oppo/camera/OppoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->removeMsg(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/oppo/camera/OppoCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->handleTakePicture()V

    return-void
.end method

.method static synthetic access$2900(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->handleCameraIdChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/camera/OppoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->handleFlashModeChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/oppo/camera/OppoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->handleHdrModeChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->handleSoundModeChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->handleTimerModeChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->handleFaceBeautifyModeChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->refreshThumbNail()V

    return-void
.end method

.method static synthetic access$3600(Lcom/oppo/camera/OppoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mHasDoAnimationWithPostView:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/oppo/camera/OppoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/oppo/camera/OppoCamera;->mHasDoAnimationWithPostView:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/oppo/camera/OppoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/oppo/camera/OppoCamera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/utils/PlayEffectSound;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/oppo/camera/OppoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->getSmallShotAnimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/oppo/camera/OppoCamera;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/OppoCamera;->createName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/oppo/camera/OppoCamera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/oppo/camera/OppoCamera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/oppo/camera/OppoCamera;Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 124
    invoke-direct/range {p0 .. p8}, Lcom/oppo/camera/OppoCamera;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/utils/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/oppo/camera/OppoCamera;[I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/oppo/camera/OppoCamera;->fixKeyEventInterceptorInProcess([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/oppo/camera/OppoCamera;)Lcom/scalado/camera/FeatureCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/oppo/camera/OppoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    return p1
.end method

.method static synthetic access$4902(Lcom/oppo/camera/OppoCamera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera;->mCaptureOnlyData:[B

    return-object p1
.end method

.method static synthetic access$500(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/setting/NewCameraSettingMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/oppo/camera/OppoCamera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mReviewFrame:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/oppo/camera/OppoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/oppo/camera/OppoCamera;->mStatus:I

    return p1
.end method

.method static synthetic access$5200(Lcom/oppo/camera/OppoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$5300(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->activityChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/oppo/camera/OppoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mOrientation:I

    return v0
.end method

.method static synthetic access$5402(Lcom/oppo/camera/OppoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/oppo/camera/OppoCamera;->mOrientation:I

    return p1
.end method

.method static synthetic access$5500(Lcom/oppo/camera/OppoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$5502(Lcom/oppo/camera/OppoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/oppo/camera/OppoCamera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$5600(Lcom/oppo/camera/OppoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/views/RotateZoomView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/oppo/camera/OppoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mRestartCounter:I

    return v0
.end method

.method static synthetic access$5802(Lcom/oppo/camera/OppoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/oppo/camera/OppoCamera;->mRestartCounter:I

    return p1
.end method

.method static synthetic access$5900(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->closeCamera()V

    return-void
.end method

.method static synthetic access$600(Lcom/oppo/camera/OppoCamera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterSound:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->turnOnContiniousAF()V

    return-void
.end method

.method static synthetic access$6100(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->handleTakePictureTimeout()V

    return-void
.end method

.method static synthetic access$6202(Lcom/oppo/camera/OppoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/oppo/camera/OppoCamera;->mIsExitable:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/oppo/camera/OppoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->restartPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6402(Lcom/oppo/camera/OppoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/oppo/camera/OppoCamera;->mClickBackCount:I

    return p1
.end method

.method static synthetic access$6500(Lcom/oppo/camera/OppoCamera;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/oppo/camera/OppoCamera;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera;->mHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/oppo/camera/OppoCamera;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/oppo/camera/OppoCamera;Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->showCameraErrorAndFinish()V

    return-void
.end method

.method static synthetic access$6900(Lcom/oppo/camera/OppoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusState:I

    return v0
.end method

.method static synthetic access$6902(Lcom/oppo/camera/OppoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/oppo/camera/OppoCamera;->mFocusState:I

    return p1
.end method

.method static synthetic access$7000(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->doSnapAfterFocusFinished()V

    return-void
.end method

.method static synthetic access$702(Lcom/oppo/camera/OppoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/oppo/camera/OppoCamera;->mIsPhoneCall:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/oppo/camera/OppoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsEnable:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/utils/TimerSnapShotManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerSnapShotManager:Lcom/oppo/camera/utils/TimerSnapShotManager;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/oppo/camera/OppoCamera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerModeBackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/oppo/camera/OppoCamera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerModeFrontId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/oppo/camera/OppoCamera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->setTimerBtnEnable(Z)V

    return-void
.end method

.method static synthetic access$7600(Lcom/oppo/camera/OppoCamera;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->doAutoFocus(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/oppo/camera/OppoCamera;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mStartSpan:F

    return v0
.end method

.method static synthetic access$7702(Lcom/oppo/camera/OppoCamera;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/oppo/camera/OppoCamera;->mStartSpan:F

    return p1
.end method

.method static synthetic access$7800(Lcom/oppo/camera/OppoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mStartZoomValue:I

    return v0
.end method

.method static synthetic access$7802(Lcom/oppo/camera/OppoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/oppo/camera/OppoCamera;->mStartZoomValue:I

    return p1
.end method

.method static synthetic access$7900(Lcom/oppo/camera/OppoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomMax:I

    return v0
.end method

.method static synthetic access$8000(Lcom/oppo/camera/OppoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->setZoomValue(I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->clearFocusView()V

    return-void
.end method

.method static synthetic access$8200(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$8300(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->turnOffContiniousAF()V

    return-void
.end method

.method static synthetic access$8402(Lcom/oppo/camera/OppoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/oppo/camera/OppoCamera;->mMoveType:I

    return p1
.end method

.method static synthetic access$8500(Lcom/oppo/camera/OppoCamera;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/oppo/camera/OppoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mDoSnapAfterFocusComplete:Z

    return v0
.end method

.method static synthetic access$8700(Lcom/oppo/camera/OppoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsTouchAf:Z

    return v0
.end method

.method static synthetic access$8702(Lcom/oppo/camera/OppoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/oppo/camera/OppoCamera;->mIsTouchAf:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/views/FocusView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/oppo/camera/OppoCamera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->playFocusSound(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/oppo/camera/OppoCamera;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mDevlatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/oppo/camera/OppoCamera;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->doFeatureAnimation([B)V

    return-void
.end method

.method static synthetic access$9100(Lcom/oppo/camera/OppoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->showControlBar()V

    return-void
.end method

.method static synthetic access$9200(Lcom/oppo/camera/OppoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->showHintView(I)V

    return-void
.end method

.method private activityChange(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 1497
    invoke-static {p0, p1}, Lcom/oppo/camera/ActivityChange;->gotoVideoMode(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1498
    return-void
.end method

.method private addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B)Z
    .locals 12
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"

    .prologue
    .line 1663
    const/4 v6, 0x0

    .line 1664
    .local v6, outputStream:Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 1666
    .local v4, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1667
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1668
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1669
    :cond_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1670
    .end local v4           #file:Ljava/io/File;
    .local v5, file:Ljava/io/File;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1671
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .local v7, outputStream:Ljava/io/OutputStream;
    :try_start_2
    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1672
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 1673
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1682
    :cond_1
    invoke-direct {p0, v7}, Lcom/oppo/camera/OppoCamera;->closeSilently(Ljava/io/Closeable;)V

    .line 1685
    const/4 v8, 0x1

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    move-object v6, v7

    .end local v2           #dir:Ljava/io/File;
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    :goto_0
    return v8

    .line 1675
    :catch_0
    move-exception v3

    .line 1676
    .local v3, ex:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1677
    const/4 v8, 0x0

    .line 1682
    invoke-direct {p0, v6}, Lcom/oppo/camera/OppoCamera;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1678
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1679
    .local v3, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1680
    const/4 v8, 0x0

    .line 1682
    invoke-direct {p0, v6}, Lcom/oppo/camera/OppoCamera;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_3
    invoke-direct {p0, v6}, Lcom/oppo/camera/OppoCamera;->closeSilently(Ljava/io/Closeable;)V

    throw v8

    .end local v4           #file:Ljava/io/File;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    goto :goto_3

    .end local v4           #file:Ljava/io/File;
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 1678
    .end local v4           #file:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    :catch_2
    move-exception v3

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    goto :goto_2

    .end local v4           #file:Ljava/io/File;
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catch_3
    move-exception v3

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    goto :goto_2

    .line 1675
    .end local v4           #file:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    goto :goto_1

    .end local v4           #file:Ljava/io/File;
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private brightnessMax()V
    .locals 2

    .prologue
    .line 1656
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1657
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1658
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1659
    return-void
.end method

.method private calculateTapArea(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter

    .prologue
    const/16 v1, 0x78

    const/4 v9, 0x0

    .line 2227
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2228
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->initFocusArea()V

    .line 2230
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 2231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 2234
    const/16 v6, 0x1e0

    .line 2235
    const/16 v7, 0x280

    .line 2237
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusArea:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v8}, Lcom/oppo/camera/OppoCamera;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 2239
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mMeteringArea:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v8}, Lcom/oppo/camera/OppoCamera;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 2241
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 1

    .prologue
    .line 2802
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    if-eqz v0, :cond_0

    .line 2803
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->cancelAutoFocus()V

    .line 2805
    :cond_0
    return-void
.end method

.method private changeFeatureMode(I)V
    .locals 4
    .parameter

    .prologue
    .line 1048
    iput p1, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    .line 1049
    sget-object v0, Lcom/oppo/camera/OppoCamera;->OFF:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mContinuousAfState:Ljava/lang/String;

    .line 1050
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->setFeatureMode()V

    .line 1051
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mDisableKey:[I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->fixKeyEventInterceptorInProcess([I)Z

    .line 1052
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->refreshMenu()V

    .line 1053
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->stopPreview()V

    .line 1054
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->closeCamera()V

    .line 1055
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1057
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera feature mode"

    iget v2, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1058
    return-void
.end method

.method private clearFocusView()V
    .locals 1

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;

    if-eqz v0, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->clear()V

    .line 1957
    :cond_0
    return-void
.end method

.method private clearLastData()V
    .locals 1

    .prologue
    .line 2620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCaptureOnlyData:[B

    .line 2621
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 840
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    if-eqz v0, :cond_0

    .line 841
    const-string v0, "OppoCamera"

    const-string v1, "Close camera! E"

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 842
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0, v2}, Lcom/scalado/camera/FeatureCamera;->setFeature(Lcom/scalado/camera/Feature;)V

    .line 843
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0, v2}, Lcom/scalado/camera/FeatureCamera;->setZoomChangeListener(Lcom/scalado/camera/Camera$OnZoomChangeListener;)V

    .line 844
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0, v2}, Lcom/scalado/camera/FeatureCamera;->setPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;)V

    .line 845
    invoke-static {}, Lcom/oppo/camera/CameraHolder;->instance()Lcom/oppo/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/CameraHolder;->release()V

    .line 846
    iput-object v2, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    .line 847
    iput-object v2, p0, Lcom/oppo/camera/OppoCamera;->mHdr:Lcom/scalado/camera/hdr2/HDR2;

    .line 848
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    .line 850
    :cond_0
    const-string v0, "OppoCamera"

    const-string v1, "Close camera! X"

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 851
    return-void
.end method

.method private closeFaceBeautify()V
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    const-string v1, "face-beautify"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 576
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->doSafeSetParameters()V

    .line 577
    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 1689
    if-nez p1, :cond_0

    .line 1696
    :goto_0
    return-void

    .line 1692
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1693
    :catch_0
    move-exception v0

    .line 1694
    .local v0, t:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private createCaptureBitmap([B)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 2640
    invoke-static {}, Lcom/oppo/camera/OppoCamera;->getTempJpegPath()Ljava/lang/String;

    move-result-object v1

    .line 2641
    const/4 v0, 0x0

    .line 2642
    invoke-direct {p0, v1, p1}, Lcom/oppo/camera/OppoCamera;->saveDataToFile(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2643
    invoke-direct {p0, v1}, Lcom/oppo/camera/OppoCamera;->getExifOrientation(Ljava/lang/String;)I

    move-result v0

    .line 2644
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2648
    :cond_0
    const v1, 0xc800

    invoke-static {p1, v1}, Lcom/oppo/camera/utils/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2649
    invoke-static {v1, v0}, Lcom/oppo/camera/utils/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2650
    return-object v0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1540
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1541
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private disableUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 514
    const-string v0, "OppoCamera"

    const-string v1, "------disableUI------- "

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 515
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 516
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 517
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 518
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 523
    :goto_0
    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mIsEnable:Z

    .line 524
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->removeMsg(I)V

    .line 525
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setCameraState(I)V

    .line 526
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 527
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 521
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/Switcher;->setEnabled(Z)V

    goto :goto_0
.end method

.method private doAttach()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x1

    .line 2546
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPausing:Z

    if-eqz v0, :cond_0

    .line 2613
    :goto_0
    return-void

    .line 2549
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->getLastCaptureData()[B

    move-result-object v0

    .line 2551
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mCropValue:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 2556
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 2559
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 2560
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2561
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 2562
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->setResult(I)V

    .line 2563
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2567
    invoke-direct {p0, v1}, Lcom/oppo/camera/OppoCamera;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2564
    :catch_0
    move-exception v0

    .line 2565
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2567
    invoke-direct {p0, v1}, Lcom/oppo/camera/OppoCamera;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/oppo/camera/OppoCamera;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 2570
    :cond_1
    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->createCaptureBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2571
    new-instance v1, Landroid/content/Intent;

    const-string v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/oppo/camera/OppoCamera;->setResult(ILandroid/content/Intent;)V

    .line 2572
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->finish()V

    goto :goto_0

    .line 2579
    :cond_2
    :try_start_2
    const-string v2, "crop-temp"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/OppoCamera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2580
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2581
    const-string v3, "crop-temp"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/oppo/camera/OppoCamera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 2582
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 2583
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2584
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 2596
    invoke-direct {p0, v1}, Lcom/oppo/camera/OppoCamera;->closeSilently(Ljava/io/Closeable;)V

    .line 2599
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2600
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mCropValue:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2601
    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 2604
    const-string v2, "output"

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2608
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2609
    const-string v3, "image/*"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2610
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2611
    invoke-virtual {p0, v2, v5}, Lcom/oppo/camera/OppoCamera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2585
    :catch_1
    move-exception v0

    .line 2586
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2587
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->setResult(I)V

    .line 2588
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2596
    invoke-direct {p0, v1}, Lcom/oppo/camera/OppoCamera;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 2590
    :catch_2
    move-exception v0

    .line 2591
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2592
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->setResult(I)V

    .line 2593
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2596
    invoke-direct {p0, v1}, Lcom/oppo/camera/OppoCamera;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-direct {p0, v1}, Lcom/oppo/camera/OppoCamera;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 2606
    :cond_4
    const-string v2, "return-data"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private doAutoFocus(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2106
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->keepScreenOnAwhile()V

    .line 2107
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-ne v0, v4, :cond_1

    .line 2165
    :cond_0
    :goto_0
    return-void

    .line 2111
    :cond_1
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mMoveType:I

    if-nez v0, :cond_0

    .line 2112
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusState:I

    if-ne v0, v4, :cond_2

    .line 2113
    const-string v0, "OppoCamera"

    const-string v1, "Want do touch af, but focus state is not finished yet !!"

    invoke-static {v0, v1, v5}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2117
    :cond_2
    invoke-direct {p0, v4}, Lcom/oppo/camera/OppoCamera;->removeMsg(I)V

    .line 2118
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;

    if-eqz v0, :cond_0

    .line 2119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2120
    sget v1, Lcom/oppo/camera/OppoCamera;->FOCUSAREA_RIGHT:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    sget v1, Lcom/oppo/camera/OppoCamera;->FOCUSAREA_LEFT:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 2126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 2127
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->clearFocusView()V

    .line 2128
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 2129
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2131
    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v2, v0, v1}, Lcom/oppo/camera/views/FocusView;->setPosition(II)V

    .line 2132
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->showStart()V

    .line 2133
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    if-eqz v0, :cond_0

    .line 2134
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2141
    const-string v1, "touch-on"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 2143
    invoke-direct {p0, p1}, Lcom/oppo/camera/OppoCamera;->calculateTapArea(Landroid/view/MotionEvent;)V

    .line 2144
    iget-boolean v1, p0, Lcom/oppo/camera/OppoCamera;->mFocusAreaSupported:Z

    if-eqz v1, :cond_4

    .line 2145
    const-string v1, "OppoCamera"

    const-string v2, "setFocusAreas"

    invoke-static {v1, v2, v5}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2146
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFocusArea:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2148
    :cond_4
    iget-boolean v1, p0, Lcom/oppo/camera/OppoCamera;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_5

    .line 2149
    const-string v1, "OppoCamera"

    const-string v2, "setMeteringAreas"

    invoke-static {v1, v2, v5}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2150
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mMeteringArea:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2153
    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->doSafeSetParameters()V

    .line 2154
    iput v4, p0, Lcom/oppo/camera/OppoCamera;->mFocusState:I

    .line 2156
    iput-boolean v4, p0, Lcom/oppo/camera/OppoCamera;->mIsTouchAf:Z

    .line 2157
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera;->autoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V

    .line 2161
    const-string v0, "OppoCamera"

    const-string v1, "Do touch AF !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private doCancel()V
    .locals 2

    .prologue
    .line 2630
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/OppoCamera;->setResult(ILandroid/content/Intent;)V

    .line 2631
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->finish()V

    .line 2634
    return-void
.end method

.method private doFeatureAnimation([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 2882
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    if-eqz v0, :cond_0

    .line 2883
    new-instance v0, Lcom/oppo/camera/OppoCamera$13;

    invoke-direct {v0, p0, p1}, Lcom/oppo/camera/OppoCamera$13;-><init>(Lcom/oppo/camera/OppoCamera;[B)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2906
    :goto_0
    return-void

    .line 2904
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->enableUI()V

    goto :goto_0
.end method

.method private doSafeSetParameters()V
    .locals 3

    .prologue
    .line 2854
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v1, v2}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2859
    :goto_0
    return-void

    .line 2855
    :catch_0
    move-exception v0

    .line 2856
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 2857
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->showCameraErrorAndFinish()V

    goto :goto_0
.end method

.method private doSnapAfterFocusFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2763
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mDoSnapAfterFocusComplete:Z

    if-eqz v0, :cond_0

    .line 2764
    const-string v0, "OppoCamera"

    const-string v1, "Do snap after focus finished !"

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2765
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->removeMsg(I)V

    .line 2766
    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mDoSnapAfterFocusComplete:Z

    .line 2768
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->takePicture()V

    .line 2774
    :goto_0
    return-void

    .line 2770
    :cond_0
    iput-boolean v3, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    .line 2771
    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mAnimationIsActive:Z

    .line 2772
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->fixKeyEventInterceptorInProcess([I)Z

    goto :goto_0
.end method

.method private enableUI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 530
    const-string v0, "OppoCamera"

    const-string v1, "------enableUI------- "

    invoke-static {v0, v1, v4}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 531
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 532
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 533
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 534
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 539
    :goto_0
    iput-boolean v4, p0, Lcom/oppo/camera/OppoCamera;->mIsEnable:Z

    .line 540
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 541
    iput-boolean v4, p0, Lcom/oppo/camera/OppoCamera;->mIsExitable:Z

    .line 542
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->fixKeyEventInterceptorInProcess([I)Z

    .line 544
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 537
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/views/Switcher;->setEnabled(Z)V

    goto :goto_0
.end method

.method private declared-synchronized ensureCameraDevice(I)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 808
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    if-nez v0, :cond_0

    .line 809
    invoke-static {}, Lcom/oppo/camera/CameraHolder;->instance()Lcom/oppo/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    if-nez v0, :cond_1

    .line 810
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 812
    :cond_1
    if-eqz p1, :cond_2

    if-eq p1, v5, :cond_2

    .line 813
    const/4 p1, 0x0

    .line 815
    :cond_2
    const/4 v1, 0x0

    .line 817
    :try_start_1
    invoke-static {}, Lcom/oppo/camera/CameraHolder;->instance()Lcom/oppo/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/CameraHolder;->open(I)Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 823
    :goto_1
    if-eqz v0, :cond_4

    .line 824
    :try_start_2
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory;->open(Landroid/hardware/Camera;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    .line 829
    :goto_2
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    if-ne v0, v5, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-ne v0, v5, :cond_0

    .line 830
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 831
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 832
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 808
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 818
    :catch_0
    move-exception v0

    .line 819
    :try_start_3
    const-string v2, "OppoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 820
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object v0, v1

    goto :goto_1

    .line 826
    :cond_4
    const-string v0, "OppoCamera"

    const-string v1, "Open camera fail !!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private fadeIn(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2377
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2378
    return-void
.end method

.method private fadeOut(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2381
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2382
    return-void
.end method

.method private getCurrentLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 2314
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mLocationListeners:[Lcom/oppo/camera/OppoCamera$LocationListener;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2315
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mLocationListeners:[Lcom/oppo/camera/OppoCamera$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/oppo/camera/OppoCamera$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 2316
    .local v1, l:Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 2321
    .end local v1           #l:Landroid/location/Location;
    :goto_1
    return-object v1

    .line 2314
    .restart local v1       #l:Landroid/location/Location;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2321
    .end local v1           #l:Landroid/location/Location;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 2195
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2197
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 2203
    :goto_0
    :pswitch_0
    return v1

    .line 2199
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 2200
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 2201
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 2197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getExifOrientation(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 2668
    const/4 v0, 0x0

    .line 2669
    const/4 v2, 0x0

    .line 2671
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2675
    :goto_0
    if-eqz v1, :cond_0

    .line 2676
    const-string v2, "Orientation"

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 2677
    if-eq v1, v3, :cond_0

    .line 2679
    packed-switch v1, :pswitch_data_0

    .line 2693
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 2672
    :catch_0
    move-exception v1

    .line 2673
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    .line 2681
    :pswitch_1
    const/16 v0, 0x5a

    .line 2682
    goto :goto_1

    .line 2684
    :pswitch_2
    const/16 v0, 0xb4

    .line 2685
    goto :goto_1

    .line 2687
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 2679
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getLastCaptureData()[B
    .locals 1

    .prologue
    .line 2616
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCaptureOnlyData:[B

    return-object v0
.end method

.method private getLatestDrawabel(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "filepath"

    .prologue
    .line 1611
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1612
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iget v2, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-nez v2, :cond_0

    .line 1613
    const/16 v2, 0x10

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1617
    :goto_0
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oppo/camera/OppoCamera;->getSmallShotAnimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1618
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 1619
    const/4 v0, 0x0

    .line 1622
    :goto_1
    return-object v0

    .line 1615
    :cond_0
    const/4 v2, 0x4

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 1621
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1622
    .local v0, mDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method private getOrientation()I
    .locals 2

    .prologue
    .line 799
    invoke-static {p0}, Lcom/oppo/camera/OppoCamera;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/oppo/camera/utils/Util;->getDisplayOrientation(II)I

    move-result v0

    return v0
.end method

.method private getSmallShotAnimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "original"

    .prologue
    const/16 v2, 0x4e

    .line 1433
    const/16 v1, 0x4e

    .line 1434
    .local v1, miniThumbWidth:I
    const/16 v0, 0x4e

    .line 1435
    .local v0, miniThumbHeight:I
    invoke-static {p1, v2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getTempJpegPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2626
    const-string v0, "/mnt/sdcard/DCIM/.tempjpeg"

    return-object v0
.end method

.method private getZoomRatios()[F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1881
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    .line 1883
    if-eqz v3, :cond_2

    .line 1884
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [F

    move v1, v0

    .line 1885
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 1886
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x42c8

    div-float/2addr v0, v4

    aput v0, v2, v1

    .line 1885
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1888
    :cond_0
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-nez v0, :cond_1

    .line 1889
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, 0x4080

    aput v1, v2, v0

    .line 1890
    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    const v1, 0x40766666

    aput v1, v2, v0

    :cond_1
    move-object v0, v2

    .line 1899
    :goto_1
    return-object v0

    .line 1895
    :cond_2
    iget v1, p0, Lcom/oppo/camera/OppoCamera;->mZoomMax:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [F

    .line 1896
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 1897
    const/high16 v2, 0x3f80

    int-to-float v3, v0

    const v4, 0x3e4ccccd

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 1896
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 1899
    goto :goto_1
.end method

.method private handleCameraIdChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->switchCameraId()V

    .line 617
    return-void
.end method

.method private handleFaceBeautifyModeChanged(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->FACE_BEAUTIFY_FRONT_ONLY:Z

    if-eqz v0, :cond_2

    .line 582
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera;->mFaceBeautifyMode:Ljava/lang/String;

    .line 583
    const-string v0, "camera_face_beautify_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->openFaceBeautify()V

    .line 588
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera face beautify mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 604
    :cond_0
    :goto_1
    return-void

    .line 586
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->closeFaceBeautify()V

    goto :goto_0

    .line 591
    :cond_2
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera;->mFaceBeautifyMode:Ljava/lang/String;

    .line 592
    const-string v0, "camera_face_beautify_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 593
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_3

    .line 594
    const-string v0, "camera_hdr_off"

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->handleHdrModeChanged(Ljava/lang/String;)V

    .line 601
    :goto_2
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera face beautify mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 596
    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->openFaceBeautify()V

    goto :goto_2

    .line 599
    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->closeFaceBeautify()V

    goto :goto_2
.end method

.method private handleFlashModeChanged(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 620
    const-string v0, "OppoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFlashModeChanged  value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 621
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    :goto_0
    return-void

    .line 624
    :cond_0
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera;->mFlashMode:Ljava/lang/String;

    .line 625
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFlashMode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 627
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->doSafeSetParameters()V

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera flash mode"

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mFlashMode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private handleHdrModeChanged(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 633
    const-string v0, "OppoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleHdrModeChanged value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 634
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    if-nez v0, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    const-string v0, "camera_hdr_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 640
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->FACE_BEAUTIFY_FRONT_ONLY:Z

    if-nez v0, :cond_2

    .line 641
    const-string v0, "camera_face_beautify_off"

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFaceBeautifyMode:Ljava/lang/String;

    .line 643
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v3, "key_camera_flash"

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setEnable(Ljava/lang/String;Z)V

    move v0, v1

    .line 647
    :goto_1
    iget v3, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    if-ne v0, v3, :cond_4

    .line 648
    const-string v0, "OppoCamera"

    const-string v2, "changeFeatureMode but new mode is the same as old !"

    invoke-static {v0, v2, v1}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 645
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v3, "key_camera_flash"

    invoke-virtual {v0, v3, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setEnable(Ljava/lang/String;Z)V

    move v0, v2

    goto :goto_1

    .line 651
    :cond_4
    iget-boolean v1, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/OppoCamera;->mPausing:Z

    if-nez v1, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->disableUI()V

    .line 653
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/oppo/camera/OppoCamera;->removeMsg(I)V

    .line 654
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v3, "key_camera_flash"

    invoke-virtual {v1, v3, v2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setEnable(Ljava/lang/String;Z)V

    .line 655
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v3, "key_camera_hdr"

    invoke-virtual {v1, v3, v2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setEnable(Ljava/lang/String;Z)V

    .line 656
    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->changeFeatureMode(I)V

    goto :goto_0
.end method

.method private handleSoundModeChanged(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 662
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterSound:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    const-string v0, "OppoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSoundModeChanged value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mPreviewing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 669
    :goto_0
    return-void

    .line 666
    :cond_0
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera;->mShutterSound:Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mShutterSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->setShutterSound(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera sound mode"

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mShutterSound:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private handleTakePicture()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2521
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    if-nez v0, :cond_1

    .line 2543
    :cond_0
    :goto_0
    return-void

    .line 2524
    :cond_1
    const-string v0, "OppoCamera"

    const-string v1, "handleTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->isStoragePlaceEnough()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2527
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->enableUI()V

    .line 2528
    const-string v0, "OppoCamera"

    const-string v1, "Don\'t have enough space !!"

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2531
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mDisableKey:[I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->fixKeyEventInterceptorInProcess([I)Z

    .line 2532
    iput-boolean v3, p0, Lcom/oppo/camera/OppoCamera;->mDoSnapAfterFocusComplete:Z

    .line 2533
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->disableUI()V

    .line 2534
    iput-boolean v3, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    .line 2535
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusState:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-ne v0, v2, :cond_4

    .line 2537
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->takePicture()V

    goto :goto_0

    .line 2539
    :cond_4
    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mDoSnapAfterFocusComplete:Z

    .line 2540
    invoke-direct {p0, v4}, Lcom/oppo/camera/OppoCamera;->removeMsg(I)V

    .line 2541
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private handleTakePictureTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1789
    const-string v0, "OppoCamera"

    const-string v1, "Take picture time out. don\'t get jpeg callback!"

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1790
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->enableUI()V

    .line 1791
    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    .line 1792
    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    .line 1793
    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mImageHasSaved:Z

    .line 1794
    iput v2, p0, Lcom/oppo/camera/OppoCamera;->mStatus:I

    .line 1795
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    if-ne v0, v2, :cond_0

    .line 1796
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->showControlBar()V

    .line 1798
    :cond_0
    return-void
.end method

.method private handleTimerModeChanged(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 607
    const-string v0, "OppoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTimerModeChanged value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-nez v0, :cond_0

    .line 609
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera;->mTimerModeBackId:Ljava/lang/String;

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera;->mTimerModeFrontId:Ljava/lang/String;

    goto :goto_0
.end method

.method private hideControlBar()V
    .locals 2

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterWaitProgressView:Lcom/oppo/camera/views/ShutterWaitProgressView;

    if-eqz v0, :cond_0

    .line 2438
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterWaitProgressView:Lcom/oppo/camera/views/ShutterWaitProgressView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/ShutterWaitProgressView;->showProgressBar()V

    .line 2440
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mControlBarRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2441
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mControlBarRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2443
    :cond_1
    return-void
.end method

.method private hidePostCaptureAlert()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2362
    iget-boolean v1, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_2

    .line 2363
    const v1, 0x7f0b000b

    invoke-virtual {p0, v1}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2364
    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2365
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 2366
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, v1, v0

    .line 2367
    invoke-virtual {p0, v3}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2368
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2369
    invoke-direct {p0, v3}, Lcom/oppo/camera/OppoCamera;->fadeOut(Landroid/view/View;)V

    .line 2366
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2372
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->show()V

    .line 2374
    :cond_2
    return-void

    .line 2365
    :array_0
    .array-data 0x4
        0xdt 0x0t 0xbt 0x7ft
        0xft 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method private inflateShotAnimView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 414
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-nez v1, :cond_0

    .line 415
    new-instance v1, Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    .line 416
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mAnimationListener:Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setOnAnimationListener(Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;)V

    .line 417
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    .line 418
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 419
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method private initCameraSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1008
    sget-object v0, Lcom/oppo/camera/CommConfig;->CAMERA_SETTING_SHAREPREFERENCE:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/oppo/camera/OppoCamera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    .line 1009
    invoke-static {}, Lcom/oppo/camera/CameraHolder;->instance()Lcom/oppo/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/OppoCamera;->mNumberOfCameras:I

    .line 1011
    sget-object v0, Lcom/oppo/camera/CommConfig;->INTERNAL_IMG_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mSavePath:Ljava/lang/String;

    .line 1012
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    const-string v1, "camera feature mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    .line 1013
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    const-string v1, "camera sound mode"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterSound:Ljava/lang/String;

    .line 1014
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    const-string v1, "camera face mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    .line 1015
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    const-string v1, "camera flash mode"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFlashMode:Ljava/lang/String;

    .line 1016
    const-string v0, "camera_timer_off"

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerModeBackId:Ljava/lang/String;

    .line 1017
    const-string v0, "camera_timer_off"

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerModeFrontId:Ljava/lang/String;

    .line 1018
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    const-string v1, "camera face beautify mode"

    const-string v2, "camera_face_beautify_off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFaceBeautifyMode:Ljava/lang/String;

    .line 1019
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->FACE_BEAUTIFY_FRONT_ONLY:Z

    if-nez v0, :cond_0

    .line 1020
    const-string v0, "camera_face_beautify_off"

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFaceBeautifyMode:Ljava/lang/String;

    .line 1022
    :cond_0
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    if-eqz v0, :cond_1

    .line 1023
    iput v3, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    .line 1026
    :cond_1
    new-instance v0, Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera;->mSavePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/utils/StorageManager;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    .line 1027
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/StorageManager;->setShotMode(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/StorageManager;->setMountStateChangedListener(Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;)V

    .line 1029
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->checkStorage()V

    .line 1031
    new-instance v0, Lcom/oppo/camera/utils/PlayEffectSound;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mShutterSound:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    .line 1032
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/PlayEffectSound;->loadCameraSound()V

    .line 1033
    return-void
.end method

.method private initFeature()V
    .locals 2

    .prologue
    .line 1036
    new-instance v0, Lcom/scalado/camera/hdr2/HDR2;

    invoke-direct {v0}, Lcom/scalado/camera/hdr2/HDR2;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHdr:Lcom/scalado/camera/hdr2/HDR2;

    .line 1037
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHdr:Lcom/scalado/camera/hdr2/HDR2;

    invoke-virtual {v0}, Lcom/scalado/camera/hdr2/HDR2;->getOptions()Lcom/scalado/camera/hdr2/HDR2$HDROptions;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/scalado/camera/hdr2/HDR2$HDROptions;->setExposureDifference(I)V

    .line 1038
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHdr:Lcom/scalado/camera/hdr2/HDR2;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mHdrListener:Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;

    invoke-virtual {v0, v1}, Lcom/scalado/camera/hdr2/HDR2;->setListener(Lcom/scalado/camera/hdr2/HDR2$HDR2Listener;)V

    .line 1045
    return-void
.end method

.method private initFocusArea()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusArea:Ljava/util/List;

    .line 2183
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mMeteringArea:Ljava/util/List;

    .line 2185
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2186
    return-void
.end method

.method private initMatrix(I)V
    .locals 5
    .parameter "displayOrientation"

    .prologue
    const/4 v2, 0x1

    .line 2207
    invoke-static {}, Lcom/oppo/camera/CameraHolder;->instance()Lcom/oppo/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    aget-object v0, v3, v4

    .line 2208
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v2, :cond_0

    .line 2209
    .local v2, mirror:Z
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 2210
    .local v1, matrix:Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/oppo/camera/OppoCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/OppoCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    invoke-static {v1, v2, p1, v3, v4}, Lcom/oppo/camera/utils/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 2212
    iget-object v3, p0, Lcom/oppo/camera/OppoCamera;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2213
    return-void

    .line 2208
    .end local v1           #matrix:Landroid/graphics/Matrix;
    .end local v2           #mirror:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initUi()V
    .locals 7

    .prologue
    .line 2385
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2386
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mControlBarRootView:Landroid/view/ViewGroup;

    .line 2387
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2388
    const v0, 0x7f030001

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mControlBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mControlBar:Landroid/view/View;

    .line 2389
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mControlBar:Landroid/view/View;

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2390
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mControlBar:Landroid/view/View;

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2391
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mControlBar:Landroid/view/View;

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2403
    :goto_0
    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    .line 2404
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2406
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mReviewFrame:Landroid/widget/ImageView;

    .line 2407
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mRootView:Landroid/view/ViewGroup;

    .line 2408
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/ShutterWaitProgressView;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterWaitProgressView:Lcom/oppo/camera/views/ShutterWaitProgressView;

    .line 2410
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/setting/NewCameraSettingMenu;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    .line 2411
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    iget v1, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mFlashMode:Ljava/lang/String;

    iget v3, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    iget-object v4, p0, Lcom/oppo/camera/OppoCamera;->mShutterSound:Ljava/lang/String;

    iget v5, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/oppo/camera/OppoCamera;->mTimerModeBackId:Ljava/lang/String;

    :goto_1
    iget-object v6, p0, Lcom/oppo/camera/OppoCamera;->mFaceBeautifyMode:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->initSettings(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mScreenHintListener:Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setOnScreenHintListener(Lcom/oppo/camera/setting/SettingMenuBase$OnScreenHintListener;)V

    .line 2413
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mSettingsChangedListener:Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setOnSettingsChangedListener(Lcom/oppo/camera/setting/SettingMenuBase$OnSettingsChangedListener;)V

    .line 2415
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->inflateShotAnimView()V

    .line 2417
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/FocusView;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;

    .line 2418
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    .line 2419
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateZoomView;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    .line 2420
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomImage:Landroid/widget/ImageView;

    .line 2422
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateHintView;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

    .line 2424
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->refreshMenu()V

    .line 2425
    return-void

    .line 2393
    :cond_0
    const v0, 0x7f030005

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mControlBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2394
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraRotateIcon:Lcom/oppo/camera/views/RotateImageView;

    .line 2395
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mVideoRotatIcon:Lcom/oppo/camera/views/RotateImageView;

    .line 2396
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/Switcher;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    .line 2397
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/Switcher;->setOnSwitchListener(Lcom/oppo/camera/views/Switcher$OnSwitchListener;)V

    .line 2398
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    .line 2399
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2400
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 2411
    :cond_1
    iget-object v5, p0, Lcom/oppo/camera/OppoCamera;->mTimerModeFrontId:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private initializeCapabilities()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2174
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 2175
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oppo/camera/OppoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusAreaSupported:Z

    .line 2178
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/oppo/camera/OppoCamera;->mMeteringAreaSupported:Z

    .line 2179
    return-void

    :cond_0
    move v0, v2

    .line 2175
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2178
    goto :goto_1
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 2328
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2329
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 803
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private openFaceBeautify()V
    .locals 3

    .prologue
    .line 569
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    const-string v1, "face-beautify"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 570
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->doSafeSetParameters()V

    .line 571
    return-void
.end method

.method private playFocusSound(Z)V
    .locals 2
    .parameter "focused"

    .prologue
    .line 2777
    if-eqz p1, :cond_2

    .line 2778
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2779
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->showSuccess()V

    .line 2781
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    if-eqz v0, :cond_1

    .line 2782
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 2789
    :cond_1
    :goto_0
    return-void

    .line 2785
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2786
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusView:Lcom/oppo/camera/views/FocusView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusView;->showFail()V

    goto :goto_0
.end method

.method private recycleBitmap()V
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 1630
    :cond_0
    return-void
.end method

.method private refreshMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1801
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_3

    .line 1802
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-ne v0, v3, :cond_2

    .line 1803
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_flash"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->hideView(Ljava/lang/String;)V

    .line 1807
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_hdr"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->hideView(Ljava/lang/String;)V

    .line 1828
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->FACE_BEAUTIFY_FRONT_ONLY:Z

    if-eqz v0, :cond_1

    .line 1829
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-nez v0, :cond_6

    .line 1830
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_face_beautify"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->hideView(Ljava/lang/String;)V

    .line 1835
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_face_beautify"

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mFaceBeautifyMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v2, "key_camera_timer"

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerModeBackId:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    return-void

    .line 1805
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_flash"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showView(Ljava/lang/String;)V

    goto :goto_0

    .line 1808
    :cond_3
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-ne v0, v3, :cond_4

    .line 1809
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_hdr"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->hideView(Ljava/lang/String;)V

    .line 1810
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_flash"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->hideView(Ljava/lang/String;)V

    goto :goto_1

    .line 1811
    :cond_4
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    if-ne v0, v3, :cond_5

    .line 1812
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_hdr"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showView(Ljava/lang/String;)V

    .line 1813
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_flash"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showView(Ljava/lang/String;)V

    .line 1814
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setFlashMode(Ljava/lang/String;)V

    .line 1815
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_flash"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setEnable(Ljava/lang/String;Z)V

    .line 1816
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_hdr"

    const-string v2, "camera_hdr_on"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFaceBeautifyMode:Ljava/lang/String;

    const-string v1, "camera_face_beautify_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->FACE_BEAUTIFY_FRONT_ONLY:Z

    if-nez v0, :cond_0

    .line 1818
    const-string v0, "camera_face_beautify_off"

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFaceBeautifyMode:Ljava/lang/String;

    goto :goto_1

    .line 1821
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_hdr"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showView(Ljava/lang/String;)V

    .line 1822
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_flash"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showView(Ljava/lang/String;)V

    .line 1823
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setFlashMode(Ljava/lang/String;)V

    .line 1824
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_flash"

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setAlpha(Ljava/lang/String;I)V

    .line 1825
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_flash"

    invoke-virtual {v0, v1, v3}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setEnable(Ljava/lang/String;Z)V

    .line 1826
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_hdr"

    const-string v2, "camera_hdr_off"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1832
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_face_beautify"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->showView(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1836
    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerModeFrontId:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method private refreshThumbNail()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 854
    new-instance v0, Lcom/oppo/camera/utils/StringUtil;

    invoke-direct {v0}, Lcom/oppo/camera/utils/StringUtil;-><init>()V

    .line 855
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/StringUtil;->getLatestFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 857
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/oppo/camera/OppoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 858
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->recycleBitmap()V

    .line 860
    if-eqz v0, :cond_0

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->getLatestDrawabel(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    .line 865
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 872
    :goto_1
    return-void

    .line 863
    :cond_0
    iput-object v2, p0, Lcom/oppo/camera/OppoCamera;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 868
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 869
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/views/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private removeMsg(I)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    :cond_0
    return-void
.end method

.method private resetWhenCameraError()V
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1537
    :cond_0
    return-void
.end method

.method private restartPreview()Z
    .locals 2

    .prologue
    .line 1511
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1512
    :catch_0
    move-exception v0

    .line 1513
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1514
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->showCameraErrorAndFinish()V

    .line 1515
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveDataToFile(Ljava/lang/String;[B)Z
    .locals 4
    .parameter "filePath"
    .parameter "data"

    .prologue
    .line 2654
    const/4 v1, 0x0

    .line 2656
    .local v1, f:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2657
    .end local v1           #f:Ljava/io/FileOutputStream;
    .local v2, f:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2662
    invoke-direct {p0, v2}, Lcom/oppo/camera/OppoCamera;->closeSilently(Ljava/io/Closeable;)V

    .line 2664
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 2658
    :catch_0
    move-exception v0

    .line 2659
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2660
    const/4 v3, 0x0

    .line 2662
    invoke-direct {p0, v1}, Lcom/oppo/camera/OppoCamera;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-direct {p0, v1}, Lcom/oppo/camera/OppoCamera;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 2658
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private setCameraParameters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x320

    const/16 v4, 0x1e0

    const/4 v3, 0x1

    .line 736
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 737
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setShutterSound(I)V

    .line 738
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_4

    .line 739
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-nez v0, :cond_3

    .line 740
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    const/16 v1, 0xcc0

    const/16 v2, 0x990

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->setPictureSize(II)V

    .line 741
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->setFeatureMode()V

    .line 758
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->FACE_BEAUTIFY_FRONT_ONLY:Z

    if-eqz v0, :cond_7

    .line 759
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFaceBeautifyMode:Ljava/lang/String;

    const-string v1, "camera_face_beautify_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 760
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->openFaceBeautify()V

    .line 772
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0, v5, v4}, Lcom/scalado/camera/FeatureCamera$Parameters;->setPreviewSize(II)V

    .line 774
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-nez v0, :cond_1

    const-string v0, "auto"

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/OppoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    const-string v1, "auto"

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 782
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "center-weighted"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposure(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneDetectMode(Ljava/lang/String;)V

    .line 787
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->getZoomRatios()[F

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomRatios:[F

    .line 788
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomRatios:[F

    array-length v0, v0

    iput v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomArrayLength:I

    .line 789
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomMax:I

    .line 790
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomValue:I

    if-eqz v0, :cond_2

    .line 791
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    iget v1, p0, Lcom/oppo/camera/OppoCamera;->mZoomValue:I

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setZoom(I)V

    .line 793
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->initializeCapabilities()V

    .line 794
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->getOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->initMatrix(I)V

    .line 795
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->doSafeSetParameters()V

    .line 796
    return-void

    .line 742
    :cond_3
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-ne v0, v3, :cond_0

    .line 744
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    const/16 v1, 0x500

    const/16 v2, 0x3c0

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->setPictureSize(II)V

    .line 745
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0, v6}, Lcom/scalado/camera/FeatureCamera;->setFeature(Lcom/scalado/camera/Feature;)V

    goto/16 :goto_0

    .line 748
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0, v5, v4}, Lcom/scalado/camera/FeatureCamera$Parameters;->setPictureSize(II)V

    .line 749
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0, v6}, Lcom/scalado/camera/FeatureCamera;->setFeature(Lcom/scalado/camera/Feature;)V

    .line 750
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-nez v0, :cond_5

    .line 751
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFlashMode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSharpness(I)V

    goto/16 :goto_0

    .line 753
    :cond_5
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-ne v0, v3, :cond_0

    .line 754
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    const-string v1, "off"

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 762
    :cond_6
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->closeFaceBeautify()V

    goto/16 :goto_1

    .line 765
    :cond_7
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFaceBeautifyMode:Ljava/lang/String;

    const-string v1, "camera_face_beautify_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 766
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->openFaceBeautify()V

    goto/16 :goto_1

    .line 768
    :cond_8
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->closeFaceBeautify()V

    goto/16 :goto_1
.end method

.method private setFeatureMode()V
    .locals 3

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera;->setFeature(Lcom/scalado/camera/Feature;)V

    .line 1063
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    packed-switch v0, :pswitch_data_0

    .line 1085
    :goto_0
    return-void

    .line 1065
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 1066
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFlashMode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1067
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->doSafeSetParameters()V

    goto :goto_0

    .line 1070
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 1071
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    const-string v1, "capture-burst-captures-values"

    const-string v2, "5"

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    const-string v1, "capture-burst-exposures-values"

    const-string v2, "5"

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    const-string v1, "capture-burst-exposures"

    const-string v2, "-6,0,6"

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setBurstTotalCaptures(I)V

    .line 1075
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 1076
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    const-string v1, "off"

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHdr:Lcom/scalado/camera/hdr2/HDR2;

    if-nez v0, :cond_0

    .line 1078
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->initFeature()V

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mHdr:Lcom/scalado/camera/hdr2/HDR2;

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera;->setFeature(Lcom/scalado/camera/Feature;)V

    goto :goto_0

    .line 1063
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setOrientationIndicator(I)V
    .locals 4
    .parameter "degree"

    .prologue
    const v3, 0x7f0b000f

    const v2, 0x7f0b000e

    const v1, 0x7f0b000d

    .line 1578
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mHasFirstSetOrientationIndicator:Z

    if-nez v0, :cond_1

    .line 1579
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraRotateIcon:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 1581
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mVideoRotatIcon:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 1582
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 1589
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 1590
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setDegreeWithoutAnimation(I)V

    .line 1591
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerSnapShotManager:Lcom/oppo/camera/utils/TimerSnapShotManager;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->setDegreeWithoutAnimation(I)V

    .line 1592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mHasFirstSetOrientationIndicator:Z

    .line 1608
    :goto_1
    return-void

    .line 1584
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1585
    invoke-virtual {p0, v2}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1586
    invoke-virtual {p0, v3}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    goto :goto_0

    .line 1594
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 1595
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraRotateIcon:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1596
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mVideoRotatIcon:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1597
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mLastPictureButton:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1604
    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1605
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setDegree(I)V

    .line 1606
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerSnapShotManager:Lcom/oppo/camera/utils/TimerSnapShotManager;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/utils/TimerSnapShotManager;->setDegree(I)V

    goto :goto_1

    .line 1599
    :cond_2
    invoke-virtual {p0, v1}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1600
    invoke-virtual {p0, v2}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1601
    invoke-virtual {p0, v3}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    goto :goto_2
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0, p1}, Lcom/scalado/camera/FeatureCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    return-void

    .line 728
    :catch_0
    move-exception v0

    .line 729
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 730
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->closeCamera()V

    .line 731
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setTimerBtnEnable(Z)V
    .locals 3
    .parameter

    .prologue
    .line 3018
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_timer"

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setEnable(Ljava/lang/String;Z)V

    .line 3019
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v2, "key_camera_timer"

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setAlpha(Ljava/lang/String;I)V

    .line 3020
    return-void

    .line 3019
    :cond_0
    const/16 v0, 0x96

    goto :goto_0
.end method

.method private setZoomValue(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x42e6

    .line 1840
    if-gtz p1, :cond_3

    move p1, v1

    .line 1846
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 1847
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    .line 1848
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b0020

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateZoomView;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    .line 1849
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b001f

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomImage:Landroid/widget/ImageView;

    .line 1851
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomRatios:[F

    if-nez v0, :cond_4

    .line 1878
    :cond_2
    :goto_1
    return-void

    .line 1842
    :cond_3
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomArrayLength:I

    if-lt p1, v0, :cond_0

    .line 1843
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomArrayLength:I

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    .line 1855
    :cond_4
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    mul-int/lit16 v0, p1, 0x11c

    int-to-float v0, v0

    const/high16 v2, 0x4220

    div-float/2addr v0, v2

    .line 1856
    :goto_2
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mZoomImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1857
    iget-object v3, p0, Lcom/oppo/camera/OppoCamera;->mZoomRatios:[F

    aget v3, v3, p1

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1858
    iget-object v3, p0, Lcom/oppo/camera/OppoCamera;->mZoomRatios:[F

    aget v3, v3, p1

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1859
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1861
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oppo/camera/OppoCamera;->mZoomRatios:[F

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

    invoke-virtual {v0, v3}, Lcom/oppo/camera/views/RotateZoomView;->setText(Ljava/lang/CharSequence;)V

    .line 1862
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateZoomView;->setLength(I)V

    .line 1865
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1866
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomValue:I

    if-eq v0, p1, :cond_2

    .line 1867
    iput p1, p0, Lcom/oppo/camera/OppoCamera;->mZoomValue:I

    .line 1868
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    if-eqz v0, :cond_2

    .line 1871
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 1872
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1873
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    iget v1, p0, Lcom/oppo/camera/OppoCamera;->mZoomValue:I

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setZoom(I)V

    .line 1876
    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->doSafeSetParameters()V

    goto/16 :goto_1

    .line 1855
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private setupCaptureParams()V
    .locals 3

    .prologue
    .line 2333
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2334
    if-eqz v1, :cond_1

    .line 2335
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mSaveUri:Landroid/net/Uri;

    .line 2336
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2337
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/utils/StorageManager;->setSaveUri(Landroid/net/Uri;)V

    .line 2339
    :cond_0
    const-string v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCropValue:Ljava/lang/String;

    .line 2341
    :cond_1
    return-void
.end method

.method private showCameraErrorAndFinish()V
    .locals 2

    .prologue
    .line 1523
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getResources()Landroid/content/res/Resources;

    .line 1524
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->resetWhenCameraError()V

    .line 1525
    const-string v0, "OppoCamera"

    const-string v1, "Some error happen,finish Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->finish()V

    .line 1528
    return-void
.end method

.method private showControlBar()V
    .locals 2

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterWaitProgressView:Lcom/oppo/camera/views/ShutterWaitProgressView;

    if-eqz v0, :cond_0

    .line 2429
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterWaitProgressView:Lcom/oppo/camera/views/ShutterWaitProgressView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/ShutterWaitProgressView;->hideProgressBar()V

    .line 2431
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mControlBarRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2432
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mControlBarRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2434
    :cond_1
    return-void
.end method

.method private showHintView(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateHintView;->setText(I)V

    .line 2980
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

    iget v1, p0, Lcom/oppo/camera/OppoCamera;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateHintView;->setDegree(I)V

    .line 2981
    return-void
.end method

.method private startPreview()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x3e8

    const/16 v7, 0xf

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 672
    const-string v5, "OppoCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startPreview beigin: mHolder is null = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mPausing = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, p0, Lcom/oppo/camera/OppoCamera;->mPausing:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v1}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 673
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 672
    goto :goto_0

    .line 676
    :cond_2
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->ensureCameraDevice(I)V

    .line 677
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    iget-object v5, p0, Lcom/oppo/camera/OppoCamera;->mErrorCallback:Lcom/oppo/camera/OppoCamera$ErrorCallback;

    invoke-interface {v0, v5}, Lcom/scalado/camera/FeatureCamera;->setErrorCallback(Lcom/scalado/camera/Camera$ErrorCallback;)V

    .line 678
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    if-eqz v0, :cond_3

    .line 679
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->stopPreview()V

    .line 682
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_8

    .line 683
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 689
    :goto_2
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mReviewFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    move v2, v1

    .line 690
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v5, p0, Lcom/oppo/camera/OppoCamera;->mContinuousAfCallback:Lcom/oppo/camera/OppoCamera$ContinuousAfCallback;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera;->setContinuousAfCallback(Landroid/hardware/Camera$ContinuousAfCallback;)V

    .line 691
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->setCameraParameters()V

    .line 693
    if-nez v2, :cond_5

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :cond_5
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-eq v0, v1, :cond_6

    if-nez v2, :cond_6

    .line 703
    sget-object v0, Lcom/oppo/camera/OppoCamera;->OFF:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mContinuousAfState:Ljava/lang/String;

    .line 704
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->turnOnContiniousAF()V

    .line 707
    :cond_6
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_7

    .line 708
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 710
    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    iget v2, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-nez v2, :cond_9

    move-wide v2, v3

    :goto_3
    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 711
    iput-boolean v1, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    .line 712
    iput v1, p0, Lcom/oppo/camera/OppoCamera;->mStatus:I

    .line 713
    iput v1, p0, Lcom/oppo/camera/OppoCamera;->mRestartCounter:I

    .line 714
    const-string v0, "OppoCamera"

    const-string v2, "startPreview end"

    invoke-static {v0, v2, v1}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 685
    :cond_8
    const-string v0, "OppoCamera"

    const-string v5, "mHolder is null , setPreviewDisplay after 200ms! "

    invoke-static {v0, v5, v1}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 686
    invoke-direct {p0, v7}, Lcom/oppo/camera/OppoCamera;->removeMsg(I)V

    .line 687
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 696
    :catch_0
    move-exception v0

    .line 697
    const-string v2, "OppoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start preview ERROR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/oppo/camera/utils/LogUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 698
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/OppoCamera;->fixKeyEventInterceptorInProcess([I)Z

    .line 699
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 710
    :cond_9
    const-wide/16 v2, 0x320

    goto :goto_3
.end method

.method private startReceivingLocationUpdates()V
    .locals 8

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 2290
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oppo/camera/OppoCamera;->mLocationListeners:[Lcom/oppo/camera/OppoCamera$LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 2291
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oppo/camera/OppoCamera;->mLocationListeners:[Lcom/oppo/camera/OppoCamera$LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2297
    :cond_0
    :goto_0
    return-void

    .line 2292
    :catch_0
    move-exception v6

    .line 2293
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    .line 718
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 719
    const-string v0, "OppoCamera"

    const-string v1, "stopPreview "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 720
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->stopPreview()V

    .line 722
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    .line 723
    return-void
.end method

.method private stopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 2301
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_0

    .line 2302
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mLocationListeners:[Lcom/oppo/camera/OppoCamera$LocationListener;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2304
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera;->mLocationListeners:[Lcom/oppo/camera/OppoCamera$LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2302
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2305
    :catch_0
    move-exception v0

    .line 2306
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2310
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private switchCameraId()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 485
    const-string v0, "OppoCamera"

    const-string v1, "switchCameraId begin"

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 486
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->disableUI()V

    .line 490
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/oppo/camera/OppoCamera;->mNumberOfCameras:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    .line 491
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->refreshMenu()V

    .line 492
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerSnapShotManager:Lcom/oppo/camera/utils/TimerSnapShotManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/TimerSnapShotManager;->reset()V

    .line 493
    invoke-direct {p0, v3}, Lcom/oppo/camera/OppoCamera;->setTimerBtnEnable(Z)V

    .line 494
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-ne v0, v3, :cond_1

    .line 495
    sget-object v0, Lcom/oppo/camera/OppoCamera;->OFF:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mContinuousAfState:Ljava/lang/String;

    .line 497
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->stopPreview()V

    .line 498
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->closeCamera()V

    .line 499
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->removeMsg(I)V

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomValue:I

    .line 501
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->restartPreview()Z

    .line 503
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera face mode"

    iget v2, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 504
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-ne v0, v3, :cond_2

    .line 505
    const v0, 0x7f0a0049

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->showHintView(I)V

    .line 507
    :cond_2
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-nez v0, :cond_3

    .line 508
    const v0, 0x7f0a004a

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->showHintView(I)V

    .line 510
    :cond_3
    const-string v0, "OppoCamera"

    const-string v1, "switchCameraId end"

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private turnOffContiniousAF()V
    .locals 3

    .prologue
    .line 2828
    sget-object v0, Lcom/oppo/camera/OppoCamera;->OFF:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mContinuousAfState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2839
    :cond_0
    :goto_0
    return-void

    .line 2832
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    if-eqz v0, :cond_0

    .line 2833
    const-string v0, "OppoCamera"

    const-string v1, "Turn off continious af"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2834
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 2835
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    const-string v1, "auto"

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2836
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->doSafeSetParameters()V

    .line 2837
    sget-object v0, Lcom/oppo/camera/OppoCamera;->OFF:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mContinuousAfState:Ljava/lang/String;

    goto :goto_0
.end method

.method private turnOnContiniousAF()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2808
    sget-object v0, Lcom/oppo/camera/OppoCamera;->ON:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mContinuousAfState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2825
    :cond_0
    :goto_0
    return-void

    .line 2811
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    if-eqz v0, :cond_0

    .line 2812
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->cancelAutoFocus()V

    .line 2813
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 2814
    const-string v0, "OppoCamera"

    const-string v1, "Turn on continious af"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2816
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    const-string v1, "continuous"

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2820
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/hardware/Camera$Parameters;->setTouchIndexAec(II)V

    .line 2821
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/hardware/Camera$Parameters;->setTouchIndexAf(II)V

    .line 2822
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->doSafeSetParameters()V

    .line 2823
    sget-object v0, Lcom/oppo/camera/OppoCamera;->ON:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mContinuousAfState:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateLastPicUri()V
    .locals 3

    .prologue
    .line 2952
    new-instance v1, Lcom/oppo/camera/utils/StringUtil;

    invoke-direct {v1}, Lcom/oppo/camera/utils/StringUtil;-><init>()V

    .line 2953
    .local v1, stringUtil:Lcom/oppo/camera/utils/StringUtil;
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/utils/StringUtil;->getLatestFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2954
    .local v0, lastName:Ljava/lang/String;
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    invoke-virtual {v2, v0}, Lcom/oppo/camera/utils/OppoBrowseImage;->updateLastPictureUri(Ljava/lang/String;)V

    .line 2955
    return-void
.end method


# virtual methods
.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 2217
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 2218
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 2219
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/oppo/camera/utils/Util;->clamp(III)I

    move-result v3

    .line 2220
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/oppo/camera/utils/Util;->clamp(III)I

    move-result v5

    .line 2221
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2222
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/oppo/camera/OppoCamera;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2223
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/oppo/camera/utils/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 2224
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    const/4 v2, 0x1

    .line 2079
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2085
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mReviewFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2102
    :cond_0
    :goto_0
    return v2

    .line 2088
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 2089
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/OppoCamera;->mMoveType:I

    .line 2091
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 2092
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2094
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFocusState:I

    if-eqz v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-ne v0, v2, :cond_6

    .line 2095
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2098
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 2099
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method protected keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1713
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1714
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1715
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1716
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2698
    packed-switch p1, :pswitch_data_0

    .line 2714
    :goto_0
    return-void

    .line 2700
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2701
    if-eqz p3, :cond_0

    .line 2702
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2703
    if-eqz v1, :cond_0

    .line 2704
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2707
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/oppo/camera/OppoCamera;->setResult(ILandroid/content/Intent;)V

    .line 2708
    const-string v0, "crop-temp"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2709
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2710
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->finish()V

    goto :goto_0

    .line 2698
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2447
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->keepScreenOnAwhile()V

    .line 2448
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2518
    :cond_0
    :goto_0
    return-void

    .line 2450
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/OppoCamera;->mTimeFlag:J

    .line 2451
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerSnapShotManager:Lcom/oppo/camera/utils/TimerSnapShotManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/TimerSnapShotManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2454
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mReviewFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2457
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerModeBackId:Ljava/lang/String;

    const-string v1, "camera_timer_on_5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerModeFrontId:Ljava/lang/String;

    const-string v1, "camera_timer_on_5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-ne v0, v2, :cond_4

    .line 2459
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->setTimerBtnEnable(Z)V

    .line 2460
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerSnapShotManager:Lcom/oppo/camera/utils/TimerSnapShotManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/TimerSnapShotManager;->startTakePicDelay()V

    goto :goto_0

    .line 2462
    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->handleTakePicture()V

    goto :goto_0

    .line 2466
    :sswitch_1
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    invoke-virtual {v0}, Lcom/oppo/camera/views/Switcher;->setCameraMode()V

    .line 2467
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mAnimationIsActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mImageHasSaved:Z

    if-eqz v0, :cond_0

    .line 2470
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-static {}, Lcom/oppo/camera/utils/StorageManager;->hasInternalStorage()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2471
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->checkStorage()V

    goto :goto_0

    .line 2474
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oppo/camera/utils/Util;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2475
    const v0, 0x7f0a002e

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->showHintView(I)V

    goto :goto_0

    .line 2478
    :cond_6
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->disableUI()V

    .line 2479
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->updateLastPicUri()V

    .line 2480
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OppoBrowseImage;->getPictureCount(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    .line 2481
    const-string v0, "OppoCamera"

    const-string v1, "Go to Review"

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2482
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OppoBrowseImage;->viewLastPicture(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2483
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->enableUI()V

    goto/16 :goto_0

    .line 2486
    :cond_7
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->enableUI()V

    goto/16 :goto_0

    .line 2490
    :sswitch_2
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->disableUI()V

    .line 2491
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->clearLastData()V

    .line 2492
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->hidePostCaptureAlert()V

    .line 2494
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2500
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mReviewFrame:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2501
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mReviewFrame:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->fadeOut(Landroid/view/View;)V

    .line 2502
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->recycleBitmap()V

    .line 2503
    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    .line 2504
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2495
    :catch_0
    move-exception v0

    .line 2496
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2497
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->closeCamera()V

    .line 2498
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->showCameraErrorAndFinish()V

    goto :goto_1

    .line 2507
    :sswitch_3
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-static {}, Lcom/oppo/camera/utils/StorageManager;->hasInternalStorage()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2508
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->checkStorage()V

    goto/16 :goto_0

    .line 2511
    :cond_8
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->disableUI()V

    .line 2512
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->doAttach()V

    goto/16 :goto_0

    .line 2515
    :sswitch_4
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->doCancel()V

    goto/16 :goto_0

    .line 2448
    :sswitch_data_0
    .sparse-switch
        0x7f0b000b -> :sswitch_0
        0x7f0b000d -> :sswitch_2
        0x7f0b000e -> :sswitch_4
        0x7f0b000f -> :sswitch_3
        0x7f0b0029 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 331
    const-string v2, "OppoCamera"

    const-string v3, "onCreate begin"

    invoke-static {v2, v3, v6}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 332
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mIsExitable:Z

    .line 333
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mDisableKey:[I

    invoke-virtual {p0, v2}, Lcom/oppo/camera/OppoCamera;->fixKeyEventInterceptorInProcess([I)Z

    .line 334
    new-instance v2, Lcom/oppo/camera/OppoCamera$MainHandler;

    invoke-direct {v2, p0, v5}, Lcom/oppo/camera/OppoCamera$MainHandler;-><init>(Lcom/oppo/camera/OppoCamera;Lcom/oppo/camera/OppoCamera$1;)V

    iput-object v2, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    .line 335
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->isImageCaptureIntent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    .line 336
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->initCameraSettings()V

    .line 338
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/oppo/camera/OppoCamera;->mDevlatch:Ljava/util/concurrent/CountDownLatch;

    .line 339
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/oppo/camera/OppoCamera$2;

    invoke-direct {v2, p0}, Lcom/oppo/camera/OppoCamera$2;-><init>(Lcom/oppo/camera/OppoCamera;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 359
    .local v1, startPreviewThread:Ljava/lang/Thread;
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/oppo/camera/OppoCamera;->setContentView(I)V

    .line 360
    const v2, 0x7f0b001c

    invoke-virtual {p0, v2}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/oppo/camera/OppoCamera;->mSurfaceView:Landroid/view/SurfaceView;

    .line 361
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/OppoCamera;->mHolder:Landroid/view/SurfaceHolder;

    .line 362
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 363
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 365
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 367
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->initUi()V

    .line 369
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/camera/utils/ScreenOffUtil;->instance(Landroid/content/Context;)Lcom/oppo/camera/utils/ScreenOffUtil;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/OppoCamera;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    .line 371
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->initFeature()V

    .line 373
    iget-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->setupCaptureParams()V

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/OppoCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 378
    new-instance v2, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;

    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;-><init>(Lcom/oppo/camera/OppoCamera;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oppo/camera/OppoCamera;->mOrientationListener:Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;

    .line 379
    new-instance v2, Lcom/oppo/camera/utils/OppoBrowseImage;

    invoke-direct {v2, p0}, Lcom/oppo/camera/utils/OppoBrowseImage;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oppo/camera/OppoCamera;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    .line 381
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/utils/StorageManager;->setScreenHintListener(Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;)V

    .line 382
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/utils/OppoBrowseImage;->setScreenHintListener(Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;)V

    .line 383
    new-instance v2, Lcom/oppo/camera/utils/TimerSnapShotManager;

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    iget-object v4, p0, Lcom/oppo/camera/OppoCamera;->mControlBarRootView:Landroid/view/ViewGroup;

    invoke-direct {v2, p0, v3, v4}, Lcom/oppo/camera/utils/TimerSnapShotManager;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View;)V

    iput-object v2, p0, Lcom/oppo/camera/OppoCamera;->mTimerSnapShotManager:Lcom/oppo/camera/utils/TimerSnapShotManager;

    .line 384
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mTimerSnapShotManager:Lcom/oppo/camera/utils/TimerSnapShotManager;

    iget-object v3, p0, Lcom/oppo/camera/OppoCamera;->mTimerOutListener:Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/utils/TimerSnapShotManager;->setTimerOutListener(Lcom/oppo/camera/utils/TimerSnapShotManager$TimerOutListener;)V

    .line 386
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mDevlatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 388
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 389
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 390
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 392
    new-instance v2, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/oppo/camera/OppoCamera$MultiGestureListener;

    invoke-direct {v4, p0, v5}, Lcom/oppo/camera/OppoCamera$MultiGestureListener;-><init>(Lcom/oppo/camera/OppoCamera;Lcom/oppo/camera/OppoCamera$1;)V

    invoke-direct {v2, v3, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/oppo/camera/OppoCamera;->mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 393
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;

    invoke-direct {v4, p0, v5}, Lcom/oppo/camera/OppoCamera$GestureDetectorListener;-><init>(Lcom/oppo/camera/OppoCamera;Lcom/oppo/camera/OppoCamera$1;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/oppo/camera/OppoCamera;->mGestureDetector:Landroid/view/GestureDetector;

    .line 395
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v2}, Lcom/oppo/camera/utils/ScreenOffUtil;->registerScreenOffReceiver()V

    .line 396
    iget-object v2, p0, Lcom/oppo/camera/OppoCamera;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v2, p0}, Lcom/oppo/camera/utils/ScreenOffUtil;->setOnScreenOffListener(Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;)V

    .line 397
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->disableUI()V

    .line 399
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 400
    iget-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mStartPreviewFail:Z

    if-eqz v2, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->showCameraErrorAndFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v2

    .line 407
    :cond_1
    iput-object v5, p0, Lcom/oppo/camera/OppoCamera;->mDevlatch:Ljava/util/concurrent/CountDownLatch;

    .line 410
    const-string v2, "OppoCamera"

    const-string v3, "onCreate end"

    invoke-static {v2, v3, v6}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1119
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1121
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->recycleBitmap()V

    .line 1122
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1124
    iput-object v1, p0, Lcom/oppo/camera/OppoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/ScreenOffUtil;->setOnScreenOffListener(Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;)V

    .line 1127
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/ScreenOffUtil;->unRegisterScreenOffReceiver()V

    .line 1128
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    if-eqz v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/PlayEffectSound;->destory()V

    .line 1131
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1994
    sparse-switch p1, :sswitch_data_0

    .line 2034
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 1998
    :sswitch_1
    iget-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mPausing:Z

    if-nez v2, :cond_0

    .line 2001
    iget-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    if-eqz v2, :cond_0

    .line 2004
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->clearFocusView()V

    .line 2005
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->turnOffContiniousAF()V

    .line 2007
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2008
    const/4 v0, 0x1

    .line 2012
    .local v0, step:I
    :goto_1
    iget v2, p0, Lcom/oppo/camera/OppoCamera;->mZoomValue:I

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/oppo/camera/OppoCamera;->setZoomValue(I)V

    goto :goto_0

    .line 2010
    .end local v0           #step:I
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    div-int/lit8 v0, v2, 0x3

    .restart local v0       #step:I
    goto :goto_1

    .line 2016
    .end local v0           #step:I
    :sswitch_2
    iget-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mPausing:Z

    if-nez v2, :cond_0

    .line 2019
    iget-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    if-eqz v2, :cond_0

    .line 2022
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->clearFocusView()V

    .line 2023
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->turnOffContiniousAF()V

    .line 2025
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 2026
    const/4 v0, 0x1

    .line 2030
    .restart local v0       #step:I
    :goto_2
    iget v2, p0, Lcom/oppo/camera/OppoCamera;->mZoomValue:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/oppo/camera/OppoCamera;->setZoomValue(I)V

    goto :goto_0

    .line 2028
    .end local v0           #step:I
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    div-int/lit8 v0, v2, 0x3

    .restart local v0       #step:I
    goto :goto_2

    .line 1994
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
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

    .line 2040
    sparse-switch p1, :sswitch_data_0

    .line 2074
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 2044
    :sswitch_1
    iget-boolean v1, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/OppoCamera;->mPausing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/OppoCamera;->mIsExitable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/OppoCamera;->mImageHasSaved:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_0

    .line 2057
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->finish()V

    .line 2059
    const/4 v0, 0x0

    goto :goto_0

    .line 2061
    :sswitch_2
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 2062
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2064
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->turnOnContiniousAF()V

    goto :goto_0

    .line 2068
    :sswitch_3
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 2069
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2071
    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->turnOnContiniousAF()V

    goto :goto_0

    .line 2040
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x6 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 972
    const-string v0, "OppoCamera"

    const-string v1, "onPause E"

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 973
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-eqz v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->onPause()V

    .line 979
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->disableUI()V

    .line 980
    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mPausing:Z

    .line 981
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->turnOffContiniousAF()V

    .line 982
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    .line 983
    iput-boolean v3, p0, Lcom/oppo/camera/OppoCamera;->mAnimationIsActive:Z

    .line 985
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 986
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 987
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->stopPreview()V

    .line 988
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->closeCamera()V

    .line 989
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 990
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->stopReceivingLocationUpdates()V

    .line 991
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mOrientationListener:Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;->disable()V

    .line 993
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->unRegisterReveiver()V

    .line 994
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerSnapShotManager:Lcom/oppo/camera/utils/TimerSnapShotManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/TimerSnapShotManager;->reset()V

    .line 995
    invoke-direct {p0, v2}, Lcom/oppo/camera/OppoCamera;->setTimerBtnEnable(Z)V

    .line 996
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->resetScreenOn()V

    .line 997
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 998
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    if-nez v0, :cond_2

    .line 1000
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->showControlBar()V

    .line 1002
    :cond_2
    iput-boolean v3, p0, Lcom/oppo/camera/OppoCamera;->mIsPhoneCall:Z

    .line 1003
    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mImageHasSaved:Z

    .line 1004
    const-string v0, "OppoCamera"

    const-string v1, "onPause X"

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1005
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 875
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 876
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 877
    const-string v0, "OppoCamera"

    const-string v1, "onResume E"

    invoke-static {v0, v1, v5}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 878
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsSharePref:Landroid/content/SharedPreferences;

    const-string v1, "camera sound mode"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterSound:Ljava/lang/String;

    .line 879
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mShutterSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->setShutterSound(Ljava/lang/String;)V

    .line 880
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShutterSound:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mControlBar:Landroid/view/View;

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 882
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mControlBar:Landroid/view/View;

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 883
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mControlBar:Landroid/view/View;

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mDisableKey:[I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->fixKeyEventInterceptorInProcess([I)Z

    .line 889
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->onResume()V

    .line 891
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    .line 895
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPausing:Z

    if-eqz v0, :cond_3

    .line 896
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    if-eqz v0, :cond_2

    .line 897
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->stopPreview()V

    .line 899
    :cond_2
    new-instance v0, Lcom/oppo/camera/OppoCamera$6;

    invoke-direct {v0, p0}, Lcom/oppo/camera/OppoCamera$6;-><init>(Lcom/oppo/camera/OppoCamera;)V

    .line 911
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 912
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 915
    :cond_3
    iput-boolean v4, p0, Lcom/oppo/camera/OppoCamera;->mPausing:Z

    .line 917
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mOrientationListener:Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/oppo/camera/OppoCamera$MyOrientationEventListener;->enable()V

    .line 918
    iput-boolean v4, p0, Lcom/oppo/camera/OppoCamera;->mAnimationIsActive:Z

    .line 919
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->brightnessMax()V

    .line 920
    iput-boolean v5, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    .line 921
    iput-boolean v4, p0, Lcom/oppo/camera/OppoCamera;->mHasFirstSetOrientationIndicator:Z

    .line 923
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->registerReceiver()V

    .line 924
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerSnapShotManager:Lcom/oppo/camera/utils/TimerSnapShotManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/TimerSnapShotManager;->reset()V

    .line 925
    invoke-direct {p0, v5}, Lcom/oppo/camera/OppoCamera;->setTimerBtnEnable(Z)V

    .line 926
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 927
    const-string v1, "CAM_ON_BEFOR_HDMI_PLUG_IN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 928
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 929
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 930
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 931
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/OppoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 932
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mLocationManager:Landroid/location/LocationManager;

    .line 933
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mRecordLocation:Z

    if-eqz v0, :cond_4

    .line 934
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->startReceivingLocationUpdates()V

    .line 936
    :cond_4
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_5

    .line 937
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/camera/OppoCamera$7;

    invoke-direct {v1, p0}, Lcom/oppo/camera/OppoCamera$7;-><init>(Lcom/oppo/camera/OppoCamera;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 945
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->keepScreenOnAwhile()V

    .line 946
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->showControlBar()V

    .line 947
    iput-boolean v4, p0, Lcom/oppo/camera/OppoCamera;->mHasDoAnimationWithPostView:Z

    .line 948
    iput-boolean v4, p0, Lcom/oppo/camera/OppoCamera;->mIsPhoneCall:Z

    .line 949
    const-string v0, "OppoCamera"

    const-string v1, "onResume X"

    invoke-static {v0, v1, v5}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 950
    iput v4, p0, Lcom/oppo/camera/OppoCamera;->mCount:I

    .line 951
    iput-boolean v5, p0, Lcom/oppo/camera/OppoCamera;->mImageHasSaved:Z

    .line 952
    const-string v0, "camera_timer_off"

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerModeBackId:Ljava/lang/String;

    .line 953
    const-string v0, "camera_timer_off"

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerModeFrontId:Ljava/lang/String;

    .line 954
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    const-string v1, "key_camera_timer"

    const-string v2, "camera_timer_off"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 2947
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/OppoCamera;->setRequestedOrientation(I)V

    .line 2948
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->finish()V

    .line 2949
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 968
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 969
    return-void
.end method

.method public onSwitchChanged(Lcom/oppo/camera/views/Switcher;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 1477
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    if-nez v0, :cond_2

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    invoke-virtual {v0}, Lcom/oppo/camera/views/Switcher;->setCameraMode()V

    .line 1494
    :cond_1
    :goto_0
    return-void

    .line 1481
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/camera/views/Switcher;->getState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mCurrentState:Z

    .line 1485
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mCurrentState:Z

    if-nez v0, :cond_1

    .line 1487
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mTimerSnapShotManager:Lcom/oppo/camera/utils/TimerSnapShotManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/TimerSnapShotManager;->reset()V

    .line 1488
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mPressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/OppoCamera;->mPressCount:I

    .line 1489
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mPressCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1490
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->disableUI()V

    .line 1491
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mSwitchChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1701
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1702
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->keepScreenOnAwhile()V

    .line 1705
    return-void
.end method

.method protected resetScreenOn()V
    .locals 2

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1709
    invoke-virtual {p0}, Lcom/oppo/camera/OppoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1710
    return-void
.end method

.method protected showPostCaptureAlert()Z
    .locals 5

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 2344
    iget-boolean v1, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_2

    .line 2346
    const v1, 0x7f0b000b

    invoke-virtual {p0, v1}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2347
    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2348
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 2349
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, v1, v0

    .line 2350
    invoke-virtual {p0, v3}, Lcom/oppo/camera/OppoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2351
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 2352
    invoke-direct {p0, v3}, Lcom/oppo/camera/OppoCamera;->fadeIn(Landroid/view/View;)V

    .line 2349
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2355
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraSettingsMenu:Lcom/oppo/camera/setting/NewCameraSettingMenu;

    invoke-virtual {v0}, Lcom/oppo/camera/setting/NewCameraSettingMenu;->hide()V

    .line 2356
    const/4 v0, 0x1

    .line 2358
    :cond_2
    return v0

    .line 2348
    :array_0
    .array-data 0x4
        0xdt 0x0t 0xbt 0x7ft
        0xft 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1091
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera;->mHolder:Landroid/view/SurfaceHolder;

    .line 1095
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    if-eqz v0, :cond_0

    .line 1098
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1099
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 1101
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->restartPreview()Z

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera;->mHolder:Landroid/view/SurfaceHolder;

    .line 1108
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1112
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->stopPreview()V

    .line 1113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mHolder:Landroid/view/SurfaceHolder;

    .line 1115
    return-void
.end method

.method public takePicture()V
    .locals 14

    .prologue
    const/4 v4, 0x2

    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v10, 0x0

    .line 1136
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPausing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mStatus:I

    if-eq v0, v4, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    if-nez v0, :cond_1

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-nez v0, :cond_2

    .line 1140
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->setFeatureMode()V

    .line 1142
    :cond_2
    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mIsPictureTaken:Z

    .line 1143
    iput v4, p0, Lcom/oppo/camera/OppoCamera;->mStatus:I

    .line 1144
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 1147
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->removeGpsData()V

    .line 1148
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-interface {v0, v4, v5}, Lcom/scalado/camera/FeatureCamera$Parameters;->setGpsTimestamp(J)V

    .line 1150
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 1151
    if-eqz v4, :cond_6

    .line 1152
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 1153
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 1154
    cmpl-double v0, v5, v10

    if-nez v0, :cond_3

    cmpl-double v0, v7, v10

    if-eqz v0, :cond_e

    :cond_3
    move v0, v3

    .line 1155
    :goto_1
    if-eqz v0, :cond_6

    .line 1156
    const-string v1, "N"

    .line 1157
    const-string v0, "E"

    .line 1158
    cmpg-double v9, v5, v10

    if-gez v9, :cond_4

    .line 1159
    const-string v1, "S"

    .line 1161
    :cond_4
    cmpg-double v9, v7, v10

    if-gez v9, :cond_5

    .line 1162
    const-string v0, "W"

    .line 1164
    :cond_5
    iget-object v9, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v9}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/hardware/Camera$Parameters;->setGpsLatitudeRef(Ljava/lang/String;)V

    .line 1165
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 1166
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setGpsLongitudeRef(Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0, v7, v8}, Lcom/scalado/camera/FeatureCamera$Parameters;->setGpsLongitude(D)V

    .line 1169
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-virtual {v4}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v4}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1171
    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1172
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1173
    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v5

    .line 1174
    cmp-long v1, v5, v12

    if-gez v1, :cond_f

    .line 1175
    const-wide/16 v7, -0x1

    mul-long/2addr v5, v7

    .line 1176
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-wide/high16 v5, 0x3ff0

    invoke-virtual {v1, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsAltitudeRef(D)V

    .line 1179
    :goto_2
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {v1, v5, v6}, Lcom/scalado/camera/FeatureCamera$Parameters;->setGpsAltitude(D)V

    .line 1186
    :goto_3
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v12

    if-eqz v0, :cond_6

    .line 1189
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 1190
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v4, v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setGpsTimestamp(J)V

    .line 1197
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1198
    cmp-long v4, v0, v12

    if-eqz v4, :cond_7

    .line 1199
    const-string v4, "yyyy:MM:dd kk:mm:ss"

    invoke-static {v4, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1200
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExifDateTime(Ljava/lang/String;)V

    .line 1203
    :cond_7
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1204
    invoke-static {}, Lcom/oppo/camera/CameraHolder;->instance()Lcom/oppo/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    aget-object v0, v0, v1

    .line 1205
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v3, :cond_11

    .line 1206
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/oppo/camera/OppoCamera;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/oppo/camera/OppoCamera;->mRotation:I

    .line 1211
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    iget v1, p0, Lcom/oppo/camera/OppoCamera;->mRotation:I

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setRotation(I)V

    .line 1212
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->doSafeSetParameters()V

    .line 1213
    const-string v0, "OppoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=== take picture ==== "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/oppo/camera/OppoCamera;->mCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/oppo/camera/OppoCamera;->mCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1214
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->clearFocusView()V

    .line 1215
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 1216
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1218
    :cond_9
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_a

    .line 1219
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mSwitcher:Lcom/oppo/camera/views/Switcher;

    invoke-virtual {v0}, Lcom/oppo/camera/views/Switcher;->setCameraMode()V

    .line 1221
    :cond_a
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    if-ne v0, v3, :cond_b

    .line 1222
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    .line 1223
    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getBurstTotalCaptures()I

    move-result v1

    .line 1224
    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getMaxBurstTotalCaptures()I

    move-result v4

    .line 1225
    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->getExposureBracketing()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1226
    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->isExposureBracketingSupported()Z

    move-result v6

    .line 1227
    invoke-interface {v0}, Lcom/scalado/camera/FeatureCamera$Parameters;->isSWBurstForced()Z

    move-result v0

    .line 1228
    const-string v7, "OppoCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "totalCaptures="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const-string v1, "OppoCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "maxCaptures="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const-string v1, "OppoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numExposures="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const-string v1, "OppoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupported="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const-string v1, "OppoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "swBurstForce="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_b
    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mImageHasSaved:Z

    .line 1235
    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mHasDoAnimationWithPostView:Z

    .line 1236
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/oppo/camera/OppoCamera;->removeMsg(I)V

    .line 1237
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_c

    .line 1238
    iget-object v4, p0, Lcom/oppo/camera/OppoCamera;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x17

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    if-ne v0, v3, :cond_12

    const-wide/16 v0, 0x1b58

    :goto_5
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1240
    :cond_c
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFCamera:Lcom/scalado/camera/FeatureCamera;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oppo/camera/OppoCamera;->mPostViewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    iget-object v6, p0, Lcom/oppo/camera/OppoCamera;->mJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    invoke-interface {v0, v1, v4, v5, v6}, Lcom/scalado/camera/FeatureCamera;->takePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 1241
    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mFeatureMode:I

    if-ne v0, v3, :cond_d

    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/oppo/camera/OppoCamera;->mCameraId:I

    if-nez v0, :cond_d

    .line 1242
    invoke-direct {p0}, Lcom/oppo/camera/OppoCamera;->hideControlBar()V

    .line 1243
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 1245
    :cond_d
    iput-boolean v2, p0, Lcom/oppo/camera/OppoCamera;->mPreviewing:Z

    goto/16 :goto_0

    :cond_e
    move v0, v2

    .line 1154
    goto/16 :goto_1

    .line 1178
    :cond_f
    iget-object v1, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/hardware/Camera$Parameters;->setGpsAltitudeRef(D)V

    goto/16 :goto_2

    .line 1184
    :cond_10
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera;->mFParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    invoke-interface {v0, v10, v11}, Lcom/scalado/camera/FeatureCamera$Parameters;->setGpsAltitude(D)V

    goto/16 :goto_3

    .line 1208
    :cond_11
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/oppo/camera/OppoCamera;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/oppo/camera/OppoCamera;->mRotation:I

    goto/16 :goto_4

    .line 1238
    :cond_12
    const-wide/16 v0, 0xbb8

    goto :goto_5
.end method
