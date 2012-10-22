.class public Lcom/oppo/widget/OppoTimeView;
.super Landroid/view/View;
.source "OppoTimeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoTimeView$OnChangedListener;,
        Lcom/oppo/widget/OppoTimeView$FlingRunnable;
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

.field private draw_cx:I

.field private draw_x:I

.field private mBackGround:Landroid/graphics/drawable/Drawable;

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

.field private mCurrentResult:I

.field private mCurrentShowContent:[Ljava/lang/String;

.field private mDrawTpye:I

.field private mEnd:I

.field private mEventFlagFalse:Ljava/lang/Boolean;

.field private mEventFlagTrue:Ljava/lang/Boolean;

.field private mFlingDerection:I

.field private mFlingRunnable:Lcom/oppo/widget/OppoTimeView$FlingRunnable;

.field private mFontColor:I

.field private mFontSize:I

.field private mIs24Hours:Z

.field private mIsAlarm:Z

.field private mIsAttached:Z

.field private mIsDown:I

.field private volatile mIsFilling:Z

.field private mIsMove:Z

.field private mIsSilent:Z

.field private mIsStopRun:Z

.field private mIsUseListView:Ljava/lang/Boolean;

.field private mLastFlingY:I

.field private mListener:Lcom/oppo/widget/OppoTimeView$OnChangedListener;

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

.field private testBitmap:Landroid/graphics/Bitmap;

.field private textLength:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoTimeView;->ISUSELISTVIEWFLAG:Ljava/lang/Boolean;

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoTimeView;->ISNOTUSELISTVIEWFLAG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x5

    const/high16 v4, -0x100

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const-string v0, "OppoTimeView"

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->TAG:Ljava/lang/String;

    .line 34
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTimeView;->debug:Z

    .line 37
    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    .line 40
    iput v5, p0, Lcom/oppo/widget/OppoTimeView;->mShowCount:I

    .line 43
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mContent:[Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    .line 48
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mCurrentShowContent:[Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mPaint:Landroid/text/TextPaint;

    .line 52
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mCenterPaint:Landroid/text/TextPaint;

    .line 58
    const/16 v0, 0x3c

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mFontSize:I

    .line 59
    iput v4, p0, Lcom/oppo/widget/OppoTimeView;->mFontColor:I

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mDrawTpye:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    .line 68
    iput-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z

    .line 83
    sget-object v0, Lcom/oppo/widget/OppoTimeView;->ISUSELISTVIEWFLAG:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mIsUseListView:Ljava/lang/Boolean;

    .line 84
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mEventFlagTrue:Ljava/lang/Boolean;

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mEventFlagFalse:Ljava/lang/Boolean;

    .line 92
    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mYStart:I

    .line 93
    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mOldY:I

    .line 96
    iput-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsMove:Z

    .line 97
    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mCount:I

    .line 98
    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    .line 99
    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mFlingDerection:I

    .line 100
    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsDown:I

    .line 102
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->testBitmap:Landroid/graphics/Bitmap;

    .line 104
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mNewImageIds:[I

    .line 110
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    .line 111
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArraycc:Ljava/util/ArrayList;

    .line 112
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 113
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    .line 114
    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapHeight:I

    .line 115
    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapWidth:I

    .line 116
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 117
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 119
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    .line 121
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mContext:Landroid/content/Context;

    .line 125
    iput-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsAlarm:Z

    .line 128
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->audioManager:Landroid/media/AudioManager;

    .line 130
    iput-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsStopRun:Z

    .line 132
    iput-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsSilent:Z

    .line 152
    iput-object p1, p0, Lcom/oppo/widget/OppoTimeView;->mContext:Landroid/content/Context;

    .line 153
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mPaint:Landroid/text/TextPaint;

    .line 154
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mPaint:Landroid/text/TextPaint;

    const v1, -0xeeeeef

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 155
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 156
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x4248

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 158
    iget v0, p0, Lcom/oppo/widget/OppoTimeView;->mShowCount:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mCurrentShowContent:[Ljava/lang/String;

    .line 160
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mCenterPaint:Landroid/text/TextPaint;

    .line 161
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mCenterPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 162
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mCenterPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x4282

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 163
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mCenterPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 165
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mConfiguration:Landroid/content/res/Configuration;

    .line 166
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mCreationOrientation:I

    .line 168
    iget v0, p0, Lcom/oppo/widget/OppoTimeView;->mCreationOrientation:I

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    .line 171
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mBgWidth:I

    .line 172
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mBgHeight:I

    .line 173
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    .line 193
    :goto_0
    iput v5, p0, Lcom/oppo/widget/OppoTimeView;->mShowCount:I

    .line 194
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimeView;->measureTextLength()F

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->textLength:F

    .line 195
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimeView;->measureCenterTextLength()F

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->centerTextLength:F

    .line 196
    const/16 v0, 0x1d

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->draw_x:I

    .line 197
    const/16 v0, 0x15

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->draw_cx:I

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    .line 200
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimeView;->obtainTextHeightAndWidth()V

    .line 201
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 202
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 203
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805b3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 205
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108071a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArraycc:Ljava/util/ArrayList;

    .line 209
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapHeight:I

    .line 210
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapWidth:I

    .line 211
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 212
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTimeView;->getBaseBitmap(Ljava/util/ArrayList;)V

    .line 213
    return-void

    .line 177
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimeView;->mIsAlarm:Z

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    .line 180
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mBgWidth:I

    .line 181
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mBgHeight:I

    .line 182
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    .line 187
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mBgWidth:I

    .line 188
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mBgHeight:I

    .line 189
    iput-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 104
    :array_0
    .array-data 0x4
        0xe1t 0x2t 0x8t 0x1t
        0xe2t 0x2t 0x8t 0x1t
        0xe3t 0x2t 0x8t 0x1t
        0xe4t 0x2t 0x8t 0x1t
        0xe5t 0x2t 0x8t 0x1t
        0xe6t 0x2t 0x8t 0x1t
        0xe7t 0x2t 0x8t 0x1t
        0xe8t 0x2t 0x8t 0x1t
        0xe9t 0x2t 0x8t 0x1t
        0xeat 0x2t 0x8t 0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoTimeView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oppo/widget/OppoTimeView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoTimeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/oppo/widget/OppoTimeView;->mFlingDerection:I

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoTimeView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoTimeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    return v0
.end method

.method static synthetic access$202(Lcom/oppo/widget/OppoTimeView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoTimeView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoTimeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/oppo/widget/OppoTimeView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoTimeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoTimeView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimeView;->mIsStopRun:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/widget/OppoTimeView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/oppo/widget/OppoTimeView;->mDrawTpye:I

    return p1
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoTimeView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimeView;->notifyChange()V

    return-void
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoTimeView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimeView;->debug:Z

    return v0
.end method

.method private getValues(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 460
    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
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
    .line 478
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mCenterPaint:Landroid/text/TextPaint;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private measureTextLength()F
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mPaint:Landroid/text/TextPaint;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 681
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mListener:Lcom/oppo/widget/OppoTimeView$OnChangedListener;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- notifyChangeStart -- mStartIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mListener:Lcom/oppo/widget/OppoTimeView$OnChangedListener;

    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    invoke-interface {v0, p0, v1}, Lcom/oppo/widget/OppoTimeView$OnChangedListener;->onChanged(Lcom/oppo/widget/OppoTimeView;I)V

    .line 685
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- notifyChangeEnd -- mStartIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    return-void
.end method

.method private setDisplayValues(Z)V
    .locals 5
    .parameter "is24Hour"

    .prologue
    .line 441
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTimeView;->mIs24Hours:Z

    .line 442
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 443
    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mEnd:I

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 450
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 452
    invoke-virtual {p0, v0, p1}, Lcom/oppo/widget/OppoTimeView;->getContentBitmap(IZ)V

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    .line 456
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- luoyaojun mBaseTimeArraycc == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArraycc:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
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
    .line 218
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mNewImageIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mNewImageIds:[I

    aget v3, v3, v1

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- getBaseBitmap list == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method public getContentBitmap(IZ)V
    .locals 9
    .parameter "i"
    .parameter "is24Hour"

    .prologue
    const/high16 v8, 0x42b0

    const/high16 v7, 0x425c

    const/high16 v6, 0x4284

    const/high16 v5, 0x4204

    const/4 v4, 0x0

    .line 284
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapWidth:I

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 286
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez p1, :cond_2

    .line 288
    if-eqz p2, :cond_0

    .line 290
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 291
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 292
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v7, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 293
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v8, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 436
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 298
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 300
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mEnd:I

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 303
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 308
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 317
    :cond_2
    const/16 v1, 0x9

    if-gt p1, v1, :cond_4

    if-lez p1, :cond_4

    .line 319
    if-eqz p2, :cond_3

    .line 321
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 322
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 323
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v7, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 324
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v8, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 328
    :cond_3
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 329
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 330
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 331
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 334
    :cond_4
    const/16 v1, 0x13

    if-gt p1, v1, :cond_6

    .line 336
    if-eqz p2, :cond_5

    .line 338
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 339
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 340
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v7, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 341
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v8, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 345
    :cond_5
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 346
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 347
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 348
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 351
    :cond_6
    const/16 v1, 0x1d

    if-gt p1, v1, :cond_8

    .line 353
    if-eqz p2, :cond_7

    .line 355
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 356
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 357
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v7, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 358
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v8, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 362
    :cond_7
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 363
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 364
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 365
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 368
    :cond_8
    const/16 v1, 0x27

    if-gt p1, v1, :cond_a

    .line 370
    if-eqz p2, :cond_9

    .line 372
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 374
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v7, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 375
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v8, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 379
    :cond_9
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 380
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 381
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 382
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 385
    :cond_a
    const/16 v1, 0x31

    if-gt p1, v1, :cond_c

    .line 387
    if-eqz p2, :cond_b

    .line 389
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 390
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 391
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v7, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 392
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v8, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 396
    :cond_b
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 397
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 398
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 399
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 402
    :cond_c
    const/16 v1, 0x3b

    if-gt p1, v1, :cond_e

    .line 404
    if-eqz p2, :cond_d

    .line 406
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 407
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 408
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v7, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 409
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v8, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 413
    :cond_d
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 414
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 415
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 416
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 421
    :cond_e
    if-eqz p2, :cond_f

    .line 423
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 424
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 425
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v7, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 426
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v8, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 430
    :cond_f
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 431
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mScalseBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 432
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 433
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getCurrentSelectedPos()I
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Lcom/oppo/widget/OppoTimeView;->mCurrentResult:I

    return v0
.end method

.method public obtainTextHeightAndWidth()V
    .locals 1

    .prologue
    .line 977
    const/high16 v0, 0x42b4

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    .line 978
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 490
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTimeView;->mIsStopRun:Z

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTimeView;->mIsAttached:Z

    .line 493
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    .line 495
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTimeView;->getBaseBitmap(Ljava/util/ArrayList;)V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    .line 500
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimeView;->mIs24Hours:Z

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoTimeView;->setDisplayValues(Z)V

    .line 502
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimeView;->debug:Z

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->TAG:Ljava/lang/String;

    const-string v1, "luoyaojun -- onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_2
    return-void
.end method

.method public onDealActionDown(I)V
    .locals 5
    .parameter "Y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 810
    iput v2, p0, Lcom/oppo/widget/OppoTimeView;->mIsDown:I

    .line 812
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z

    if-nez v0, :cond_1

    .line 814
    iget v0, p0, Lcom/oppo/widget/OppoTimeView;->mCreationOrientation:I

    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 816
    const/16 v0, 0xbe

    if-le p1, v0, :cond_2

    .line 818
    iput v3, p0, Lcom/oppo/widget/OppoTimeView;->mIsDown:I

    .line 837
    :cond_0
    :goto_0
    iput v2, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    .line 840
    :cond_1
    iput-boolean v2, p0, Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z

    .line 841
    iput-boolean v2, p0, Lcom/oppo/widget/OppoTimeView;->mIsMove:Z

    .line 842
    iput v2, p0, Lcom/oppo/widget/OppoTimeView;->mDrawTpye:I

    .line 843
    iput p1, p0, Lcom/oppo/widget/OppoTimeView;->mYStart:I

    .line 844
    iput v2, p0, Lcom/oppo/widget/OppoTimeView;->mCount:I

    .line 846
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimeView;->invalidate()V

    .line 847
    return-void

    .line 820
    :cond_2
    const/16 v0, 0x46

    if-ge p1, v0, :cond_0

    .line 822
    iput v4, p0, Lcom/oppo/widget/OppoTimeView;->mIsDown:I

    goto :goto_0

    .line 827
    :cond_3
    const/16 v0, 0xa0

    if-le p1, v0, :cond_4

    .line 829
    iput v3, p0, Lcom/oppo/widget/OppoTimeView;->mIsDown:I

    goto :goto_0

    .line 831
    :cond_4
    const/16 v0, 0x28

    if-ge p1, v0, :cond_0

    .line 833
    iput v4, p0, Lcom/oppo/widget/OppoTimeView;->mIsDown:I

    goto :goto_0
.end method

.method public onDealActionMove(I)V
    .locals 4
    .parameter "Y"

    .prologue
    .line 851
    const/4 v0, 0x0

    .line 852
    .local v0, distance:I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsMove:Z

    if-eqz v1, :cond_0

    .line 854
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mYStart:I

    sub-int v0, p1, v1

    .line 857
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z

    if-eqz v1, :cond_1

    .line 859
    move v0, p1

    .line 862
    :cond_1
    if-gez v0, :cond_4

    .line 864
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    float-to-int v2, v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mCount:I

    .line 865
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mCount:I

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    float-to-int v3, v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    .line 877
    :cond_2
    :goto_0
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mCount:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    rem-int/2addr v2, v3

    if-eq v1, v2, :cond_3

    .line 880
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimeView;->playSoundEffect()V

    .line 883
    :cond_3
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    .line 884
    iput p1, p0, Lcom/oppo/widget/OppoTimeView;->mYStart:I

    .line 885
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimeView;->invalidate()V

    .line 886
    return-void

    .line 867
    :cond_4
    if-lez v0, :cond_5

    .line 869
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    float-to-int v2, v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mCount:I

    .line 870
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mCount:I

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    float-to-int v3, v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    goto :goto_0

    .line 872
    :cond_5
    if-nez v0, :cond_2

    .line 874
    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mCount:I

    goto :goto_0
.end method

.method public onDealActionUp(I)V
    .locals 4
    .parameter "Y"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 891
    if-eq p1, v2, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 893
    :cond_0
    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsDown:I

    .line 894
    iput-boolean v2, p0, Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z

    .line 895
    iput-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsMove:Z

    .line 896
    iput v3, p0, Lcom/oppo/widget/OppoTimeView;->mDrawTpye:I

    .line 897
    iput p1, p0, Lcom/oppo/widget/OppoTimeView;->mFlingDerection:I

    .line 898
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mFlingRunnable:Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    if-nez v0, :cond_1

    .line 900
    new-instance v0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoTimeView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoTimeView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mFlingRunnable:Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mFlingRunnable:Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    mul-int/lit8 v1, p1, -0x1

    mul-int/lit16 v1, v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->start(I)V

    .line 933
    :cond_2
    :goto_0
    return-void

    .line 904
    :cond_3
    if-eq p1, v3, :cond_4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    .line 906
    :cond_4
    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsDown:I

    .line 907
    iput-boolean v2, p0, Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z

    .line 908
    iput-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsMove:Z

    .line 909
    iput v3, p0, Lcom/oppo/widget/OppoTimeView;->mDrawTpye:I

    .line 910
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mFlingDerection:I

    .line 911
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mFlingRunnable:Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    if-nez v0, :cond_5

    .line 913
    new-instance v0, Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoTimeView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoTimeView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mFlingRunnable:Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    .line 915
    :cond_5
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mFlingRunnable:Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    mul-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->start(I)V

    goto :goto_0

    .line 917
    :cond_6
    if-nez p1, :cond_2

    .line 919
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mDrawTpye:I

    .line 920
    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mCount:I

    .line 921
    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    .line 922
    iput-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsMove:Z

    .line 923
    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsDown:I

    .line 924
    iget v0, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mCurrentResult:I

    .line 925
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimeView;->mIsSilent:Z

    if-nez v0, :cond_7

    .line 927
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimeView;->playSoundEffect()V

    .line 929
    :cond_7
    iput-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsSilent:Z

    .line 930
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimeView;->invalidate()V

    .line 931
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimeView;->notifyChange()V

    goto :goto_0
.end method

.method public onDealActionUpFilling(I)V
    .locals 8
    .parameter "Y"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 938
    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 939
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoTimeView;->mMinimumVelocity:I

    .line 940
    const/16 v3, 0x708

    iput v3, p0, Lcom/oppo/widget/OppoTimeView;->mMaximumVelocity:I

    .line 942
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 943
    .local v2, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    iget v4, p0, Lcom/oppo/widget/OppoTimeView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 945
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    float-to-int v1, v3

    .line 947
    .local v1, initialVelocity:I
    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mMinimumVelocity:I

    if-le v1, v3, :cond_2

    .line 949
    iput v5, p0, Lcom/oppo/widget/OppoTimeView;->mIsDown:I

    .line 950
    iput-boolean v6, p0, Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z

    .line 951
    iput-boolean v5, p0, Lcom/oppo/widget/OppoTimeView;->mIsMove:Z

    .line 952
    iput v7, p0, Lcom/oppo/widget/OppoTimeView;->mDrawTpye:I

    .line 953
    iput v6, p0, Lcom/oppo/widget/OppoTimeView;->mFlingDerection:I

    .line 954
    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mFlingRunnable:Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    if-nez v3, :cond_0

    .line 956
    new-instance v3, Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    invoke-direct {v3, p0}, Lcom/oppo/widget/OppoTimeView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoTimeView;)V

    iput-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mFlingRunnable:Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    .line 958
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mFlingRunnable:Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->start(I)V

    .line 973
    :cond_1
    :goto_0
    return-void

    .line 960
    :cond_2
    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mMinimumVelocity:I

    neg-int v3, v3

    if-ge v1, v3, :cond_1

    .line 962
    iput v5, p0, Lcom/oppo/widget/OppoTimeView;->mIsDown:I

    .line 963
    iput-boolean v6, p0, Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z

    .line 964
    iput-boolean v5, p0, Lcom/oppo/widget/OppoTimeView;->mIsMove:Z

    .line 965
    iput v7, p0, Lcom/oppo/widget/OppoTimeView;->mDrawTpye:I

    .line 966
    const/4 v3, -0x1

    iput v3, p0, Lcom/oppo/widget/OppoTimeView;->mFlingDerection:I

    .line 967
    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mFlingRunnable:Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    if-nez v3, :cond_3

    .line 969
    new-instance v3, Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    invoke-direct {v3, p0}, Lcom/oppo/widget/OppoTimeView$FlingRunnable;-><init>(Lcom/oppo/widget/OppoTimeView;)V

    iput-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mFlingRunnable:Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    .line 971
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mFlingRunnable:Lcom/oppo/widget/OppoTimeView$FlingRunnable;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoTimeView$FlingRunnable;->start(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 511
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 512
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/widget/OppoTimeView;->mIsStopRun:Z

    .line 513
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/widget/OppoTimeView;->mIsAttached:Z

    .line 514
    iget-boolean v2, p0, Lcom/oppo/widget/OppoTimeView;->debug:Z

    if-eqz v2, :cond_0

    .line 516
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->TAG:Ljava/lang/String;

    const-string v3, "luoyaojun -- onDetachedFromWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 521
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 524
    iput-object v4, p0, Lcom/oppo/widget/OppoTimeView;->mBaseTimeArray:Ljava/util/ArrayList;

    .line 526
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 528
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 530
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 531
    iput-object v4, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    .line 532
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 983
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mDrawTpye:I

    packed-switch v1, :pswitch_data_0

    .line 1076
    :cond_0
    return-void

    .line 986
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 989
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_1

    .line 991
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 986
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    :cond_1
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsAlarm:Z

    if-eqz v1, :cond_2

    .line 998
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1003
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2f

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1017
    .end local v0           #i:I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v6, :cond_0

    .line 1023
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_3

    .line 1025
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1017
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1032
    :cond_3
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsAlarm:Z

    if-eqz v1, :cond_4

    .line 1034
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1039
    :cond_4
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2f

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1052
    .end local v0           #i:I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    if-ge v0, v6, :cond_0

    .line 1054
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v5, :cond_5

    .line 1056
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1052
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1061
    :cond_5
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsAlarm:Z

    if-eqz v1, :cond_6

    .line 1063
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 1068
    :cond_6
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mTimeArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x5a

    add-int/lit8 v2, v2, -0x2f

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/widget/OppoTimeView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 983
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 697
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 699
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 705
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 706
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 711
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 713
    .local v0, Y:I
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 715
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 749
    :pswitch_0
    sget-object v1, Lcom/oppo/widget/OppoTimeView;->ISUSELISTVIEWFLAG:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mIsUseListView:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_1

    .line 751
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mEventFlagFalse:Ljava/lang/Boolean;

    invoke-static {v1}, Landroid/view/ViewGroup;->setEventFlag(Ljava/lang/Boolean;)V

    .line 753
    :cond_1
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsMove:Z

    if-eqz v1, :cond_2

    .line 755
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTimeView;->onDealActionUpFilling(I)V

    .line 758
    :cond_2
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsMove:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z

    if-nez v1, :cond_3

    .line 760
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsDown:I

    if-eqz v1, :cond_3

    .line 762
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsDown:I

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTimeView;->onDealActionUp(I)V

    .line 766
    :cond_3
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsDown:I

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z

    if-nez v1, :cond_4

    .line 768
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_7

    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x5

    if-ge v1, v2, :cond_7

    .line 770
    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoTimeView;->onDealActionUp(I)V

    .line 805
    :cond_4
    :goto_0
    return v4

    .line 723
    :pswitch_1
    sget-object v1, Lcom/oppo/widget/OppoTimeView;->ISUSELISTVIEWFLAG:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimeView;->mIsUseListView:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_5

    .line 725
    iget-object v1, p0, Lcom/oppo/widget/OppoTimeView;->mEventFlagTrue:Ljava/lang/Boolean;

    invoke-static {v1}, Landroid/view/ViewGroup;->setEventFlag(Ljava/lang/Boolean;)V

    .line 727
    :cond_5
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTimeView;->onDealActionDown(I)V

    .line 728
    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mOldY:I

    goto :goto_0

    .line 734
    :pswitch_2
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOldY:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v7, :cond_6

    .line 736
    iput v3, p0, Lcom/oppo/widget/OppoTimeView;->mIsDown:I

    .line 737
    iput-boolean v4, p0, Lcom/oppo/widget/OppoTimeView;->mIsMove:Z

    .line 739
    :cond_6
    iput v4, p0, Lcom/oppo/widget/OppoTimeView;->mDrawTpye:I

    .line 740
    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mOldY:I

    .line 741
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTimeView;->mIsFilling:Z

    .line 742
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTimeView;->onDealActionMove(I)V

    goto :goto_0

    .line 772
    :cond_7
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_8

    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    if-lt v1, v7, :cond_8

    .line 774
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoTimeView;->onDealActionUp(I)V

    goto :goto_0

    .line 776
    :cond_8
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    float-to-int v2, v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_9

    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    const/4 v2, -0x5

    if-gt v1, v2, :cond_9

    .line 778
    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoTimeView;->onDealActionUp(I)V

    goto :goto_0

    .line 780
    :cond_9
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    float-to-int v2, v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-gt v1, v2, :cond_a

    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    float-to-int v2, v2

    neg-int v2, v2

    add-int/lit8 v2, v2, 0x5

    if-le v1, v2, :cond_a

    .line 783
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoTimeView;->onDealActionUp(I)V

    goto :goto_0

    .line 785
    :cond_a
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x5

    if-lt v1, v2, :cond_b

    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_b

    .line 787
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    .line 788
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoTimeView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 790
    :cond_b
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    neg-float v2, v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x5

    if-gt v1, v2, :cond_c

    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTextHeight:F

    neg-float v2, v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_c

    .line 792
    iget v1, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoTimeView;->mTotalCount:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    .line 793
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoTimeView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 797
    :cond_c
    iput-boolean v4, p0, Lcom/oppo/widget/OppoTimeView;->mIsSilent:Z

    .line 798
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoTimeView;->onDealActionUp(I)V

    goto/16 :goto_0

    .line 719
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
    .line 267
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimeView;->mIsAttached:Z

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimeView;->debug:Z

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->TAG:Ljava/lang/String;

    const-string v1, "luoyaojun -- playSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->audioManager:Landroid/media/AudioManager;

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->audioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0
.end method

.method public setAlarm(Z)Z
    .locals 2
    .parameter "isAlarm"

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTimeView;->mIsAlarm:Z

    .line 230
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    .line 231
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mBgWidth:I

    .line 232
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimeView;->mBgHeight:I

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoTimeView;->mBackGround:Landroid/graphics/drawable/Drawable;

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public setCurrentPos(I)V
    .locals 3
    .parameter "start"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/oppo/widget/OppoTimeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- start == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iput p1, p0, Lcom/oppo/widget/OppoTimeView;->mStartIndex:I

    .line 253
    return-void
.end method

.method public setFontColorAndSize(II)V
    .locals 0
    .parameter "color"
    .parameter "size"

    .prologue
    .line 483
    iput p2, p0, Lcom/oppo/widget/OppoTimeView;->mFontSize:I

    .line 484
    iput p1, p0, Lcom/oppo/widget/OppoTimeView;->mFontColor:I

    .line 485
    return-void
.end method

.method public setOnChangeListener(Lcom/oppo/widget/OppoTimeView$OnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 676
    iput-object p1, p0, Lcom/oppo/widget/OppoTimeView;->mListener:Lcom/oppo/widget/OppoTimeView$OnChangedListener;

    .line 677
    return-void
.end method

.method public setRange(IIZ)V
    .locals 0
    .parameter "start"
    .parameter "end"
    .parameter "is24Hour"

    .prologue
    .line 260
    iput p1, p0, Lcom/oppo/widget/OppoTimeView;->mStart:I

    .line 261
    iput p2, p0, Lcom/oppo/widget/OppoTimeView;->mEnd:I

    .line 262
    invoke-direct {p0, p3}, Lcom/oppo/widget/OppoTimeView;->setDisplayValues(Z)V

    .line 263
    return-void
.end method

.method public setShowCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 243
    iput p1, p0, Lcom/oppo/widget/OppoTimeView;->mShowCount:I

    .line 244
    return-void
.end method

.method public stopSoundEffect(Z)V
    .locals 0
    .parameter "isStop"

    .prologue
    .line 1081
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTimeView;->mIsStopRun:Z

    .line 1082
    return-void
.end method
