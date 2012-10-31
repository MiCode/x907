.class public Lcom/oppo/widget/OppoYearView;
.super Landroid/view/View;
.source "OppoYearView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoYearView$FlingRunnable;,
        Lcom/oppo/widget/OppoYearView$OnChangedListener;
    }
.end annotation


# static fields
.field private static final CLICK_REDRAW:I = 0xa

.field private static final DEFAULT:I = 0x0

.field public static final DEFAULT_END:I = 0x7f4

.field public static final DEFAULT_START:I = 0x780

.field private static final DISPLAY_FOUR:I = 0x1

.field private static final DISPLAY_THREE:I = 0x0

.field private static final DO_NOTHING:I = 0x9

.field private static final FLING_DOWN:I = 0x3

.field private static final FLING_UP:I = 0x2

.field public static final ISNOTUSELISTVIEWFLAG:Ljava/lang/Boolean; = null

.field public static final ISUSELISTVIEWFLAG:Ljava/lang/Boolean; = null

.field private static final MOVE_PRAWARD:I = 0x6

.field private static final MOVE_PRAWARD_MAX_DOWN:I = 0x8

.field private static final MOVE_PRAWARD_MAX_UP:I = 0x7

.field private static final MOVE_UPRAWARD:I = 0x4

.field private static final MOVE_UPRAWARD_MAX:I = 0x5

.field private static final SCROLL_DOWN:I = 0xb

.field private static final SCROLL_SPEED_FIRST:I = 0x0

.field private static final SCROLL_SPEED_FIVE:I = 0x4

.field private static final SCROLL_SPEED_FOUR:I = 0x3

.field private static final SCROLL_SPEED_NONE:I = 0x7

.field private static final SCROLL_SPEED_SEVEN:I = 0x6

.field private static final SCROLL_SPEED_SIX:I = 0x5

.field private static final SCROLL_SPEED_THREE:I = 0x2

.field private static final SCROLL_SPEED_TWO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoYearView"

.field private static final UP_AND_STOP:I = 0x1


# instance fields
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

.field private mBaseTimeArraycc:Ljava/util/ArrayList;
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

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContent:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCreationOrientation:I

.field private mCurrentIndex:I

.field private mCurrentResult:I

.field private mCurrentShowContent:[Ljava/lang/String;

.field private mDisPlayThreeOrFour:I

.field private mDrawTpye:I

.field private mEnd:I

.field private mEndIndex:I

.field private mEventFlagFalse:Ljava/lang/Boolean;

.field private mEventFlagTrue:Ljava/lang/Boolean;

.field private mFillingNnmber:I

.field private mFillingSpeedControl:I

.field private mFirstY:I

.field private mFlingDerection:I

.field private mFlingRunnable:Lcom/oppo/widget/OppoYearView$FlingRunnable;

.field private mFontColor:I

.field private mFontSize:I

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

.field private mListener:Lcom/oppo/widget/OppoYearView$OnChangedListener;

.field private mLogFlag:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNewImageIds:[I

.field private mOffset:I

.field private mOldY:I

.field private mPaint:Landroid/text/TextPaint;

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

.field private mYearArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mYearImageIds:[I

.field private testBitmap:Landroid/graphics/Bitmap;

.field private textLength:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoYearView;->ISUSELISTVIEWFLAG:Ljava/lang/Boolean;

    .line 145
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoYearView;->ISNOTUSELISTVIEWFLAG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoYearView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoYearView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 202
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v5, p0, Lcom/oppo/widget/OppoYearView;->debug:Z

    .line 48
    iput-boolean v8, p0, Lcom/oppo/widget/OppoYearView;->mLogFlag:Z

    .line 51
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    .line 54
    const/4 v4, 0x5

    iput v4, p0, Lcom/oppo/widget/OppoYearView;->mShowCount:I

    .line 55
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mEndIndex:I

    .line 58
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->mContent:[Ljava/lang/String;

    .line 60
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    .line 63
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->mCurrentShowContent:[Ljava/lang/String;

    .line 65
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->mPaint:Landroid/text/TextPaint;

    .line 73
    const/16 v4, 0x3c

    iput v4, p0, Lcom/oppo/widget/OppoYearView;->mFontSize:I

    .line 74
    const/high16 v4, -0x100

    iput v4, p0, Lcom/oppo/widget/OppoYearView;->mFontColor:I

    .line 77
    const/4 v4, 0x3

    iput v4, p0, Lcom/oppo/widget/OppoYearView;->mDrawTpye:I

    .line 106
    iput v6, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    .line 109
    iput v6, p0, Lcom/oppo/widget/OppoYearView;->mHeight:F

    .line 112
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mFirstY:I

    .line 115
    iput-boolean v5, p0, Lcom/oppo/widget/OppoYearView;->mIsFilling:Z

    .line 116
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mFillingNnmber:I

    .line 117
    iput v8, p0, Lcom/oppo/widget/OppoYearView;->mDisPlayThreeOrFour:I

    .line 122
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mFillingSpeedControl:I

    .line 146
    sget-object v4, Lcom/oppo/widget/OppoYearView;->ISUSELISTVIEWFLAG:Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mIsUseListView:Ljava/lang/Boolean;

    .line 147
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mEventFlagTrue:Ljava/lang/Boolean;

    .line 148
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mEventFlagFalse:Ljava/lang/Boolean;

    .line 150
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->testBitmap:Landroid/graphics/Bitmap;

    .line 152
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mNewImageIds:[I

    .line 159
    new-array v4, v9, [I

    fill-array-data v4, :array_1

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mYearImageIds:[I

    .line 163
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->mYearArray:Ljava/util/ArrayList;

    .line 164
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->mBaseTimeArray:Ljava/util/ArrayList;

    .line 165
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->mBaseTimeArraycc:Ljava/util/ArrayList;

    .line 166
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 167
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 168
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 169
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->mScalseBitmap:Landroid/graphics/Bitmap;

    .line 170
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mBitmapHeight:I

    .line 171
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mBitmapWidth:I

    .line 173
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    .line 175
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->mContext:Landroid/content/Context;

    .line 180
    iput-boolean v5, p0, Lcom/oppo/widget/OppoYearView;->mIsCalendarDatePicker:Z

    .line 181
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->audioManager:Landroid/media/AudioManager;

    .line 183
    iput-boolean v5, p0, Lcom/oppo/widget/OppoYearView;->mIsStopRun:Z

    .line 185
    iput-boolean v5, p0, Lcom/oppo/widget/OppoYearView;->mIsSilent:Z

    .line 656
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mYStart:I

    .line 657
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mOldY:I

    .line 661
    iput-boolean v5, p0, Lcom/oppo/widget/OppoYearView;->mIsMove:Z

    .line 662
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mCount:I

    .line 663
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    .line 664
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mFlingDerection:I

    .line 665
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mIsDown:I

    .line 204
    const/16 v4, 0x780

    iput v4, p0, Lcom/oppo/widget/OppoYearView;->mStart:I

    .line 205
    const/16 v4, 0x7f4

    iput v4, p0, Lcom/oppo/widget/OppoYearView;->mEnd:I

    .line 206
    sget-object v4, Lcom/android/internal/R$styleable;->datepickerwidthandhigh:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 207
    .local v1, a:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_2

    .line 209
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 210
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 212
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 213
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 210
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :pswitch_0
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoYearView;->mBgWidth:I

    .line 218
    iget-boolean v4, p0, Lcom/oppo/widget/OppoYearView;->debug:Z

    if-eqz v4, :cond_0

    .line 220
    const-string v4, "OppoYearView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- luoyaojun for width of the OppoDatePicker -- mBgWidth == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoYearView;->mBgWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 226
    .end local v2           #attr:I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_2
    iput-object p1, p0, Lcom/oppo/widget/OppoYearView;->mContext:Landroid/content/Context;

    .line 229
    new-instance v4, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mScroller:Landroid/widget/Scroller;

    .line 230
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v8}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mPaint:Landroid/text/TextPaint;

    .line 231
    iget-object v4, p0, Lcom/oppo/widget/OppoYearView;->mPaint:Landroid/text/TextPaint;

    const v5, -0xeeeeef

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 232
    iget-object v4, p0, Lcom/oppo/widget/OppoYearView;->mPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 233
    iget-object v4, p0, Lcom/oppo/widget/OppoYearView;->mPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x4248

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 235
    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mShowCount:I

    add-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mCurrentShowContent:[Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mConfiguration:Landroid/content/res/Configuration;

    .line 238
    iget-object v4, p0, Lcom/oppo/widget/OppoYearView;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/oppo/widget/OppoYearView;->mCreationOrientation:I

    .line 240
    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mCreationOrientation:I

    iget-object v5, p0, Lcom/oppo/widget/OppoYearView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v4, v9, :cond_3

    .line 242
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10800ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    .line 243
    iget-object v4, p0, Lcom/oppo/widget/OppoYearView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoYearView;->mBgHeight:I

    .line 244
    iget-object v4, p0, Lcom/oppo/widget/OppoYearView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 245
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    .line 256
    :goto_2
    const/4 v4, 0x5

    iput v4, p0, Lcom/oppo/widget/OppoYearView;->mShowCount:I

    .line 257
    invoke-direct {p0}, Lcom/oppo/widget/OppoYearView;->measureTextLength()F

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoYearView;->textLength:F

    .line 258
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->obtainTextHeightAndWidth()V

    .line 260
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    .line 263
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 264
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 265
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10802b5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 267
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108072d

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mScalseBitmap:Landroid/graphics/Bitmap;

    .line 269
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mBaseTimeArray:Ljava/util/ArrayList;

    .line 270
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mYearArray:Ljava/util/ArrayList;

    .line 271
    iget-object v4, p0, Lcom/oppo/widget/OppoYearView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoYearView;->mBitmapHeight:I

    .line 272
    iget-object v4, p0, Lcom/oppo/widget/OppoYearView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoYearView;->mBitmapWidth:I

    .line 273
    iget-object v4, p0, Lcom/oppo/widget/OppoYearView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 274
    iget-object v4, p0, Lcom/oppo/widget/OppoYearView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoYearView;->getBaseBitmap(Ljava/util/ArrayList;)V

    .line 275
    iget-object v4, p0, Lcom/oppo/widget/OppoYearView;->mYearArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoYearView;->getYearBaseBitmap(Ljava/util/ArrayList;)V

    .line 276
    return-void

    .line 249
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10800f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoYearView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    .line 250
    iget-object v4, p0, Lcom/oppo/widget/OppoYearView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoYearView;->mBgHeight:I

    .line 251
    iget-object v4, p0, Lcom/oppo/widget/OppoYearView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 252
    iput-object v7, p0, Lcom/oppo/widget/OppoYearView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 152
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

    .line 159
    :array_1
    .array-data 0x4
        0xabt 0x2t 0x8t 0x1t
        0xadt 0x2t 0x8t 0x1t
    .end array-data

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoYearView;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoYearView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->mIsFilling:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoYearView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/oppo/widget/OppoYearView;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoYearView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/oppo/widget/OppoYearView;->mIsFilling:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoYearView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/oppo/widget/OppoYearView;->mStart:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoYearView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oppo/widget/OppoYearView;->notifyChange()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oppo/widget/OppoYearView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->debug:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoYearView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/oppo/widget/OppoYearView;->mFlingDerection:I

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoYearView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/widget/OppoYearView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoYearView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoYearView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/oppo/widget/OppoYearView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoYearView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoYearView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->mIsStopRun:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/widget/OppoYearView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/oppo/widget/OppoYearView;->mIsStopRun:Z

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/widget/OppoYearView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/oppo/widget/OppoYearView;->mDrawTpye:I

    return p1
.end method

.method static synthetic access$902(Lcom/oppo/widget/OppoYearView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/oppo/widget/OppoYearView;->mCurrentResult:I

    return p1
.end method

.method private getCurrentShowContent(I)Z
    .locals 5
    .parameter "start"

    .prologue
    .line 609
    iget-boolean v2, p0, Lcom/oppo/widget/OppoYearView;->debug:Z

    if-eqz v2, :cond_0

    .line 611
    const-string v2, "OppoYearView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- getCurrentShowContent start == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mShowCount:I

    add-int/lit8 v1, v2, 0x2

    .line 616
    .local v1, tmpCount:I
    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mContent:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 618
    const/4 v2, 0x0

    .line 626
    :goto_0
    return v2

    .line 622
    :cond_1
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 624
    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mCurrentShowContent:[Ljava/lang/String;

    shr-int/lit8 v3, v1, 0x1

    sub-int v3, v0, v3

    invoke-direct {p0, p1, v3}, Lcom/oppo/widget/OppoYearView;->getTextToDraw(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 626
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getNewIndex(II)I
    .locals 2
    .parameter "start"
    .parameter "offset"

    .prologue
    .line 642
    add-int v0, p1, p2

    .line 643
    .local v0, index:I
    if-gez v0, :cond_1

    .line 645
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mContent:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    .line 653
    :cond_0
    :goto_0
    return v0

    .line 648
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mContent:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mContent:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getTextToDraw(II)Ljava/lang/String;
    .locals 2
    .parameter "start"
    .parameter "offset"

    .prologue
    .line 632
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoYearView;->getNewIndex(II)I

    move-result v0

    .line 633
    .local v0, index:I
    if-gez v0, :cond_0

    .line 635
    const-string v1, ""

    .line 637
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mContent:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method private getValues(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 438
    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
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
    .line 456
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mCenterPaint:Landroid/text/TextPaint;

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private measureTextLength()F
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mPaint:Landroid/text/TextPaint;

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 574
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mListener:Lcom/oppo/widget/OppoYearView$OnChangedListener;

    if-eqz v0, :cond_1

    .line 576
    iget-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->debug:Z

    if-eqz v0, :cond_0

    .line 578
    const-string v0, "OppoYearView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- notifyChange mCurrentYear == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mCurrentResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mListener:Lcom/oppo/widget/OppoYearView$OnChangedListener;

    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mCurrentResult:I

    invoke-interface {v0, p0, v1}, Lcom/oppo/widget/OppoYearView$OnChangedListener;->onChanged(Lcom/oppo/widget/OppoYearView;I)V

    .line 582
    :cond_1
    return-void
.end method

.method private setDisplayValues()V
    .locals 4

    .prologue
    .line 426
    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 427
    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mEnd:I

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 428
    .local v1, length:I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/widget/OppoYearView;->mContent:[Ljava/lang/String;

    .line 429
    iget v0, p0, Lcom/oppo/widget/OppoYearView;->mStart:I

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mEnd:I

    if-gt v0, v2, :cond_0

    .line 431
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoYearView;->getContentBitmap(I)V

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    .line 434
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_1
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
    .line 329
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    if-eqz p1, :cond_0

    .line 331
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 333
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    .end local v2           #k:I
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 339
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mNewImageIds:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoYearView;->mNewImageIds:[I

    aget v4, v4, v1

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 345
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public getContentBitmap(I)V
    .locals 11
    .parameter "i"

    .prologue
    const/4 v10, 0x0

    .line 404
    iget v6, p0, Lcom/oppo/widget/OppoYearView;->mBitmapWidth:I

    add-int/lit8 v6, v6, 0x17

    iget v7, p0, Lcom/oppo/widget/OppoYearView;->mBitmapHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 407
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, valueStr:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_0

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x4

    if-ge v2, v6, :cond_0

    .line 411
    const/4 v6, 0x0

    const/16 v7, 0x30

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    .end local v2           #k:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v6, p0, Lcom/oppo/widget/OppoYearView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 416
    iget-object v6, p0, Lcom/oppo/widget/OppoYearView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/oppo/widget/OppoYearView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/oppo/widget/OppoYearView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v10, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 417
    const/16 v0, 0x1d

    .line 418
    .local v0, STEP:I
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 419
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v4, v6, -0x30

    .line 420
    .local v4, value:I
    iget-object v7, p0, Lcom/oppo/widget/OppoYearView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/oppo/widget/OppoYearView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    mul-int/lit8 v8, v2, 0x1d

    add-int/lit8 v8, v8, 0x16

    int-to-float v8, v8

    iget-object v9, p0, Lcom/oppo/widget/OppoYearView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v8, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 422
    .end local v4           #value:I
    :cond_1
    iget-object v6, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    return-void
.end method

.method public getCurrentSelectedPos()I
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lcom/oppo/widget/OppoYearView;->mCurrentResult:I

    return v0
.end method

.method public getYearBaseBitmap(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 308
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 310
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 314
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mYearImageIds:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoYearView;->mYearImageIds:[I

    aget v4, v4, v1

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 319
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 321
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-boolean v3, p0, Lcom/oppo/widget/OppoYearView;->debug:Z

    if-eqz v3, :cond_2

    .line 323
    const-string v3, "OppoYearView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- getYearBaseBitmap list == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_2
    return-void
.end method

.method public obtainDrawCoordinate()V
    .locals 1

    .prologue
    .line 1207
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoYearView;->mHeight:F

    .line 1208
    return-void
.end method

.method public obtainTextHeightAndWidth()V
    .locals 1

    .prologue
    .line 1202
    const/high16 v0, 0x42b4

    iput v0, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    .line 1203
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 494
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->mIsStopRun:Z

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->mIsAttached:Z

    .line 498
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mScalseBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108072d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoYearView;->mScalseBitmap:Landroid/graphics/Bitmap;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoYearView;->getBaseBitmap(Ljava/util/ArrayList;)V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 508
    invoke-direct {p0}, Lcom/oppo/widget/OppoYearView;->setDisplayValues()V

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mYearArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 512
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mYearArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoYearView;->getYearBaseBitmap(Ljava/util/ArrayList;)V

    .line 515
    :cond_3
    iget-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->debug:Z

    if-eqz v0, :cond_4

    .line 517
    const-string v0, "OppoYearView"

    const-string v1, "luoyaojun -- onAttachedToWindow --"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_4
    return-void
.end method

.method public onDealActionDown(I)V
    .locals 2
    .parameter "Y"

    .prologue
    const/4 v1, 0x0

    .line 926
    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mIsDown:I

    .line 927
    iget-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->mIsFilling:Z

    if-nez v0, :cond_1

    .line 929
    const/16 v0, 0xb4

    if-le p1, v0, :cond_2

    .line 931
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoYearView;->mIsDown:I

    .line 937
    :cond_0
    :goto_0
    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    .line 939
    :cond_1
    iput-boolean v1, p0, Lcom/oppo/widget/OppoYearView;->mIsFilling:Z

    .line 940
    iput-boolean v1, p0, Lcom/oppo/widget/OppoYearView;->mIsMove:Z

    .line 941
    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mDrawTpye:I

    .line 942
    iput p1, p0, Lcom/oppo/widget/OppoYearView;->mYStart:I

    .line 943
    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mCount:I

    .line 945
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->invalidate()V

    .line 946
    return-void

    .line 933
    :cond_2
    const/16 v0, 0x32

    if-ge p1, v0, :cond_0

    .line 935
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoYearView;->mIsDown:I

    goto :goto_0
.end method

.method public onDealActionMove(I)V
    .locals 4
    .parameter "Y"

    .prologue
    .line 951
    const/4 v0, 0x0

    .line 952
    .local v0, distance:I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoYearView;->mIsMove:Z

    if-eqz v1, :cond_0

    .line 954
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mYStart:I

    sub-int v0, p1, v1

    .line 957
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoYearView;->mIsFilling:Z

    if-eqz v1, :cond_1

    .line 959
    move v0, p1

    .line 962
    :cond_1
    if-gez v0, :cond_4

    .line 964
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    float-to-int v2, v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mCount:I

    .line 965
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mCount:I

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    float-to-int v3, v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    .line 977
    :cond_2
    :goto_0
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mCount:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v2, v3

    if-eq v1, v2, :cond_3

    .line 979
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->playSoundEffect()V

    .line 982
    :cond_3
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    .line 983
    iput p1, p0, Lcom/oppo/widget/OppoYearView;->mYStart:I

    .line 984
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->invalidate()V

    .line 985
    return-void

    .line 967
    :cond_4
    if-lez v0, :cond_5

    .line 969
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    float-to-int v2, v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mCount:I

    .line 970
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mCount:I

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    float-to-int v3, v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    goto :goto_0

    .line 972
    :cond_5
    if-nez v0, :cond_2

    .line 974
    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mCount:I

    goto :goto_0
.end method

.method public onDealActionUp(I)V
    .locals 4
    .parameter "Y"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 990
    if-eq p1, v2, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 992
    :cond_0
    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mIsDown:I

    .line 993
    iput-boolean v2, p0, Lcom/oppo/widget/OppoYearView;->mIsFilling:Z

    .line 994
    iput-boolean v1, p0, Lcom/oppo/widget/OppoYearView;->mIsMove:Z

    .line 995
    iput v3, p0, Lcom/oppo/widget/OppoYearView;->mDrawTpye:I

    .line 996
    iput p1, p0, Lcom/oppo/widget/OppoYearView;->mFlingDerection:I

    .line 997
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mFlingRunnable:Lcom/oppo/widget/OppoYearView$FlingRunnable;

    if-nez v0, :cond_1

    .line 999
    new-instance v0, Lcom/oppo/widget/OppoYearView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoYearView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoYearView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoYearView;->mFlingRunnable:Lcom/oppo/widget/OppoYearView$FlingRunnable;

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mFlingRunnable:Lcom/oppo/widget/OppoYearView$FlingRunnable;

    mul-int/lit8 v1, p1, -0x1

    mul-int/lit16 v1, v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoYearView$FlingRunnable;->start(I)V

    .line 1038
    :cond_2
    :goto_0
    return-void

    .line 1004
    :cond_3
    if-eq p1, v3, :cond_4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    .line 1006
    :cond_4
    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mIsDown:I

    .line 1007
    iput-boolean v2, p0, Lcom/oppo/widget/OppoYearView;->mIsFilling:Z

    .line 1008
    iput-boolean v1, p0, Lcom/oppo/widget/OppoYearView;->mIsMove:Z

    .line 1009
    iput v3, p0, Lcom/oppo/widget/OppoYearView;->mDrawTpye:I

    .line 1010
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoYearView;->mFlingDerection:I

    .line 1011
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mFlingRunnable:Lcom/oppo/widget/OppoYearView$FlingRunnable;

    if-nez v0, :cond_5

    .line 1013
    new-instance v0, Lcom/oppo/widget/OppoYearView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoYearView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoYearView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoYearView;->mFlingRunnable:Lcom/oppo/widget/OppoYearView$FlingRunnable;

    .line 1015
    :cond_5
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mFlingRunnable:Lcom/oppo/widget/OppoYearView$FlingRunnable;

    mul-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoYearView$FlingRunnable;->start(I)V

    goto :goto_0

    .line 1017
    :cond_6
    if-nez p1, :cond_2

    .line 1019
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoYearView;->mDrawTpye:I

    .line 1020
    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mCount:I

    .line 1021
    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    .line 1022
    iput-boolean v1, p0, Lcom/oppo/widget/OppoYearView;->mIsMove:Z

    .line 1023
    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mIsDown:I

    .line 1024
    iget-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->mIsSilent:Z

    if-nez v0, :cond_7

    .line 1026
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->playSoundEffect()V

    .line 1028
    :cond_7
    iput-boolean v1, p0, Lcom/oppo/widget/OppoYearView;->mIsSilent:Z

    .line 1029
    iget v0, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStart:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoYearView;->mCurrentResult:I

    .line 1030
    iget-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->debug:Z

    if-eqz v0, :cond_8

    .line 1032
    const-string v0, "OppoYearView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentResult  == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mCurrentResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_8
    iget v0, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoYearView;->mCurrentIndex:I

    .line 1035
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->invalidate()V

    .line 1036
    invoke-direct {p0}, Lcom/oppo/widget/OppoYearView;->notifyChange()V

    goto :goto_0
.end method

.method public onDealActionUpFilling(I)V
    .locals 8
    .parameter "Y"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1044
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1045
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoYearView;->mMinimumVelocity:I

    .line 1046
    const/16 v3, 0xaf0

    iput v3, p0, Lcom/oppo/widget/OppoYearView;->mMaximumVelocity:I

    .line 1048
    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1049
    .local v2, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x1f4

    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1051
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    float-to-int v1, v3

    .line 1053
    .local v1, initialVelocity:I
    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mMinimumVelocity:I

    if-le v1, v3, :cond_2

    .line 1055
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mIsDown:I

    .line 1056
    iput-boolean v6, p0, Lcom/oppo/widget/OppoYearView;->mIsFilling:Z

    .line 1057
    iput-boolean v5, p0, Lcom/oppo/widget/OppoYearView;->mIsMove:Z

    .line 1058
    iput v7, p0, Lcom/oppo/widget/OppoYearView;->mDrawTpye:I

    .line 1059
    iput v6, p0, Lcom/oppo/widget/OppoYearView;->mFlingDerection:I

    .line 1060
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mFlingRunnable:Lcom/oppo/widget/OppoYearView$FlingRunnable;

    if-nez v3, :cond_0

    .line 1062
    new-instance v3, Lcom/oppo/widget/OppoYearView$FlingRunnable;

    invoke-direct {v3, p0}, Lcom/oppo/widget/OppoYearView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoYearView;)V

    iput-object v3, p0, Lcom/oppo/widget/OppoYearView;->mFlingRunnable:Lcom/oppo/widget/OppoYearView$FlingRunnable;

    .line 1064
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mFlingRunnable:Lcom/oppo/widget/OppoYearView$FlingRunnable;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoYearView$FlingRunnable;->start(I)V

    .line 1079
    :cond_1
    :goto_0
    return-void

    .line 1066
    :cond_2
    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mMinimumVelocity:I

    neg-int v3, v3

    if-ge v1, v3, :cond_1

    .line 1068
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mIsDown:I

    .line 1069
    iput-boolean v6, p0, Lcom/oppo/widget/OppoYearView;->mIsFilling:Z

    .line 1070
    iput-boolean v5, p0, Lcom/oppo/widget/OppoYearView;->mIsMove:Z

    .line 1071
    iput v7, p0, Lcom/oppo/widget/OppoYearView;->mDrawTpye:I

    .line 1072
    const/4 v3, -0x1

    iput v3, p0, Lcom/oppo/widget/OppoYearView;->mFlingDerection:I

    .line 1073
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mFlingRunnable:Lcom/oppo/widget/OppoYearView$FlingRunnable;

    if-nez v3, :cond_3

    .line 1075
    new-instance v3, Lcom/oppo/widget/OppoYearView$FlingRunnable;

    invoke-direct {v3, p0}, Lcom/oppo/widget/OppoYearView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoYearView;)V

    iput-object v3, p0, Lcom/oppo/widget/OppoYearView;->mFlingRunnable:Lcom/oppo/widget/OppoYearView$FlingRunnable;

    .line 1077
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mFlingRunnable:Lcom/oppo/widget/OppoYearView$FlingRunnable;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoYearView$FlingRunnable;->start(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 524
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 525
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oppo/widget/OppoYearView;->mIsStopRun:Z

    .line 526
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/widget/OppoYearView;->mIsAttached:Z

    .line 527
    iget-boolean v3, p0, Lcom/oppo/widget/OppoYearView;->debug:Z

    if-eqz v3, :cond_0

    .line 529
    const-string v3, "OppoYearView"

    const-string v4, "luoyaojun -- onDetachedFromWindow --"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 534
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 538
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 540
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 542
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 544
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mYearArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 546
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mYearArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 548
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mYearArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 550
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mScalseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 551
    iput-object v5, p0, Lcom/oppo/widget/OppoYearView;->mScalseBitmap:Landroid/graphics/Bitmap;

    .line 553
    iput-object v5, p0, Lcom/oppo/widget/OppoYearView;->audioManager:Landroid/media/AudioManager;

    .line 554
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x2

    const/high16 v4, 0x4080

    .line 1084
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mDrawTpye:I

    packed-switch v1, :pswitch_data_0

    .line 1196
    :cond_0
    return-void

    .line 1088
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 1090
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_2

    .line 1092
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_1

    .line 1095
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1088
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1101
    :cond_2
    iget-boolean v1, p0, Lcom/oppo/widget/OppoYearView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_3

    .line 1103
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_1

    .line 1106
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1112
    :cond_3
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_1

    .line 1115
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1124
    .end local v0           #i:I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v6, :cond_0

    .line 1126
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_5

    .line 1128
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_4

    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_4

    .line 1131
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1124
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1137
    :cond_5
    iget-boolean v1, p0, Lcom/oppo/widget/OppoYearView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_6

    .line 1139
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_4

    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_4

    .line 1142
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1148
    :cond_6
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_4

    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_4

    .line 1151
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1159
    .end local v0           #i:I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    if-ge v0, v6, :cond_0

    .line 1161
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_8

    .line 1163
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_7

    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_7

    .line 1166
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1159
    :cond_7
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1172
    :cond_8
    iget-boolean v1, p0, Lcom/oppo/widget/OppoYearView;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_9

    .line 1174
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_7

    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_7

    .line 1177
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 1183
    :cond_9
    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_7

    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v1, v2

    if-ltz v1, :cond_7

    .line 1186
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x23

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1084
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
    .line 595
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 596
    iget v0, p0, Lcom/oppo/widget/OppoYearView;->mBgWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoYearView;->mBgHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoYearView;->setMeasuredDimension(II)V

    .line 597
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 603
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 604
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

    .line 831
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 832
    .local v2, Y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 833
    .local v1, X:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    long-to-float v0, v3

    .line 835
    .local v0, Time:F
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_0

    .line 837
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoYearView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 839
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 841
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 869
    :pswitch_0
    iget-boolean v3, p0, Lcom/oppo/widget/OppoYearView;->mIsMove:Z

    if-eqz v3, :cond_1

    .line 870
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoYearView;->onDealActionUpFilling(I)V

    .line 872
    :cond_1
    iget-boolean v3, p0, Lcom/oppo/widget/OppoYearView;->mIsMove:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoYearView;->mIsFilling:Z

    if-nez v3, :cond_2

    .line 874
    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mIsDown:I

    if-eqz v3, :cond_2

    .line 876
    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mIsDown:I

    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoYearView;->onDealActionUp(I)V

    .line 880
    :cond_2
    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mIsDown:I

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/oppo/widget/OppoYearView;->mIsFilling:Z

    if-nez v3, :cond_3

    .line 883
    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_5

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x5

    if-ge v3, v4, :cond_5

    .line 885
    invoke-virtual {p0, v8}, Lcom/oppo/widget/OppoYearView;->onDealActionUp(I)V

    .line 920
    :cond_3
    :goto_0
    return v6

    .line 845
    :pswitch_1
    iput-boolean v5, p0, Lcom/oppo/widget/OppoYearView;->mIsStopRun:Z

    .line 846
    iget-object v3, p0, Lcom/oppo/widget/OppoYearView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 847
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoYearView;->onDealActionDown(I)V

    .line 848
    iput v2, p0, Lcom/oppo/widget/OppoYearView;->mOldY:I

    goto :goto_0

    .line 854
    :pswitch_2
    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOldY:I

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v9, :cond_4

    .line 856
    iput v5, p0, Lcom/oppo/widget/OppoYearView;->mIsDown:I

    .line 857
    iput-boolean v6, p0, Lcom/oppo/widget/OppoYearView;->mIsMove:Z

    .line 859
    :cond_4
    iput v6, p0, Lcom/oppo/widget/OppoYearView;->mDrawTpye:I

    .line 860
    iput v2, p0, Lcom/oppo/widget/OppoYearView;->mOldY:I

    .line 861
    iput-boolean v5, p0, Lcom/oppo/widget/OppoYearView;->mIsFilling:Z

    .line 862
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoYearView;->onDealActionMove(I)V

    goto :goto_0

    .line 887
    :cond_5
    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_6

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    if-lt v3, v9, :cond_6

    .line 889
    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoYearView;->onDealActionUp(I)V

    goto :goto_0

    .line 891
    :cond_6
    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    float-to-int v4, v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_7

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    const/4 v4, -0x5

    if-gt v3, v4, :cond_7

    .line 893
    invoke-virtual {p0, v8}, Lcom/oppo/widget/OppoYearView;->onDealActionUp(I)V

    goto :goto_0

    .line 895
    :cond_7
    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    float-to-int v4, v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    if-gt v3, v4, :cond_8

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    float-to-int v4, v4

    neg-int v4, v4

    add-int/lit8 v4, v4, 0x5

    if-le v3, v4, :cond_8

    .line 897
    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoYearView;->onDealActionUp(I)V

    goto :goto_0

    .line 899
    :cond_8
    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x5

    if-lt v3, v4, :cond_9

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x1

    if-gt v3, v4, :cond_9

    .line 901
    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    .line 902
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoYearView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 904
    :cond_9
    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    neg-float v4, v4

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x5

    if-gt v3, v4, :cond_a

    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mOffset:I

    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mTextHeight:F

    neg-float v4, v4

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    if-lt v3, v4, :cond_a

    .line 906
    iget v3, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    .line 907
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoYearView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 911
    :cond_a
    iput-boolean v6, p0, Lcom/oppo/widget/OppoYearView;->mIsSilent:Z

    .line 912
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoYearView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 841
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
    .line 284
    iget-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->mIsAttached:Z

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->debug:Z

    if-eqz v0, :cond_1

    .line 289
    const-string v0, "OppoYearView"

    const-string v1, "luoyaojun -- playSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oppo/widget/OppoYearView;->audioManager:Landroid/media/AudioManager;

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->audioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0
.end method

.method public reDrawChAndNewYear()V
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoYearView;->mDrawTpye:I

    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoYearView;->onDealActionUp(I)V

    .line 560
    return-void
.end method

.method public reFreshSelf()V
    .locals 2

    .prologue
    .line 1212
    iget-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->debug:Z

    if-eqz v0, :cond_0

    .line 1214
    const-string v0, "OppoYearView"

    const-string v1, "please reFreshSelf ---------------- is called !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoYearView;->mDrawTpye:I

    .line 1218
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->invalidate()V

    .line 1219
    invoke-direct {p0}, Lcom/oppo/widget/OppoYearView;->notifyChange()V

    .line 1220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->mIsStopRun:Z

    .line 1221
    iget v0, p0, Lcom/oppo/widget/OppoYearView;->mCurrentIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    .line 1222
    return-void
.end method

.method public setCalendarMode(Z)V
    .locals 3
    .parameter "isCalendarMode"

    .prologue
    const/4 v2, 0x0

    .line 299
    iput-boolean p1, p0, Lcom/oppo/widget/OppoYearView;->mIsCalendarDatePicker:Z

    .line 300
    invoke-virtual {p0}, Lcom/oppo/widget/OppoYearView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoYearView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    .line 301
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoYearView;->mBgHeight:I

    .line 302
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 303
    iput-object v2, p0, Lcom/oppo/widget/OppoYearView;->mBackGroundHeight:Landroid/graphics/drawable/Drawable;

    .line 304
    return-void
.end method

.method public setCurrentPos(I)V
    .locals 3
    .parameter "start"

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->debug:Z

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "OppoYearView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- setCurrentPos Year mStartIndex of begin == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    iput p1, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    .line 366
    iget v0, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoYearView;->mCurrentResult:I

    .line 367
    iget-boolean v0, p0, Lcom/oppo/widget/OppoYearView;->debug:Z

    if-eqz v0, :cond_1

    .line 369
    const-string v0, "OppoYearView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- setCurrentPos Year mStartIndex of end == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoYearView;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    return-void
.end method

.method public setFontColorAndSize(II)V
    .locals 0
    .parameter "color"
    .parameter "size"

    .prologue
    .line 486
    iput p2, p0, Lcom/oppo/widget/OppoYearView;->mFontSize:I

    .line 487
    iput p1, p0, Lcom/oppo/widget/OppoYearView;->mFontColor:I

    .line 488
    return-void
.end method

.method public setOnChangeListener(Lcom/oppo/widget/OppoYearView$OnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 569
    iput-object p1, p0, Lcom/oppo/widget/OppoYearView;->mListener:Lcom/oppo/widget/OppoYearView$OnChangedListener;

    .line 570
    return-void
.end method

.method public setRange(II)Z
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v4, 0x780

    const/4 v2, 0x0

    .line 378
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 379
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    .line 384
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoYearView;->mTimeArray:Ljava/util/ArrayList;

    .line 388
    if-gt v4, p1, :cond_2

    if-ge p1, p2, :cond_2

    sub-int v1, p2, p1

    const/4 v3, 0x5

    if-le v1, v3, :cond_2

    .line 390
    iput p1, p0, Lcom/oppo/widget/OppoYearView;->mStart:I

    .line 391
    iput p2, p0, Lcom/oppo/widget/OppoYearView;->mEnd:I

    .line 392
    invoke-direct {p0}, Lcom/oppo/widget/OppoYearView;->setDisplayValues()V

    .line 393
    const/4 v1, 0x1

    .line 398
    .end local v0           #k:I
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 386
    goto :goto_1

    .line 395
    .restart local v0       #k:I
    :cond_2
    iput v4, p0, Lcom/oppo/widget/OppoYearView;->mStart:I

    .line 396
    const/16 v1, 0x7f4

    iput v1, p0, Lcom/oppo/widget/OppoYearView;->mEnd:I

    .line 397
    invoke-direct {p0}, Lcom/oppo/widget/OppoYearView;->setDisplayValues()V

    move v1, v2

    .line 398
    goto :goto_1
.end method

.method public setShowContent([Ljava/lang/String;)Z
    .locals 2
    .parameter "contentArray"

    .prologue
    const/4 v0, 0x0

    .line 464
    if-nez p1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v0

    .line 470
    :cond_1
    array-length v1, p1

    if-eqz v1, :cond_0

    .line 474
    iput-object p1, p0, Lcom/oppo/widget/OppoYearView;->mContent:[Ljava/lang/String;

    .line 475
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mContent:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/oppo/widget/OppoYearView;->mContent:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoYearView;->mTotalCount:I

    .line 481
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setShowCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 353
    iput p1, p0, Lcom/oppo/widget/OppoYearView;->mShowCount:I

    .line 354
    return-void
.end method

.method public setStopRun(Z)V
    .locals 0
    .parameter "isStopRun"

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/oppo/widget/OppoYearView;->mIsStopRun:Z

    .line 281
    return-void
.end method
