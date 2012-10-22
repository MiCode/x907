.class public Lcom/oppo/widget/OppoDateView;
.super Landroid/view/View;
.source "OppoDateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoDateView$FlingRunnable;,
        Lcom/oppo/widget/OppoDateView$OnChangedListener;
    }
.end annotation


# static fields
.field public static final ISNOTUSELISTVIEWFLAG:Ljava/lang/Boolean;

.field public static final ISUSELISTVIEWFLAG:Ljava/lang/Boolean;

.field public static mHourFilp:Ljava/lang/Boolean;


# instance fields
.field public DaysPerMonth:I

.field private TAG:Ljava/lang/String;

.field private audioManager:Landroid/media/AudioManager;

.field private centerTextLength:F

.field private debug:Z

.field private draw_cx:I

.field private draw_x:I

.field private mBackGround:Landroid/graphics/drawable/Drawable;

.field private mBackGroundHeight:Landroid/graphics/drawable/Drawable;

.field private mBaseTimeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mBgHeight:I

.field private mBgWidth:I

.field private mBitmapCanvas:Landroid/graphics/Canvas;

.field private mBitmapHeight:I

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapWidth:I

.field private mCenterPaint:Landroid/text/TextPaint;

.field private mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCourrentChineseMonthDayNumber:I

.field private mCourrentNewMonthDayNumber:I

.field private mCreationOrientation:I

.field private mCurrentIndex:I

.field private mCurrentResult:I

.field public mDaysPerMonth:I

.field private mDrawTpye:I

.field private mEnd:I

.field private mEventFlagFalse:Ljava/lang/Boolean;

.field private mEventFlagTrue:Ljava/lang/Boolean;

.field private mFlingDerection:I

.field private mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

.field private mFontColor:I

.field private mFontSize:I

.field private mGrayBitmap:Landroid/graphics/Bitmap;

.field private mHeight:F

.field private mIsAttached:Z

.field private mIsCalendarDatePicker:Z

.field private mIsDown:I

.field private mIsFilling:Z

.field private mIsMove:Z

.field private mIsSilent:Z

.field private mIsStopRun:Z

.field private mIsUseListView:Ljava/lang/Boolean;

.field private mLastFlingY:I

.field private mListener:Lcom/oppo/widget/OppoDateView$OnChangedListener;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNewImageIds:[I

.field private mOffset:I

.field private mOldY:I

.field private mPaint:Landroid/text/TextPaint;

.field private mPaintGray:Landroid/text/TextPaint;

.field private mScalseBitmap:Landroid/graphics/Bitmap;

.field private mScroller:Landroid/widget/Scroller;

.field private mShowCount:I

.field private mStart:I

.field private mStartIndex:I

.field private mTextHeight:F

.field private mTimeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalCount:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYStart:I

.field private textLength:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoDateView;->ISUSELISTVIEWFLAG:Ljava/lang/Boolean;

    .line 89
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoDateView;->ISNOTUSELISTVIEWFLAG:Ljava/lang/Boolean;

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoDateView;->mHourFilp:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v5, 0x1f

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 163
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const-string v4, "OppoDateView"

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    .line 45
    iput-boolean v6, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    .line 47
    iput v6, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    .line 50
    const/4 v4, 0x5

    iput v4, p0, Lcom/oppo/widget/OppoDateView;->mShowCount:I

    .line 52
    iput v6, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    .line 55
    iput-object v7, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    .line 56
    iput-object v7, p0, Lcom/oppo/widget/OppoDateView;->mCenterPaint:Landroid/text/TextPaint;

    .line 57
    iput-object v7, p0, Lcom/oppo/widget/OppoDateView;->mPaintGray:Landroid/text/TextPaint;

    .line 64
    const/16 v4, 0x3c

    iput v4, p0, Lcom/oppo/widget/OppoDateView;->mFontSize:I

    .line 65
    const/high16 v4, -0x100

    iput v4, p0, Lcom/oppo/widget/OppoDateView;->mFontColor:I

    .line 68
    const/4 v4, 0x3

    iput v4, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 71
    iput v8, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    .line 74
    iput v8, p0, Lcom/oppo/widget/OppoDateView;->mHeight:F

    .line 76
    iput-boolean v6, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    .line 90
    sget-object v4, Lcom/oppo/widget/OppoDateView;->ISUSELISTVIEWFLAG:Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mIsUseListView:Ljava/lang/Boolean;

    .line 91
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mEventFlagTrue:Ljava/lang/Boolean;

    .line 92
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mEventFlagFalse:Ljava/lang/Boolean;

    .line 94
    iput v5, p0, Lcom/oppo/widget/OppoDateView;->mCourrentNewMonthDayNumber:I

    .line 95
    iput v5, p0, Lcom/oppo/widget/OppoDateView;->mCourrentChineseMonthDayNumber:I

    .line 96
    iput v5, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    .line 97
    iput v5, p0, Lcom/oppo/widget/OppoDateView;->mDaysPerMonth:I

    .line 100
    iput-object v7, p0, Lcom/oppo/widget/OppoDateView;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 102
    iput v6, p0, Lcom/oppo/widget/OppoDateView;->mYStart:I

    .line 103
    iput v6, p0, Lcom/oppo/widget/OppoDateView;->mOldY:I

    .line 108
    iput-boolean v6, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    .line 109
    iput v6, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    .line 110
    iput v6, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    .line 111
    iput v6, p0, Lcom/oppo/widget/OppoDateView;->mFlingDerection:I

    .line 112
    iput v6, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    .line 118
    iput-object v7, p0, Lcom/oppo/widget/OppoDateView;->mGrayBitmap:Landroid/graphics/Bitmap;

    .line 120
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mNewImageIds:[I

    .line 127
    iput-object v7, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    .line 128
    iput-object v7, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 129
    iput-object v7, p0, Lcom/oppo/widget/OppoDateView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 130
    iput-object v7, p0, Lcom/oppo/widget/OppoDateView;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 131
    iput-object v7, p0, Lcom/oppo/widget/OppoDateView;->mScalseBitmap:Landroid/graphics/Bitmap;

    .line 132
    iput v6, p0, Lcom/oppo/widget/OppoDateView;->mBitmapHeight:I

    .line 133
    iput v6, p0, Lcom/oppo/widget/OppoDateView;->mBitmapWidth:I

    .line 135
    iput-object v7, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    .line 137
    iput-object v7, p0, Lcom/oppo/widget/OppoDateView;->mContext:Landroid/content/Context;

    .line 141
    iput-boolean v6, p0, Lcom/oppo/widget/OppoDateView;->mIsCalendarDatePicker:Z

    .line 142
    iput-object v7, p0, Lcom/oppo/widget/OppoDateView;->audioManager:Landroid/media/AudioManager;

    .line 144
    iput-boolean v6, p0, Lcom/oppo/widget/OppoDateView;->mIsStopRun:Z

    .line 146
    iput-boolean v6, p0, Lcom/oppo/widget/OppoDateView;->mIsSilent:Z

    .line 165
    iget-boolean v4, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v4, :cond_0

    .line 167
    iget-object v4, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v5, "date view is create !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    sget-object v4, Lcom/android/internal/R$styleable;->datepickerwidthandhigh:[I

    invoke-virtual {p1, p2, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 172
    .local v1, a:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_3

    .line 174
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 175
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 177
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 178
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 175
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    :pswitch_0
    const/16 v4, 0x66

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoDateView;->mBgWidth:I

    .line 183
    iget-boolean v4, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v4, :cond_1

    .line 185
    iget-object v4, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- luoyaojun for width of the OppoDatePicker -- mBgWidth == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoDateView;->mBgWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    .end local v2           #attr:I
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_3
    iput-object p1, p0, Lcom/oppo/widget/OppoDateView;->mContext:Landroid/content/Context;

    .line 194
    new-instance v4, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mScroller:Landroid/widget/Scroller;

    .line 195
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v9}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    .line 196
    iget-object v4, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    const v5, -0xeeeeef

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 197
    iget-object v4, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 198
    iget-object v4, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x4248

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 200
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mConfiguration:Landroid/content/res/Configuration;

    .line 201
    iget-object v4, p0, Lcom/oppo/widget/OppoDateView;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/oppo/widget/OppoDateView;->mCreationOrientation:I

    .line 203
    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mCreationOrientation:I

    iget-object v5, p0, Lcom/oppo/widget/OppoDateView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 205
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10800ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    .line 206
    iget-object v4, p0, Lcom/oppo/widget/OppoDateView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoDateView;->mBgHeight:I

    .line 207
    iget-object v4, p0, Lcom/oppo/widget/OppoDateView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 208
    iput-object v7, p0, Lcom/oppo/widget/OppoDateView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    .line 218
    :goto_2
    const/4 v4, 0x5

    iput v4, p0, Lcom/oppo/widget/OppoDateView;->mShowCount:I

    .line 220
    new-instance v4, Lcom/oppo/util/ChineseDateAndSolarDate;

    invoke-direct {v4}, Lcom/oppo/util/ChineseDateAndSolarDate;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 221
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->obtainTextHeightAndWidth()V

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10802b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mGrayBitmap:Landroid/graphics/Bitmap;

    .line 226
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    .line 229
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 230
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 231
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10802b5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 233
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108071a

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mScalseBitmap:Landroid/graphics/Bitmap;

    .line 235
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    .line 236
    iget-object v4, p0, Lcom/oppo/widget/OppoDateView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoDateView;->mBitmapHeight:I

    .line 237
    iget-object v4, p0, Lcom/oppo/widget/OppoDateView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoDateView;->mBitmapWidth:I

    .line 238
    iget-object v4, p0, Lcom/oppo/widget/OppoDateView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 239
    iget-object v4, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoDateView;->getBaseBitmap(Ljava/util/ArrayList;)V

    .line 240
    return-void

    .line 212
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10800f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoDateView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    .line 213
    iget-object v4, p0, Lcom/oppo/widget/OppoDateView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoDateView;->mBgHeight:I

    .line 214
    iget-object v4, p0, Lcom/oppo/widget/OppoDateView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 215
    iput-object v7, p0, Lcom/oppo/widget/OppoDateView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 120
    :array_0
    .array-data 0x4
        0xa9t 0x2t 0x8t 0x1t
        0xaat 0x2t 0x8t 0x1t
        0xact 0x2t 0x8t 0x1t
        0xaet 0x2t 0x8t 0x1t
        0xaft 0x2t 0x8t 0x1t
        0xb0t 0x2t 0x8t 0x1t
        0xb1t 0x2t 0x8t 0x1t
        0xb2t 0x2t 0x8t 0x1t
        0xb3t 0x2t 0x8t 0x1t
        0xb4t 0x2t 0x8t 0x1t
    .end array-data

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoDateView;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoDateView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoDateView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoDateView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoDateView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingDerection:I

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoDateView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/widget/OppoDateView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoDateView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoDateView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/oppo/widget/OppoDateView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoDateView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoDateView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->mIsStopRun:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/widget/OppoDateView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDateView;->mIsStopRun:Z

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/widget/OppoDateView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    return p1
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoDateView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oppo/widget/OppoDateView;->notifyChange()V

    return-void
.end method

.method private getValues(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v1, "getValues ! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    const/16 v0, 0x9

    if-gt p1, v0, :cond_1

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mListener:Lcom/oppo/widget/OppoDateView$OnChangedListener;

    if-eqz v0, :cond_1

    .line 560
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- notifyChange mCurrentDay == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mCurrentResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mListener:Lcom/oppo/widget/OppoDateView$OnChangedListener;

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mCurrentResult:I

    invoke-interface {v0, p0, v1}, Lcom/oppo/widget/OppoDateView$OnChangedListener;->onChanged(Lcom/oppo/widget/OppoDateView;I)V

    .line 567
    :cond_1
    return-void
.end method

.method private setDisplayValues()V
    .locals 5

    .prologue
    .line 394
    iget-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v3, :cond_0

    .line 396
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v4, "setDisplayValues ! "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 399
    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mEnd:I

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mStart:I

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    .line 400
    .local v1, length:I
    const/4 v0, 0x1

    .local v0, i:I
    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStart:I

    .local v2, value:I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 402
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDateView;->getContentBitmap(I)V

    .line 400
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    .line 406
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #value:I
    :cond_2
    return-void
.end method


# virtual methods
.method public getBaseBitmap(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iget-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v4, "getBaseBitmap ! "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    const/4 v1, 0x0

    .local v1, h:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 264
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 268
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mNewImageIds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoDateView;->mNewImageIds:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 274
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    return-void
.end method

.method public getContentBitmap(I)V
    .locals 7
    .parameter "i"

    .prologue
    const/high16 v6, 0x4250

    const/high16 v5, 0x41b8

    const/4 v4, 0x0

    .line 355
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v2, "getContentBitmap ! "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mBitmapWidth:I

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mBitmapHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 361
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/16 v1, 0x9

    if-gt p1, v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 364
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 365
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 366
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 389
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    return-void

    .line 368
    :cond_2
    const/16 v1, 0x13

    if-gt p1, v1, :cond_3

    .line 370
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 371
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 372
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 373
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 375
    :cond_3
    const/16 v1, 0x1d

    if-gt p1, v1, :cond_4

    .line 377
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 379
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 380
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 382
    :cond_4
    const/16 v1, 0x27

    if-gt p1, v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 385
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 386
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 387
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getCurrentSelectedPos()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mCurrentResult:I

    return v0
.end method

.method public obtainDrawCoordinate()V
    .locals 1

    .prologue
    .line 1191
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mHeight:F

    .line 1192
    return-void
.end method

.method public obtainTextHeightAndWidth()V
    .locals 1

    .prologue
    .line 1186
    const/high16 v0, 0x42b4

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    .line 1187
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 437
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->mIsStopRun:Z

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->mIsAttached:Z

    .line 441
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mScalseBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108071a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoDateView;->mScalseBitmap:Landroid/graphics/Bitmap;

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDateView;->getBaseBitmap(Ljava/util/ArrayList;)V

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 451
    invoke-direct {p0}, Lcom/oppo/widget/OppoDateView;->setDisplayValues()V

    .line 453
    :cond_2
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_3

    .line 455
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v1, "luoyaojun -- onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_3
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 427
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 428
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    return-void
.end method

.method public onDealActionDown(I)V
    .locals 3
    .parameter "Y"

    .prologue
    const/4 v2, 0x0

    .line 880
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v1, "-- onDealActionDown --"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    iput v2, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    .line 887
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    if-nez v0, :cond_2

    .line 889
    const/16 v0, 0xb4

    if-le p1, v0, :cond_3

    .line 891
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    .line 898
    :cond_1
    :goto_0
    iput v2, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    .line 900
    :cond_2
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    .line 901
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    .line 902
    iput v2, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 903
    iput p1, p0, Lcom/oppo/widget/OppoDateView;->mYStart:I

    .line 904
    iput v2, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    .line 906
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->invalidate()V

    .line 907
    return-void

    .line 893
    :cond_3
    const/16 v0, 0x32

    if-ge p1, v0, :cond_1

    .line 895
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    goto :goto_0
.end method

.method public onDealActionMove(I)V
    .locals 4
    .parameter "Y"

    .prologue
    .line 912
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v1, :cond_0

    .line 914
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v2, "-- onDealActionMove --"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- onDealActionMove -- mIsMove == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- onDealActionMove -- mIsFilling == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_0
    const/4 v0, 0x0

    .line 921
    .local v0, distance:I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    if-eqz v1, :cond_1

    .line 923
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mYStart:I

    sub-int v0, p1, v1

    .line 926
    :cond_1
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    if-eqz v1, :cond_2

    .line 928
    move v0, p1

    .line 931
    :cond_2
    if-gez v0, :cond_5

    .line 933
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    float-to-int v2, v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    .line 934
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    float-to-int v3, v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    .line 946
    :cond_3
    :goto_0
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v2, v3

    if-eq v1, v2, :cond_4

    .line 948
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->playSoundEffect()V

    .line 951
    :cond_4
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    .line 952
    iput p1, p0, Lcom/oppo/widget/OppoDateView;->mYStart:I

    .line 953
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->invalidate()V

    .line 954
    return-void

    .line 936
    :cond_5
    if-lez v0, :cond_6

    .line 938
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    float-to-int v2, v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    .line 939
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    float-to-int v3, v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    goto :goto_0

    .line 941
    :cond_6
    if-nez v0, :cond_3

    .line 943
    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    goto :goto_0
.end method

.method public onDealActionUp(I)V
    .locals 5
    .parameter "Y"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1051
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v1, "-- onDealActionUp --"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_0
    if-eq p1, v2, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 1058
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_2

    .line 1060
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v1, "-- onDealActionUp -- (1 == Y)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_2
    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    .line 1064
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    .line 1065
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    .line 1066
    iput v4, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 1067
    iput p1, p0, Lcom/oppo/widget/OppoDateView;->mFlingDerection:I

    .line 1068
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    if-nez v0, :cond_3

    .line 1070
    new-instance v0, Lcom/oppo/widget/OppoDateView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoDateView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoDateView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    .line 1072
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    mul-int/lit8 v1, p1, -0x1

    mul-int/lit16 v1, v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDateView$FlingRunnable;->start(I)V

    .line 1137
    :cond_4
    :goto_0
    return-void

    .line 1075
    :cond_5
    if-eq p1, v4, :cond_6

    const/4 v0, -0x2

    if-ne p1, v0, :cond_9

    .line 1077
    :cond_6
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_7

    .line 1079
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v1, "-- onDealActionUp -- (2 == Y)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_7
    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    .line 1083
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    .line 1084
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    .line 1085
    iput v4, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 1086
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingDerection:I

    .line 1087
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    if-nez v0, :cond_8

    .line 1089
    new-instance v0, Lcom/oppo/widget/OppoDateView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoDateView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoDateView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    .line 1091
    :cond_8
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    mul-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDateView$FlingRunnable;->start(I)V

    goto :goto_0

    .line 1093
    :cond_9
    if-nez p1, :cond_4

    .line 1095
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_a

    .line 1097
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v1, "-- onDealActionUp -- (0 == Y)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_a
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mCurrentResult:I

    .line 1101
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mCurrentIndex:I

    .line 1102
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mCurrentResult:I

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    if-le v0, v1, :cond_c

    .line 1104
    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    .line 1105
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    .line 1106
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    .line 1107
    iput v4, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 1108
    iput v2, p0, Lcom/oppo/widget/OppoDateView;->mFlingDerection:I

    .line 1109
    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    .line 1110
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    if-nez v0, :cond_b

    .line 1112
    new-instance v0, Lcom/oppo/widget/OppoDateView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoDateView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoDateView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    .line 1114
    :cond_b
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    const/16 v1, -0x12c

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDateView$FlingRunnable;->start(I)V

    goto :goto_0

    .line 1118
    :cond_c
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 1119
    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    .line 1120
    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    .line 1121
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    .line 1122
    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    .line 1124
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_d

    .line 1126
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- mStartIndex == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- mCurrentResult == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mCurrentResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_d
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->mIsSilent:Z

    if-nez v0, :cond_e

    .line 1131
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->playSoundEffect()V

    .line 1133
    :cond_e
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->mIsSilent:Z

    .line 1134
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->invalidate()V

    .line 1135
    invoke-direct {p0}, Lcom/oppo/widget/OppoDateView;->notifyChange()V

    goto/16 :goto_0
.end method

.method public onDealActionUpFilling(I)V
    .locals 8
    .parameter "Y"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1142
    iget-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v3, :cond_0

    .line 1144
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v4, "-- onDealActionUpFilling --"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1148
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mMinimumVelocity:I

    .line 1149
    const/16 v3, 0xaf0

    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mMaximumVelocity:I

    .line 1151
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1152
    .local v2, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x1f4

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1154
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    float-to-int v1, v3

    .line 1156
    .local v1, initialVelocity:I
    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mMinimumVelocity:I

    if-le v1, v3, :cond_3

    .line 1158
    iput v5, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    .line 1159
    iput-boolean v6, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    .line 1160
    iput-boolean v5, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    .line 1161
    iput v7, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 1162
    iput v6, p0, Lcom/oppo/widget/OppoDateView;->mFlingDerection:I

    .line 1163
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    if-nez v3, :cond_1

    .line 1165
    new-instance v3, Lcom/oppo/widget/OppoDateView$FlingRunnable;

    invoke-direct {v3, p0}, Lcom/oppo/widget/OppoDateView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoDateView;)V

    iput-object v3, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    .line 1167
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoDateView$FlingRunnable;->start(I)V

    .line 1182
    :cond_2
    :goto_0
    return-void

    .line 1169
    :cond_3
    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mMinimumVelocity:I

    neg-int v3, v3

    if-ge v1, v3, :cond_2

    .line 1171
    iput v5, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    .line 1172
    iput-boolean v6, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    .line 1173
    iput-boolean v5, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    .line 1174
    iput v7, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 1175
    const/4 v3, -0x1

    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mFlingDerection:I

    .line 1176
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    if-nez v3, :cond_4

    .line 1178
    new-instance v3, Lcom/oppo/widget/OppoDateView$FlingRunnable;

    invoke-direct {v3, p0}, Lcom/oppo/widget/OppoDateView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoDateView;)V

    iput-object v3, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    .line 1180
    :cond_4
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoDateView$FlingRunnable;->start(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 462
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 463
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/widget/OppoDateView;->mIsStopRun:Z

    .line 464
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/widget/OppoDateView;->mIsAttached:Z

    .line 465
    iget-boolean v2, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v2, :cond_0

    .line 467
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v3, "luoyaojun -- onDetachedFromWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 472
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 475
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 477
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 479
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 480
    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mScalseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 481
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/widget/OppoDateView;->mScalseBitmap:Landroid/graphics/Bitmap;

    .line 482
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1197
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    packed-switch v1, :pswitch_data_0

    .line 1443
    :cond_0
    return-void

    .line 1201
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 1203
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    if-le v1, v2, :cond_4

    .line 1205
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_2

    .line 1207
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mGrayBitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1201
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1211
    :cond_2
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDateView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_3

    .line 1213
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mGrayBitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1217
    :cond_3
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mGrayBitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1223
    :cond_4
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_5

    .line 1225
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    if-eqz v1, :cond_1

    .line 1229
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1235
    :cond_5
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDateView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_6

    .line 1237
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    if-eqz v1, :cond_1

    .line 1241
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1247
    :cond_6
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    if-eqz v1, :cond_1

    .line 1251
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1262
    .end local v0           #i:I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v6, :cond_0

    .line 1264
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    if-le v1, v2, :cond_a

    .line 1266
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_8

    .line 1268
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mGrayBitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1262
    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1272
    :cond_8
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDateView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_9

    .line 1274
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mGrayBitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1278
    :cond_9
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mGrayBitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1284
    :cond_a
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_b

    .line 1286
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_7

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_7

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    if-eqz v1, :cond_7

    .line 1290
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1296
    :cond_b
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDateView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_c

    .line 1298
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_7

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_7

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    if-eqz v1, :cond_7

    .line 1302
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1308
    :cond_c
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_7

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_7

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    if-eqz v1, :cond_7

    .line 1312
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1322
    .end local v0           #i:I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    if-ge v0, v6, :cond_0

    .line 1324
    const/4 v1, 0x3

    if-eq v1, v0, :cond_13

    .line 1326
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    if-le v1, v2, :cond_10

    .line 1328
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_e

    .line 1330
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mGrayBitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1322
    :cond_d
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1334
    :cond_e
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDateView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_f

    .line 1336
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mGrayBitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 1340
    :cond_f
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mGrayBitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 1346
    :cond_10
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_11

    .line 1348
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_d

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_d

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    if-eqz v1, :cond_d

    .line 1352
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 1358
    :cond_11
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDateView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_12

    .line 1360
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_d

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_d

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    if-eqz v1, :cond_d

    .line 1364
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1370
    :cond_12
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_d

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_d

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    if-eqz v1, :cond_d

    .line 1374
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1383
    :cond_13
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    if-le v1, v2, :cond_16

    .line 1385
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_14

    .line 1387
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mGrayBitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1391
    :cond_14
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDateView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_15

    .line 1393
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mGrayBitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1397
    :cond_15
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mGrayBitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1403
    :cond_16
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_17

    .line 1405
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_d

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_d

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    if-eqz v1, :cond_d

    .line 1409
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1415
    :cond_17
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDateView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_18

    .line 1417
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_d

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_d

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    if-eqz v1, :cond_d

    .line 1421
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1427
    :cond_18
    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_d

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_d

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    if-eqz v1, :cond_d

    .line 1431
    iget-object v1, p0, Lcom/oppo/widget/OppoDateView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 577
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 578
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mBgWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->mBgHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoDateView;->setMeasuredDimension(II)V

    .line 579
    return-void
.end method

.method public onReDrawAction()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1008
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- onReDrawAction -- mStartIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DaysPerMonth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mCurrentResult:I

    .line 1015
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mCurrentIndex:I

    .line 1016
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mCurrentResult:I

    iget v1, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    if-le v0, v1, :cond_2

    .line 1018
    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    .line 1019
    iput-boolean v4, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    .line 1020
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    .line 1021
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 1022
    iput v4, p0, Lcom/oppo/widget/OppoDateView;->mFlingDerection:I

    .line 1023
    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    .line 1024
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    if-nez v0, :cond_1

    .line 1026
    new-instance v0, Lcom/oppo/widget/OppoDateView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoDateView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoDateView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    const/16 v1, -0x12c

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDateView$FlingRunnable;->start(I)V

    .line 1046
    :goto_0
    return-void

    .line 1033
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 1034
    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    .line 1035
    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    .line 1036
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    .line 1037
    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    .line 1039
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_3

    .line 1041
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- mStartIndex == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- mCurrentResult == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mCurrentResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->invalidate()V

    .line 1045
    invoke-direct {p0}, Lcom/oppo/widget/OppoDateView;->notifyChange()V

    goto :goto_0
.end method

.method public onReDrawDateAction(ZI)V
    .locals 4
    .parameter "isGreater"
    .parameter "target"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 958
    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/widget/OppoDateView;->mCurrentResult:I

    .line 959
    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    iput v2, p0, Lcom/oppo/widget/OppoDateView;->mCurrentIndex:I

    .line 960
    if-eqz p1, :cond_1

    .line 962
    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mCurrentResult:I

    if-le v2, p2, :cond_3

    .line 964
    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    .line 965
    iput-boolean v1, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    .line 966
    iput-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    .line 967
    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 968
    iput v1, p0, Lcom/oppo/widget/OppoDateView;->mFlingDerection:I

    .line 969
    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    .line 970
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    if-nez v0, :cond_0

    .line 972
    new-instance v0, Lcom/oppo/widget/OppoDateView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoDateView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoDateView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    const/16 v1, -0x12c

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDateView$FlingRunnable;->start(I)V

    .line 1004
    :goto_0
    return-void

    .line 980
    :cond_1
    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mCurrentResult:I

    if-ge v2, p2, :cond_3

    .line 982
    iput v1, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    .line 983
    iput-boolean v1, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    .line 984
    iput-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    .line 985
    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 986
    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/widget/OppoDateView;->mFlingDerection:I

    .line 987
    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    .line 988
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    if-nez v0, :cond_2

    .line 990
    new-instance v0, Lcom/oppo/widget/OppoDateView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoDateView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoDateView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    .line 992
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mFlingRunnable:Lcom/oppo/widget/OppoDateView$FlingRunnable;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDateView$FlingRunnable;->start(I)V

    goto :goto_0

    .line 997
    :cond_3
    const/4 v2, 0x3

    iput v2, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 998
    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mCount:I

    .line 999
    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    .line 1000
    iput-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    .line 1001
    if-eqz p1, :cond_4

    :goto_1
    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    .line 1002
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->invalidate()V

    .line 1003
    invoke-direct {p0}, Lcom/oppo/widget/OppoDateView;->notifyChange()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1001
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 584
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 585
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 760
    iget-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v3, :cond_0

    .line 762
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v4, "onTouchEvent ! "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 765
    .local v2, Y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 766
    .local v1, X:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    long-to-float v0, v3

    .line 768
    .local v0, Time:F
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    .line 770
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoDateView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 773
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 813
    :pswitch_0
    iget-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v3, :cond_2

    .line 815
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v4, "-- MotionEvent.ACTION_UP --"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- MotionEvent.ACTION_UP -- mIsMove == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- MotionEvent.ACTION_UP -- mIsFilling == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_2
    iget-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    if-eqz v3, :cond_3

    .line 823
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDateView;->onDealActionUpFilling(I)V

    .line 826
    :cond_3
    iget-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    if-nez v3, :cond_4

    .line 828
    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    if-eqz v3, :cond_4

    .line 830
    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoDateView;->onDealActionUp(I)V

    .line 834
    :cond_4
    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    if-nez v3, :cond_5

    .line 837
    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_9

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x5

    if-ge v3, v4, :cond_9

    .line 839
    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDateView;->onDealActionUp(I)V

    .line 873
    :cond_5
    :goto_0
    return v7

    .line 779
    :pswitch_1
    iput-boolean v6, p0, Lcom/oppo/widget/OppoDateView;->mIsStopRun:Z

    .line 780
    iget-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v3, :cond_6

    .line 782
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v4, "-- MotionEvent.ACTION_DOWN --"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_6
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v7}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 785
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDateView;->onDealActionDown(I)V

    .line 786
    iput v2, p0, Lcom/oppo/widget/OppoDateView;->mOldY:I

    goto :goto_0

    .line 792
    :pswitch_2
    iget-boolean v3, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v3, :cond_7

    .line 794
    iget-object v3, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v4, "-- MotionEvent.ACTION_MOVE --"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_7
    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOldY:I

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v10, :cond_8

    .line 799
    iput v6, p0, Lcom/oppo/widget/OppoDateView;->mIsDown:I

    .line 800
    iput-boolean v7, p0, Lcom/oppo/widget/OppoDateView;->mIsMove:Z

    .line 802
    :cond_8
    iput v7, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 803
    iput v2, p0, Lcom/oppo/widget/OppoDateView;->mOldY:I

    .line 804
    iput-boolean v6, p0, Lcom/oppo/widget/OppoDateView;->mIsFilling:Z

    .line 806
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDateView;->onDealActionMove(I)V

    goto :goto_0

    .line 841
    :cond_9
    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_a

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    if-lt v3, v10, :cond_a

    .line 843
    invoke-virtual {p0, v8}, Lcom/oppo/widget/OppoDateView;->onDealActionUp(I)V

    goto :goto_0

    .line 845
    :cond_a
    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    float-to-int v4, v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_b

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    const/4 v4, -0x5

    if-gt v3, v4, :cond_b

    .line 847
    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDateView;->onDealActionUp(I)V

    goto :goto_0

    .line 849
    :cond_b
    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    float-to-int v4, v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    if-gt v3, v4, :cond_c

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    float-to-int v4, v4

    neg-int v4, v4

    add-int/lit8 v4, v4, 0x5

    if-le v3, v4, :cond_c

    .line 851
    invoke-virtual {p0, v8}, Lcom/oppo/widget/OppoDateView;->onDealActionUp(I)V

    goto :goto_0

    .line 853
    :cond_c
    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x5

    if-lt v3, v4, :cond_d

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x1

    if-gt v3, v4, :cond_d

    .line 855
    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    .line 856
    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoDateView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 858
    :cond_d
    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    neg-float v4, v4

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x5

    if-gt v3, v4, :cond_e

    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mTextHeight:F

    neg-float v4, v4

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    if-lt v3, v4, :cond_e

    .line 860
    iget v3, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/widget/OppoDateView;->mTotalCount:I

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    .line 861
    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoDateView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 866
    :cond_e
    iput-boolean v7, p0, Lcom/oppo/widget/OppoDateView;->mIsSilent:Z

    .line 867
    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoDateView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 775
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public playSoundEffect()V
    .locals 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->mIsAttached:Z

    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v1, "luoyaojun -- playSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oppo/widget/OppoDateView;->audioManager:Landroid/media/AudioManager;

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->audioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0
.end method

.method public reDraw()V
    .locals 3

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v1, "-- reDraw --"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    sget-object v0, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChMonthDays(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    .line 509
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- reDraw OppoDatePicker.mCurrentMonth == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- reDraw DaysPerMonth == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 516
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->onReDrawAction()V

    .line 517
    return-void

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetSolarMonthDays(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    goto :goto_0
.end method

.method public reDrawChAndNewYear()V
    .locals 3

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v1, "-- reDrawChAndNewYear --"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    sget-object v0, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChMonthDays(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    .line 538
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- reDrawChAndNewYear -- DaysPerMonth == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDateView;->onDealActionUp(I)V

    .line 544
    return-void

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetSolarMonthDays(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    goto :goto_0
.end method

.method public reDrawDate(ZI)V
    .locals 1
    .parameter "isGreater"
    .parameter "target"

    .prologue
    .line 486
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 487
    invoke-virtual {p0, p1, p2}, Lcom/oppo/widget/OppoDateView;->onReDrawDateAction(ZI)V

    .line 488
    return-void
.end method

.method public reFreshSelf()V
    .locals 1

    .prologue
    .line 1447
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mDrawTpye:I

    .line 1448
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->invalidate()V

    .line 1449
    invoke-direct {p0}, Lcom/oppo/widget/OppoDateView;->notifyChange()V

    .line 1450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->mIsStopRun:Z

    .line 1451
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mCurrentIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    .line 1452
    return-void
.end method

.method public setCalendarMode(Z)V
    .locals 3
    .parameter "isCalendarMode"

    .prologue
    const/4 v2, 0x0

    .line 249
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDateView;->mIsCalendarDatePicker:Z

    .line 250
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoDateView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    .line 251
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mBgHeight:I

    .line 252
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 253
    iput-object v2, p0, Lcom/oppo/widget/OppoDateView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    .line 254
    return-void
.end method

.method public setCurrentPos(I)V
    .locals 3
    .parameter "start"

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- setCurrentPos -- day mStartIndex of begin =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    iput p1, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    .line 313
    iget v0, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->mCurrentResult:I

    .line 315
    sget-object v0, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChMonthDays(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    .line 326
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- OppoDatePicker.mCurrentMonth == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- DaysPerMonth == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- setCurrentPos -- day mStartIndex of end == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- setCurrentPos -- DaysPerMonth == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_2
    return-void

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetSolarMonthDays(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDateView;->DaysPerMonth:I

    goto :goto_0
.end method

.method public setOnChangeListener(Lcom/oppo/widget/OppoDateView$OnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 553
    iput-object p1, p0, Lcom/oppo/widget/OppoDateView;->mListener:Lcom/oppo/widget/OppoDateView$OnChangedListener;

    .line 554
    return-void
.end method

.method public setRange(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDateView;->debug:Z

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/oppo/widget/OppoDateView;->TAG:Ljava/lang/String;

    const-string v1, "setRange ! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    iput p1, p0, Lcom/oppo/widget/OppoDateView;->mStart:I

    .line 349
    iput p2, p0, Lcom/oppo/widget/OppoDateView;->mEnd:I

    .line 350
    invoke-direct {p0}, Lcom/oppo/widget/OppoDateView;->setDisplayValues()V

    .line 351
    return-void
.end method

.method public setShowCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 298
    iput p1, p0, Lcom/oppo/widget/OppoDateView;->mShowCount:I

    .line 299
    return-void
.end method

.method public setStopRun(Z)V
    .locals 0
    .parameter "isStopRun"

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDateView;->mIsStopRun:Z

    .line 245
    return-void
.end method
