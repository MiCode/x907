.class public Lcom/oppo/ImageScaleView/ActionHandler;
.super Ljava/lang/Object;
.source "ActionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;
    }
.end annotation


# instance fields
.field private final ZOOM_PARAM1:F

.field private final ZOOM_PARAM2:F

.field private isRebounding:Z

.field private mActualScale:D

.field private mBezierScrollToolS:Lcom/oppo/ImageScaleView/BezierScrollTool;

.field private mBezierScrollToolX:Lcom/oppo/ImageScaleView/BezierScrollTool;

.field private mBezierScrollToolY:Lcom/oppo/ImageScaleView/BezierScrollTool;

.field private final mCenterPoint:Landroid/graphics/PointF;

.field private mInitRect:Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;

.field private mIsFromBurst:Z

.field private mIsRequestReboundFinish:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPreviousLocationRecord:Lcom/oppo/ImageScaleView/PreviousLocationRecord;

.field private mReboundHandler:Landroid/os/Handler;

.field private mReboundThread:Landroid/os/HandlerThread;

.field private mRedrawCallback:Ljava/lang/Runnable;

.field private mScaleHanlder:Lcom/oppo/ImageScaleView/ScaleHanlder;

.field private final mScreenRect:Landroid/graphics/RectF;

.field private mSwitchCurveToolX:Lcom/oppo/ImageScaleView/SwitchCurveTool;

.field private mSwitchCurveToolY:Lcom/oppo/ImageScaleView/SwitchCurveTool;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Lcom/oppo/ImageScaleView/ImageScaleView;Landroid/os/Handler;Ljava/lang/Runnable;IIZ)V
    .locals 4
    .parameter "browseView"
    .parameter "handler"
    .parameter "redrawCallback"
    .parameter "viewWidth"
    .parameter "viewHeight"
    .parameter "isFromBurst"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/oppo/ImageScaleView/BezierScrollTool;

    invoke-direct {v0}, Lcom/oppo/ImageScaleView/BezierScrollTool;-><init>()V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolX:Lcom/oppo/ImageScaleView/BezierScrollTool;

    .line 25
    new-instance v0, Lcom/oppo/ImageScaleView/BezierScrollTool;

    invoke-direct {v0}, Lcom/oppo/ImageScaleView/BezierScrollTool;-><init>()V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolY:Lcom/oppo/ImageScaleView/BezierScrollTool;

    .line 26
    new-instance v0, Lcom/oppo/ImageScaleView/BezierScrollTool;

    invoke-direct {v0}, Lcom/oppo/ImageScaleView/BezierScrollTool;-><init>()V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolS:Lcom/oppo/ImageScaleView/BezierScrollTool;

    .line 28
    new-instance v0, Lcom/oppo/ImageScaleView/SwitchCurveTool;

    invoke-direct {v0}, Lcom/oppo/ImageScaleView/SwitchCurveTool;-><init>()V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolX:Lcom/oppo/ImageScaleView/SwitchCurveTool;

    .line 29
    new-instance v0, Lcom/oppo/ImageScaleView/SwitchCurveTool;

    invoke-direct {v0}, Lcom/oppo/ImageScaleView/SwitchCurveTool;-><init>()V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolY:Lcom/oppo/ImageScaleView/SwitchCurveTool;

    .line 166
    iput-boolean v1, p0, Lcom/oppo/ImageScaleView/ActionHandler;->isRebounding:Z

    .line 167
    iput-boolean v1, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mIsRequestReboundFinish:Z

    .line 176
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    .line 195
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mCenterPoint:Landroid/graphics/PointF;

    .line 207
    const v0, 0x3f804189

    iput v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->ZOOM_PARAM1:F

    .line 208
    const v0, 0x40133333

    iput v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->ZOOM_PARAM2:F

    .line 75
    iput-object p2, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mMainHandler:Landroid/os/Handler;

    .line 76
    iput-object p3, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mRedrawCallback:Ljava/lang/Runnable;

    .line 77
    iput p4, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewWidth:I

    .line 78
    iput p5, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewHeight:I

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewHeight:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mReboundThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mReboundThread:Landroid/os/HandlerThread;

    .line 81
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mReboundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mReboundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mReboundHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/oppo/ImageScaleView/ScaleHanlder;

    invoke-direct {v0}, Lcom/oppo/ImageScaleView/ScaleHanlder;-><init>()V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mScaleHanlder:Lcom/oppo/ImageScaleView/ScaleHanlder;

    .line 84
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mMatrix:Landroid/graphics/Matrix;

    .line 85
    new-instance v0, Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;

    invoke-direct {v0, p0}, Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;-><init>(Lcom/oppo/ImageScaleView/ActionHandler;)V

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mInitRect:Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;

    .line 86
    iput-boolean p6, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mIsFromBurst:Z

    .line 87
    invoke-static {}, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->instance()Lcom/oppo/ImageScaleView/PreviousLocationRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mPreviousLocationRecord:Lcom/oppo/ImageScaleView/PreviousLocationRecord;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/ImageScaleView/ActionHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/ImageScaleView/ActionHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/oppo/ImageScaleView/ActionHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/oppo/ImageScaleView/ActionHandler;->isRebounding:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolX:Lcom/oppo/ImageScaleView/SwitchCurveTool;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolY:Lcom/oppo/ImageScaleView/SwitchCurveTool;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/PreviousLocationRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mPreviousLocationRecord:Lcom/oppo/ImageScaleView/PreviousLocationRecord;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/graphics/RectF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/ImageScaleView/ActionHandler;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolS:Lcom/oppo/ImageScaleView/BezierScrollTool;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolX:Lcom/oppo/ImageScaleView/BezierScrollTool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolY:Lcom/oppo/ImageScaleView/BezierScrollTool;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/ImageScaleView/ActionHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mIsRequestReboundFinish:Z

    return v0
.end method

.method static synthetic access$602(Lcom/oppo/ImageScaleView/ActionHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mIsRequestReboundFinish:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oppo/ImageScaleView/ActionHandler;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/oppo/ImageScaleView/ActionHandler;->limitCurrentScale(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/ImageScaleView/ActionHandler;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mRedrawCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method private handleReboundAction(FFLandroid/graphics/PointF;F)V
    .locals 2
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "imageScalePoint"
    .parameter "endScale"

    .prologue
    .line 343
    invoke-static {p1, p2}, Lcom/oppo/ImageScaleView/MathTools;->squares(FF)F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->isRebounding:Z

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mReboundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/ImageScaleView/ActionHandler$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oppo/ImageScaleView/ActionHandler$1;-><init>(Lcom/oppo/ImageScaleView/ActionHandler;FFLandroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method

.method private limitCurrentScale(F)F
    .locals 8
    .parameter "scale"

    .prologue
    const-wide/high16 v6, 0x4018

    const-wide/high16 v4, 0x3fe0

    .line 178
    iget-wide v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    .line 179
    .local v0, preTotalScale:D
    iget-wide v2, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_1

    .line 180
    iget-wide v2, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    float-to-double v4, p1

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    .line 188
    :cond_0
    :goto_0
    return p1

    .line 181
    :cond_1
    iget-wide v2, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 182
    iput-wide v4, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    .line 183
    div-double v2, v4, v0

    double-to-float p1, v2

    goto :goto_0

    .line 184
    :cond_2
    iget-wide v2, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    cmpl-double v2, v2, v6

    if-lez v2, :cond_0

    .line 185
    iput-wide v6, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    .line 186
    div-double v2, v6, v0

    double-to-float p1, v2

    goto :goto_0
.end method


# virtual methods
.method public drawCurrentBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "canvas"
    .parameter "b"
    .parameter "p"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 133
    return-void
.end method

.method public getCurrentBitampRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 137
    .local v0, rect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mInitRect:Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;

    invoke-virtual {v1, v0}, Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;->copyTo(Landroid/graphics/RectF;)V

    .line 138
    iget-object v1, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 139
    return-object v0
.end method

.method public handleDoubleMoveAction(Landroid/view/MotionEvent;Z)V
    .locals 10
    .parameter "event"
    .parameter "needReScale"

    .prologue
    .line 210
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 211
    .local v1, pointX1:F
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 212
    .local v3, pointY1:F
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 213
    .local v2, pointX2:F
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 215
    .local v4, pointY2:F
    sub-float v6, v1, v2

    sub-float v7, v3, v4

    invoke-static {v6, v7}, Lcom/oppo/ImageScaleView/MathTools;->computePointDistance(FF)F

    move-result v0

    .line 216
    .local v0, mCurrentPointSpan:F
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mScaleHanlder:Lcom/oppo/ImageScaleView/ScaleHanlder;

    invoke-virtual {v6, v0}, Lcom/oppo/ImageScaleView/ScaleHanlder;->putPointToArray(F)Z

    .line 218
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mScaleHanlder:Lcom/oppo/ImageScaleView/ScaleHanlder;

    invoke-virtual {v6}, Lcom/oppo/ImageScaleView/ScaleHanlder;->getScaleIncrement()F

    move-result v5

    .line 219
    .local v5, scaleIncrement:F
    iget-wide v6, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    const-wide/high16 v8, 0x3ff0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    iget-wide v6, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    const-wide/high16 v8, 0x4010

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    if-eqz p2, :cond_2

    .line 220
    float-to-double v6, v5

    const-wide v8, 0x3ff00068db8bac71L

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 221
    const v6, 0x3f804189

    mul-float/2addr v5, v6

    .line 230
    :cond_0
    :goto_0
    invoke-direct {p0, v5}, Lcom/oppo/ImageScaleView/ActionHandler;->limitCurrentScale(F)F

    move-result v5

    .line 233
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mCenterPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mCenterPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v5, v5, v7, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 235
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mMainHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mRedrawCallback:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    return-void

    .line 222
    :cond_1
    float-to-double v6, v5

    const-wide v8, 0x3fefff2e48e8a71eL

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 223
    const v6, 0x3f804189

    div-float/2addr v5, v6

    goto :goto_0

    .line 224
    :cond_2
    iget-wide v6, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    const-wide/high16 v8, 0x3ff0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    const/high16 v6, 0x3f80

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_3

    .line 226
    const/high16 v6, 0x3f80

    sub-float v6, v5, v6

    float-to-double v6, v6

    iget-wide v8, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    mul-double/2addr v6, v8

    const-wide v8, 0x4002666660000000L

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0

    add-double/2addr v6, v8

    double-to-float v5, v6

    goto :goto_0

    .line 227
    :cond_3
    iget-wide v6, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    const-wide/high16 v8, 0x4010

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-lez v6, :cond_0

    .line 228
    const/high16 v6, 0x3f80

    sub-float v6, v5, v6

    float-to-double v6, v6

    iget-wide v8, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0

    add-double/2addr v6, v8

    double-to-float v5, v6

    goto :goto_0
.end method

.method public handleDownAction(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mPreviousLocationRecord:Lcom/oppo/ImageScaleView/PreviousLocationRecord;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->recordPreviousCoordinate(FF)V

    .line 144
    return-void
.end method

.method public handleFlingAction(Landroid/view/MotionEvent;FFILandroid/graphics/RectF;)V
    .locals 8
    .parameter "event"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "mode"
    .parameter "r"

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->isRebounding:Z

    if-eqz v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v7, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mReboundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oppo/ImageScaleView/ActionHandler$2;

    move-object v1, p0

    move v2, p4

    move v3, p2

    move v4, p3

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/oppo/ImageScaleView/ActionHandler$2;-><init>(Lcom/oppo/ImageScaleView/ActionHandler;IFFLandroid/graphics/RectF;Landroid/view/MotionEvent;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public handleMoveAction(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
    .locals 10
    .parameter "event"
    .parameter "r"

    .prologue
    const v9, 0x3a83126f

    const/4 v8, 0x0

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 148
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 149
    .local v2, y:F
    iget-object v4, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mPreviousLocationRecord:Lcom/oppo/ImageScaleView/PreviousLocationRecord;

    invoke-virtual {v4, v0}, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->getDistanceX(F)F

    move-result v1

    .line 150
    .local v1, xTranslate:F
    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    cmpl-float v4, v1, v8

    if-gtz v4, :cond_1

    :cond_0
    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    cmpg-float v4, v1, v8

    if-gez v4, :cond_2

    .line 151
    :cond_1
    float-to-double v4, v1

    const-wide v6, 0x3ff4cccccccccccdL

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 153
    :cond_2
    iget-wide v4, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    const-wide v6, 0x3feff7ced916872bL

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    iget-wide v4, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    const-wide v6, 0x3ff004189374bc6aL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 154
    iget-object v4, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 162
    :goto_0
    iget-object v4, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mMainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mRedrawCallback:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    iget-object v4, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mPreviousLocationRecord:Lcom/oppo/ImageScaleView/PreviousLocationRecord;

    invoke-virtual {v4, v0, v2}, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->recordPreviousCoordinate(FF)V

    .line 164
    return-void

    .line 156
    :cond_3
    iget-object v4, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mPreviousLocationRecord:Lcom/oppo/ImageScaleView/PreviousLocationRecord;

    invoke-virtual {v4, v2}, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->getDistanceY(F)F

    move-result v3

    .line 157
    .local v3, yTranslate:F
    iget-object v4, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v9

    iget v5, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v9

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 158
    :cond_4
    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    .line 159
    :cond_5
    iget-object v4, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method public handleReboundAction(Landroid/view/MotionEvent;)V
    .locals 19
    .parameter "event"

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->isRebounding:Z

    if-eqz v15, :cond_0

    .line 241
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mIsRequestReboundFinish:Z

    .line 340
    :goto_0
    return-void

    .line 244
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 245
    .local v2, bitmapRect:Landroid/graphics/RectF;
    const/high16 v3, 0x3f80

    .line 246
    .local v3, deltaScale:F
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    const-wide/high16 v17, 0x4010

    cmpl-double v15, v15, v17

    if-lez v15, :cond_5

    .line 247
    const-wide/high16 v15, 0x4010

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    double-to-float v3, v15

    .line 251
    :cond_1
    :goto_1
    new-instance v10, Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {v10, v15}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 252
    .local v10, m:Landroid/graphics/Matrix;
    const/high16 v15, 0x3f80

    cmpl-float v15, v3, v15

    if-eqz v15, :cond_2

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    add-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    add-float v16, v16, v17

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v10, v3, v3, v15, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 262
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mInitRect:Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;

    invoke-virtual {v15, v2}, Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;->copyTo(Landroid/graphics/RectF;)V

    .line 263
    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 265
    const/4 v4, 0x0

    .line 266
    .local v4, dx:F
    const/4 v5, 0x0

    .line 268
    .local v5, dy:F
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    const-wide v17, 0x3ff004189374bc6aL

    cmpg-double v15, v15, v17

    if-gez v15, :cond_6

    .line 269
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v16

    sub-float v4, v15, v16

    .line 270
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    sub-float v5, v15, v16

    .line 325
    :cond_3
    :goto_2
    const/4 v6, 0x0

    .line 326
    .local v6, endScale:F
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    const-wide/high16 v17, 0x3ff0

    cmpg-double v15, v15, v17

    if-gez v15, :cond_14

    .line 327
    const/high16 v6, 0x3f80

    .line 338
    :cond_4
    :goto_3
    new-instance v7, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    add-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    add-float v16, v16, v17

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    move/from16 v0, v16

    invoke-direct {v7, v15, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 339
    .local v7, imageScalePoint:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v7, v6}, Lcom/oppo/ImageScaleView/ActionHandler;->handleReboundAction(FFLandroid/graphics/PointF;F)V

    goto/16 :goto_0

    .line 248
    .end local v4           #dx:F
    .end local v5           #dy:F
    .end local v6           #endScale:F
    .end local v7           #imageScalePoint:Landroid/graphics/PointF;
    .end local v10           #m:Landroid/graphics/Matrix;
    :cond_5
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    const-wide/high16 v17, 0x3ff0

    cmpg-double v15, v15, v17

    if-gez v15, :cond_1

    .line 249
    const-wide/high16 v15, 0x3ff0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    double-to-float v3, v15

    goto/16 :goto_1

    .line 277
    .restart local v4       #dx:F
    .restart local v5       #dy:F
    .restart local v10       #m:Landroid/graphics/Matrix;
    :cond_6
    iget v15, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_8

    .line 278
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    iget v0, v2, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    sub-float v4, v15, v16

    .line 301
    :cond_7
    :goto_4
    iget v15, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_e

    .line 302
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    iget v0, v2, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    sub-float v5, v15, v16

    goto/16 :goto_2

    .line 279
    :cond_8
    iget v15, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_9

    .line 280
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    iget v0, v2, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    sub-float v4, v15, v16

    goto :goto_4

    .line 282
    :cond_9
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/oppo/ImageScaleView/MathTools;->greater(FF)Z

    move-result v9

    .line 283
    .local v9, isWidthOver:Z
    if-nez v9, :cond_a

    .line 284
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v16

    sub-float v4, v15, v16

    goto :goto_4

    .line 286
    :cond_a
    iget v15, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/oppo/ImageScaleView/MathTools;->greaterOrEquals(FF)Z

    move-result v15

    if-eqz v15, :cond_b

    iget v15, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/oppo/ImageScaleView/MathTools;->lessOrEquals(FF)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v11, 0x1

    .line 288
    .local v11, xLeftContain:Z
    :goto_5
    iget v15, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/oppo/ImageScaleView/MathTools;->greaterOrEquals(FF)Z

    move-result v15

    if-eqz v15, :cond_c

    iget v15, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/oppo/ImageScaleView/MathTools;->lessOrEquals(FF)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v12, 0x1

    .line 291
    .local v12, xRightContain:Z
    :goto_6
    xor-int v15, v11, v12

    if-eqz v15, :cond_7

    .line 292
    if-eqz v11, :cond_d

    .line 293
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    iget v0, v2, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    sub-float v4, v15, v16

    goto/16 :goto_4

    .line 286
    .end local v11           #xLeftContain:Z
    .end local v12           #xRightContain:Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_5

    .line 288
    .restart local v11       #xLeftContain:Z
    :cond_c
    const/4 v12, 0x0

    goto :goto_6

    .line 294
    .restart local v12       #xRightContain:Z
    :cond_d
    if-eqz v12, :cond_7

    .line 295
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    iget v0, v2, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    sub-float v4, v15, v16

    goto/16 :goto_4

    .line 303
    .end local v9           #isWidthOver:Z
    .end local v11           #xLeftContain:Z
    .end local v12           #xRightContain:Z
    :cond_e
    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_f

    .line 304
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    sub-float v5, v15, v16

    goto/16 :goto_2

    .line 306
    :cond_f
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/oppo/ImageScaleView/MathTools;->greater(FF)Z

    move-result v8

    .line 307
    .local v8, isHeightOver:Z
    if-nez v8, :cond_10

    .line 308
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    sub-float v5, v15, v16

    goto/16 :goto_2

    .line 310
    :cond_10
    iget v15, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/oppo/ImageScaleView/MathTools;->greaterOrEquals(FF)Z

    move-result v15

    if-eqz v15, :cond_11

    iget v15, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/oppo/ImageScaleView/MathTools;->lessOrEquals(FF)Z

    move-result v15

    if-eqz v15, :cond_11

    const/4 v14, 0x1

    .line 312
    .local v14, yTopContain:Z
    :goto_7
    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/oppo/ImageScaleView/MathTools;->greaterOrEquals(FF)Z

    move-result v15

    if-eqz v15, :cond_12

    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/oppo/ImageScaleView/MathTools;->lessOrEquals(FF)Z

    move-result v15

    if-eqz v15, :cond_12

    const/4 v13, 0x1

    .line 315
    .local v13, yBottomContain:Z
    :goto_8
    xor-int v15, v14, v13

    if-eqz v15, :cond_3

    .line 316
    if-eqz v14, :cond_13

    .line 317
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    iget v0, v2, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    sub-float v5, v15, v16

    goto/16 :goto_2

    .line 310
    .end local v13           #yBottomContain:Z
    .end local v14           #yTopContain:Z
    :cond_11
    const/4 v14, 0x0

    goto :goto_7

    .line 312
    .restart local v14       #yTopContain:Z
    :cond_12
    const/4 v13, 0x0

    goto :goto_8

    .line 318
    .restart local v13       #yBottomContain:Z
    :cond_13
    if-eqz v13, :cond_3

    .line 319
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    sub-float v5, v15, v16

    goto/16 :goto_2

    .line 328
    .end local v8           #isHeightOver:Z
    .end local v13           #yBottomContain:Z
    .end local v14           #yTopContain:Z
    .restart local v6       #endScale:F
    :cond_14
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    const-wide/high16 v17, 0x4010

    cmpl-double v15, v15, v17

    if-lez v15, :cond_4

    .line 329
    const/high16 v6, 0x4080

    goto/16 :goto_3
.end method

.method public initMatrix(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "b"

    .prologue
    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 104
    iget-object v5, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 105
    const-wide/high16 v5, 0x3ff0

    iput-wide v5, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D

    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v1, v5

    .line 108
    .local v1, bitmapWidth:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v0, v5

    .line 109
    .local v0, bitmapHeight:F
    iget v5, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewWidth:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    div-float v3, v5, v8

    .line 110
    .local v3, xTranslate:F
    iget v5, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewHeight:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    div-float v4, v5, v8

    .line 111
    .local v4, yTranslate:F
    iget-object v5, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mInitRect:Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;

    invoke-virtual {v5, v7, v7, v1, v0}, Lcom/oppo/ImageScaleView/ActionHandler$RectFWrapper;->init(FFFF)V

    .line 112
    iget-object v5, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 115
    iget-boolean v5, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mIsFromBurst:Z

    if-eqz v5, :cond_1

    .line 116
    iget v5, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewHeight:I

    int-to-float v6, v6

    invoke-static {v1, v0, v5, v6}, Lcom/oppo/ImageScaleView/ImageTools;->getCenterCropAdaptScale(FFFF)F

    move-result v2

    .line 120
    .local v2, scale:F
    :goto_0
    iget-object v5, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v2, v2, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 122
    .end local v0           #bitmapHeight:F
    .end local v1           #bitmapWidth:F
    .end local v2           #scale:F
    .end local v3           #xTranslate:F
    .end local v4           #yTranslate:F
    :cond_0
    return-void

    .line 118
    .restart local v0       #bitmapHeight:F
    .restart local v1       #bitmapWidth:F
    .restart local v3       #xTranslate:F
    .restart local v4       #yTranslate:F
    :cond_1
    iget v5, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mViewHeight:I

    int-to-float v6, v6

    invoke-static {v1, v0, v5, v6}, Lcom/oppo/ImageScaleView/ImageTools;->getAdaptScale(FFFF)F

    move-result v2

    .restart local v2       #scale:F
    goto :goto_0
.end method

.method public isReboundFinish()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->isRebounding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestReboundFinish()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mIsRequestReboundFinish:Z

    .line 170
    return-void
.end method

.method public resetScaleHanlder()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mScaleHanlder:Lcom/oppo/ImageScaleView/ScaleHanlder;

    invoke-virtual {v0}, Lcom/oppo/ImageScaleView/ScaleHanlder;->reset()V

    .line 193
    return-void
.end method

.method public setScaleCenterPoint(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x4000

    .line 197
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 198
    .local v2, pointX1:F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 199
    .local v4, pointY1:F
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 200
    .local v3, pointX2:F
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 202
    .local v5, pointY2:F
    add-float v6, v2, v3

    div-float v0, v6, v7

    .line 203
    .local v0, centerPointX:F
    add-float v6, v4, v5

    div-float v1, v6, v7

    .line 204
    .local v1, centerPointY:F
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler;->mCenterPoint:Landroid/graphics/PointF;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 205
    return-void
.end method
