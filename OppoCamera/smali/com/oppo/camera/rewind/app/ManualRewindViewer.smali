.class public Lcom/oppo/camera/rewind/app/ManualRewindViewer;
.super Lcom/oppo/camera/rewind/app/RewindViewer;
.source "ManualRewindViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/app/ManualRewindViewer$1;,
        Lcom/oppo/camera/rewind/app/ManualRewindViewer$LayoutCfg;,
        Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;,
        Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectTrackerListener;,
        Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyWheelCallback;,
        Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectListener;,
        Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;,
        Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;
    }
.end annotation


# instance fields
.field private ZOOM_TIME:J

.field private mActive:Z

.field mAsyncTracker:Lcom/oppo/camera/rewind/app/AsyncTracker;

.field private mBackgroundIndex:I

.field private mBgLayer:Lcom/oppo/camera/rewind/ui/Background;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mBlockedUntilUpdated:Z

.field private mBlurInLTW:Z

.field private mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;

.field private mCommits:I

.field private mContinuousUpdates:Z

.field private mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

.field private mCurPaint:Landroid/graphics/Paint;

.field private mCurReplaceArea:Landroid/graphics/Rect;

.field private mCurZoomRect:Landroid/graphics/Rect;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDrawFaceRects:Z

.field private mDstRect:Landroid/graphics/Rect;

.field private mEntriesReady:I

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFaceRectScale:F

.field private mFaceRects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/ui/SelectionRect;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTime:Z

.field private mFixedMagniferSize:Z

.field private mHalfSize:Lcom/scalado/base/Size;

.field private mIsAnimationStarted:Z

.field private mJobIndicator:Lcom/oppo/camera/rewind/ui/JobIndicator;

.field private mJobIndicatorOnFaceDet:Z

.field private mLayoutCfg:Lcom/oppo/camera/rewind/app/ManualRewindViewer$LayoutCfg;

.field private mMagBitmap:Landroid/graphics/Bitmap;

.field private mMagnifierMaxSize:Lcom/scalado/base/Size;

.field private mMagnifierMinSize:Lcom/scalado/base/Size;

.field private mMaxZoomSize:Lcom/scalado/base/Size;

.field private mMinLensSize:Lcom/scalado/base/Size;

.field private mMinReplSize:Lcom/scalado/base/Size;

.field private mMinScreenHeight:I

.field private mMinScreenWidth:I

.field private mMinZoomSize:Lcom/scalado/base/Size;

.field private mMsg:Ljava/lang/String;

.field private mNumImages:I

.field private mOverlayColor:Z

.field private mOverlayPaint:Landroid/graphics/Paint;

.field private mPostview:Lcom/scalado/base/Image;

.field private mPostviewBytes:[B

.field private mPostviewConfig:Lcom/scalado/base/Image$Config;

.field private mPostviewSize:Lcom/scalado/base/Size;

.field private mRectListener:Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectListener;

.field private mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

.field private mRectTrackerListener:Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectTrackerListener;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mStartIndex:I

.field private mState:I

.field private mSurfaceChanged:Z

.field private mT0:J

.field private mThumbsReady:I

.field private mTrackedFaces:[[Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

.field private mTxtPaint:Landroid/graphics/Paint;

.field private mUiMgrListener:Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;

.field private mUpdatePreview:Z

.field private mWheel:Lcom/oppo/camera/rewind/ui/Wheel;

.field private mWheelCallback:Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyWheelCallback;

.field private mWheelGroup:Lcom/oppo/camera/rewind/ui/Group;

.field private mZoomedInBgAlpha:I

.field private mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v7, -0x4000

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/RewindViewer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance v0, Lcom/oppo/camera/rewind/app/BitmapManager;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/oppo/camera/rewind/app/BitmapManager;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;

    .line 76
    const/16 v0, 0x14

    iput v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinScreenWidth:I

    .line 77
    const/16 v0, 0x14

    iput v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinScreenHeight:I

    .line 79
    new-instance v0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;

    invoke-direct {v0, p0, v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;-><init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ManualRewindViewer$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mUiMgrListener:Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;

    .line 80
    new-instance v0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectListener;

    invoke-direct {v0, p0, v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectListener;-><init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ManualRewindViewer$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectListener:Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectListener;

    .line 81
    new-instance v0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyWheelCallback;

    invoke-direct {v0, p0, v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyWheelCallback;-><init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ManualRewindViewer$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheelCallback:Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyWheelCallback;

    .line 85
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mJobIndicatorOnFaceDet:Z

    .line 90
    new-instance v0, Lcom/scalado/base/Size;

    const/16 v1, 0x4b0

    const/16 v2, 0x384

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 93
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    .line 94
    iput-boolean v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDrawFaceRects:Z

    .line 95
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFaceRectScale:F

    .line 101
    new-instance v0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$LayoutCfg;

    invoke-direct {v0, p0, v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer$LayoutCfg;-><init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ManualRewindViewer$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mLayoutCfg:Lcom/oppo/camera/rewind/app/ManualRewindViewer$LayoutCfg;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurReplaceArea:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectTrackerListener;

    invoke-direct {v0, p0, v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectTrackerListener;-><init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ManualRewindViewer$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTrackerListener:Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectTrackerListener;

    .line 109
    iput v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mStartIndex:I

    .line 110
    iput v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBackgroundIndex:I

    .line 111
    iput-boolean v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFirstTime:Z

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;

    .line 117
    iput v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCommits:I

    .line 119
    iput-boolean v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mUpdatePreview:Z

    .line 120
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mContinuousUpdates:Z

    .line 122
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinReplSize:Lcom/scalado/base/Size;

    .line 123
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinZoomSize:Lcom/scalado/base/Size;

    .line 124
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMaxZoomSize:Lcom/scalado/base/Size;

    .line 125
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinLensSize:Lcom/scalado/base/Size;

    .line 126
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMagnifierMinSize:Lcom/scalado/base/Size;

    .line 127
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    .line 128
    iput-boolean v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFixedMagniferSize:Z

    .line 130
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->ZOOM_TIME:J

    .line 132
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mActive:Z

    .line 134
    iput-boolean v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBlurInLTW:Z

    .line 136
    iput-boolean v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mOverlayColor:Z

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mOverlayPaint:Landroid/graphics/Paint;

    .line 138
    const/16 v0, 0xa0

    iput v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomedInBgAlpha:I

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBgPaint:Landroid/graphics/Paint;

    .line 145
    iput v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mState:I

    .line 147
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBlockedUntilUpdated:Z

    .line 159
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 164
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mOverlayPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc0

    const/16 v2, 0xe6

    const/16 v3, 0xdc

    const/16 v4, 0xd2

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mOverlayPaint:Landroid/graphics/Paint;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 166
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBgPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mUiMgrListener:Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/ui/UiManager;->setListener(Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;)V

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    .line 172
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v7, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 175
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 180
    return-void
.end method

.method static synthetic access$1000(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/BitmapManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/ScreenAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ScreenAnimation;)Lcom/oppo/camera/rewind/app/ScreenAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/ui/Background;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBgLayer:Lcom/oppo/camera/rewind/ui/Background;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->endShowWheel()V

    return-void
.end method

.method static synthetic access$1600(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->endHideWheel()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/ui/Wheel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/ui/Group;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheelGroup:Lcom/oppo/camera/rewind/ui/Group;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->startHideWheel(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oppo/camera/rewind/app/ManualRewindViewer;IILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->setupZoomRect(IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mUpdatePreview:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/oppo/camera/rewind/app/ManualRewindViewer;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->needUpdate(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->requestMagnifiedUpdate()V

    return-void
.end method

.method static synthetic access$2400(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinScreenWidth:I

    return v0
.end method

.method static synthetic access$2500(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinScreenHeight:I

    return v0
.end method

.method static synthetic access$2600(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/ui/SelectionRect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->startShowWheel(Lcom/oppo/camera/rewind/ui/SelectionRect;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->asyncFaceDetectionComplete()V

    return-void
.end method

.method static synthetic access$2802(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBlockedUntilUpdated:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFirstTime:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFirstTime:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mStartIndex:I

    return v0
.end method

.method static synthetic access$3100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->setFaceRects(IZ)V

    return-void
.end method

.method static synthetic access$3200(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mEntriesReady:I

    return v0
.end method

.method static synthetic access$3208(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mEntriesReady:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mEntriesReady:I

    return v0
.end method

.method static synthetic access$3300(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->startAsyncDetectFaces()V

    return-void
.end method

.method static synthetic access$3400(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->ZOOM_TIME:J

    return-wide v0
.end method

.method static synthetic access$3600(Lcom/oppo/camera/rewind/app/ManualRewindViewer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->drawSrcMgrBg(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mThumbsReady:I

    return v0
.end method

.method static synthetic access$3708(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mThumbsReady:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mThumbsReady:I

    return v0
.end method

.method static synthetic access$3800(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mNumImages:I

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    return v0
.end method

.method private adjustZoomRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter

    .prologue
    .line 870
    const/high16 v0, 0x4060

    invoke-static {p1, v0}, Lcom/oppo/camera/rewind/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 871
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 872
    invoke-static {p1, v0, v0}, Lcom/oppo/camera/rewind/ui/Layout;->resizeRect(Landroid/graphics/Rect;II)V

    .line 873
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMaxZoomSize:Lcom/scalado/base/Size;

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/rewind/ui/Layout;->ensureRectMaxSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V

    .line 874
    return-void
.end method

.method private asyncFaceDetectionComplete()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 574
    iget-boolean v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mJobIndicatorOnFaceDet:Z

    if-eqz v5, :cond_0

    .line 575
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mJobIndicator:Lcom/oppo/camera/rewind/ui/JobIndicator;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/oppo/camera/rewind/ui/JobIndicator;->onJobEnded(I)V

    .line 577
    :cond_0
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-virtual {v5}, Lcom/oppo/camera/rewind/app/RectTracker;->getBestStartImage()I

    move-result v1

    .line 579
    .local v1, iMax:I
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-virtual {v5}, Lcom/oppo/camera/rewind/app/RectTracker;->isComplete()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDrawFaceRects:Z

    .line 581
    iget v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mNumImages:I

    iget-object v8, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-virtual {v8}, Lcom/oppo/camera/rewind/app/RectTracker;->numRects()I

    move-result v8

    filled-new-array {v5, v8}, [I

    move-result-object v5

    const-class v8, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    invoke-static {v8, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iput-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mTrackedFaces:[[Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    .line 582
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mNumImages:I

    if-ge v0, v5, :cond_4

    .line 583
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-virtual {v5}, Lcom/oppo/camera/rewind/app/RectTracker;->numRects()I

    move-result v5

    iget-object v8, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-virtual {v8, v0}, Lcom/oppo/camera/rewind/app/RectTracker;->numRects(I)I

    move-result v8

    if-eq v5, v8, :cond_1

    .line 584
    const-string v5, "ManualRewindViewer"

    const-string v8, "WARNING! rects in %d not maximal!"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-virtual {v5}, Lcom/oppo/camera/rewind/app/RectTracker;->numRects()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 588
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mTrackedFaces:[[Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    aget-object v5, v5, v0

    new-instance v8, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    invoke-direct {v8, p0, v11}, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;-><init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ManualRewindViewer$1;)V

    aput-object v8, v5, v2

    .line 589
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mTrackedFaces:[[Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    aget-object v5, v5, v0

    aget-object v5, v5, v2

    iget-object v8, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-virtual {v8, v0, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->getId(II)I

    move-result v8

    iput v8, v5, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mId:I

    .line 590
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mTrackedFaces:[[Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    aget-object v5, v5, v0

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-virtual {v8, v0, v2}, Lcom/oppo/camera/rewind/app/RectTracker;->getRect(II)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 587
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v2           #j:I
    :cond_2
    move v5, v7

    .line 579
    goto :goto_0

    .line 582
    .restart local v0       #i:I
    .restart local v2       #j:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 593
    .end local v2           #j:I
    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->prepareFaceWidgets()V

    .line 594
    iput v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mStartIndex:I

    .line 595
    if-ltz v1, :cond_5

    .line 596
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v5, v1}, Lcom/oppo/camera/rewind/app/RewindSession;->setBackground(I)V

    .line 597
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v5, v1}, Lcom/oppo/camera/rewind/app/RewindSession;->setForeground(I)V

    .line 598
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->requestUpdate()V

    .line 600
    :cond_5
    iput v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mState:I

    .line 601
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mAsyncTracker:Lcom/oppo/camera/rewind/app/AsyncTracker;

    invoke-virtual {v5}, Lcom/oppo/camera/rewind/app/AsyncTracker;->finish()V

    .line 602
    iput-object v11, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mAsyncTracker:Lcom/oppo/camera/rewind/app/AsyncTracker;

    .line 603
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 604
    .local v3, t1:J
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    if-eqz v5, :cond_6

    .line 605
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    invoke-interface {v5, v1}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onFaceDetecionComplete(I)V

    .line 607
    :cond_6
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v5, v5, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->saveButton:Lcom/oppo/camera/rewind/app/ExtWidget;

    if-eqz v5, :cond_7

    .line 608
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v5, v5, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->saveButton:Lcom/oppo/camera/rewind/app/ExtWidget;

    invoke-interface {v5}, Lcom/oppo/camera/rewind/app/ExtWidget;->show()V

    .line 610
    :cond_7
    invoke-virtual {p0, v1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->selectBackground(I)V

    .line 611
    return-void
.end method

.method private calculateMagnifierSize(Landroid/graphics/Rect;FLcom/scalado/base/Size;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 960
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindSession;->getCoordTransform()Lcom/oppo/camera/rewind/app/CoordTransform;

    move-result-object v0

    .line 961
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/RewindSession;->curSourceDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    .line 962
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/CoordTransform;->canvasDims()Lcom/scalado/base/Size;

    move-result-object v2

    .line 963
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 964
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 965
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 967
    new-instance v2, Lcom/scalado/base/Rect;

    invoke-direct {v2}, Lcom/scalado/base/Rect;-><init>()V

    .line 968
    new-instance v3, Lcom/scalado/base/Rect;

    invoke-direct {v3}, Lcom/scalado/base/Rect;-><init>()V

    .line 969
    invoke-static {p1, v2}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 970
    invoke-virtual {v0, v2, v3}, Lcom/oppo/camera/rewind/app/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 971
    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 973
    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 976
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 978
    :cond_0
    const-string v2, "ManualRewindViewer"

    const-string v3, "WARNING: zoom lvl!!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_1
    invoke-virtual {p3, v0}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 981
    invoke-virtual {p3, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 982
    return-void
.end method

.method private drawSrcMgrBg(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1035
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 1036
    if-nez v0, :cond_0

    .line 1037
    const-string v0, "ManualRewindViewer"

    const-string v1, "Failed to lock canvas."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :goto_0
    return-void

    .line 1040
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 1041
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    .line 1043
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    iget v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1045
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/RewindSession;->getSourceManager()Lcom/oppo/camera/rewind/app/SourceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oppo/camera/rewind/app/SourceManager;->getEntry(I)Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/SourceManager$SourceManagerEntry;->getBackgroundImage()Lcom/scalado/base/Image;

    move-result-object v1

    .line 1047
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/app/BitmapManager;->lockDisplayed()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1048
    invoke-virtual {v1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1049
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v5, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1050
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/BitmapManager;->unlockDisplayed()V

    .line 1051
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private declared-synchronized endHideWheel()V
    .locals 2

    .prologue
    .line 1005
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindSession;->getBackground()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->setFaceRects(IZ)V

    .line 1006
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession;->setZoom(F)V

    .line 1007
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindSession;->resetScreen()V

    .line 1008
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->requestUpdate()V

    .line 1009
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->saveButton:Lcom/oppo/camera/rewind/app/ExtWidget;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->saveButton:Lcom/oppo/camera/rewind/app/ExtWidget;

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/ExtWidget;->show()V

    .line 1012
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 1013
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onEndHideWheel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1015
    monitor-exit p0

    return-void

    .line 1005
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized endShowWheel()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 818
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mOverlayColor:Z

    if-eqz v2, :cond_2

    .line 819
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mOverlayPaint:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;

    .line 823
    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/app/RewindSession;->getMagnifiedPreview()Lcom/scalado/base/Image;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/camera/rewind/ui/Wheel;->setImage(Lcom/scalado/base/Image;)V

    .line 824
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheelGroup:Lcom/oppo/camera/rewind/ui/Group;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oppo/camera/rewind/ui/Group;->showOnTop(Z)V

    .line 825
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/app/RewindSession;->resetScreen()V

    .line 826
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;

    invoke-static {v3}, Lcom/oppo/camera/rewind/app/Geom;->convertRect(Landroid/graphics/Rect;)Lcom/scalado/base/Rect;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/oppo/camera/rewind/app/RewindSession;->setZoomRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 827
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->setBgFx(Z)V

    .line 828
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->requestRender()V

    .line 829
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/app/RewindSession;->getBackground()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/app/RewindSession;->getForeground()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 831
    .local v0, getMagnified:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 832
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->requestMagnifiedUpdate()V

    .line 834
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->commitButton:Lcom/oppo/camera/rewind/app/ExtWidget;

    if-eqz v1, :cond_1

    .line 835
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->commitButton:Lcom/oppo/camera/rewind/app/ExtWidget;

    invoke-interface {v1}, Lcom/oppo/camera/rewind/app/ExtWidget;->show()V

    .line 837
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 838
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    invoke-interface {v1}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onEndShowWheel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    monitor-exit p0

    return-void

    .line 821
    .end local v0           #getMagnified:Z
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 818
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    move v0, v1

    .line 829
    goto :goto_1
.end method

.method private hideBgSelector()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/ExtWidget;->hide()V

    .line 731
    :cond_0
    return-void
.end method

.method private needUpdate(I)Z
    .locals 1
    .parameter "fgIndex"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindSession;->getBackground()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCommits:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDisplay()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method private prepareFaceWidgets()V
    .locals 5

    .prologue
    .line 614
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/rewind/ui/SelectionRect;

    .line 615
    .local v2, r:Lcom/oppo/camera/rewind/ui/SelectionRect;
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v4, v2}, Lcom/oppo/camera/rewind/ui/UiManager;->removeWidget(Lcom/oppo/camera/rewind/ui/Widget;)V

    goto :goto_0

    .line 617
    .end local v2           #r:Lcom/oppo/camera/rewind/ui/SelectionRect;
    :cond_0
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 618
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v4, 0x1e

    if-ge v0, v4, :cond_1

    .line 619
    new-instance v3, Lcom/oppo/camera/rewind/ui/SelectionRect;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-direct {v3, v4}, Lcom/oppo/camera/rewind/ui/SelectionRect;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;)V

    .line 620
    .local v3, selRect:Lcom/oppo/camera/rewind/ui/SelectionRect;
    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/SelectionRect;->hide()V

    .line 621
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/ui/SelectionRect;->setStatic(Z)V

    .line 622
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectListener:Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectListener;

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/ui/SelectionRect;->setListener(Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;)V

    .line 624
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v4, v3}, Lcom/oppo/camera/rewind/ui/UiManager;->addWidget(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 625
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 628
    .end local v0           #i:I
    .end local v3           #selRect:Lcom/oppo/camera/rewind/ui/SelectionRect;
    :cond_1
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/rewind/ui/SelectionRect;

    .line 629
    .restart local v2       #r:Lcom/oppo/camera/rewind/ui/SelectionRect;
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v4, v2}, Lcom/oppo/camera/rewind/ui/UiManager;->addWidget(Lcom/oppo/camera/rewind/ui/Widget;)V

    goto :goto_2

    .line 631
    .end local v2           #r:Lcom/oppo/camera/rewind/ui/SelectionRect;
    :cond_2
    return-void
.end method

.method private privateClear()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v7, 0x0

    .line 309
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 310
    .local v1, canvas:Landroid/graphics/Canvas;
    if-eqz v1, :cond_3

    .line 311
    invoke-virtual {v1, v13, v13, v13}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 312
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMsg:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 313
    iget v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    div-int/lit8 v4, v6, 0x2

    .line 314
    .local v4, x:I
    iget v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    div-int/lit8 v5, v6, 0x2

    .line 315
    .local v5, y:I
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMsg:Ljava/lang/String;

    int-to-float v8, v4

    int-to-float v9, v5

    iget-object v10, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 316
    iput-object v7, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMsg:Ljava/lang/String;

    .line 318
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_0
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mPostviewBytes:[B

    if-eqz v6, :cond_1

    .line 319
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mPostviewBytes:[B

    iget-object v8, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mPostviewSize:Lcom/scalado/base/Size;

    iget-object v9, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mPostviewConfig:Lcom/scalado/base/Image$Config;

    new-instance v10, Lcom/scalado/base/Size;

    iget v11, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    iget v12, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    invoke-direct {v10, v11, v12}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v11, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-static {v6, v8, v9, v10, v11}, Lcom/oppo/camera/rewind/app/ImageUtils;->convert([BLcom/scalado/base/Size;Lcom/scalado/base/Image$Config;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)Lcom/scalado/base/Image;

    move-result-object v3

    .line 323
    .local v3, image:Lcom/scalado/base/Image;
    iput-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mPostview:Lcom/scalado/base/Image;

    .line 324
    iput-object v7, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mPostviewBytes:[B

    .line 326
    .end local v3           #image:Lcom/scalado/base/Image;
    :cond_1
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mPostview:Lcom/scalado/base/Image;

    if-eqz v6, :cond_2

    move-object v6, v7

    .line 335
    check-cast v6, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/scalado/base/Size;

    iget v9, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    iget v10, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    invoke-direct {v8, v9, v10}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v9}, Lcom/oppo/camera/rewind/ui/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Lcom/scalado/base/Size;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 338
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mPostview:Lcom/scalado/base/Image;

    invoke-virtual {v6}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 339
    new-instance v2, Landroid/graphics/Rect;

    iget v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    iget v8, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    invoke-direct {v2, v13, v13, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 340
    .local v2, dst:Landroid/graphics/Rect;
    invoke-virtual {v1, v0, v7, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 341
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 342
    iput-object v7, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mPostview:Lcom/scalado/base/Image;

    .line 344
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #dst:Landroid/graphics/Rect;
    :cond_2
    iget-object v6, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 346
    :cond_3
    return-void
.end method

.method private privateCommit()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindSession;->getBackground()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->setFaceRects(IZ)V

    .line 716
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->hideBgSelector()V

    .line 717
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindSession;->getForeground()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->needUpdate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindSession;->commit()V

    .line 720
    :cond_0
    iget v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCommits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCommits:I

    .line 721
    return-void
.end method

.method private replaceAreaZoomRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "bgIndex"
    .parameter "fgIndex"
    .parameter "enlargedRect"
    .parameter "actualRect"

    .prologue
    .line 844
    const/4 v1, 0x0

    .line 845
    .local v1, replaceArea:Landroid/graphics/Rect;
    new-instance v2, Lcom/scalado/base/Rect;

    invoke-direct {v2}, Lcom/scalado/base/Rect;-><init>()V

    .line 846
    .local v2, replaceAreaCAPS:Lcom/scalado/base/Rect;
    new-instance v1, Landroid/graphics/Rect;

    .end local v1           #replaceArea:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurReplaceArea:Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 849
    .restart local v1       #replaceArea:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 850
    .local v3, zoomRect:Landroid/graphics/Rect;
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 851
    .local v0, capsRect:Lcom/scalado/base/Rect;
    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 852
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v4, v2, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->transformReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 853
    invoke-static {v2, v1}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 854
    invoke-static {v2, v3}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 855
    if-eqz p4, :cond_0

    .line 856
    invoke-virtual {p4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 859
    :cond_0
    invoke-direct {p0, v3}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->adjustZoomRect(Landroid/graphics/Rect;)V

    .line 860
    invoke-static {v3, v0}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 862
    if-eqz p3, :cond_1

    .line 863
    invoke-virtual {p3, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 865
    :cond_1
    return-void
.end method

.method private requestMagnifiedUpdate()V
    .locals 3

    .prologue
    .line 706
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/RewindSession;->getMagnifierSize()Lcom/scalado/base/Size;

    move-result-object v0

    .line 707
    .local v0, magDims:Lcom/scalado/base/Size;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMagBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Lcom/oppo/camera/rewind/ui/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Lcom/scalado/base/Size;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMagBitmap:Landroid/graphics/Bitmap;

    .line 709
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->zoomToReplacement()V

    .line 710
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->setBlur(Z)V

    .line 711
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMagBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->updateMagnified(Landroid/graphics/Bitmap;)V

    .line 712
    return-void
.end method

.method private setBgFx(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 1018
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBlurInLTW:Z

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession;->setBlur(Z)V

    .line 1022
    :cond_0
    return-void
.end method

.method private setFaceRects(IZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 634
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 635
    :goto_0
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 636
    new-instance v2, Lcom/oppo/camera/rewind/ui/SelectionRect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-direct {v2, v3}, Lcom/oppo/camera/rewind/ui/SelectionRect;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;)V

    .line 637
    invoke-virtual {v2}, Lcom/oppo/camera/rewind/ui/SelectionRect;->hide()V

    .line 638
    invoke-virtual {v2, v4}, Lcom/oppo/camera/rewind/ui/SelectionRect;->setStatic(Z)V

    .line 639
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectListener:Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectListener;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/rewind/ui/SelectionRect;->setListener(Lcom/oppo/camera/rewind/ui/SelectionRect$RectListener;)V

    .line 641
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v3, v2}, Lcom/oppo/camera/rewind/ui/UiManager;->addWidget(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 642
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/ui/SelectionRect;

    .line 647
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/SelectionRect;->hide()V

    goto :goto_1

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RectTracker;->numRects()I

    move-result v0

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-virtual {v2, p1}, Lcom/oppo/camera/rewind/app/RectTracker;->numRects(I)I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 650
    const-string v0, "ManualRewindViewer"

    const-string v2, "WARNING! rects in %d not maximal!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_2
    return-void

    .line 654
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/app/RectTracker;->numRects(I)I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/ui/SelectionRect;

    .line 658
    iget v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    iget v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/oppo/camera/rewind/ui/SelectionRect;->updateLayout(II)V

    .line 659
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v2, v0}, Lcom/oppo/camera/rewind/ui/UiManager;->drawFirst(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 660
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mTrackedFaces:[[Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    aget-object v2, v2, p1

    aget-object v2, v2, v1

    .line 661
    iget-object v3, v2, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/rewind/ui/SelectionRect;->setRect(Landroid/graphics/Rect;)V

    .line 662
    invoke-virtual {v0, v2}, Lcom/oppo/camera/rewind/ui/SelectionRect;->setObject(Ljava/lang/Object;)V

    .line 663
    iget-boolean v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDrawFaceRects:Z

    invoke-virtual {v0, v2}, Lcom/oppo/camera/rewind/ui/SelectionRect;->setDraw(Z)V

    .line 664
    if-eqz p2, :cond_4

    .line 666
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/SelectionRect;->zoomIn()V

    .line 668
    :cond_4
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/SelectionRect;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 671
    :catch_0
    move-exception v0

    .line 672
    const-string v2, "ManualRewindViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when setting face rects for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private setupZoomRect(IILandroid/graphics/Rect;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 893
    const/4 v1, 0x0

    .line 894
    new-instance v2, Lcom/scalado/base/Rect;

    invoke-direct {v2}, Lcom/scalado/base/Rect;-><init>()V

    .line 895
    if-ne p1, p2, :cond_4

    .line 896
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget-object v3, v3, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 900
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 901
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget-object v3, v3, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 905
    :cond_1
    if-eq p1, p2, :cond_2

    .line 906
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget v4, v4, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mId:I

    invoke-virtual {v3, p1, v4}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v3

    .line 907
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget v5, v5, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mId:I

    invoke-virtual {v4, p2, v5}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v4

    .line 908
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 909
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 910
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 911
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    iget v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mNumImages:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v0, v5}, Lcom/oppo/camera/rewind/app/RectTracker;->deltaX(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 912
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    iget v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mNumImages:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v0, v6}, Lcom/oppo/camera/rewind/app/RectTracker;->deltaY(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 913
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 914
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 915
    const/16 v3, 0x32

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 918
    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget-object v3, v3, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget-object v4, v4, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    iget v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFaceRectScale:F

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 920
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v4, v0}, Lcom/oppo/camera/rewind/app/RewindSession;->setMaxTranslation(I)V

    .line 921
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/rewind/app/RewindSession;->setFeathering(I)V

    .line 924
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 925
    new-instance v3, Lcom/scalado/base/Rect;

    invoke-direct {v3}, Lcom/scalado/base/Rect;-><init>()V

    .line 926
    invoke-static {v1, v2}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 927
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v4, v2, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->transformReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 928
    invoke-static {v2, v1}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 929
    invoke-static {v2, v0}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 932
    const/high16 v1, 0x4060

    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 933
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 934
    invoke-static {v0, v1, v1}, Lcom/oppo/camera/rewind/ui/Layout;->resizeRect(Landroid/graphics/Rect;II)V

    .line 936
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMaxZoomSize:Lcom/scalado/base/Size;

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/rewind/ui/Layout;->ensureRectMaxSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V

    .line 937
    invoke-static {v0, v3}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 938
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/rewind/app/RewindSession;->setMagnifiedPreviewRect(Lcom/scalado/base/Rect;)V

    .line 940
    if-eqz p3, :cond_3

    .line 941
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 943
    :cond_3
    return-void

    .line 897
    :cond_4
    if-eq p1, p2, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget v3, v3, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mId:I

    if-ltz v3, :cond_0

    .line 898
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget v3, v3, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mId:I

    invoke-virtual {v1, p2, v3}, Lcom/oppo/camera/rewind/app/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private startAsyncDetectFaces()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 537
    iput v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mState:I

    .line 540
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/rewind/ui/SelectionRect;

    .line 541
    .local v1, r:Lcom/oppo/camera/rewind/ui/SelectionRect;
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v3, v1}, Lcom/oppo/camera/rewind/ui/UiManager;->removeWidget(Lcom/oppo/camera/rewind/ui/Widget;)V

    goto :goto_0

    .line 549
    .end local v1           #r:Lcom/oppo/camera/rewind/ui/SelectionRect;
    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/ui/UiManager;->start()V

    .line 551
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/app/RewindSession;->getSourceManager()Lcom/oppo/camera/rewind/app/SourceManager;

    move-result-object v2

    .line 553
    .local v2, srcMgr:Lcom/oppo/camera/rewind/app/SourceManager;
    new-instance v3, Lcom/oppo/camera/rewind/app/RectTracker;

    iget v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mNumImages:I

    invoke-direct {v3, v2, v4}, Lcom/oppo/camera/rewind/app/RectTracker;-><init>(Lcom/oppo/camera/rewind/app/SourceManager;I)V

    iput-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    .line 554
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    iget v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    iget v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    invoke-virtual {v3, v4, v5}, Lcom/oppo/camera/rewind/app/RectTracker;->setScreenDims(II)V

    .line 555
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    const/high16 v4, 0x4000

    const/high16 v5, 0x4020

    invoke-virtual {v3, v4, v5}, Lcom/oppo/camera/rewind/app/RectTracker;->setRectScaling(FF)V

    .line 556
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/app/RectTracker;->setFaceDetectionDims(Lcom/scalado/base/Size;)V

    .line 557
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mAsyncTracker:Lcom/oppo/camera/rewind/app/AsyncTracker;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/app/AsyncTracker;->setTracker(Lcom/oppo/camera/rewind/app/RectTracker;)V

    .line 558
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mAsyncTracker:Lcom/oppo/camera/rewind/app/AsyncTracker;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTrackerListener:Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRectTrackerListener;

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/app/AsyncTracker;->setListener(Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;)V

    .line 560
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mJobIndicator:Lcom/oppo/camera/rewind/ui/JobIndicator;

    invoke-virtual {v3, v4, v6}, Lcom/oppo/camera/rewind/app/RewindSession;->setJobListener(Lcom/oppo/camera/rewind/app/JobListener;I)V

    .line 561
    iget-boolean v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mJobIndicatorOnFaceDet:Z

    if-eqz v3, :cond_1

    .line 562
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mJobIndicator:Lcom/oppo/camera/rewind/ui/JobIndicator;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/ui/JobIndicator;->onJobStarted(I)V

    .line 569
    :cond_1
    return-void
.end method

.method private declared-synchronized startHideWheel(Z)V
    .locals 3
    .parameter "commit"

    .prologue
    .line 985
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 986
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheelGroup:Lcom/oppo/camera/rewind/ui/Group;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/Group;->hide()V

    .line 987
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/RewindSession;->getForeground()I

    move-result v1

    iput v1, v0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mCurIndex:I

    .line 988
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->setBgFx(Z)V

    .line 989
    if-nez p1, :cond_0

    .line 990
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->setReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 994
    :goto_0
    new-instance v0, Lcom/scalado/base/Size;

    iget v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mHalfSize:Lcom/scalado/base/Size;

    .line 995
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mHalfSize:Lcom/scalado/base/Size;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->lockScreen(ILcom/scalado/base/Size;)V

    .line 996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;

    .line 1001
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onStartHideWheel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    monitor-exit p0

    return-void

    .line 992
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->privateCommit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startShowWheel(Lcom/oppo/camera/rewind/ui/SelectionRect;)V
    .locals 7
    .parameter

    .prologue
    .line 740
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 741
    invoke-virtual {p1}, Lcom/oppo/camera/rewind/ui/SelectionRect;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 742
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurReplaceArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 743
    invoke-virtual {p1}, Lcom/oppo/camera/rewind/ui/SelectionRect;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    .line 744
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget v0, v0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mCurIndex:I

    if-gez v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/app/RewindSession;->getBackground()I

    move-result v2

    iput v2, v0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mCurIndex:I

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget v2, v2, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mCurIndex:I

    invoke-virtual {v0, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->setForeground(I)V

    .line 749
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget v2, v2, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mCurIndex:I

    invoke-virtual {v0, v2}, Lcom/oppo/camera/rewind/ui/Wheel;->select(I)V

    .line 750
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/app/RewindSession;->getBackground()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/rewind/ui/Wheel;->markPosition(I)V

    .line 752
    const-string v0, "ManualRewindViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Face id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget v3, v3, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 754
    const-string v0, "ManualRewindViewer"

    const-string v2, "!= != != Rects not equal!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/ui/SelectionRect;

    .line 757
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/SelectionRect;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 760
    :cond_2
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 763
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 764
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 765
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v5}, Lcom/oppo/camera/rewind/app/RewindSession;->getBackground()I

    move-result v5

    iget-object v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurFace:Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;

    iget v6, v6, Lcom/oppo/camera/rewind/app/ManualRewindViewer$TrackedFace;->mId:I

    invoke-virtual {v4, v5, v6}, Lcom/oppo/camera/rewind/app/RectTracker;->getSafeEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 768
    invoke-static {v3, v0}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 769
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v3, v0, v0}, Lcom/oppo/camera/rewind/app/RewindSession;->setReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 770
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 773
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 774
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/app/RewindSession;->getBackground()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/RewindSession;->getForeground()I

    move-result v4

    invoke-direct {p0, v3, v4, v1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->setupZoomRect(IILandroid/graphics/Rect;)V

    .line 776
    invoke-static {v1, v0}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 777
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 778
    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    .line 779
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFixedMagniferSize:Z

    if-nez v0, :cond_4

    .line 780
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    .line 781
    const/high16 v3, 0x3fc0

    invoke-direct {p0, v1, v3, v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->calculateMagnifierSize(Landroid/graphics/Rect;FLcom/scalado/base/Size;)V

    .line 785
    :goto_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/rewind/app/RewindSession;->setMagnifierSize(Lcom/scalado/base/Size;)V

    .line 789
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    invoke-static {v2, v1, v0}, Lcom/oppo/camera/rewind/ui/Layout;->resizeRect(Landroid/graphics/Rect;II)V

    .line 790
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFixedMagniferSize:Z

    if-eqz v0, :cond_3

    .line 791
    iget v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    iget v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    invoke-static {v2, v0, v1}, Lcom/oppo/camera/rewind/ui/Layout;->centerRect(Landroid/graphics/Rect;II)V

    .line 793
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/rewind/ui/Wheel;->setPosition(Landroid/graphics/Rect;)V

    .line 794
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/RewindSession;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/ui/Wheel;->setSize(I)V

    .line 795
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/RewindSession;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/ui/Wheel;->setPivot(I)V

    .line 796
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/rewind/ui/Wheel;->getRect(Landroid/graphics/Rect;)V

    .line 799
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->hideBgSelector()V

    .line 803
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onStartShowWheel()V

    .line 805
    new-instance v0, Lcom/scalado/base/Size;

    iget v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mHalfSize:Lcom/scalado/base/Size;

    .line 808
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mHalfSize:Lcom/scalado/base/Size;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/rewind/app/RewindSession;->lockScreen(ILcom/scalado/base/Size;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 815
    monitor-exit p0

    return-void

    .line 783
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method private zoomToReplacement()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1025
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1026
    .local v0, zoomRect:Landroid/graphics/Rect;
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    .line 1027
    .local v1, zoomRectC:Lcom/scalado/base/Rect;
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/app/RewindSession;->getBackground()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v3}, Lcom/oppo/camera/rewind/app/RewindSession;->getForeground()I

    move-result v3

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->replaceAreaZoomRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1029
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 1030
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v2, v1, v4}, Lcom/oppo/camera/rewind/app/RewindSession;->setZoomRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1031
    return-void
.end method


# virtual methods
.method public clearDisplay(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMsg:Ljava/lang/String;

    .line 264
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mSurfaceChanged:Z

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->privateClear()V

    .line 267
    :cond_0
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->startHideWheel(Z)V

    .line 250
    return-void
.end method

.method public display()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mActive:Z

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCommits:I

    .line 358
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mSurfaceChanged:Z

    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->onDisplay()V

    .line 363
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 462
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    if-nez v1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 465
    :cond_1
    iget v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 468
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/rewind/ui/UiManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 472
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    if-nez v2, :cond_1

    .line 482
    :cond_0
    :goto_0
    return v0

    .line 475
    :cond_1
    iget v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mState:I

    if-ne v2, v1, :cond_0

    .line 478
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 479
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->privateCommit()V

    move v0, v1

    .line 480
    goto :goto_0

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/rewind/ui/UiManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSurfaceChanged(II)V
    .locals 11
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v8, 0x3fe0

    const-wide v6, 0x3fd3333333333333L

    .line 486
    iput-boolean v10, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 487
    iput p1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    .line 488
    iput p2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    .line 489
    new-instance v3, Lcom/scalado/base/Size;

    invoke-direct {v3, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mScreenDims:Lcom/scalado/base/Size;

    .line 490
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v3, p1, p2}, Lcom/oppo/camera/rewind/ui/UiManager;->setSize(II)V

    .line 491
    iget v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinScreenWidth:I

    .line 492
    iget v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinScreenHeight:I

    .line 493
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinReplSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 494
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinReplSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 496
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMaxZoomSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 497
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMaxZoomSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 498
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinZoomSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 499
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinZoomSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 501
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinLensSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 502
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMinLensSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 504
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMagnifierMinSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 505
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMagnifierMinSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 506
    iget v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    iget v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 508
    .local v2, wh:I
    int-to-float v3, v2

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget v4, v4, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->relRimW:F

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;

    invoke-virtual {v5}, Lcom/oppo/camera/rewind/ui/Wheel;->getIndicatorExtraY()F

    move-result v5

    add-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 510
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v3, v2}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 511
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v3, v2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 513
    iget v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x4420

    div-float/2addr v3, v4

    const/high16 v4, 0x428c

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 514
    .local v1, size:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v10, v10, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 515
    .local v0, jobRect:Landroid/graphics/Rect;
    iget v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    iget v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    invoke-static {v0, v3, v4}, Lcom/oppo/camera/rewind/ui/Layout;->centerRect(Landroid/graphics/Rect;II)V

    .line 516
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mJobIndicator:Lcom/oppo/camera/rewind/ui/JobIndicator;

    invoke-virtual {v3, v0}, Lcom/oppo/camera/rewind/ui/JobIndicator;->setPos(Landroid/graphics/Rect;)V

    .line 518
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;

    iget v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I

    iget v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4, v5, v6}, Lcom/oppo/camera/rewind/app/BitmapManager;->createBitmaps(IILandroid/graphics/Bitmap$Config;)V

    .line 520
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/BitmapManager;->get()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/camera/rewind/app/BitmapManager;->display(Landroid/graphics/Bitmap;)V

    .line 521
    iget-boolean v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mSurfaceChanged:Z

    if-nez v3, :cond_0

    .line 522
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->onDisplay()V

    .line 523
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mSurfaceChanged:Z

    .line 524
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mMsg:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->privateClear()V

    .line 529
    :cond_0
    iget v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBackgroundIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 530
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->requestRender()V

    .line 534
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 430
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mIsAnimationStarted:Z

    if-eqz v5, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v3

    .line 433
    :cond_1
    iget v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mState:I

    if-ne v5, v4, :cond_0

    iget-boolean v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBlockedUntilUpdated:Z

    if-nez v5, :cond_0

    .line 436
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v5}, Lcom/oppo/camera/rewind/ui/UiManager;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 439
    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;

    if-nez v5, :cond_0

    .line 443
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v3, p1}, Lcom/oppo/camera/rewind/ui/UiManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 444
    goto :goto_0

    .line 446
    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v3, v3, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 448
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 449
    .local v0, r:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v3, v3, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

    invoke-interface {v3, v0}, Lcom/oppo/camera/rewind/app/ExtWidget;->getRect(Landroid/graphics/Rect;)V

    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 451
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 452
    .local v2, y:I
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 453
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v3, v3, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

    invoke-interface {v3}, Lcom/oppo/camera/rewind/app/ExtWidget;->show()V

    .end local v0           #r:Landroid/graphics/Rect;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_3
    :goto_1
    move v3, v4

    .line 458
    goto :goto_0

    .line 455
    .restart local v0       #r:Landroid/graphics/Rect;
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_4
    iget-object v3, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    iget-object v3, v3, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

    invoke-interface {v3}, Lcom/oppo/camera/rewind/app/ExtWidget;->hide()V

    goto :goto_1
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/BitmapManager;->clear()V

    .line 407
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->reset()V

    .line 408
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/UiManager;->requestDraw()V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBlockedUntilUpdated:Z

    .line 301
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->requestUpdate()V

    goto :goto_0
.end method

.method public requestDraw()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/UiManager;->requestDraw()V

    .line 306
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    if-nez v0, :cond_0

    .line 703
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/BitmapManager;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 698
    if-nez v0, :cond_1

    .line 699
    const-string v0, "ManualRewindViewer"

    const-string v1, "(Render) Out of bitmaps!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 702
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/rewind/app/RewindSession;->render(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public requestUpdate()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/BitmapManager;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 686
    if-nez v0, :cond_0

    .line 687
    const-string v0, "ManualRewindViewer"

    const-string v1, "(Update) Out of bitmaps!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/rewind/app/RewindSession;->update(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 371
    iput v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mState:I

    .line 372
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/RewindSession;->finish()V

    .line 375
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFirstTime:Z

    .line 378
    iput-object v2, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    .line 379
    iput v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mEntriesReady:I

    .line 380
    iput v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mThumbsReady:I

    .line 381
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mActive:Z

    .line 382
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->hideBgSelector()V

    .line 383
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mJobIndicator:Lcom/oppo/camera/rewind/ui/JobIndicator;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/JobIndicator;->hide()V

    .line 384
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/UiManager;->stop()V

    .line 386
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mAsyncTracker:Lcom/oppo/camera/rewind/app/AsyncTracker;

    .line 387
    .local v0, tracker:Lcom/oppo/camera/rewind/app/AsyncTracker;
    iput-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mAsyncTracker:Lcom/oppo/camera/rewind/app/AsyncTracker;

    .line 388
    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {v0, v2}, Lcom/oppo/camera/rewind/app/AsyncTracker;->setListener(Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;)V

    .line 390
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/AsyncTracker;->finish()V

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    if-eqz v1, :cond_2

    .line 394
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    invoke-interface {v1}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onExit()V

    .line 396
    :cond_2
    iput-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mPostview:Lcom/scalado/base/Image;

    .line 397
    iput-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mPostviewBytes:[B

    .line 398
    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    if-nez v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/app/RewindSession;->outputTo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selectBackground(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 234
    iput p1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBackgroundIndex:I

    .line 235
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v2, p1}, Lcom/oppo/camera/rewind/app/RewindSession;->setBackground(I)V

    .line 236
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->setFaceRects(IZ)V

    .line 238
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/app/BitmapManager;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/app/RewindSession;->getPreviewBackground()Lcom/scalado/base/Image;

    move-result-object v1

    .line 240
    .local v1, img:Lcom/scalado/base/Image;
    invoke-virtual {v1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 241
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;

    invoke-virtual {v2, v0}, Lcom/oppo/camera/rewind/app/BitmapManager;->display(Landroid/graphics/Bitmap;)V

    .line 242
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/ui/UiManager;->requestDraw()V

    .line 243
    return-void
.end method

.method public setConfig(Lcom/oppo/camera/rewind/app/RewindViewerConfig;)V
    .locals 8
    .parameter "config"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    .line 184
    new-instance v0, Lcom/oppo/camera/rewind/ui/Wheel;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-direct {v0, v1}, Lcom/oppo/camera/rewind/ui/Wheel;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;

    .line 185
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;

    iget-object v1, p1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->wheelBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->wheelIndicatorBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->relCenter:Landroid/graphics/PointF;

    iget v4, p1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->relR:F

    iget v5, p1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->relRimW:F

    iget v6, p1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->indicatorY:F

    iget v7, p1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->indicatorExtraY:F

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/camera/rewind/ui/Wheel;->setLayoutParams(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFFF)V

    .line 188
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheelCallback:Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyWheelCallback;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/ui/Wheel;->setCallback(Lcom/oppo/camera/rewind/ui/Wheel$WheelCallback;)V

    .line 189
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/ui/UiManager;->addWidget(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 190
    new-instance v0, Lcom/oppo/camera/rewind/ui/Group;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-direct {v0, v1}, Lcom/oppo/camera/rewind/ui/Group;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheelGroup:Lcom/oppo/camera/rewind/ui/Group;

    .line 191
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheelGroup:Lcom/oppo/camera/rewind/ui/Group;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/ui/Group;->addChild(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 193
    new-instance v0, Lcom/oppo/camera/rewind/ui/JobIndicator;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    iget-object v2, p1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->jobbingBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/rewind/ui/JobIndicator;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mJobIndicator:Lcom/oppo/camera/rewind/ui/JobIndicator;

    .line 194
    new-instance v0, Lcom/oppo/camera/rewind/ui/Background;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-direct {v0, v1}, Lcom/oppo/camera/rewind/ui/Background;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBgLayer:Lcom/oppo/camera/rewind/ui/Background;

    .line 195
    return-void
.end method

.method public setRewindSession(Lcom/oppo/camera/rewind/app/RewindSession;I)V
    .locals 4
    .parameter "rewind"
    .parameter "numImages"

    .prologue
    const/4 v3, 0x0

    .line 208
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    .line 209
    iput p2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mNumImages:I

    .line 210
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    new-instance v1, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;-><init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ManualRewindViewer$1;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession;->setCallback(Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;)V

    .line 215
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    sget-object v1, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;->QUALITY:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindSession;->setPriority(Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;)V

    .line 217
    iput v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mEntriesReady:I

    .line 218
    iput v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mThumbsReady:I

    .line 223
    new-instance v0, Lcom/oppo/camera/rewind/app/AsyncTracker;

    iget v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mNumImages:I

    invoke-direct {v0, v1}, Lcom/oppo/camera/rewind/app/AsyncTracker;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mAsyncTracker:Lcom/oppo/camera/rewind/app/AsyncTracker;

    .line 224
    return-void
.end method

.method public showPostview([BLcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V
    .locals 1
    .parameter "buffer"
    .parameter "dims"
    .parameter "config"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mPostviewBytes:[B

    .line 285
    iput-object p2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mPostviewSize:Lcom/scalado/base/Size;

    .line 286
    iput-object p3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mPostviewConfig:Lcom/scalado/base/Image$Config;

    .line 287
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mSurfaceChanged:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->privateClear()V

    .line 290
    :cond_0
    return-void
.end method

.method public startBenchmark()V
    .locals 2

    .prologue
    .line 414
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mT0:J

    .line 415
    return-void
.end method
