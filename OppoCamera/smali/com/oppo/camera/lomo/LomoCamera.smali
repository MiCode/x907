.class public Lcom/oppo/camera/lomo/LomoCamera;
.super Landroid/app/Activity;
.source "LomoCamera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/lomo/LomoCamera$20;,
        Lcom/oppo/camera/lomo/LomoCamera$TouchFocusCallback;,
        Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;,
        Lcom/oppo/camera/lomo/LomoCamera$LocationListener;,
        Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;,
        Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;,
        Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;,
        Lcom/oppo/camera/lomo/LomoCamera$MainHandler;,
        Lcom/oppo/camera/lomo/LomoCamera$CameraErrorCb;,
        Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;,
        Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;,
        Lcom/oppo/camera/lomo/LomoCamera$MoveType;,
        Lcom/oppo/camera/lomo/LomoCamera$FocusState;,
        Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    }
.end annotation


# static fields
.field private static FOCUSAREA_RIGHT:I

.field public static OFF:Ljava/lang/String;

.field public static ON:Ljava/lang/String;

.field public static mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;


# instance fields
.field private devlatch:Ljava/util/concurrent/CountDownLatch;

.field private endCallKey:[I

.field private intentStart:Z

.field private m3DAnimationListener:Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;

.field private mAFCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

.field private mBurstCount:I

.field private mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraFaceBtn:Lcom/oppo/camera/views/RotateImageView;

.field private mCameraId:I

.field private mChangeEffectListener:Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;

.field private final mContinuousAfCallback:Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;

.field private mContinuousAfState:Ljava/lang/String;

.field private mControlBar:Landroid/view/ViewGroup;

.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;

.field private mDoFling:Z

.field private mDoSnapAfterFocusComplete:Z

.field private mDoingAnimation:Z

.field private mEffectChangeHint:Lcom/oppo/camera/utils/OnScreenHint;

.field private mEffectChangeHintRunnable:Ljava/lang/Runnable;

.field private mEffectId:I

.field private mEffectSufaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private mEffectSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mEffectSurfaceView:Landroid/view/SurfaceView;

.field private final mErrorCallback:Lcom/oppo/camera/lomo/LomoCamera$CameraErrorCb;

.field private mFilterHandler:Lcom/oppo/camera/lomo/FilterHandler;

.field private mFirstEnterTips:Landroid/widget/RelativeLayout;

.field private mFirstEnterTipsAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mFirstEnterTipsBk:Landroid/widget/ImageView;

.field private mFlashMode:Ljava/lang/String;

.field private mFlingUp:Z

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

.field private mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

.field private mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

.field private mFunStyleNames:[Ljava/lang/String;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHaHaStyleNames:[Ljava/lang/String;

.field private final mHidePanoramaTips:Ljava/lang/Runnable;

.field private mInImage:Lcom/scalado/base/Image;

.field private mIsBurstReviewOver:Z

.field private mIsDofTouchFocus:Z

.field private mIsFirstEnter:Z

.field private mIsFling:Z

.field private mIsImageCapture:Z

.field private mIsPictureTaken:Z

.field private mIsTouchAf:Z

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field mLocationListeners:[Lcom/oppo/camera/lomo/LomoCamera$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMainHandler:Landroid/os/Handler;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMenuBtn:Lcom/oppo/camera/views/RotateImageView;

.field private mMenuLayout:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

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

.field private mMoveType:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

.field private mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mNbrOfImagesGrabbed:I

.field private mNextBitmap:Landroid/graphics/Bitmap;

.field private mNumberOfCameras:I

.field private mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;

.field private mOutBitmap:Landroid/graphics/Bitmap;

.field private mOutImage:Lcom/scalado/base/Image;

.field private mOutImageEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

.field private mPanelView:Lcom/oppo/camera/lomo/PanelView;

.field private mPanoramaHandler:Lcom/oppo/camera/lomo/PanoramaHandler;

.field private mPanoramaInProgress:Z

.field private mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

.field private mPanoramaProgressBar:Lcom/oppo/camera/panorama/PanoramaProgressBar;

.field private mPanoramaTips:Landroid/widget/RelativeLayout;

.field private final mPanoramaTipsHandler:Landroid/os/Handler;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPausing:Z

.field private mPreviewCallbackForBurst:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewCallbackForEffect:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewCallbackForPanorama:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewing:Z

.field private mPreviousEffect:Lcom/oppo/camera/lomo/filters/Filter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

.field private mRotation:I

.field private mSavePath:Ljava/lang/String;

.field private mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShotAnimBitmapSmall:Landroid/graphics/Bitmap;

.field protected mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

.field private mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

.field private mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

.field private final mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mStartPreviewFail:Z

.field private mStartSpan:F

.field private mStartZoomValue:I

.field private mStorageManager:Lcom/oppo/camera/utils/StorageManager;

.field private mStyleId:I

.field private mSunStyleNames:[Ljava/lang/String;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTakePicAfterFocused:Z

.field private mTargetZoomValue:I

.field private mTempBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailBtn:Lcom/oppo/camera/views/RotateImageView;

.field private mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

.field private mTouchFocusCallback:Lcom/oppo/camera/lomo/LomoCamera$TouchFocusCallback;

.field private mZoomArrayLength:I

.field private mZoomImage:Landroid/widget/ImageView;

.field private mZoomLayout:Landroid/widget/RelativeLayout;

.field private final mZoomListener:Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;

.field private mZoomMax:I

.field protected mZoomRatios:[F

.field private mZoomState:I

.field private mZoomText:Lcom/oppo/camera/views/RotateZoomView;

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    const-string v0, "on"

    sput-object v0, Lcom/oppo/camera/lomo/LomoCamera;->ON:Ljava/lang/String;

    .line 212
    const-string v0, "off"

    sput-object v0, Lcom/oppo/camera/lomo/LomoCamera;->OFF:Ljava/lang/String;

    .line 219
    const/16 v0, 0x2b7

    sput v0, Lcom/oppo/camera/lomo/LomoCamera;->FOCUSAREA_RIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 125
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$CameraErrorCb;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/lomo/LomoCamera$CameraErrorCb;-><init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mErrorCallback:Lcom/oppo/camera/lomo/LomoCamera$CameraErrorCb;

    .line 141
    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mLocationManager:Landroid/location/LocationManager;

    .line 146
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->endCallKey:[I

    .line 150
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/lomo/LomoCamera$MainHandler;-><init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    .line 192
    iput v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOrientationCompensation:I

    .line 197
    iput-boolean v4, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsFirstEnter:Z

    .line 198
    iput-boolean v4, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsImageCapture:Z

    .line 206
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStartPreviewFail:Z

    .line 210
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera;->OFF:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mContinuousAfState:Ljava/lang/String;

    .line 217
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->FINISH:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    .line 222
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mTakePicAfterFocused:Z

    .line 224
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;-><init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mContinuousAfCallback:Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;

    .line 225
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$TouchFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/lomo/LomoCamera$TouchFocusCallback;-><init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mTouchFocusCallback:Lcom/oppo/camera/lomo/LomoCamera$TouchFocusCallback;

    .line 229
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsTouchAf:Z

    .line 236
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStartSpan:F

    .line 237
    iput v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomState:I

    .line 245
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;-><init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomListener:Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;

    .line 254
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera$MoveType;->NOT_MOVE:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMoveType:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    .line 256
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsDofTouchFocus:Z

    .line 271
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mDoFling:Z

    .line 272
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsFling:Z

    .line 273
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFlingUp:Z

    .line 284
    iput-boolean v4, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsBurstReviewOver:Z

    .line 290
    iput v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mNbrOfImagesGrabbed:I

    .line 291
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaInProgress:Z

    .line 297
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$1;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 311
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$2;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 391
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$4;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$4;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->m3DAnimationListener:Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;

    .line 846
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$7;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$7;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mChangeEffectListener:Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;

    .line 933
    iput v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mRotation:I

    .line 1029
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$8;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$8;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1577
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMatrix:Landroid/graphics/Matrix;

    .line 1882
    new-array v0, v2, [Lcom/oppo/camera/lomo/LomoCamera$LocationListener;

    new-instance v1, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;-><init>(Lcom/oppo/camera/lomo/LomoCamera;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;

    const-string v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;-><init>(Lcom/oppo/camera/lomo/LomoCamera;Ljava/lang/String;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mLocationListeners:[Lcom/oppo/camera/lomo/LomoCamera$LocationListener;

    .line 2006
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$9;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$9;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    .line 2298
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$11;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$11;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectChangeHintRunnable:Ljava/lang/Runnable;

    .line 2354
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$12;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$12;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewCallbackForBurst:Landroid/hardware/Camera$PreviewCallback;

    .line 2382
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$13;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$13;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewCallbackForEffect:Landroid/hardware/Camera$PreviewCallback;

    .line 2448
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$14;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$14;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewCallbackForPanorama:Landroid/hardware/Camera$PreviewCallback;

    .line 2478
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$15;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$15;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mAFCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 2486
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$16;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$16;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

    .line 2503
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$17;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$17;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

    .line 2612
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$18;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$18;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mHidePanoramaTips:Ljava/lang/Runnable;

    .line 2618
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaTipsHandler:Landroid/os/Handler;

    .line 2847
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$19;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$19;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-void

    .line 146
    nop

    :array_0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/oppo/camera/lomo/LomoCamera;[I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10000(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOutImageEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOutImage:Lcom/scalado/base/Image;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/oppo/camera/lomo/LomoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsFling:Z

    return v0
.end method

.method static synthetic access$10302(Lcom/oppo/camera/lomo/LomoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsFling:Z

    return p1
.end method

.method static synthetic access$10400(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/filters/Filter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviousEffect:Lcom/oppo/camera/lomo/filters/Filter;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$10502(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$10600(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mNextBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$10602(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mNextBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$10700(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/lomo/LomoCamera;->drawEffectChangeAnim(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/oppo/camera/lomo/LomoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaInProgress:Z

    return v0
.end method

.method static synthetic access$10900(Lcom/oppo/camera/lomo/LomoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mNbrOfImagesGrabbed:I

    return v0
.end method

.method static synthetic access$10908(Lcom/oppo/camera/lomo/LomoCamera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mNbrOfImagesGrabbed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mNbrOfImagesGrabbed:I

    return v0
.end method

.method static synthetic access$1100(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/PanoramaHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaHandler:Lcom/oppo/camera/lomo/PanoramaHandler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->startSweep()V

    return-void
.end method

.method static synthetic access$11200(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->stopSweep()V

    return-void
.end method

.method static synthetic access$11300(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/panorama/PanoramaProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaProgressBar:Lcom/oppo/camera/panorama/PanoramaProgressBar;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->reset()V

    return-void
.end method

.method static synthetic access$11500(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->hidePanoramaTips()V

    return-void
.end method

.method static synthetic access$11600(Lcom/oppo/camera/lomo/LomoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mDoSnapAfterFocusComplete:Z

    return v0
.end method

.method static synthetic access$11700(Lcom/oppo/camera/lomo/LomoCamera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->playFocusSound(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oppo/camera/lomo/LomoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/oppo/camera/lomo/LomoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mRotation:I

    return v0
.end method

.method static synthetic access$1400(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/views/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBtn:Lcom/oppo/camera/views/RotateImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->updateLastPictureUri()V

    return-void
.end method

.method static synthetic access$1702(Lcom/oppo/camera/lomo/LomoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mDoingAnimation:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/oppo/camera/lomo/LomoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsPictureTaken:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/oppo/camera/lomo/LomoCamera;[I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/oppo/camera/lomo/LomoCamera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mContinuousAfState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/oppo/camera/lomo/LomoCamera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mContinuousAfState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->refreshThumbNail()V

    return-void
.end method

.method static synthetic access$2400(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->initShotMode()V

    return-void
.end method

.method static synthetic access$2500(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$ShotMode;)Lcom/oppo/camera/lomo/LomoCamera$ShotMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->stopPreview()V

    return-void
.end method

.method static synthetic access$2700(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->closeCamera()V

    return-void
.end method

.method static synthetic access$2800(Lcom/oppo/camera/lomo/LomoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->restartPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/oppo/camera/lomo/LomoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStyleId:I

    return v0
.end method

.method static synthetic access$2902(Lcom/oppo/camera/lomo/LomoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStyleId:I

    return p1
.end method

.method static synthetic access$3000(Lcom/oppo/camera/lomo/LomoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    return v0
.end method

.method static synthetic access$3002(Lcom/oppo/camera/lomo/LomoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    return p1
.end method

.method static synthetic access$3100(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->saveLomoEffect()V

    return-void
.end method

.method static synthetic access$3200(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->showPanoramaTips()V

    return-void
.end method

.method static synthetic access$3300(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->turnOnContiniousAF()V

    return-void
.end method

.method static synthetic access$3400(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->setViewVisible()V

    return-void
.end method

.method static synthetic access$3500(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->setPreviewCallback()V

    return-void
.end method

.method static synthetic access$3600(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/filters/Filter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/filters/Filter;)Lcom/oppo/camera/lomo/filters/Filter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/FilterHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFilterHandler:Lcom/oppo/camera/lomo/FilterHandler;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->refreshEffect()V

    return-void
.end method

.method static synthetic access$3900(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->setLomoCameraFace()V

    return-void
.end method

.method static synthetic access$4100(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/oppo/camera/lomo/LomoCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->getSmallShotAnimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/oppo/camera/lomo/LomoCamera;[I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->enableButtons()V

    return-void
.end method

.method static synthetic access$4700(Lcom/oppo/camera/lomo/LomoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstCount:I

    return v0
.end method

.method static synthetic access$4702(Lcom/oppo/camera/lomo/LomoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstCount:I

    return p1
.end method

.method static synthetic access$4708(Lcom/oppo/camera/lomo/LomoCamera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstCount:I

    return v0
.end method

.method static synthetic access$4800(Lcom/oppo/camera/lomo/LomoCamera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getPictureName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/oppo/camera/lomo/LomoCamera;[BLjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/lomo/LomoCamera;->savePicture([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/camera/lomo/LomoCamera;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/utils/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/oppo/camera/lomo/LomoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOrientation:I

    return v0
.end method

.method static synthetic access$5102(Lcom/oppo/camera/lomo/LomoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOrientation:I

    return p1
.end method

.method static synthetic access$5200(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/BurstHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/oppo/camera/lomo/LomoCamera;[I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/oppo/camera/lomo/LomoCamera;[I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->showCameraErrorAndFinish()V

    return-void
.end method

.method static synthetic access$5702(Lcom/oppo/camera/lomo/LomoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsImageCapture:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/oppo/camera/lomo/LomoCamera;[BLjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/lomo/LomoCamera;->saveFilterPicture([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/oppo/camera/lomo/LomoCamera;[I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->disableButtons()V

    return-void
.end method

.method static synthetic access$602(Lcom/oppo/camera/lomo/LomoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStartPreviewFail:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/oppo/camera/lomo/LomoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$6102(Lcom/oppo/camera/lomo/LomoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$6200(Lcom/oppo/camera/lomo/LomoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->intentStart:Z

    return v0
.end method

.method static synthetic access$6300(Lcom/oppo/camera/lomo/LomoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/views/RotateZoomView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->changeCameraFace()V

    return-void
.end method

.method static synthetic access$6600(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCameraMenuLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMenuLayout:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/oppo/camera/lomo/LomoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsBurstReviewOver:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/oppo/camera/lomo/LomoCamera;[I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$FocusState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$FocusState;)Lcom/oppo/camera/lomo/LomoCamera$FocusState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->startPreview()V

    return-void
.end method

.method static synthetic access$7000(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->doSnapAfterFocusFinished()V

    return-void
.end method

.method static synthetic access$7100(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/LomoCamera$MoveType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMoveType:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$MoveType;)Lcom/oppo/camera/lomo/LomoCamera$MoveType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMoveType:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/oppo/camera/lomo/LomoCamera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->updateEffect(Z)V

    return-void
.end method

.method static synthetic access$7302(Lcom/oppo/camera/lomo/LomoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFlingUp:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/oppo/camera/lomo/LomoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mDoFling:Z

    return v0
.end method

.method static synthetic access$7402(Lcom/oppo/camera/lomo/LomoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mDoFling:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/oppo/camera/lomo/LomoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsDofTouchFocus:Z

    return v0
.end method

.method static synthetic access$7600(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/views/FocusSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    return-object v0
.end method

.method static synthetic access$7800()I
    .locals 1

    .prologue
    .line 117
    sget v0, Lcom/oppo/camera/lomo/LomoCamera;->FOCUSAREA_RIGHT:I

    return v0
.end method

.method static synthetic access$7900(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$7902(Lcom/oppo/camera/lomo/LomoCamera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oppo/camera/lomo/LomoCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/oppo/camera/lomo/LomoCamera;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->calculateTapArea(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/oppo/camera/lomo/LomoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusAreaSupported:Z

    return v0
.end method

.method static synthetic access$8200(Lcom/oppo/camera/lomo/LomoCamera;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/oppo/camera/lomo/LomoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMeteringAreaSupported:Z

    return v0
.end method

.method static synthetic access$8400(Lcom/oppo/camera/lomo/LomoCamera;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->doSafeSetParameters()V

    return-void
.end method

.method static synthetic access$8600(Lcom/oppo/camera/lomo/LomoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsTouchAf:Z

    return v0
.end method

.method static synthetic access$8602(Lcom/oppo/camera/lomo/LomoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsTouchAf:Z

    return p1
.end method

.method static synthetic access$8700(Lcom/oppo/camera/lomo/LomoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$8702(Lcom/oppo/camera/lomo/LomoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$8800(Lcom/oppo/camera/lomo/LomoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomState:I

    return v0
.end method

.method static synthetic access$8802(Lcom/oppo/camera/lomo/LomoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomState:I

    return p1
.end method

.method static synthetic access$8900(Lcom/oppo/camera/lomo/LomoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mTargetZoomValue:I

    return v0
.end method

.method static synthetic access$900(Lcom/oppo/camera/lomo/LomoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPausing:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/oppo/camera/lomo/LomoCamera;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStartSpan:F

    return v0
.end method

.method static synthetic access$9002(Lcom/oppo/camera/lomo/LomoCamera;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStartSpan:F

    return p1
.end method

.method static synthetic access$9100(Lcom/oppo/camera/lomo/LomoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStartZoomValue:I

    return v0
.end method

.method static synthetic access$9102(Lcom/oppo/camera/lomo/LomoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStartZoomValue:I

    return p1
.end method

.method static synthetic access$9200(Lcom/oppo/camera/lomo/LomoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomMax:I

    return v0
.end method

.method static synthetic access$9300(Lcom/oppo/camera/lomo/LomoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->setZoomValue(I)V

    return-void
.end method

.method static synthetic access$9400(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$9500(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->turnOffContiniousAF()V

    return-void
.end method

.method static synthetic access$9600(Lcom/oppo/camera/lomo/LomoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->showHintView(I)V

    return-void
.end method

.method static synthetic access$9700(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/lomo/PanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanelView:Lcom/oppo/camera/lomo/PanelView;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/utils/OnScreenHint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectChangeHint:Lcom/oppo/camera/utils/OnScreenHint;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/scalado/base/Image;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mInImage:Lcom/scalado/base/Image;

    return-object v0
.end method

.method private backToMenu()V
    .locals 2

    .prologue
    .line 2125
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->handleOutFromPanorama()V

    .line 2126
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/BurstHandler;->getmIsImageReviewerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2127
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/BurstHandler;->hideBurstImageReviewer()V

    .line 2129
    :cond_0
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    if-nez v0, :cond_1

    .line 2130
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->turnOffContiniousAF()V

    .line 2132
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 2133
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusSurfaceView;->clear()V

    .line 2136
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->FILTER:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v0, v1, :cond_3

    .line 2137
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->FILTER:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    .line 2138
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->stopPreview()V

    .line 2139
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->closeCamera()V

    .line 2140
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->restartPreview()Z

    .line 2144
    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->saveLomoEffect()V

    .line 2145
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->setViewGone()V

    .line 2146
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMenuLayout:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->showMenu()V

    .line 2147
    return-void
.end method

.method private brightnessMax()V
    .locals 2

    .prologue
    .line 1364
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1365
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1366
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1367
    return-void
.end method

.method private calculateTapArea(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter

    .prologue
    const/16 v1, 0x78

    const/4 v9, 0x0

    .line 1637
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1638
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->initFocusArea()V

    .line 1640
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1644
    const/16 v6, 0x320

    .line 1645
    const/16 v7, 0x1e0

    .line 1647
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusArea:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v8}, Lcom/oppo/camera/lomo/LomoCamera;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 1649
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMeteringArea:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v8}, Lcom/oppo/camera/lomo/LomoCamera;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 1651
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 1

    .prologue
    .line 2746
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2747
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 2749
    :cond_0
    return-void
.end method

.method private changeCameraFace()V
    .locals 3

    .prologue
    .line 1978
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsPictureTaken:Z

    if-nez v0, :cond_1

    .line 1999
    :cond_0
    :goto_0
    return-void

    .line 1981
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1982
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1984
    :cond_2
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mNumberOfCameras:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    .line 1985
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lomo face mode"

    iget v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1986
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomValue:I

    .line 1987
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->stopPreview()V

    .line 1988
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->closeCamera()V

    .line 1990
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->startPreview()V

    .line 1991
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v0, v1, :cond_3

    .line 1992
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera;->OFF:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mContinuousAfState:Ljava/lang/String;

    .line 1993
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->turnOnContiniousAF()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->refreshEffect()V

    goto :goto_0

    .line 1995
    :catch_0
    move-exception v0

    .line 1996
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private closeCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 729
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 731
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 732
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 733
    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewing:Z

    .line 736
    :cond_0
    return-void
.end method

.method private disableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 588
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMenuBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 589
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 590
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 591
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraFaceBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 592
    return-void
.end method

.method private doSafeSetParameters()V
    .locals 3

    .prologue
    .line 2787
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2793
    :goto_0
    return-void

    .line 2788
    :catch_0
    move-exception v0

    .line 2789
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 2790
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->showCameraErrorAndFinish()V

    goto :goto_0
.end method

.method private doSnapAfterFocusFinished()V
    .locals 2

    .prologue
    .line 2722
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mDoSnapAfterFocusComplete:Z

    if-eqz v0, :cond_0

    .line 2723
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mDoSnapAfterFocusComplete:Z

    .line 2725
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->takePicture()V

    .line 2731
    :goto_0
    return-void

    .line 2727
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsPictureTaken:Z

    .line 2729
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z

    goto :goto_0
.end method

.method private drawEffectChangeAnim(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "current"
    .parameter "next"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x1e0

    const/16 v6, 0x320

    const/4 v5, 0x0

    .line 2259
    iget-boolean v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFlingUp:Z

    if-eqz v2, :cond_1

    .line 2260
    const/4 v1, 0x0

    .local v1, y:I
    :goto_0
    if-ge v1, v7, :cond_3

    .line 2261
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 2262
    .local v0, canvas:Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 2263
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    rsub-int v4, v1, 0x1e0

    invoke-direct {v3, v5, v5, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2264
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    rsub-int v4, v1, 0x1e0

    invoke-direct {v3, v5, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p2, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2266
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 2260
    invoke-direct {p0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->getY(I)I

    move-result v1

    goto :goto_0

    .line 2269
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #y:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #y:I
    :goto_1
    if-ge v1, v7, :cond_3

    .line 2270
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 2271
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    if-eqz v0, :cond_2

    .line 2272
    new-instance v2, Landroid/graphics/Rect;

    rsub-int v3, v1, 0x1e0

    invoke-direct {v2, v5, v5, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2273
    new-instance v2, Landroid/graphics/Rect;

    rsub-int v3, v1, 0x1e0

    invoke-direct {v2, v5, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p2, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2275
    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 2269
    invoke-direct {p0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->getY(I)I

    move-result v1

    goto :goto_1

    .line 2278
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->handleEffectChangeHint()V

    .line 2279
    iput-boolean v5, p0, Lcom/oppo/camera/lomo/LomoCamera;->mDoFling:Z

    .line 2280
    iput-boolean v5, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsFling:Z

    .line 2281
    return-void
.end method

.method private enableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 595
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMenuBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 596
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 597
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 598
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraFaceBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 599
    return-void
.end method

.method private declared-synchronized ensureCameraDevice(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 707
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 708
    invoke-static {}, Lcom/oppo/camera/CameraHolder;->instance()Lcom/oppo/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    if-nez v0, :cond_1

    .line 709
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 712
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    .line 713
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 714
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 715
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 716
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 719
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mNumberOfCameras:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    :try_start_2
    const-string v0, "LomoCamera"

    const-string v1, "can\'t open Camera!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private fadeIn(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 2833
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2834
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2835
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2836
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2837
    return-void
.end method

.method private fadeOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 2840
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2841
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2842
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2843
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2844
    return-void
.end method

.method private getCurrentEffectName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2323
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/filters/Filter;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2349
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFunStyleNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 2325
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFunStyleNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    .line 2327
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFunStyleNames:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_0

    .line 2329
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFunStyleNames:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto :goto_0

    .line 2331
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFunStyleNames:[Ljava/lang/String;

    aget-object v0, v0, v4

    goto :goto_0

    .line 2333
    :pswitch_5
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSunStyleNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    .line 2335
    :pswitch_6
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSunStyleNames:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_0

    .line 2337
    :pswitch_7
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSunStyleNames:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto :goto_0

    .line 2339
    :pswitch_8
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSunStyleNames:[Ljava/lang/String;

    aget-object v0, v0, v4

    goto :goto_0

    .line 2341
    :pswitch_9
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mHaHaStyleNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    .line 2343
    :pswitch_a
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mHaHaStyleNames:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_0

    .line 2345
    :pswitch_b
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mHaHaStyleNames:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto :goto_0

    .line 2347
    :pswitch_c
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mHaHaStyleNames:[Ljava/lang/String;

    aget-object v0, v0, v4

    goto :goto_0

    .line 2323
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getCurrentLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 1968
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mLocationListeners:[Lcom/oppo/camera/lomo/LomoCamera$LocationListener;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1969
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mLocationListeners:[Lcom/oppo/camera/lomo/LomoCamera$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 1970
    .local v1, l:Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 1974
    .end local v1           #l:Landroid/location/Location;
    :goto_1
    return-object v1

    .line 1968
    .restart local v1       #l:Landroid/location/Location;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1974
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

    .line 1605
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1607
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 1613
    :goto_0
    :pswitch_0
    return v1

    .line 1609
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 1610
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 1611
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 1607
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getOrientation()I
    .locals 2

    .prologue
    .line 671
    invoke-static {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/oppo/camera/utils/Util;->getDisplayOrientation(II)I

    move-result v0

    return v0
.end method

.method private getPictureName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1241
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1242
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1244
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSavePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1249
    :goto_0
    return-object v0

    .line 1247
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSavePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getScaladoRotation(I)Lcom/scalado/caps/Rotation;
    .locals 1
    .parameter "degree"

    .prologue
    .line 2236
    sparse-switch p0, :sswitch_data_0

    .line 2246
    sget-object v0, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    :goto_0
    return-object v0

    .line 2238
    :sswitch_0
    sget-object v0, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    goto :goto_0

    .line 2240
    :sswitch_1
    sget-object v0, Lcom/scalado/caps/Rotation;->TO_90:Lcom/scalado/caps/Rotation;

    goto :goto_0

    .line 2242
    :sswitch_2
    sget-object v0, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    goto :goto_0

    .line 2244
    :sswitch_3
    sget-object v0, Lcom/scalado/caps/Rotation;->TO_270:Lcom/scalado/caps/Rotation;

    goto :goto_0

    .line 2236
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private getSmallShotAnimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "original"

    .prologue
    const/16 v2, 0x4e

    .line 1225
    const/16 v1, 0x4e

    .line 1226
    .local v1, miniThumbWidth:I
    const/16 v0, 0x4e

    .line 1227
    .local v0, miniThumbHeight:I
    invoke-static {p1, v2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private getY(I)I
    .locals 2
    .parameter "currentY"

    .prologue
    .line 2312
    const/16 v1, 0x1b8

    if-ge p1, v1, :cond_0

    .line 2313
    add-int/lit8 v0, p1, 0x28

    .line 2319
    .local v0, y:I
    :goto_0
    return v0

    .line 2314
    .end local v0           #y:I
    :cond_0
    const/16 v1, 0x1cc

    if-ge p1, v1, :cond_1

    .line 2315
    add-int/lit8 v0, p1, 0x14

    .restart local v0       #y:I
    goto :goto_0

    .line 2317
    .end local v0           #y:I
    :cond_1
    add-int/lit8 v0, p1, 0x2

    .restart local v0       #y:I
    goto :goto_0
.end method

.method private handleEffectChangeHint()V
    .locals 4

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectChangeHint:Lcom/oppo/camera/utils/OnScreenHint;

    if-nez v0, :cond_0

    .line 2288
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getCurrentEffectName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oppo/camera/utils/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/oppo/camera/utils/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectChangeHint:Lcom/oppo/camera/utils/OnScreenHint;

    .line 2292
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectChangeHint:Lcom/oppo/camera/utils/OnScreenHint;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/OnScreenHint;->cancel()V

    .line 2293
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectChangeHint:Lcom/oppo/camera/utils/OnScreenHint;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/OnScreenHint;->show()V

    .line 2294
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectChangeHintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2295
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectChangeHintRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2296
    return-void

    .line 2290
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectChangeHint:Lcom/oppo/camera/utils/OnScreenHint;

    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getCurrentEffectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleOutFromPanorama()V
    .locals 2

    .prologue
    .line 2603
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-ne v0, v1, :cond_0

    .line 2604
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaInProgress:Z

    if-eqz v0, :cond_1

    .line 2605
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->stopSweep()V

    .line 2610
    :cond_0
    :goto_0
    return-void

    .line 2607
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->hidePanoramaTips()V

    goto :goto_0
.end method

.method private hidePanoramaTips()V
    .locals 2

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaTips:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2634
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaTips:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2635
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaTipsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mHidePanoramaTips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2637
    :cond_0
    return-void
.end method

.method private inflateShotAnimView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 382
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mControlBar:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-nez v1, :cond_0

    .line 383
    new-instance v1, Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-direct {v1, p0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    .line 384
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->m3DAnimationListener:Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setOnAnimationListener(Lcom/oppo/camera/views/Oppo3DSavePhotoView$OnAnimationListener;)V

    .line 385
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->setVisibility(I)V

    .line 386
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 387
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mControlBar:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method private initEffect()V
    .locals 5

    .prologue
    const/16 v4, 0x320

    const/16 v3, 0x1e0

    .line 563
    new-instance v0, Lcom/oppo/camera/lomo/FilterHandler;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/FilterHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFilterHandler:Lcom/oppo/camera/lomo/FilterHandler;

    .line 564
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFilterHandler:Lcom/oppo/camera/lomo/FilterHandler;

    iget v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/lomo/FilterHandler;->getFilterById(I)Lcom/oppo/camera/lomo/filters/Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;

    .line 566
    new-instance v0, Lcom/scalado/base/Image;

    new-instance v1, Lcom/scalado/base/Size;

    invoke-direct {v1, v4, v3}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v2, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mInImage:Lcom/scalado/base/Image;

    .line 567
    new-instance v0, Lcom/scalado/base/Image;

    new-instance v1, Lcom/scalado/base/Size;

    invoke-direct {v1, v4, v3}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v2, Lcom/scalado/base/Image$Config;->RGB_565_D:Lcom/scalado/base/Image$Config;

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOutImage:Lcom/scalado/base/Image;

    .line 568
    new-instance v0, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOutImage:Lcom/scalado/base/Image;

    invoke-direct {v0, v1}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOutImageEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

    .line 570
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;

    .line 571
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 572
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mNextBitmap:Landroid/graphics/Bitmap;

    .line 574
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFunStyleNames:[Ljava/lang/String;

    .line 575
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mHaHaStyleNames:[Ljava/lang/String;

    .line 576
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSunStyleNames:[Ljava/lang/String;

    .line 577
    return-void
.end method

.method private initFocusArea()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusArea:Ljava/util/List;

    .line 1593
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMeteringArea:Ljava/util/List;

    .line 1595
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1596
    return-void
.end method

.method private initMatrix(I)V
    .locals 5
    .parameter "displayOrientation"

    .prologue
    const/4 v2, 0x1

    .line 1617
    invoke-static {}, Lcom/oppo/camera/CameraHolder;->instance()Lcom/oppo/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    aget-object v0, v3, v4

    .line 1618
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v2, :cond_0

    .line 1619
    .local v2, mirror:Z
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1620
    .local v1, matrix:Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    invoke-static {v1, v2, p1, v3, v4}, Lcom/oppo/camera/utils/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 1622
    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1623
    return-void

    .line 1618
    .end local v1           #matrix:Landroid/graphics/Matrix;
    .end local v2           #mirror:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initMisc()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 504
    invoke-static {p0}, Lcom/oppo/camera/CommConfig;->instance(Landroid/content/Context;)V

    .line 505
    sget-object v0, Lcom/oppo/camera/CommConfig;->CAMERA_SETTING_SHAREPREFERENCE:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/oppo/camera/lomo/LomoCamera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 506
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lomo main menu"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStyleId:I

    .line 507
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lomo sub menu"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    .line 508
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;

    invoke-direct {v1, p0, v4}, Lcom/oppo/camera/lomo/LomoCamera$FlingGestureListener;-><init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mGestureDetector:Landroid/view/GestureDetector;

    .line 510
    sget-object v0, Lcom/oppo/camera/CommConfig;->INTERNAL_LOMO_IMG_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSavePath:Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera flash mode"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFlashMode:Ljava/lang/String;

    .line 513
    invoke-static {p0}, Lcom/oppo/camera/utils/ScreenOffUtil;->instance(Landroid/content/Context;)Lcom/oppo/camera/utils/ScreenOffUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    .line 514
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;-><init>(Lcom/oppo/camera/lomo/LomoCamera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOrientationListener:Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;

    .line 515
    new-instance v0, Lcom/oppo/camera/utils/OppoBrowseImage;

    invoke-direct {v0, p0}, Lcom/oppo/camera/utils/OppoBrowseImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    .line 516
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OppoBrowseImage;->setScreenHintListener(Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;)V

    .line 517
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lomo face mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    .line 519
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;

    invoke-direct {v1, p0, v4}, Lcom/oppo/camera/lomo/LomoCamera$MultiGestureListener;-><init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 521
    new-instance v0, Lcom/oppo/camera/utils/StorageManager;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSavePath:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/oppo/camera/utils/StorageManager;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    .line 522
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/StorageManager;->setMountStateChangedListener(Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;)V

    .line 523
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->checkStorage()V

    .line 524
    new-instance v0, Lcom/oppo/camera/utils/PlayEffectSound;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "camera sound mode"

    const-string v3, "on"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    .line 525
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/PlayEffectSound;->loadLomoCameraSound()V

    .line 526
    return-void
.end method

.method private initPanorama()V
    .locals 2

    .prologue
    .line 583
    new-instance v0, Lcom/oppo/camera/lomo/PanoramaHandler;

    invoke-direct {v0}, Lcom/oppo/camera/lomo/PanoramaHandler;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaHandler:Lcom/oppo/camera/lomo/PanoramaHandler;

    .line 584
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaHandler:Lcom/oppo/camera/lomo/PanoramaHandler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaListener:Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/lomo/PanoramaHandler;->setPanoramaListener(Lcom/oppo/camera/lomo/PanoramaHandler$PanoramaListener;)V

    .line 585
    return-void
.end method

.method private initShotMode()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/StorageManager;->setShotMode(Ljava/lang/String;)V

    .line 534
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStyleId:I

    packed-switch v0, :pswitch_data_0

    .line 554
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->FILTER:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v0, v1, :cond_1

    .line 555
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    .line 557
    :cond_1
    return-void

    .line 536
    :pswitch_1
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 537
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    .line 538
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    const-string v1, "multishot"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/StorageManager;->setShotMode(Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_2
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 540
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    .line 541
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    const-string v1, "panorama"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/StorageManager;->setShotMode(Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :pswitch_2
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->FILTER:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    goto :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 438
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mControlBar:Landroid/view/ViewGroup;

    .line 439
    const v0, 0x7f03000c

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mControlBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 440
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mControlBar:Landroid/view/ViewGroup;

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBtn:Lcom/oppo/camera/views/RotateImageView;

    .line 441
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mControlBar:Landroid/view/ViewGroup;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    .line 442
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mControlBar:Landroid/view/ViewGroup;

    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMenuBtn:Lcom/oppo/camera/views/RotateImageView;

    .line 443
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBtn:Lcom/oppo/camera/views/RotateImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 444
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMenuBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraFaceBtn:Lcom/oppo/camera/views/RotateImageView;

    .line 449
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraFaceBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/views/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/FocusSurfaceView;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    .line 452
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    .line 453
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateZoomView;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    .line 454
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomImage:Landroid/widget/ImageView;

    .line 456
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSurfaceView:Landroid/view/SurfaceView;

    .line 457
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 458
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 460
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceView:Landroid/view/SurfaceView;

    .line 461
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 462
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 463
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 465
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 468
    new-instance v0, Lcom/oppo/camera/lomo/BurstHandler;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/BurstHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;

    .line 469
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/BurstHandler;->initUI()V

    .line 474
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMenuLayout:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    .line 475
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMenuLayout:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->setBrowseImage(Lcom/oppo/camera/utils/OppoBrowseImage;)V

    .line 476
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMenuLayout:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mChangeEffectListener:Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->SetChangeEffectListener(Lcom/oppo/camera/lomo/LomoCameraMenuLayout$ChangeEffectListener;)V

    .line 477
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/lomo/PanelView;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanelView:Lcom/oppo/camera/lomo/PanelView;

    .line 478
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTips:Landroid/widget/RelativeLayout;

    .line 480
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTipsBk:Landroid/widget/ImageView;

    .line 481
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTipsBk:Landroid/widget/ImageView;

    const v1, 0x7f04000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 482
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTipsBk:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTipsAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 486
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateHintView;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

    .line 489
    const v0, 0x7f0b003f

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaTips:Landroid/widget/RelativeLayout;

    .line 490
    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/panorama/PanoramaProgressBar;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaProgressBar:Lcom/oppo/camera/panorama/PanoramaProgressBar;

    .line 491
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->inflateShotAnimView()V

    .line 492
    return-void
.end method

.method private initializeCapabilities()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1584
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 1585
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oppo/camera/lomo/LomoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusAreaSupported:Z

    .line 1588
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMeteringAreaSupported:Z

    .line 1589
    return-void

    :cond_0
    move v0, v2

    .line 1585
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1588
    goto :goto_1
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

    .line 675
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

.method private playFocusSound(Z)V
    .locals 2
    .parameter "focused"

    .prologue
    .line 2650
    if-eqz p1, :cond_2

    .line 2651
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2652
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusSurfaceView;->showSuccess()V

    .line 2654
    :cond_0
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    if-eqz v0, :cond_1

    .line 2655
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 2662
    :cond_1
    :goto_0
    return-void

    .line 2658
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2659
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusSurfaceView;->showFail()V

    goto :goto_0
.end method

.method private recycleBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1310
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1312
    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1316
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1317
    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1319
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1320
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1321
    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOutBitmap:Landroid/graphics/Bitmap;

    .line 1323
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1324
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1325
    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 1327
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mNextBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mNextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1328
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mNextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1329
    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mNextBitmap:Landroid/graphics/Bitmap;

    .line 1331
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1332
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1333
    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimBitmapSmall:Landroid/graphics/Bitmap;

    .line 1336
    :cond_5
    return-void
.end method

.method private refreshEffect()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2861
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;

    iget v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/oppo/camera/lomo/filters/Filter;->setIsFrontCamera(Z)V

    .line 2862
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/filters/Filter;->refresh()V

    .line 2863
    return-void

    .line 2861
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshThumbNail()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 739
    new-instance v0, Lcom/oppo/camera/utils/StringUtil;

    invoke-direct {v0}, Lcom/oppo/camera/utils/StringUtil;-><init>()V

    .line 740
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/StringUtil;->getLatestFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 742
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 743
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 744
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 746
    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 748
    :cond_0
    if-eqz v0, :cond_1

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->getLatestDrawabel(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    .line 753
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 754
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBtn:Lcom/oppo/camera/views/RotateImageView;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/views/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 755
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/utils/OppoBrowseImage;->updateLastPictureUri(Ljava/lang/String;)V

    .line 760
    :goto_1
    return-void

    .line 751
    :cond_1
    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 757
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 758
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/views/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 2596
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->enableButtons()V

    .line 2597
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mNbrOfImagesGrabbed:I

    .line 2598
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaHandler:Lcom/oppo/camera/lomo/PanoramaHandler;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/PanoramaHandler;->reset()V

    .line 2600
    return-void
.end method

.method private resetWhenCameraError()V
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1361
    :cond_0
    return-void
.end method

.method private restartPreview()Z
    .locals 2

    .prologue
    .line 1232
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->showCameraErrorAndFinish()V

    .line 1235
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveFilterPicture([BLjava/lang/String;)Z
    .locals 16
    .parameter "data"
    .parameter "fileDir"

    .prologue
    .line 1100
    const/4 v11, 0x0

    .line 1101
    .local v11, session:Lcom/scalado/caps/Session;
    const/4 v13, 0x0

    .line 1104
    .local v13, stream:Lcom/scalado/stream/Stream;
    :try_start_0
    new-instance v1, Lcom/scalado/base/Buffer;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/scalado/base/Buffer;-><init>([B)V

    .line 1105
    .local v1, buffer:Lcom/scalado/base/Buffer;
    new-instance v2, Lcom/scalado/stream/BufferStream;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v2, v1, v14}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 1106
    .local v2, bufferStream:Lcom/scalado/stream/BufferStream;
    invoke-static {v2}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v8

    .line 1107
    .local v8, iter:Lcom/scalado/base/Iterator;
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcom/scalado/base/Iterator;->step(I)F

    .line 1108
    invoke-virtual {v8}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 1109
    .local v3, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    new-instance v12, Lcom/scalado/caps/Session;

    invoke-direct {v12, v3}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1111
    .end local v11           #session:Lcom/scalado/caps/Session;
    .local v12, session:Lcom/scalado/caps/Session;
    :try_start_1
    new-instance v9, Lcom/scalado/caps/filter/Rotate;

    invoke-direct {v9, v12}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    .line 1112
    .local v9, rotate:Lcom/scalado/caps/filter/Rotate;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/camera/lomo/LomoCamera;->mRotation:I

    rsub-int v14, v14, 0x168

    invoke-static {v14}, Lcom/oppo/camera/lomo/LomoCamera;->getScaladoRotation(I)Lcom/scalado/caps/Rotation;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    .line 1113
    invoke-virtual {v9}, Lcom/scalado/caps/filter/Rotate;->commit()V

    .line 1115
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;

    invoke-virtual {v14, v12}, Lcom/oppo/camera/lomo/filters/Filter;->applyFilterToCaptureSession(Lcom/scalado/caps/Session;)V

    .line 1117
    new-instance v10, Lcom/scalado/caps/filter/Rotate;

    invoke-direct {v10, v12}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    .line 1118
    .local v10, rotateBack:Lcom/scalado/caps/filter/Rotate;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/camera/lomo/LomoCamera;->mRotation:I

    invoke-static {v14}, Lcom/oppo/camera/lomo/LomoCamera;->getScaladoRotation(I)Lcom/scalado/caps/Rotation;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    .line 1119
    invoke-virtual {v10}, Lcom/scalado/caps/filter/Rotate;->commit()V

    .line 1121
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/oppo/camera/lomo/filters/Filter;->getOutStream(Ljava/lang/String;)Lcom/scalado/stream/Stream;

    move-result-object v13

    .line 1122
    new-instance v5, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-virtual {v12}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v14

    invoke-virtual {v14}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 1123
    .local v5, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    invoke-virtual {v12, v5}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1128
    if-eqz v13, :cond_0

    instance-of v14, v13, Lcom/scalado/stream/FileStream;

    if-eqz v14, :cond_0

    move-object v6, v13

    .line 1129
    check-cast v6, Lcom/scalado/stream/FileStream;

    .line 1131
    .local v6, fs:Lcom/scalado/stream/FileStream;
    :try_start_2
    invoke-virtual {v6}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1137
    .end local v6           #fs:Lcom/scalado/stream/FileStream;
    :cond_0
    :goto_0
    const/4 v14, 0x1

    move-object v11, v12

    .end local v1           #buffer:Lcom/scalado/base/Buffer;
    .end local v2           #bufferStream:Lcom/scalado/stream/BufferStream;
    .end local v3           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v5           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v8           #iter:Lcom/scalado/base/Iterator;
    .end local v9           #rotate:Lcom/scalado/caps/filter/Rotate;
    .end local v10           #rotateBack:Lcom/scalado/caps/filter/Rotate;
    .end local v12           #session:Lcom/scalado/caps/Session;
    .restart local v11       #session:Lcom/scalado/caps/Session;
    :cond_1
    :goto_1
    return v14

    .line 1132
    .end local v11           #session:Lcom/scalado/caps/Session;
    .restart local v1       #buffer:Lcom/scalado/base/Buffer;
    .restart local v2       #bufferStream:Lcom/scalado/stream/BufferStream;
    .restart local v3       #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .restart local v5       #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v6       #fs:Lcom/scalado/stream/FileStream;
    .restart local v8       #iter:Lcom/scalado/base/Iterator;
    .restart local v9       #rotate:Lcom/scalado/caps/filter/Rotate;
    .restart local v10       #rotateBack:Lcom/scalado/caps/filter/Rotate;
    .restart local v12       #session:Lcom/scalado/caps/Session;
    :catch_0
    move-exception v7

    .line 1133
    .local v7, ioe:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1124
    .end local v1           #buffer:Lcom/scalado/base/Buffer;
    .end local v2           #bufferStream:Lcom/scalado/stream/BufferStream;
    .end local v3           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v5           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v6           #fs:Lcom/scalado/stream/FileStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .end local v8           #iter:Lcom/scalado/base/Iterator;
    .end local v9           #rotate:Lcom/scalado/caps/filter/Rotate;
    .end local v10           #rotateBack:Lcom/scalado/caps/filter/Rotate;
    .end local v12           #session:Lcom/scalado/caps/Session;
    .restart local v11       #session:Lcom/scalado/caps/Session;
    :catch_1
    move-exception v4

    .line 1125
    .local v4, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1126
    const/4 v14, 0x0

    .line 1128
    if-eqz v13, :cond_1

    instance-of v15, v13, Lcom/scalado/stream/FileStream;

    if-eqz v15, :cond_1

    move-object v6, v13

    .line 1129
    check-cast v6, Lcom/scalado/stream/FileStream;

    .line 1131
    .restart local v6       #fs:Lcom/scalado/stream/FileStream;
    :try_start_4
    invoke-virtual {v6}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1132
    :catch_2
    move-exception v7

    .line 1133
    .restart local v7       #ioe:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1128
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #fs:Lcom/scalado/stream/FileStream;
    .end local v7           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_3
    if-eqz v13, :cond_2

    instance-of v15, v13, Lcom/scalado/stream/FileStream;

    if-eqz v15, :cond_2

    move-object v6, v13

    .line 1129
    check-cast v6, Lcom/scalado/stream/FileStream;

    .line 1131
    .restart local v6       #fs:Lcom/scalado/stream/FileStream;
    :try_start_5
    invoke-virtual {v6}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1135
    .end local v6           #fs:Lcom/scalado/stream/FileStream;
    :cond_2
    :goto_4
    throw v14

    .line 1132
    .restart local v6       #fs:Lcom/scalado/stream/FileStream;
    :catch_3
    move-exception v7

    .line 1133
    .restart local v7       #ioe:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1128
    .end local v6           #fs:Lcom/scalado/stream/FileStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .end local v11           #session:Lcom/scalado/caps/Session;
    .restart local v1       #buffer:Lcom/scalado/base/Buffer;
    .restart local v2       #bufferStream:Lcom/scalado/stream/BufferStream;
    .restart local v3       #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .restart local v8       #iter:Lcom/scalado/base/Iterator;
    .restart local v12       #session:Lcom/scalado/caps/Session;
    :catchall_1
    move-exception v14

    move-object v11, v12

    .end local v12           #session:Lcom/scalado/caps/Session;
    .restart local v11       #session:Lcom/scalado/caps/Session;
    goto :goto_3

    .line 1124
    .end local v11           #session:Lcom/scalado/caps/Session;
    .restart local v12       #session:Lcom/scalado/caps/Session;
    :catch_4
    move-exception v4

    move-object v11, v12

    .end local v12           #session:Lcom/scalado/caps/Session;
    .restart local v11       #session:Lcom/scalado/caps/Session;
    goto :goto_2
.end method

.method private saveLomoEffect()V
    .locals 3

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lomo main menu"

    iget v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStyleId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1026
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lomo sub menu"

    iget v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1027
    return-void
.end method

.method private savePicture([BLjava/lang/String;)Z
    .locals 11
    .parameter "jpegData"
    .parameter "fileName"

    .prologue
    const/4 v6, 0x0

    .line 1146
    const/4 v4, 0x0

    .line 1147
    .local v4, outputStream:Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 1149
    .local v2, file:Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSavePath:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1151
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1152
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1153
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 1154
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .local v5, outputStream:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v5, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1156
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 1157
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 1165
    if-eqz v5, :cond_1

    .line 1167
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_0
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move-object v4, v5

    .line 1173
    .end local v0           #dir:Ljava/io/File;
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    :cond_2
    :goto_1
    return v6

    .line 1165
    .end local v2           #file:Ljava/io/File;
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :cond_3
    if-eqz v5, :cond_4

    .line 1167
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 1173
    :cond_4
    :goto_2
    const/4 v6, 0x1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    goto :goto_1

    .line 1160
    .end local v0           #dir:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1165
    .local v1, ex:Ljava/io/FileNotFoundException;
    :goto_3
    if-eqz v4, :cond_2

    .line 1167
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1168
    :catch_1
    move-exception v7

    goto :goto_1

    .line 1162
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 1165
    .local v1, ex:Ljava/lang/Exception;
    :goto_4
    if-eqz v4, :cond_2

    .line 1167
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 1168
    :catch_3
    move-exception v7

    goto :goto_1

    .line 1165
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v4, :cond_5

    .line 1167
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    .line 1169
    :cond_5
    :goto_6
    throw v6

    .line 1168
    .end local v2           #file:Ljava/io/File;
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :catch_4
    move-exception v7

    goto :goto_0

    :catch_5
    move-exception v6

    goto :goto_2

    .end local v0           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    :catch_6
    move-exception v7

    goto :goto_6

    .line 1165
    .end local v2           #file:Ljava/io/File;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_5

    .end local v2           #file:Ljava/io/File;
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    goto :goto_5

    .line 1162
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_4

    .end local v2           #file:Ljava/io/File;
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    goto :goto_4

    .line 1160
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_9
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3

    .end local v2           #file:Ljava/io/File;
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    goto :goto_3
.end method

.method private setCameraParameters()V
    .locals 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 634
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setShutterSound(I)V

    .line 635
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    if-nez v0, :cond_4

    .line 636
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-ne v0, v1, :cond_3

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 641
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0xcc0

    const/16 v2, 0x990

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 651
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0x320

    const/16 v2, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 653
    const-string v0, "auto"

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 657
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getZoomRatios()[F

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomRatios:[F

    .line 658
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomRatios:[F

    array-length v0, v0

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomArrayLength:I

    .line 659
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomMax:I

    .line 660
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomListener:Lcom/oppo/camera/lomo/LomoCamera$ZoomListener;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 663
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomValue:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 664
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->initializeCapabilities()V

    .line 665
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->initMatrix(I)V

    .line 666
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 667
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->setPreviewCallback()V

    .line 668
    return-void

    .line 639
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0x500

    const/16 v2, 0x3c0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto :goto_1
.end method

.method private setLomoCameraFace()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 2112
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    if-nez v0, :cond_0

    .line 2113
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->turnOffContiniousAF()V

    .line 2115
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->disableButtons()V

    .line 2116
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2120
    :goto_0
    return-void

    .line 2119
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setLomoFaceBtnLocation(I)V
    .locals 8
    .parameter "degree"

    .prologue
    const/16 v7, 0x19

    const/16 v6, 0xc

    const/16 v5, 0x87

    const/16 v4, 0xb

    const/16 v3, 0xa

    .line 2796
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraFaceBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-direct {p0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->fadeOut(Landroid/view/View;)V

    .line 2797
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x58

    const/16 v2, 0x58

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2798
    .local v0, faceBtnParams:Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 2827
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraFaceBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegreeWithoutAnimation(I)V

    .line 2828
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraFaceBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/views/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2829
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraFaceBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-direct {p0, v1}, Lcom/oppo/camera/lomo/LomoCamera;->fadeIn(Landroid/view/View;)V

    .line 2830
    return-void

    .line 2801
    :sswitch_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2802
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2803
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2804
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 2807
    :sswitch_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2808
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2809
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2810
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 2813
    :sswitch_2
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2814
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2815
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2816
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 2819
    :sswitch_3
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2820
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2821
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2822
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 2798
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
        0x168 -> :sswitch_0
    .end sparse-switch
.end method

.method private setOrientationIndicator(I)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMenuBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1284
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1285
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShutterBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateImageView;->setDegree(I)V

    .line 1287
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->FILTER:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMenuLayout:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera;->setLomoFaceBtnLocation(I)V

    .line 1291
    :cond_0
    return-void
.end method

.method private setPreviewCallback()V
    .locals 3

    .prologue
    .line 679
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 703
    :goto_0
    return-void

    .line 684
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_1
    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$20;->$SwitchMap$com$oppo$camera$lomo$LomoCamera$ShotMode:[I

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    invoke-virtual {v2}, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 700
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewCallbackForEffect:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 691
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewCallbackForBurst:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 694
    :pswitch_1
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewCallbackForPanorama:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 697
    :pswitch_2
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewCallbackForEffect:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 689
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setViewGone()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2152
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mControlBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2153
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraFaceBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 2154
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTips:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2155
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2156
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTipsAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2158
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanelView:Lcom/oppo/camera/lomo/PanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/lomo/PanelView;->setAnimationState(Z)V

    .line 2159
    return-void
.end method

.method private setViewVisible()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2162
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lomo first enter"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsFirstEnter:Z

    .line 2163
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsFirstEnter:Z

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStyleId:I

    if-eq v0, v4, :cond_0

    .line 2164
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTips:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTipsAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2166
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2169
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mControlBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2171
    const v0, 0x7f040001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2172
    new-instance v1, Lcom/oppo/camera/lomo/LomoCamera$10;

    invoke-direct {v1, p0}, Lcom/oppo/camera/lomo/LomoCamera$10;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2188
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mControlBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2189
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStyleId:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStyleId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2190
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraFaceBtn:Lcom/oppo/camera/views/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateImageView;->setVisibility(I)V

    .line 2191
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraFaceBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    .line 2198
    :goto_0
    return-void

    .line 2194
    :cond_2
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOrientation:I

    invoke-static {p0}, Lcom/oppo/camera/utils/ImageUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->setLomoFaceBtnLocation(I)V

    .line 2195
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraFaceBtn:Lcom/oppo/camera/views/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/views/RotateImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setZoomValue(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x42e6

    .line 1442
    if-gtz p1, :cond_2

    move p1, v1

    .line 1448
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 1449
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    .line 1450
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b0020

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/views/RotateZoomView;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    .line 1451
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b001f

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomImage:Landroid/widget/ImageView;

    .line 1453
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomRatios:[F

    if-nez v0, :cond_3

    .line 1471
    :goto_1
    return-void

    .line 1444
    :cond_2
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomArrayLength:I

    if-lt p1, v0, :cond_0

    .line 1445
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomArrayLength:I

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    .line 1457
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1458
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomRatios:[F

    aget v2, v2, p1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1459
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomRatios:[F

    aget v2, v2, p1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1460
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1462
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomRatios:[F

    div-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

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

    .line 1463
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomText:Lcom/oppo/camera/views/RotateZoomView;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v0}, Lcom/oppo/camera/views/RotateZoomView;->setLength(I)V

    .line 1465
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1466
    iput p1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomValue:I

    .line 1468
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomValue:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1470
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1
.end method

.method private showCameraErrorAndFinish()V
    .locals 2

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getResources()Landroid/content/res/Resources;

    .line 1349
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->resetWhenCameraError()V

    .line 1350
    const-string v0, "LomoCamera"

    const-string v1, "Some error happen,finish Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->finish()V

    .line 1352
    return-void
.end method

.method private showHintView(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/views/RotateHintView;->setText(I)V

    .line 2003
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mRotateHintView:Lcom/oppo/camera/views/RotateHintView;

    iget v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/views/RotateHintView;->setDegree(I)V

    .line 2004
    return-void
.end method

.method private showPanoramaTips()V
    .locals 4

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaTips:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2625
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaTips:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2626
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaTipsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mHidePanoramaTips:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2628
    :cond_0
    return-void
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

    .line 602
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    invoke-direct {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->ensureCameraDevice(I)V

    .line 605
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mErrorCallback:Lcom/oppo/camera/lomo/LomoCamera$CameraErrorCb;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 606
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewing:Z

    if-eqz v0, :cond_2

    .line 607
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->stopPreview()V

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mContinuousAfCallback:Lcom/oppo/camera/lomo/LomoCamera$ContinuousAfCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setContinuousAfCallback(Landroid/hardware/Camera$ContinuousAfCallback;)V

    .line 610
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->setCameraParameters()V

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 613
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    iput-boolean v4, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewing:Z

    .line 619
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v0, v1, :cond_0

    .line 620
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera;->OFF:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mContinuousAfState:Ljava/lang/String;

    .line 621
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->closeCamera()V

    .line 616
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startReceivingLocationUpdates()V
    .locals 7

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 1943
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oppo/camera/lomo/LomoCamera;->mLocationListeners:[Lcom/oppo/camera/lomo/LomoCamera$LocationListener;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1948
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oppo/camera/lomo/LomoCamera;->mLocationListeners:[Lcom/oppo/camera/lomo/LomoCamera$LocationListener;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1953
    :cond_0
    :goto_1
    return-void

    .line 1950
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1949
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1945
    :catch_2
    move-exception v0

    goto :goto_0

    .line 1944
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private startSweep()V
    .locals 2

    .prologue
    .line 2559
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaInProgress:Z

    if-nez v0, :cond_0

    .line 2560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaInProgress:Z

    .line 2561
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->hidePanoramaTips()V

    .line 2562
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 2565
    :cond_0
    return-void
.end method

.method private stopPreview()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 629
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewing:Z

    .line 630
    return-void
.end method

.method private stopReceivingLocationUpdates()V
    .locals 3

    .prologue
    .line 1956
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    .line 1957
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mLocationListeners:[Lcom/oppo/camera/lomo/LomoCamera$LocationListener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1959
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mLocationListeners:[Lcom/oppo/camera/lomo/LomoCamera$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1957
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1964
    .end local v0           #i:I
    :cond_0
    return-void

    .line 1960
    .restart local v0       #i:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private stopSweep()V
    .locals 4

    .prologue
    .line 2571
    iget-boolean v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaInProgress:Z

    if-eqz v2, :cond_0

    .line 2572
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->disableButtons()V

    .line 2573
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaInProgress:Z

    .line 2575
    iget v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mNbrOfImagesGrabbed:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 2576
    sget-object v2, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/oppo/camera/utils/PlayEffectSound;->playSound(I)V

    .line 2578
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getPictureName()Ljava/lang/String;

    move-result-object v1

    .line 2580
    .local v1, filePath:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaHandler:Lcom/oppo/camera/lomo/PanoramaHandler;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/lomo/PanoramaHandler;->execute(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2588
    .end local v1           #filePath:Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->hidePanoramaTips()V

    .line 2589
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaProgressBar:Lcom/oppo/camera/panorama/PanoramaProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/oppo/camera/panorama/PanoramaProgressBar;->setVisibility(I)V

    .line 2592
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z

    .line 2593
    return-void

    .line 2581
    .restart local v1       #filePath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2582
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2583
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->reset()V

    goto :goto_0

    .line 2586
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #filePath:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->reset()V

    goto :goto_0
.end method

.method private turnOffContiniousAF()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 2768
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera;->OFF:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mContinuousAfState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2781
    :cond_0
    :goto_0
    return-void

    .line 2771
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2772
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2775
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 2776
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2777
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2778
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->doSafeSetParameters()V

    .line 2779
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera;->OFF:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mContinuousAfState:Ljava/lang/String;

    goto :goto_0
.end method

.method private turnOnContiniousAF()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2752
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera;->ON:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mContinuousAfState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2765
    :cond_0
    :goto_0
    return-void

    .line 2756
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 2757
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->cancelAutoFocus()V

    .line 2758
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2759
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2760
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v2}, Landroid/hardware/Camera$Parameters;->setTouchIndexAec(II)V

    .line 2761
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v2}, Landroid/hardware/Camera$Parameters;->setTouchIndexAf(II)V

    .line 2762
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->doSafeSetParameters()V

    .line 2763
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera;->ON:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mContinuousAfState:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateEffect(Z)V
    .locals 7
    .parameter "isUp"

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x9

    const/4 v4, 0x7

    const/4 v3, 0x4

    const/4 v1, 0x1

    .line 2203
    iget v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    .line 2204
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStyleId:I

    packed-switch v0, :pswitch_data_0

    .line 2229
    :cond_0
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviousEffect:Lcom/oppo/camera/lomo/filters/Filter;

    .line 2230
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFilterHandler:Lcom/oppo/camera/lomo/FilterHandler;

    iget v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/lomo/FilterHandler;->getFilterById(I)Lcom/oppo/camera/lomo/filters/Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;

    .line 2231
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->refreshEffect()V

    .line 2232
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->saveLomoEffect()V

    .line 2233
    return-void

    .line 2203
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2206
    :pswitch_1
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    if-le v0, v5, :cond_2

    .line 2207
    iput v4, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    goto :goto_1

    .line 2208
    :cond_2
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    if-ge v0, v4, :cond_0

    .line 2209
    iput v5, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    goto :goto_1

    .line 2213
    :pswitch_2
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    if-le v0, v3, :cond_3

    .line 2214
    iput v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    goto :goto_1

    .line 2215
    :cond_3
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    if-ge v0, v1, :cond_0

    .line 2216
    iput v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    goto :goto_1

    .line 2220
    :pswitch_3
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_4

    .line 2221
    iput v6, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    goto :goto_1

    .line 2222
    :cond_4
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    if-ge v0, v6, :cond_0

    .line 2223
    const/16 v0, 0xd

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    goto :goto_1

    .line 2204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateLastPictureUri()V
    .locals 3

    .prologue
    .line 495
    new-instance v1, Lcom/oppo/camera/utils/StringUtil;

    invoke-direct {v1}, Lcom/oppo/camera/utils/StringUtil;-><init>()V

    .line 496
    .local v1, stringUtil:Lcom/oppo/camera/utils/StringUtil;
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/utils/StringUtil;->getLatestFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, lastName:Ljava/lang/String;
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    invoke-virtual {v2, v0}, Lcom/oppo/camera/utils/OppoBrowseImage;->updateLastPictureUri(Ljava/lang/String;)V

    .line 498
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
    .line 1627
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 1628
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 1629
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/oppo/camera/utils/Util;->clamp(III)I

    move-result v3

    .line 1630
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/oppo/camera/utils/Util;->clamp(III)I

    move-result v5

    .line 1631
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1632
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1633
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/oppo/camera/utils/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 1634
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1842
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1878
    :cond_0
    :goto_0
    return v2

    .line 1845
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->hidePanoramaTips()V

    .line 1846
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsPictureTaken:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPausing:Z

    if-nez v0, :cond_0

    .line 1849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 1850
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsFirstEnter:Z

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStyleId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 1851
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTipsAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1852
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1853
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTips:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1854
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsFirstEnter:Z

    .line 1855
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lomo first enter"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1857
    :cond_2
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera$MoveType;->NOT_MOVE:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMoveType:Lcom/oppo/camera/lomo/LomoCamera$MoveType;

    .line 1859
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/BurstHandler;->getmIsImageReviewerShow()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->FINISH:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    if-ne v0, v1, :cond_4

    .line 1864
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMultiGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1867
    :cond_4
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mEffectId:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 1868
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/lomo/filters/Filter;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1869
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsDofTouchFocus:Z

    .line 1875
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1871
    :cond_6
    iput-boolean v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsDofTouchFocus:Z

    goto :goto_1
.end method

.method public getLatestDrawabel(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "filepath"

    .prologue
    .line 1295
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1296
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iget v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    if-nez v2, :cond_0

    .line 1297
    const/16 v2, 0x10

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1301
    :goto_0
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oppo/camera/lomo/LomoCamera;->getSmallShotAnimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1302
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 1303
    const/4 v0, 0x0

    .line 1306
    :goto_1
    return-object v0

    .line 1299
    :cond_0
    const/4 v2, 0x4

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 1305
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1306
    .local v0, mDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method protected getZoomRatios()[F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1673
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    .line 1675
    if-eqz v3, :cond_2

    .line 1676
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [F

    .line 1677
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_0

    .line 1678
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x42c8

    div-float/2addr v0, v5

    aput v0, v1, v2

    .line 1677
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1682
    :cond_0
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1f

    const/high16 v2, 0x4000

    aput v2, v1, v0

    move-object v0, v1

    .line 1690
    :cond_1
    return-object v0

    .line 1686
    :cond_2
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomMax:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 1687
    array-length v3, v0

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_1

    .line 1688
    const/high16 v2, 0x3f80

    int-to-float v4, v1

    const v5, 0x3e4ccccd

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    aput v2, v0, v1

    .line 1687
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1382
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1383
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1384
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1385
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2017
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsFirstEnter:Z

    if-ne v0, v5, :cond_0

    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStyleId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTipsAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2019
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2020
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFirstEnterTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2021
    iput-boolean v4, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsFirstEnter:Z

    .line 2022
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lomo first enter"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2024
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2108
    :cond_1
    :goto_0
    return-void

    .line 2026
    :sswitch_0
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPausing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsPictureTaken:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsBurstReviewOver:Z

    if-eqz v0, :cond_1

    .line 2029
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->isStoragePlaceEnough()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2030
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->enableButtons()V

    goto :goto_0

    .line 2033
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v0, v1, :cond_3

    .line 2036
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-ne v0, v1, :cond_5

    .line 2037
    iput-boolean v4, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsBurstReviewOver:Z

    .line 2038
    iput v4, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstCount:I

    .line 2039
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/BurstHandler;->reset()V

    .line 2040
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2041
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->turnOffContiniousAF()V

    .line 2042
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    .line 2043
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 2045
    :cond_4
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->FINISH:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    .line 2047
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->endCallKey:[I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z

    .line 2049
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-ne v0, v1, :cond_7

    .line 2050
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanoramaInProgress:Z

    if-nez v0, :cond_6

    .line 2051
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mAFCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0

    .line 2053
    :cond_6
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->stopSweep()V

    goto :goto_0

    .line 2057
    :cond_7
    iput-boolean v4, p0, Lcom/oppo/camera/lomo/LomoCamera;->mDoSnapAfterFocusComplete:Z

    .line 2058
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->disableButtons()V

    .line 2059
    iput-boolean v4, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsPictureTaken:Z

    .line 2060
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsImageCapture:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusState:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$FocusState;->FINISH:Lcom/oppo/camera/lomo/LomoCamera$FocusState;

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    if-ne v0, v5, :cond_9

    .line 2061
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->takePicture()V

    .line 2067
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->keepScreenOnAwhile()V

    goto :goto_0

    .line 2063
    :cond_9
    iput-boolean v5, p0, Lcom/oppo/camera/lomo/LomoCamera;->mDoSnapAfterFocusComplete:Z

    .line 2064
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2065
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 2070
    :sswitch_1
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mDoingAnimation:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsBurstReviewOver:Z

    if-eqz v0, :cond_1

    .line 2073
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-static {}, Lcom/oppo/camera/utils/StorageManager;->hasInternalStorage()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2074
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->checkStorage()V

    goto/16 :goto_0

    .line 2078
    :cond_a
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/utils/Util;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2079
    const v0, 0x7f0a002e

    invoke-direct {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->showHintView(I)V

    goto/16 :goto_0

    .line 2083
    :cond_b
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->handleOutFromPanorama()V

    .line 2084
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->disableButtons()V

    .line 2085
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->updateLastPictureUri()V

    .line 2086
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OppoBrowseImage;->getPictureCount(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c

    .line 2087
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBrowseImage:Lcom/oppo/camera/utils/OppoBrowseImage;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/OppoBrowseImage;->viewLastPicture(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2090
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->enableButtons()V

    goto/16 :goto_0

    .line 2093
    :cond_c
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->enableButtons()V

    goto/16 :goto_0

    .line 2098
    :sswitch_2
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPausing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsPictureTaken:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsBurstReviewOver:Z

    if-eqz v0, :cond_1

    .line 2101
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->backToMenu()V

    goto/16 :goto_0

    .line 2105
    :sswitch_3
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->setLomoCameraFace()V

    goto/16 :goto_0

    .line 2024
    :sswitch_data_0
    .sparse-switch
        0x7f0b000b -> :sswitch_0
        0x7f0b0029 -> :sswitch_1
        0x7f0b003b -> :sswitch_3
        0x7f0b004b -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x400

    const/4 v4, 0x0

    .line 328
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 329
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v2, "exitTotal"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 332
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 333
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 334
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->initMisc()V

    .line 335
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->initShotMode()V

    .line 336
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->initEffect()V

    .line 337
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->initPanorama()V

    .line 339
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->FILTER:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v2, v3, :cond_1

    .line 340
    sget-object v2, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->FILTER:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    .line 341
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFilterHandler:Lcom/oppo/camera/lomo/FilterHandler;

    invoke-virtual {v2, v4}, Lcom/oppo/camera/lomo/FilterHandler;->getFilterById(I)Lcom/oppo/camera/lomo/filters/Filter;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCurrentEffect:Lcom/oppo/camera/lomo/filters/Filter;

    .line 345
    :cond_1
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    .line 347
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/oppo/camera/lomo/LomoCamera$3;

    invoke-direct {v2, p0}, Lcom/oppo/camera/lomo/LomoCamera$3;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 368
    .local v1, startPreviewThread:Ljava/lang/Thread;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 369
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 371
    const v2, 0x7f03000a

    invoke-virtual {p0, v2}, Lcom/oppo/camera/lomo/LomoCamera;->setContentView(I)V

    .line 372
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->initUI()V

    .line 373
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/utils/StorageManager;->setScreenHintListener(Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;)V

    .line 375
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v2}, Lcom/oppo/camera/utils/ScreenOffUtil;->registerScreenOffReceiver()V

    .line 376
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v2, p0}, Lcom/oppo/camera/utils/ScreenOffUtil;->setOnScreenOffListener(Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;)V

    .line 377
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    .line 378
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->disableButtons()V

    .line 379
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 922
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 923
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->recycleBitmap()V

    .line 924
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPanelView:Lcom/oppo/camera/lomo/PanelView;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/PanelView;->onDestoryBitmap()V

    .line 925
    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    .line 926
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/ScreenOffUtil;->setOnScreenOffListener(Lcom/oppo/camera/utils/ScreenOffUtil$OnScreenOffListener;)V

    .line 927
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mScreenOffUtil:Lcom/oppo/camera/utils/ScreenOffUtil;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/ScreenOffUtil;->unRegisterScreenOffReceiver()V

    .line 928
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/PlayEffectSound;->destory()V

    .line 929
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 930
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 931
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1733
    sparse-switch p1, :sswitch_data_0

    .line 1775
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 1737
    :sswitch_1
    iget-boolean v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewing:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    if-eq v2, v1, :cond_0

    .line 1740
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    if-eqz v2, :cond_1

    .line 1741
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    invoke-virtual {v2}, Lcom/oppo/camera/views/FocusSurfaceView;->clear()V

    .line 1743
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v2, v3, :cond_2

    .line 1744
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->turnOffContiniousAF()V

    .line 1747
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 1748
    const/4 v0, 0x1

    .line 1752
    .local v0, step:I
    :goto_1
    iget v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomValue:I

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/oppo/camera/lomo/LomoCamera;->setZoomValue(I)V

    goto :goto_0

    .line 1750
    .end local v0           #step:I
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    div-int/lit8 v0, v2, 0x3

    .restart local v0       #step:I
    goto :goto_1

    .line 1756
    .end local v0           #step:I
    :sswitch_2
    iget-boolean v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewing:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    if-eq v2, v1, :cond_0

    .line 1759
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    if-eqz v2, :cond_4

    .line 1760
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    invoke-virtual {v2}, Lcom/oppo/camera/views/FocusSurfaceView;->clear()V

    .line 1762
    :cond_4
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v3, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v2, v3, :cond_5

    .line 1763
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->turnOffContiniousAF()V

    .line 1766
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 1767
    const/4 v0, 0x1

    .line 1771
    .restart local v0       #step:I
    :goto_2
    iget v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomValue:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/oppo/camera/lomo/LomoCamera;->setZoomValue(I)V

    goto :goto_0

    .line 1769
    .end local v0           #step:I
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    div-int/lit8 v0, v2, 0x3

    .restart local v0       #step:I
    goto :goto_2

    .line 1733
    nop

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

    const/4 v0, 0x1

    .line 1785
    sparse-switch p1, :sswitch_data_0

    .line 1837
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1788
    :sswitch_1
    iget-boolean v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsPictureTaken:Z

    if-eqz v1, :cond_0

    .line 1793
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v2, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;

    invoke-virtual {v1}, Lcom/oppo/camera/lomo/BurstHandler;->getmIsImageReviewerShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1795
    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstCount:I

    .line 1796
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;

    invoke-virtual {v1}, Lcom/oppo/camera/lomo/BurstHandler;->hideBurstImageReviewer()V

    .line 1797
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->enableButtons()V

    .line 1798
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->turnOnContiniousAF()V

    .line 1799
    iput-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsBurstReviewOver:Z

    goto :goto_0

    .line 1803
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMenuLayout:Lcom/oppo/camera/lomo/LomoCameraMenuLayout;

    invoke-virtual {v1}, Lcom/oppo/camera/lomo/LomoCameraMenuLayout;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 1804
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->backToMenu()V

    goto :goto_0

    .line 1808
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->finish()V

    goto :goto_0

    .line 1813
    :sswitch_2
    iget-boolean v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsPictureTaken:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPausing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v2, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    if-eq v1, v0, :cond_0

    .line 1817
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 1818
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1820
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v2, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v1, v2, :cond_0

    .line 1821
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->turnOnContiniousAF()V

    goto :goto_0

    .line 1825
    :sswitch_3
    iget-boolean v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsPictureTaken:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPausing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v2, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    if-eq v1, v0, :cond_0

    .line 1829
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    .line 1830
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1832
    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v2, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-eq v1, v2, :cond_0

    .line 1833
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->turnOnContiniousAF()V

    goto/16 :goto_0

    .line 1785
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x6 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 816
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 817
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPausing:Z

    .line 818
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mZoomLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->clearAnimation()V

    .line 823
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->onPause()V

    .line 824
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z

    .line 826
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mDoingAnimation:Z

    .line 827
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->saveLomoEffect()V

    .line 828
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->stopPreview()V

    .line 829
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->closeCamera()V

    .line 830
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->unRegisterReveiver()V

    .line 831
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 832
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->stopReceivingLocationUpdates()V

    .line 833
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOrientationListener:Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;->disable()V

    .line 834
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-ne v0, v1, :cond_2

    .line 835
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstHandler:Lcom/oppo/camera/lomo/BurstHandler;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/BurstHandler;->clean()V

    .line 837
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->PANORAMA:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    if-ne v0, v1, :cond_3

    .line 838
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->stopSweep()V

    .line 840
    :cond_3
    iput-boolean v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsImageCapture:Z

    .line 842
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->resetScreenOn()V

    .line 844
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 763
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 764
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 765
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera flash mode"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFlashMode:Ljava/lang/String;

    .line 766
    sget-object v0, Lcom/oppo/camera/lomo/LomoCamera;->mPlayEffectSound:Lcom/oppo/camera/utils/PlayEffectSound;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "camera sound mode"

    const-string v3, "on"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/PlayEffectSound;->setShutterSound(Ljava/lang/String;)V

    .line 767
    sget-object v0, Lcom/oppo/camera/CommConfig;->INTERNAL_LOMO_IMG_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSavePath:Ljava/lang/String;

    .line 768
    iput-boolean v5, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsBurstReviewOver:Z

    .line 769
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z

    .line 770
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->brightnessMax()V

    .line 771
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotAnimView:Lcom/oppo/camera/views/Oppo3DSavePhotoView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/Oppo3DSavePhotoView;->onResume()V

    .line 774
    :cond_0
    iput-boolean v5, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsPictureTaken:Z

    .line 775
    iput-boolean v4, p0, Lcom/oppo/camera/lomo/LomoCamera;->mDoingAnimation:Z

    .line 776
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOrientationListener:Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/oppo/camera/lomo/LomoCamera$MyOrientationEventListener;->enable()V

    .line 777
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v0}, Lcom/oppo/camera/utils/StorageManager;->registerReceiver()V

    .line 778
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 779
    const-string v1, "CAM_ON_BEFOR_HDMI_PLUG_IN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 780
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/lomo/LomoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 784
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mLocationManager:Landroid/location/LocationManager;

    .line 785
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->startReceivingLocationUpdates()V

    .line 787
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 789
    new-instance v0, Lcom/oppo/camera/lomo/LomoCamera$5;

    invoke-direct {v0, p0}, Lcom/oppo/camera/lomo/LomoCamera$5;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 799
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 800
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 802
    :cond_1
    iput-boolean v4, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPausing:Z

    .line 803
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->enableButtons()V

    .line 804
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->keepScreenOnAwhile()V

    .line 806
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/camera/lomo/LomoCamera$6;

    invoke-direct {v1, p0}, Lcom/oppo/camera/lomo/LomoCamera$6;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 813
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 2641
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/LomoCamera;->setRequestedOrientation(I)V

    .line 2642
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->finish()V

    .line 2643
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1780
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1781
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1372
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1373
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->keepScreenOnAwhile()V

    .line 1374
    return-void
.end method

.method protected resetScreenOn()V
    .locals 2

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1378
    invoke-virtual {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1379
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 897
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    iget-boolean v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewing:Z

    if-eqz v1, :cond_2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 902
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 907
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->restartPreview()Z

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 913
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 917
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->stopPreview()V

    .line 918
    return-void
.end method

.method public takePicture()V
    .locals 9

    .prologue
    .line 936
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mPreviewing:Z

    if-nez v0, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mIsImageCapture:Z

    .line 943
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 945
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 948
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 951
    invoke-direct {p0}, Lcom/oppo/camera/lomo/LomoCamera;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 952
    if-eqz v2, :cond_5

    .line 953
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 954
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 955
    const-wide/16 v0, 0x0

    cmpl-double v0, v3, v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmpl-double v0, v5, v0

    if-eqz v0, :cond_a

    :cond_2
    const/4 v0, 0x1

    .line 956
    :goto_1
    if-eqz v0, :cond_5

    .line 957
    const-string v1, "N"

    .line 958
    const-string v0, "E"

    .line 959
    const-wide/16 v7, 0x0

    cmpg-double v7, v3, v7

    if-gez v7, :cond_3

    .line 960
    const-string v1, "S"

    .line 962
    :cond_3
    const-wide/16 v7, 0x0

    cmpg-double v7, v5, v7

    if-gez v7, :cond_4

    .line 963
    const-string v0, "W"

    .line 965
    :cond_4
    iget-object v7, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v1}, Landroid/hardware/Camera$Parameters;->setGpsLatitudeRef(Ljava/lang/String;)V

    .line 966
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 967
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setGpsLongitudeRef(Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 970
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 971
    invoke-virtual {v2}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 972
    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 973
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 974
    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    .line 975
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_b

    .line 976
    const-wide/16 v5, -0x1

    mul-long/2addr v3, v5

    .line 977
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-wide/high16 v3, 0x3ff0

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsAltitudeRef(D)V

    .line 980
    :goto_2
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 987
    :goto_3
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_5

    .line 990
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 991
    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 997
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 998
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    .line 999
    const-string v2, "yyyy:MM:dd kk:mm:ss"

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1000
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExifDateTime(Ljava/lang/String;)V

    .line 1002
    :cond_6
    iget v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1003
    invoke-static {}, Lcom/oppo/camera/CameraHolder;->instance()Lcom/oppo/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraId:I

    aget-object v0, v0, v1

    .line 1004
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 1005
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mRotation:I

    .line 1010
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1012
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShotMode:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    sget-object v1, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->BURST:Lcom/oppo/camera/lomo/LomoCamera$ShotMode;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/lomo/LomoCamera$ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1013
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSnapshotCount(Ljava/lang/String;)V

    .line 1014
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mBurstCount:I

    .line 1016
    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1017
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    if-eqz v0, :cond_9

    .line 1018
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mFocusView:Lcom/oppo/camera/views/FocusSurfaceView;

    invoke-virtual {v0}, Lcom/oppo/camera/views/FocusSurfaceView;->clear()V

    .line 1020
    :cond_9
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oppo/camera/lomo/LomoCamera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto/16 :goto_0

    .line 955
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 979
    :cond_b
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsAltitudeRef(D)V

    goto/16 :goto_2

    .line 985
    :cond_c
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto/16 :goto_3

    .line 1007
    :cond_d
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/oppo/camera/lomo/LomoCamera;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/oppo/camera/lomo/LomoCamera;->mRotation:I

    goto :goto_4
.end method
