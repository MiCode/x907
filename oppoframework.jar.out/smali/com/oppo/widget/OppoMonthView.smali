.class public Lcom/oppo/widget/OppoMonthView;
.super Landroid/view/View;
.source "OppoMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoMonthView$FlingRunnable;,
        Lcom/oppo/widget/OppoMonthView$OnChangedListener;
    }
.end annotation


# static fields
.field public static final ISNOTUSELISTVIEWFLAG:Ljava/lang/Boolean;

.field public static final ISUSELISTVIEWFLAG:Ljava/lang/Boolean;


# instance fields
.field private TAG:Ljava/lang/String;

.field private audioManager:Landroid/media/AudioManager;

.field private centerTextLength:F

.field private debug:Z

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

.field private mChineseArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mChineseContent:[Ljava/lang/String;

.field private mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContent:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCourrentYearLeapMonth:I

.field private mCreationOrientation:I

.field private mCurrentIndex:I

.field private mCurrentResult:I

.field private mCurrentShowContent:[Ljava/lang/String;

.field private mDY:F

.field private mDrawTpye:I

.field private mEnd:I

.field private mEndIndex:I

.field private mEventFlagFalse:Ljava/lang/Boolean;

.field private mEventFlagTrue:Ljava/lang/Boolean;

.field private mFlingDerection:I

.field private mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

.field private mFontColor:I

.field private mFontSize:I

.field private mHeight:F

.field private mIsAttached:Z

.field private mIsCalendarDatePicker:Z

.field private mIsDown:I

.field private mIsFilling:Z

.field private mIsLeapMonth:Ljava/lang/Boolean;

.field private mIsMove:Z

.field private mIsSilent:Z

.field private mIsStopRun:Z

.field private mIsUseListView:Ljava/lang/Boolean;

.field private mLastFlingY:I

.field private mLastYearIsLeapYear:Z

.field private mLastYearLeapMonth:I

.field private mLeapMonth:I

.field private mListener:Lcom/oppo/widget/OppoMonthView$OnChangedListener;

.field private mLogFlag:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNewImageIds:[I

.field private mOffset:I

.field private mOldTime:F

.field private mOldY:I

.field private mPaint:Landroid/text/TextPaint;

.field private mScalseBitmap:Landroid/graphics/Bitmap;

.field private mScroller:Landroid/widget/Scroller;

.field private mShowCount:I

.field private mStart:I

.field private mStartIndex:I

.field private mTStart:F

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

.field private mVelocity:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYStart:I

.field private textLength:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoMonthView;->ISUSELISTVIEWFLAG:Ljava/lang/Boolean;

    .line 98
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoMonthView;->ISNOTUSELISTVIEWFLAG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v9, -0x100

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const-string v4, "OppoMonthView"

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    .line 45
    iput-boolean v5, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    .line 47
    iput-boolean v8, p0, Lcom/oppo/widget/OppoMonthView;->mLogFlag:Z

    .line 50
    iput v5, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    .line 53
    const/4 v4, 0x5

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mShowCount:I

    .line 54
    iput v5, p0, Lcom/oppo/widget/OppoMonthView;->mEndIndex:I

    .line 57
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->mContent:[Ljava/lang/String;

    .line 58
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->mChineseContent:[Ljava/lang/String;

    .line 60
    const/16 v4, 0xc

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    .line 63
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentShowContent:[Ljava/lang/String;

    .line 65
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    .line 73
    const/16 v4, 0x3c

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mFontSize:I

    .line 74
    iput v9, p0, Lcom/oppo/widget/OppoMonthView;->mFontColor:I

    .line 77
    const/4 v4, 0x3

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    .line 80
    iput v6, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    .line 83
    iput v6, p0, Lcom/oppo/widget/OppoMonthView;->mHeight:F

    .line 86
    iput-boolean v5, p0, Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z

    .line 99
    sget-object v4, Lcom/oppo/widget/OppoMonthView;->ISUSELISTVIEWFLAG:Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mIsUseListView:Ljava/lang/Boolean;

    .line 100
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mEventFlagTrue:Ljava/lang/Boolean;

    .line 101
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mEventFlagFalse:Ljava/lang/Boolean;

    .line 103
    iput v5, p0, Lcom/oppo/widget/OppoMonthView;->mCourrentYearLeapMonth:I

    .line 104
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 106
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    .line 107
    iput v5, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    .line 109
    iput v5, p0, Lcom/oppo/widget/OppoMonthView;->mYStart:I

    .line 110
    iput v5, p0, Lcom/oppo/widget/OppoMonthView;->mOldY:I

    .line 111
    iput v6, p0, Lcom/oppo/widget/OppoMonthView;->mTStart:F

    .line 112
    iput v6, p0, Lcom/oppo/widget/OppoMonthView;->mOldTime:F

    .line 113
    iput v6, p0, Lcom/oppo/widget/OppoMonthView;->mVelocity:F

    .line 114
    iput v6, p0, Lcom/oppo/widget/OppoMonthView;->mDY:F

    .line 119
    iput-boolean v5, p0, Lcom/oppo/widget/OppoMonthView;->mIsMove:Z

    .line 120
    iput v5, p0, Lcom/oppo/widget/OppoMonthView;->mCount:I

    .line 121
    iput v5, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    .line 122
    iput v5, p0, Lcom/oppo/widget/OppoMonthView;->mFlingDerection:I

    .line 123
    iput v5, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    .line 129
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mNewImageIds:[I

    .line 136
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    .line 137
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 138
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 139
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 140
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    .line 141
    iput v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapHeight:I

    .line 142
    iput v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapWidth:I

    .line 144
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    .line 145
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    .line 147
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->mContext:Landroid/content/Context;

    .line 151
    iput-boolean v5, p0, Lcom/oppo/widget/OppoMonthView;->mIsCalendarDatePicker:Z

    .line 152
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->audioManager:Landroid/media/AudioManager;

    .line 154
    iput-boolean v5, p0, Lcom/oppo/widget/OppoMonthView;->mIsStopRun:Z

    .line 156
    iput-boolean v5, p0, Lcom/oppo/widget/OppoMonthView;->mIsSilent:Z

    .line 178
    sget-object v4, Lcom/android/internal/R$styleable;->datepickerwidthandhigh:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 179
    .local v1, a:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 182
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 184
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 185
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 182
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :pswitch_0
    const/16 v4, 0x66

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mBgWidth:I

    .line 190
    iget-boolean v4, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v4, :cond_0

    .line 192
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- luoyaojun for width of the OppoDatePicker -- mBgWidth == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoMonthView;->mBgWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 198
    .end local v2           #attr:I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_2
    iput-object p1, p0, Lcom/oppo/widget/OppoMonthView;->mContext:Landroid/content/Context;

    .line 201
    new-instance v4, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mScroller:Landroid/widget/Scroller;

    .line 202
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v8}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    .line 203
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    const v5, -0xeeeeef

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 204
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 205
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x4248

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 207
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mShowCount:I

    add-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentShowContent:[Ljava/lang/String;

    .line 209
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v8}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mCenterPaint:Landroid/text/TextPaint;

    .line 210
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mCenterPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 211
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mCenterPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x4282

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 212
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mCenterPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v9}, Landroid/text/TextPaint;->setColor(I)V

    .line 215
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mConfiguration:Landroid/content/res/Configuration;

    .line 216
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mCreationOrientation:I

    .line 218
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mCreationOrientation:I

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 220
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10800ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    .line 221
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mBgHeight:I

    .line 222
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 223
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    .line 233
    :goto_2
    const/4 v4, 0x5

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mShowCount:I

    .line 234
    invoke-direct {p0}, Lcom/oppo/widget/OppoMonthView;->measureTextLength()F

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->textLength:F

    .line 235
    invoke-direct {p0}, Lcom/oppo/widget/OppoMonthView;->measureCenterTextLength()F

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->centerTextLength:F

    .line 237
    new-instance v4, Lcom/oppo/util/ChineseDateAndSolarDate;

    invoke-direct {v4}, Lcom/oppo/util/ChineseDateAndSolarDate;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 238
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->obtainTextHeightAndWidth()V

    .line 240
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    .line 241
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    .line 244
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 245
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 246
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10802b5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 248
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108071a

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    .line 250
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    .line 251
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapHeight:I

    .line 252
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapWidth:I

    .line 253
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 254
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoMonthView;->getBaseBitmap(Ljava/util/ArrayList;)V

    .line 256
    return-void

    .line 227
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10800f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    .line 228
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mBgHeight:I

    .line 229
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 230
    iput-object v7, p0, Lcom/oppo/widget/OppoMonthView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 129
    nop

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

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoMonthView;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoMonthView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoMonthView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoMonthView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoMonthView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mFlingDerection:I

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoMonthView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/widget/OppoMonthView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoMonthView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoMonthView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/oppo/widget/OppoMonthView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoMonthView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoMonthView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsStopRun:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/widget/OppoMonthView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/oppo/widget/OppoMonthView;->mIsStopRun:Z

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/widget/OppoMonthView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    return p1
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoMonthView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oppo/widget/OppoMonthView;->notifyChange()V

    return-void
.end method

.method private getValues(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 527
    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private measureCenterTextLength()F
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mCenterPaint:Landroid/text/TextPaint;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private measureTextLength()F
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 963
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mListener:Lcom/oppo/widget/OppoMonthView$OnChangedListener;

    if-eqz v0, :cond_1

    .line 965
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--notifyChange mCurrentMonth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsLeapMonth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mListener:Lcom/oppo/widget/OppoMonthView$OnChangedListener;

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1, v2}, Lcom/oppo/widget/OppoMonthView$OnChangedListener;->onChanged(Lcom/oppo/widget/OppoMonthView;ILjava/lang/Boolean;)V

    .line 971
    :cond_1
    return-void
.end method

.method private setDisplayValues()V
    .locals 6

    .prologue
    .line 506
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 507
    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mEnd:I

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mStart:I

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    .line 508
    .local v1, length:I
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mContent:[Ljava/lang/String;

    .line 509
    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseContent:[Ljava/lang/String;

    .line 510
    const/4 v0, 0x1

    .local v0, i:I
    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStart:I

    .local v2, value:I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 514
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMonthView;->getContentBitmap(I)V

    .line 510
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 518
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    .line 519
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #value:I
    :cond_1
    iget-boolean v3, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v3, :cond_2

    .line 521
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- setDisplayValues -- mTotalCount == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
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
    .line 289
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    .local v1, h:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 291
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 295
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mNewImageIds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mNewImageIds:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 301
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public getChineseBitmap()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x4250

    const/high16 v8, 0x41b8

    const/4 v7, 0x0

    .line 585
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    invoke-virtual {v4, v5}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v3

    .line 587
    .local v3, iLeapMonth:I
    const/4 v1, 0x0

    .local v1, h:I
    :goto_0
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 589
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    :cond_0
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 593
    sget-object v4, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 595
    if-eqz v3, :cond_7

    .line 597
    iput v3, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    .line 598
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    if-gt v2, v3, :cond_2

    .line 600
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapWidth:I

    iget v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 603
    .local v0, chinaBitmap:Landroid/graphics/Bitmap;
    const/16 v4, 0x9

    if-gt v2, v4, :cond_1

    .line 607
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 608
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 609
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 610
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 612
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 618
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 619
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 620
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 621
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int v6, v2, v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 623
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 627
    .end local v0           #chinaBitmap:Landroid/graphics/Bitmap;
    :cond_2
    move v2, v3

    :goto_3
    const/16 v4, 0xc

    if-gt v2, v4, :cond_4

    .line 629
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapWidth:I

    iget v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 632
    .restart local v0       #chinaBitmap:Landroid/graphics/Bitmap;
    const/16 v4, 0x9

    if-gt v2, v4, :cond_3

    .line 637
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 638
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 639
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 640
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 642
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 648
    :cond_3
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 649
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 650
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 651
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int v6, v2, v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 653
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 657
    .end local v0           #chinaBitmap:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    .line 659
    iget-boolean v4, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v4, :cond_5

    .line 661
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---- mTotalCount == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .end local v2           #i:I
    :cond_5
    :goto_5
    iget-boolean v4, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v4, :cond_6

    .line 700
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--setCurrentPos month mStartIndex of end == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_6
    return-void

    .line 666
    :cond_7
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_6
    const/16 v4, 0xc

    if-ge v2, v4, :cond_9

    .line 670
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapWidth:I

    iget v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 672
    .restart local v0       #chinaBitmap:Landroid/graphics/Bitmap;
    const/16 v4, 0x9

    if-gt v2, v4, :cond_8

    .line 674
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 675
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 676
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 677
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 687
    :goto_7
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 681
    :cond_8
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 682
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 683
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 684
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int v6, v2, v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 690
    .end local v0           #chinaBitmap:Landroid/graphics/Bitmap;
    :cond_9
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    .line 691
    iget-boolean v4, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v4, :cond_5

    .line 693
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---- mTotalCount == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public getContentBitmap(I)V
    .locals 7
    .parameter "i"

    .prologue
    const/high16 v6, 0x4250

    const/high16 v5, 0x41b8

    const/4 v4, 0x0

    .line 485
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapWidth:I

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/16 v1, 0x9

    if-gt p1, v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 490
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 491
    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 492
    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 501
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    return-void

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 497
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 498
    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 499
    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getCurrentSelectedPos()I
    .locals 1

    .prologue
    .line 975
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    return v0
.end method

.method public obtainDrawCoordinate()V
    .locals 1

    .prologue
    .line 1149
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mHeight:F

    .line 1150
    return-void
.end method

.method public obtainTextHeightAndWidth()V
    .locals 1

    .prologue
    .line 1144
    const/high16 v0, 0x42b4

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    .line 1145
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 558
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsStopRun:Z

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsAttached:Z

    .line 562
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108071a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMonthView;->getBaseBitmap(Ljava/util/ArrayList;)V

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 572
    invoke-direct {p0}, Lcom/oppo/widget/OppoMonthView;->setDisplayValues()V

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 576
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->getChineseBitmap()V

    .line 578
    :cond_3
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v0, :cond_4

    .line 580
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    const-string v1, "luoyaojun -- onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_4
    return-void
.end method

.method public onDealActionDown(I)V
    .locals 2
    .parameter "Y"

    .prologue
    const/4 v1, 0x0

    .line 1249
    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    .line 1250
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z

    if-nez v0, :cond_1

    .line 1252
    const/16 v0, 0xb4

    if-le p1, v0, :cond_2

    .line 1254
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    .line 1260
    :cond_0
    :goto_0
    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    .line 1262
    :cond_1
    iput-boolean v1, p0, Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z

    .line 1263
    iput-boolean v1, p0, Lcom/oppo/widget/OppoMonthView;->mIsMove:Z

    .line 1264
    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    .line 1265
    iput p1, p0, Lcom/oppo/widget/OppoMonthView;->mYStart:I

    .line 1266
    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mCount:I

    .line 1268
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->invalidate()V

    .line 1269
    return-void

    .line 1256
    :cond_2
    const/16 v0, 0x32

    if-ge p1, v0, :cond_0

    .line 1258
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    goto :goto_0
.end method

.method public onDealActionMove(I)V
    .locals 4
    .parameter "Y"

    .prologue
    .line 1274
    const/4 v0, 0x0

    .line 1275
    .local v0, distance:I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoMonthView;->mIsMove:Z

    if-eqz v1, :cond_0

    .line 1277
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mYStart:I

    sub-int v0, p1, v1

    .line 1280
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z

    if-eqz v1, :cond_1

    .line 1282
    move v0, p1

    .line 1285
    :cond_1
    if-gez v0, :cond_4

    .line 1287
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    float-to-int v2, v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mCount:I

    .line 1288
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mCount:I

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    float-to-int v3, v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    .line 1300
    :cond_2
    :goto_0
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mCount:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v2, v3

    if-eq v1, v2, :cond_3

    .line 1302
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->playSoundEffect()V

    .line 1305
    :cond_3
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    .line 1306
    iput p1, p0, Lcom/oppo/widget/OppoMonthView;->mYStart:I

    .line 1307
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->invalidate()V

    .line 1308
    return-void

    .line 1290
    :cond_4
    if-lez v0, :cond_5

    .line 1292
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    float-to-int v2, v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mCount:I

    .line 1293
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mCount:I

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    float-to-int v3, v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    goto :goto_0

    .line 1295
    :cond_5
    if-nez v0, :cond_2

    .line 1297
    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mCount:I

    goto :goto_0
.end method

.method public onDealActionUp(I)V
    .locals 5
    .parameter "Y"

    .prologue
    const/16 v4, 0xc

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1424
    if-eq p1, v2, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 1426
    :cond_0
    iput v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    .line 1427
    iput-boolean v2, p0, Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z

    .line 1428
    iput-boolean v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsMove:Z

    .line 1429
    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    .line 1430
    iput p1, p0, Lcom/oppo/widget/OppoMonthView;->mFlingDerection:I

    .line 1431
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    if-nez v0, :cond_1

    .line 1433
    new-instance v0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoMonthView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoMonthView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    .line 1435
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    mul-int/lit8 v1, p1, -0x1

    mul-int/lit16 v1, v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->start(I)V

    .line 1507
    :cond_2
    :goto_0
    return-void

    .line 1438
    :cond_3
    if-eq p1, v1, :cond_4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    .line 1440
    :cond_4
    iput v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    .line 1441
    iput-boolean v2, p0, Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z

    .line 1442
    iput-boolean v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsMove:Z

    .line 1443
    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    .line 1444
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mFlingDerection:I

    .line 1445
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    if-nez v0, :cond_5

    .line 1447
    new-instance v0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoMonthView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoMonthView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    .line 1449
    :cond_5
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    mul-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->start(I)V

    goto :goto_0

    .line 1451
    :cond_6
    if-nez p1, :cond_2

    .line 1453
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    .line 1454
    iput v3, p0, Lcom/oppo/widget/OppoMonthView;->mCount:I

    .line 1455
    iput v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    .line 1456
    iput-boolean v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsMove:Z

    .line 1457
    iput v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    .line 1458
    sget-object v0, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-eqz v0, :cond_b

    .line 1460
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-ge v0, v1, :cond_9

    .line 1462
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1463
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1464
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    .line 1494
    :goto_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v0, :cond_7

    .line 1496
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- onDealActionUp mStartIndex == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- onDealActionUp mCurrentResult == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_7
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsSilent:Z

    if-nez v0, :cond_8

    .line 1501
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->playSoundEffect()V

    .line 1503
    :cond_8
    iput-boolean v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsSilent:Z

    .line 1504
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->invalidate()V

    .line 1505
    invoke-direct {p0}, Lcom/oppo/widget/OppoMonthView;->notifyChange()V

    goto/16 :goto_0

    .line 1466
    :cond_9
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-ne v0, v1, :cond_a

    .line 1468
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1469
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1470
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    goto :goto_1

    .line 1474
    :cond_a
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1475
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1476
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    goto :goto_1

    .line 1481
    :cond_b
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    if-lt v0, v4, :cond_c

    .line 1483
    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1484
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1491
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    goto :goto_1

    .line 1488
    :cond_c
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1489
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    goto :goto_2
.end method

.method public onDealActionUpFilling(I)V
    .locals 8
    .parameter "Y"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1513
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1514
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoMonthView;->mMinimumVelocity:I

    .line 1515
    const/16 v3, 0xaf0

    iput v3, p0, Lcom/oppo/widget/OppoMonthView;->mMaximumVelocity:I

    .line 1517
    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1518
    .local v2, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x1f4

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1520
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    float-to-int v1, v3

    .line 1522
    .local v1, initialVelocity:I
    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mMinimumVelocity:I

    if-le v1, v3, :cond_2

    .line 1524
    iput v5, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    .line 1525
    iput-boolean v6, p0, Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z

    .line 1526
    iput-boolean v5, p0, Lcom/oppo/widget/OppoMonthView;->mIsMove:Z

    .line 1527
    iput v7, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    .line 1528
    iput v6, p0, Lcom/oppo/widget/OppoMonthView;->mFlingDerection:I

    .line 1529
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    if-nez v3, :cond_0

    .line 1531
    new-instance v3, Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    invoke-direct {v3, p0}, Lcom/oppo/widget/OppoMonthView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoMonthView;)V

    iput-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    .line 1533
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->start(I)V

    .line 1548
    :cond_1
    :goto_0
    return-void

    .line 1535
    :cond_2
    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mMinimumVelocity:I

    neg-int v3, v3

    if-ge v1, v3, :cond_1

    .line 1537
    iput v5, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    .line 1538
    iput-boolean v6, p0, Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z

    .line 1539
    iput-boolean v5, p0, Lcom/oppo/widget/OppoMonthView;->mIsMove:Z

    .line 1540
    iput v7, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    .line 1541
    const/4 v3, -0x1

    iput v3, p0, Lcom/oppo/widget/OppoMonthView;->mFlingDerection:I

    .line 1542
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    if-nez v3, :cond_3

    .line 1544
    new-instance v3, Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    invoke-direct {v3, p0}, Lcom/oppo/widget/OppoMonthView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoMonthView;)V

    iput-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    .line 1546
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->start(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    .line 707
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 708
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsStopRun:Z

    .line 709
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsAttached:Z

    .line 710
    iget-boolean v3, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v3, :cond_0

    .line 712
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    const-string v4, "luoyaojun -- onDetachedFromWindow"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 716
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 721
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 723
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 721
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 725
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 728
    const/4 v0, 0x0

    .local v0, h:I
    :goto_2
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 730
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 732
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 734
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 735
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    .line 736
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1555
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    packed-switch v1, :pswitch_data_0

    .line 1806
    :cond_0
    return-void

    .line 1558
    :pswitch_0
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1560
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 1562
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_3

    .line 1564
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_2

    .line 1568
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1560
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1574
    :cond_3
    iget-boolean v1, p0, Lcom/oppo/widget/OppoMonthView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_4

    .line 1576
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_2

    .line 1580
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1586
    :cond_4
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_2

    .line 1590
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1600
    .end local v0           #i:I
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v6, :cond_0

    .line 1602
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_7

    .line 1604
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_6

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    if-ltz v1, :cond_6

    .line 1608
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1600
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1614
    :cond_7
    iget-boolean v1, p0, Lcom/oppo/widget/OppoMonthView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_8

    .line 1616
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_6

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    if-ltz v1, :cond_6

    .line 1620
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1626
    :cond_8
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_6

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    if-ltz v1, :cond_6

    .line 1630
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1642
    .end local v0           #i:I
    :pswitch_1
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-eqz v1, :cond_9

    sget-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1644
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    if-ge v0, v6, :cond_0

    .line 1646
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_b

    .line 1648
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_a

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_a

    .line 1652
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1644
    :cond_a
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1658
    :cond_b
    iget-boolean v1, p0, Lcom/oppo/widget/OppoMonthView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_c

    .line 1660
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_a

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_a

    .line 1664
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 1670
    :cond_c
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_a

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_a

    .line 1674
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1683
    .end local v0           #i:I
    :cond_d
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6
    if-ge v0, v6, :cond_0

    .line 1685
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_f

    .line 1687
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_e

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    if-ltz v1, :cond_e

    .line 1691
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1683
    :cond_e
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1697
    :cond_f
    iget-boolean v1, p0, Lcom/oppo/widget/OppoMonthView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_10

    .line 1699
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_e

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    if-ltz v1, :cond_e

    .line 1703
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 1709
    :cond_10
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_e

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    if-ltz v1, :cond_e

    .line 1713
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 1724
    .end local v0           #i:I
    :pswitch_2
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-eqz v1, :cond_11

    sget-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1726
    :cond_11
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_8
    if-ge v0, v6, :cond_0

    .line 1728
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_13

    .line 1730
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_12

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_12

    .line 1734
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1726
    :cond_12
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1740
    :cond_13
    iget-boolean v1, p0, Lcom/oppo/widget/OppoMonthView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_14

    .line 1742
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_12

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_12

    .line 1746
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 1752
    :cond_14
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_12

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_12

    .line 1756
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 1765
    .end local v0           #i:I
    :cond_15
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_a
    if-ge v0, v6, :cond_0

    .line 1767
    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_17

    .line 1769
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_16

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    if-ltz v1, :cond_16

    .line 1772
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1765
    :cond_16
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1778
    :cond_17
    iget-boolean v1, p0, Lcom/oppo/widget/OppoMonthView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_18

    .line 1780
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_16

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    if-ltz v1, :cond_16

    .line 1784
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_b

    .line 1790
    :cond_18
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_16

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    if-ltz v1, :cond_16

    .line 1794
    iget-object v1, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    .line 1555
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
    .line 981
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 982
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mBgWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mBgHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoMonthView;->setMeasuredDimension(II)V

    .line 983
    return-void
.end method

.method public onReDrawAction()V
    .locals 4

    .prologue
    const/16 v1, 0xc

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1312
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    .line 1313
    iput v2, p0, Lcom/oppo/widget/OppoMonthView;->mCount:I

    .line 1314
    iput v2, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    .line 1315
    iput-boolean v2, p0, Lcom/oppo/widget/OppoMonthView;->mIsMove:Z

    .line 1316
    iput v2, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    .line 1317
    sget-object v0, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1319
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearIsLeapYear:Z

    if-eqz v0, :cond_6

    .line 1320
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearLeapMonth:I

    if-gt v0, v1, :cond_2

    .line 1322
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-ge v0, v1, :cond_0

    .line 1323
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1324
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1326
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearLeapMonth:I

    if-ge v0, v1, :cond_1

    .line 1327
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    .line 1328
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1329
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1331
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearLeapMonth:I

    if-lt v0, v1, :cond_2

    .line 1332
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1333
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1336
    :cond_2
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearLeapMonth:I

    if-le v0, v1, :cond_5

    .line 1338
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearLeapMonth:I

    if-ge v0, v1, :cond_3

    .line 1339
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1340
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1342
    :cond_3
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearLeapMonth:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-ge v0, v1, :cond_4

    .line 1343
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    .line 1344
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1345
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1347
    :cond_4
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-lt v0, v1, :cond_5

    .line 1348
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1349
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1353
    :cond_5
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-ne v0, v1, :cond_f

    .line 1354
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    .line 1360
    :cond_6
    :goto_0
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearIsLeapYear:Z

    if-nez v0, :cond_9

    .line 1361
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-ge v0, v1, :cond_7

    .line 1363
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1364
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1366
    :cond_7
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-lt v0, v1, :cond_8

    .line 1367
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    .line 1368
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1369
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1371
    :cond_8
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-ne v0, v1, :cond_10

    .line 1372
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    .line 1377
    :cond_9
    :goto_1
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearIsLeapYear:Z

    if-eqz v0, :cond_c

    .line 1378
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearLeapMonth:I

    if-ge v0, v1, :cond_a

    .line 1380
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1381
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1383
    :cond_a
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearLeapMonth:I

    if-lt v0, v1, :cond_b

    .line 1384
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    .line 1385
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1386
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1388
    :cond_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    .line 1390
    :cond_c
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearIsLeapYear:Z

    if-nez v0, :cond_d

    .line 1391
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1392
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1393
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    .line 1411
    :cond_d
    :goto_2
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v0, :cond_e

    .line 1413
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- onDealActionUp mStartIndex == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- onDealActionUp mCurrentResult == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_e
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->invalidate()V

    .line 1418
    invoke-direct {p0}, Lcom/oppo/widget/OppoMonthView;->notifyChange()V

    .line 1419
    return-void

    .line 1356
    :cond_f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1374
    :cond_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1398
    :cond_11
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    if-lt v0, v1, :cond_12

    .line 1400
    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1401
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    .line 1408
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    goto :goto_2

    .line 1405
    :cond_12
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 1406
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    goto :goto_3
.end method

.method public onReDrawMonthAction(ZIZ)V
    .locals 4
    .parameter "isGreater"
    .parameter "target"
    .parameter "isTargetLeapMonth"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 896
    if-eqz p1, :cond_2

    .line 898
    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    if-gt v2, p2, :cond_0

    if-nez p3, :cond_4

    iget-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    if-ne v2, p2, :cond_4

    .line 900
    :cond_0
    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    .line 901
    iput-boolean v1, p0, Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z

    .line 902
    iput-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsMove:Z

    .line 903
    iput v3, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    .line 904
    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mFlingDerection:I

    .line 905
    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCount:I

    .line 906
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    if-nez v0, :cond_1

    .line 908
    new-instance v0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoMonthView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoMonthView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    .line 910
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    const/16 v1, -0x12c

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->start(I)V

    .line 940
    :goto_0
    return-void

    .line 916
    :cond_2
    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    if-ge v2, p2, :cond_4

    .line 918
    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    .line 919
    iput-boolean v1, p0, Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z

    .line 920
    iput-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsMove:Z

    .line 921
    iput v3, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    .line 922
    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/widget/OppoMonthView;->mFlingDerection:I

    .line 923
    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCount:I

    .line 924
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    if-nez v0, :cond_3

    .line 926
    new-instance v0, Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoMonthView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoMonthView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    .line 928
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mFlingRunnable:Lcom/oppo/widget/OppoMonthView$FlingRunnable;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoMonthView$FlingRunnable;->start(I)V

    goto :goto_0

    .line 933
    :cond_4
    const/4 v2, 0x3

    iput v2, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    .line 934
    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mCount:I

    .line 935
    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    .line 936
    iput-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsMove:Z

    .line 937
    if-eqz p1, :cond_5

    :goto_1
    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    .line 938
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->invalidate()V

    .line 939
    invoke-direct {p0}, Lcom/oppo/widget/OppoMonthView;->notifyChange()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 937
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 989
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 990
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1156
    .local v2, Y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1157
    .local v1, X:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    long-to-float v0, v3

    .line 1159
    .local v0, Time:F
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_0

    .line 1161
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1163
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1193
    :pswitch_0
    iget-boolean v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsMove:Z

    if-eqz v3, :cond_1

    .line 1194
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoMonthView;->onDealActionUpFilling(I)V

    .line 1196
    :cond_1
    iget-boolean v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsMove:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z

    if-nez v3, :cond_2

    .line 1198
    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    if-eqz v3, :cond_2

    .line 1200
    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoMonthView;->onDealActionUp(I)V

    .line 1204
    :cond_2
    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z

    if-nez v3, :cond_3

    .line 1207
    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_5

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x5

    if-ge v3, v4, :cond_5

    .line 1209
    invoke-virtual {p0, v8}, Lcom/oppo/widget/OppoMonthView;->onDealActionUp(I)V

    .line 1242
    :cond_3
    :goto_0
    return v6

    .line 1169
    :pswitch_1
    iput-boolean v5, p0, Lcom/oppo/widget/OppoMonthView;->mIsStopRun:Z

    .line 1170
    iget-object v3, p0, Lcom/oppo/widget/OppoMonthView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1171
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoMonthView;->onDealActionDown(I)V

    .line 1172
    iput v2, p0, Lcom/oppo/widget/OppoMonthView;->mOldY:I

    goto :goto_0

    .line 1178
    :pswitch_2
    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOldY:I

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v9, :cond_4

    .line 1180
    iput v5, p0, Lcom/oppo/widget/OppoMonthView;->mIsDown:I

    .line 1181
    iput-boolean v6, p0, Lcom/oppo/widget/OppoMonthView;->mIsMove:Z

    .line 1183
    :cond_4
    iput v6, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    .line 1184
    iput v2, p0, Lcom/oppo/widget/OppoMonthView;->mOldY:I

    .line 1185
    iput-boolean v5, p0, Lcom/oppo/widget/OppoMonthView;->mIsFilling:Z

    .line 1186
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoMonthView;->onDealActionMove(I)V

    goto :goto_0

    .line 1211
    :cond_5
    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_6

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    if-lt v3, v9, :cond_6

    .line 1213
    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoMonthView;->onDealActionUp(I)V

    goto :goto_0

    .line 1215
    :cond_6
    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    float-to-int v4, v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_7

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    const/4 v4, -0x5

    if-gt v3, v4, :cond_7

    .line 1217
    invoke-virtual {p0, v8}, Lcom/oppo/widget/OppoMonthView;->onDealActionUp(I)V

    goto :goto_0

    .line 1219
    :cond_7
    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    float-to-int v4, v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    if-gt v3, v4, :cond_8

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    float-to-int v4, v4

    neg-int v4, v4

    add-int/lit8 v4, v4, 0x5

    if-le v3, v4, :cond_8

    .line 1221
    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoMonthView;->onDealActionUp(I)V

    goto :goto_0

    .line 1223
    :cond_8
    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x5

    if-lt v3, v4, :cond_9

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x1

    if-gt v3, v4, :cond_9

    .line 1225
    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    .line 1226
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoMonthView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 1228
    :cond_9
    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    neg-float v4, v4

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x5

    if-gt v3, v4, :cond_a

    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mTextHeight:F

    neg-float v4, v4

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    if-lt v3, v4, :cond_a

    .line 1230
    iget v3, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    .line 1231
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoMonthView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 1235
    :cond_a
    iput-boolean v6, p0, Lcom/oppo/widget/OppoMonthView;->mIsSilent:Z

    .line 1236
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoMonthView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 1165
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
    .line 265
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsAttached:Z

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    const-string v1, "luoyaojun -- playSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->audioManager:Landroid/media/AudioManager;

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->audioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0
.end method

.method public reDraw(I)V
    .locals 12
    .parameter "leapmonth"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x4250

    const/high16 v8, 0x41b8

    const/4 v7, 0x0

    .line 740
    iget-boolean v4, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v4, :cond_0

    .line 741
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reDraw, leapmonth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", startindex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \n mCurrentResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCurrentIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    const/4 v1, 0x0

    .local v1, h:I
    :goto_0
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 747
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 745
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 752
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-eqz v4, :cond_2

    .line 753
    iput-boolean v11, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearIsLeapYear:Z

    .line 754
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearLeapMonth:I

    .line 759
    :goto_1
    iput p1, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    .line 761
    const/4 v3, 0x0

    .local v3, l:I
    :goto_2
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 763
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 761
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 756
    .end local v3           #l:I
    :cond_2
    iput-boolean v10, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearIsLeapYear:Z

    .line 757
    iput v10, p0, Lcom/oppo/widget/OppoMonthView;->mLastYearLeapMonth:I

    goto :goto_1

    .line 766
    .restart local v3       #l:I
    :cond_3
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 767
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoMonthView;->getBaseBitmap(Ljava/util/ArrayList;)V

    .line 768
    iget-boolean v4, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v4, :cond_4

    .line 770
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- reDraw mTotalCount of begin == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_4
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mContent:[Ljava/lang/String;

    array-length v4, v4

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    .line 774
    iget-boolean v4, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v4, :cond_5

    .line 776
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- reDraw mTotalCount of end == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_5
    sget-object v4, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 781
    if-eqz p1, :cond_b

    .line 783
    iput p1, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    .line 784
    const/4 v2, 0x1

    .local v2, i:I
    :goto_3
    if-gt v2, p1, :cond_7

    .line 786
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapWidth:I

    iget v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 789
    .local v0, chinaBitmap:Landroid/graphics/Bitmap;
    const/16 v4, 0x9

    if-gt v2, v4, :cond_6

    .line 795
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 796
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 797
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 798
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 800
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 809
    :cond_6
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 810
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 811
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 812
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int v6, v2, v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 814
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 818
    .end local v0           #chinaBitmap:Landroid/graphics/Bitmap;
    :cond_7
    move v2, p1

    :goto_5
    const/16 v4, 0xc

    if-gt v2, v4, :cond_9

    .line 820
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapWidth:I

    iget v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 823
    .restart local v0       #chinaBitmap:Landroid/graphics/Bitmap;
    const/16 v4, 0x9

    if-gt v2, v4, :cond_8

    .line 829
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 830
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 831
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 832
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 834
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 842
    :cond_8
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 843
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 844
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 845
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int v6, v2, v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 847
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 851
    .end local v0           #chinaBitmap:Landroid/graphics/Bitmap;
    :cond_9
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    .line 853
    iget-boolean v4, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v4, :cond_a

    .line 855
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- reDraw mTotalCount == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    .end local v2           #i:I
    :cond_a
    :goto_7
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->reDrawChAndNewYear()V

    .line 892
    return-void

    .line 860
    :cond_b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_8
    const/16 v4, 0xc

    if-ge v2, v4, :cond_d

    .line 864
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapWidth:I

    iget v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 866
    .restart local v0       #chinaBitmap:Landroid/graphics/Bitmap;
    const/16 v4, 0x9

    if-gt v2, v4, :cond_c

    .line 868
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 869
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 870
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 871
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 881
    :goto_9
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 875
    :cond_c
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 876
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 877
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 878
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int v6, v2, v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 884
    .end local v0           #chinaBitmap:Landroid/graphics/Bitmap;
    :cond_d
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    .line 885
    iget-boolean v4, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v4, :cond_a

    .line 887
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- reDraw mTotalCount == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method public reDrawChAndNewYear()V
    .locals 3

    .prologue
    .line 943
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- reDrawChAndNewYear mstartindex == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    .line 948
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->onReDrawAction()V

    .line 949
    return-void
.end method

.method public reFreshSelf()V
    .locals 1

    .prologue
    .line 1810
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mDrawTpye:I

    .line 1811
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->invalidate()V

    .line 1812
    invoke-direct {p0}, Lcom/oppo/widget/OppoMonthView;->notifyChange()V

    .line 1813
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoMonthView;->mIsStopRun:Z

    .line 1814
    iget v0, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    .line 1815
    return-void
.end method

.method public setCalendarMode(Z)V
    .locals 3
    .parameter "isCalendarMode"

    .prologue
    const/4 v2, 0x0

    .line 280
    iput-boolean p1, p0, Lcom/oppo/widget/OppoMonthView;->mIsCalendarDatePicker:Z

    .line 281
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    .line 282
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoMonthView;->mBgHeight:I

    .line 283
    iget-object v0, p0, Lcom/oppo/widget/OppoMonthView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 284
    iput-object v2, p0, Lcom/oppo/widget/OppoMonthView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    .line 285
    return-void
.end method

.method public setCurrentPos(I)V
    .locals 12
    .parameter "start"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x4250

    const/high16 v8, 0x41b8

    const/4 v7, 0x0

    .line 317
    iget-boolean v4, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v4, :cond_0

    .line 319
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- setCurrentPos month mStartIndex of begin == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    iput p1, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    .line 323
    sget-object v4, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-eqz v4, :cond_3

    .line 325
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v5, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-ge v4, v5, :cond_1

    .line 327
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 328
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    .line 354
    :goto_0
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    invoke-virtual {v4, v5}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v3

    .line 356
    .local v3, iLeapMonth:I
    const/4 v1, 0x0

    .local v1, h:I
    :goto_1
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 358
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 330
    .end local v1           #h:I
    .end local v3           #iLeapMonth:I
    :cond_1
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iget v5, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    if-ne v4, v5, :cond_2

    .line 332
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 333
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    goto :goto_0

    .line 337
    :cond_2
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 338
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    goto :goto_0

    .line 343
    :cond_3
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_4

    .line 345
    const/16 v4, 0xc

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    .line 351
    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mIsLeapMonth:Ljava/lang/Boolean;

    goto :goto_0

    .line 349
    :cond_4
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mCurrentResult:I

    goto :goto_2

    .line 360
    .restart local v1       #h:I
    .restart local v3       #iLeapMonth:I
    :cond_5
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 362
    sget-object v4, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 364
    if-eqz v3, :cond_c

    .line 366
    iput v3, p0, Lcom/oppo/widget/OppoMonthView;->mLeapMonth:I

    .line 367
    const/4 v2, 0x1

    .local v2, i:I
    :goto_3
    if-gt v2, v3, :cond_7

    .line 369
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapWidth:I

    iget v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 372
    .local v0, chinaBitmap:Landroid/graphics/Bitmap;
    const/16 v4, 0x9

    if-gt v2, v4, :cond_6

    .line 376
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 377
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 378
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 379
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 381
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 387
    :cond_6
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 388
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 389
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 390
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int v6, v2, v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 392
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 396
    .end local v0           #chinaBitmap:Landroid/graphics/Bitmap;
    :cond_7
    move v2, v3

    :goto_5
    const/16 v4, 0xc

    if-gt v2, v4, :cond_9

    .line 398
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapWidth:I

    iget v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 401
    .restart local v0       #chinaBitmap:Landroid/graphics/Bitmap;
    const/16 v4, 0x9

    if-gt v2, v4, :cond_8

    .line 406
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 407
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 408
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 409
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 411
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 417
    :cond_8
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 418
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 419
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 420
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int v6, v2, v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 422
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 426
    .end local v0           #chinaBitmap:Landroid/graphics/Bitmap;
    :cond_9
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    .line 428
    iget-boolean v4, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v4, :cond_a

    .line 430
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---- mTotalCount == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .end local v2           #i:I
    :cond_a
    :goto_7
    iget-boolean v4, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v4, :cond_b

    .line 469
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--setCurrentPos month mStartIndex of end == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoMonthView;->mStartIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_b
    return-void

    .line 435
    :cond_c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_8
    const/16 v4, 0xc

    if-ge v2, v4, :cond_e

    .line 439
    iget v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapWidth:I

    iget v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 441
    .restart local v0       #chinaBitmap:Landroid/graphics/Bitmap;
    const/16 v4, 0x9

    if-gt v2, v4, :cond_d

    .line 443
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 444
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 445
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 446
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 456
    :goto_9
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 450
    :cond_d
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 451
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 452
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 453
    iget-object v5, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int v6, v2, v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/oppo/widget/OppoMonthView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 459
    .end local v0           #chinaBitmap:Landroid/graphics/Bitmap;
    :cond_e
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->mChineseArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    .line 460
    iget-boolean v4, p0, Lcom/oppo/widget/OppoMonthView;->debug:Z

    if-eqz v4, :cond_a

    .line 462
    iget-object v4, p0, Lcom/oppo/widget/OppoMonthView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---- mTotalCount == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoMonthView;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method public setFontColorAndSize(II)V
    .locals 0
    .parameter "color"
    .parameter "size"

    .prologue
    .line 551
    iput p2, p0, Lcom/oppo/widget/OppoMonthView;->mFontSize:I

    .line 552
    iput p1, p0, Lcom/oppo/widget/OppoMonthView;->mFontColor:I

    .line 553
    return-void
.end method

.method public setOnChangeListener(Lcom/oppo/widget/OppoMonthView$OnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 958
    iput-object p1, p0, Lcom/oppo/widget/OppoMonthView;->mListener:Lcom/oppo/widget/OppoMonthView$OnChangedListener;

    .line 959
    return-void
.end method

.method public setRange(II)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 478
    iput p1, p0, Lcom/oppo/widget/OppoMonthView;->mStart:I

    .line 479
    iput p2, p0, Lcom/oppo/widget/OppoMonthView;->mEnd:I

    .line 480
    invoke-direct {p0}, Lcom/oppo/widget/OppoMonthView;->setDisplayValues()V

    .line 481
    return-void
.end method

.method public setShowCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 309
    iput p1, p0, Lcom/oppo/widget/OppoMonthView;->mShowCount:I

    .line 310
    return-void
.end method

.method public setStopRun(Z)V
    .locals 0
    .parameter "isStopRun"

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/oppo/widget/OppoMonthView;->mIsStopRun:Z

    .line 261
    return-void
.end method
