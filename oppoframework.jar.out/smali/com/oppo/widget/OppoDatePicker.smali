.class public Lcom/oppo/widget/OppoDatePicker;
.super Landroid/widget/FrameLayout;
.source "OppoDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final EARLIEST_YEAR:I = 0x7b2

.field private static final TAG:Ljava/lang/String; = "OppoDatePicker"

.field public static mCurrentDay:I

.field public static mCurrentMonth:I

.field public static mCurrentYear:I

.field public static mIsChineseDate:Ljava/lang/Boolean;

.field public static mIsLeapMonthFlag:Ljava/lang/Boolean;

.field public static mIsSelectStatus:Z


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private final debug:Z

.field private mButtonChineseYear:Landroid/widget/Button;

.field private mButtonLeft:Landroid/widget/Button;

.field private mButtonNewYear:Landroid/widget/Button;

.field private mButtonRight:Landroid/widget/Button;

.field private mButtonSelect:Landroid/widget/Button;

.field private mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mCourrentChineseMonthDayNumber:I

.field private mCourrentNewMonthDayNumber:I

.field private mCreationOrientation:I

.field private mDateDisplayTextView:Landroid/widget/TextView;

.field private mDateView:Lcom/oppo/widget/OppoDateView;

.field private mEndYear:I

.field private mIsCalendarDatePicker:Z

.field private mIsHideDisplayDate:Z

.field private mIsLeapYear:Z

.field private mIsMaxMonthLeap:Z

.field private mIsOnlySolarCalendar:Z

.field private mLeapMonth:I

.field private mMaxDay:I

.field private mMaxMonth:I

.field private mMinDay:I

.field private mMinMonth:I

.field private mMonthView:Lcom/oppo/widget/OppoMonthView;

.field private mMouthImview:Landroid/widget/ImageView;

.field private mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

.field private mStartYear:I

.field private mYearView:Lcom/oppo/widget/OppoYearView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 50
    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 51
    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 68
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    .line 69
    sput-boolean v1, Lcom/oppo/widget/OppoDatePicker;->mIsSelectStatus:Z

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoDatePicker;->mIsLeapMonthFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v10, 0x780

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-boolean v7, p0, Lcom/oppo/widget/OppoDatePicker;->debug:Z

    .line 53
    iput v7, p0, Lcom/oppo/widget/OppoDatePicker;->mCourrentNewMonthDayNumber:I

    .line 54
    iput v7, p0, Lcom/oppo/widget/OppoDatePicker;->mCourrentChineseMonthDayNumber:I

    .line 56
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    .line 57
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    .line 58
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    .line 60
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonChineseYear:Landroid/widget/Button;

    .line 61
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonNewYear:Landroid/widget/Button;

    .line 62
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    .line 63
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    .line 64
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    .line 66
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    .line 73
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 78
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mDateDisplayTextView:Landroid/widget/TextView;

    .line 79
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    .line 80
    iput-boolean v7, p0, Lcom/oppo/widget/OppoDatePicker;->mIsHideDisplayDate:Z

    .line 82
    iput v10, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    .line 83
    const/16 v5, 0x7f4

    iput v5, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    .line 96
    iput-boolean v7, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    .line 98
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->audioManager:Landroid/media/AudioManager;

    .line 129
    iput-object p1, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    .line 136
    sget-object v5, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v5, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 137
    .local v1, attrArray:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 140
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 142
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 144
    .local v0, attr:I
    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :pswitch_0
    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    goto :goto_1

    .line 157
    .end local v0           #attr:I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_1
    new-instance v5, Lcom/oppo/util/ChineseDateAndSolarDate;

    invoke-direct {v5}, Lcom/oppo/util/ChineseDateAndSolarDate;-><init>()V

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 162
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mConfiguration:Landroid/content/res/Configuration;

    .line 163
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/oppo/widget/OppoDatePicker;->mCreationOrientation:I

    .line 165
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 167
    .local v3, inflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/oppo/widget/OppoDatePicker;->mCreationOrientation:I

    iget-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    .line 169
    const v5, 0x109003b

    invoke-virtual {v3, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 188
    :goto_2
    const v5, 0x10202e4

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    .line 189
    const v5, 0x10202dc

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mDateDisplayTextView:Landroid/widget/TextView;

    .line 191
    const v5, 0x10202e2

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoDateView;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    .line 192
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    new-instance v6, Lcom/oppo/widget/OppoDatePicker$1;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoDatePicker$1;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v5, v6}, Lcom/oppo/widget/OppoDateView;->setOnChangeListener(Lcom/oppo/widget/OppoDateView$OnChangedListener;)V

    .line 230
    const v5, 0x10202e0

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoYearView;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    .line 231
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    new-instance v6, Lcom/oppo/widget/OppoDatePicker$2;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoDatePicker$2;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v5, v6}, Lcom/oppo/widget/OppoYearView;->setOnChangeListener(Lcom/oppo/widget/OppoYearView$OnChangedListener;)V

    .line 263
    const v5, 0x10202e1

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoMonthView;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    .line 264
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    new-instance v6, Lcom/oppo/widget/OppoDatePicker$3;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoDatePicker$3;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v5, v6}, Lcom/oppo/widget/OppoMonthView;->setOnChangeListener(Lcom/oppo/widget/OppoMonthView$OnChangedListener;)V

    .line 350
    const v5, 0x10202dd

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    .line 351
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setFadeEffectEnabled(Z)V

    .line 352
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 353
    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v5, :cond_2

    .line 355
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 358
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    new-instance v6, Lcom/oppo/widget/OppoDatePicker$4;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoDatePicker$4;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    const v5, 0x10202de

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    .line 420
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setFadeEffectEnabled(Z)V

    .line 421
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 422
    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v5, :cond_3

    .line 424
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 427
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    new-instance v6, Lcom/oppo/widget/OppoDatePicker$5;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoDatePicker$5;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    const v5, 0x10202df

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    .line 479
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setFadeEffectEnabled(Z)V

    .line 481
    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v5, :cond_4

    .line 483
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 486
    :cond_4
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    new-instance v6, Lcom/oppo/widget/OppoDatePicker$6;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoDatePicker$6;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    const/16 v6, 0x1e

    invoke-virtual {v5, v7, v6}, Lcom/oppo/widget/OppoDateView;->setRange(II)V

    .line 575
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    const/16 v6, 0xc

    invoke-virtual {v5, v8, v6}, Lcom/oppo/widget/OppoMonthView;->setRange(II)V

    .line 576
    const/16 v5, 0x7f4

    invoke-virtual {p0, v10, v5}, Lcom/oppo/widget/OppoDatePicker;->setYearRange(II)Z

    .line 578
    return-void

    .line 178
    :cond_5
    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v5, :cond_6

    .line 180
    const v5, 0x109003b

    invoke-virtual {v3, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_2

    .line 184
    :cond_6
    const v5, 0x109003e

    invoke-virtual {v3, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_2

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoDatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoDatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMinMonth:I

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoDatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDay:I

    return v0
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/util/ChineseDateAndSolarDate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/oppo/widget/OppoDatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/oppo/widget/OppoDatePicker;->mCourrentNewMonthDayNumber:I

    return p1
.end method

.method static synthetic access$1400(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/oppo/widget/OppoDatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/oppo/widget/OppoDatePicker;->mCourrentChineseMonthDayNumber:I

    return p1
.end method

.method static synthetic access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoDatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDay:I

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoDatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoDatePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsLeapYear:Z

    return v0
.end method

.method static synthetic access$502(Lcom/oppo/widget/OppoDatePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDatePicker;->mIsLeapYear:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoDatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoDatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mLeapMonth:I

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/widget/OppoDatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/oppo/widget/OppoDatePicker;->mLeapMonth:I

    return p1
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoDatePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsMaxMonthLeap:Z

    return v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoDatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    return v0
.end method

.method private checkDate(IIIZ)Z
    .locals 14
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"

    .prologue
    .line 1058
    if-nez p4, :cond_4

    .line 1060
    iget v2, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    const/16 v3, 0xc

    const/16 v4, 0x1f

    add-int/lit8 v6, p2, 0x1

    move-object v1, p0

    move v5, p1

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1062
    const/4 v1, 0x0

    .line 1145
    :goto_0
    return v1

    .line 1064
    :cond_0
    add-int/lit8 v3, p2, 0x1

    iget v5, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    iget v6, p0, Lcom/oppo/widget/OppoDatePicker;->mMinMonth:I

    iget v7, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDay:I

    move-object v1, p0

    move v2, p1

    move/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1066
    const/4 v1, 0x0

    goto :goto_0

    .line 1068
    :cond_1
    if-ltz p2, :cond_3

    const/16 v1, 0xb

    move/from16 v0, p2

    if-gt v0, v1, :cond_3

    .line 1070
    if-lez p3, :cond_2

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetSolarMonthDays(II)I

    move-result v1

    move/from16 v0, p3

    if-gt v0, v1, :cond_2

    .line 1072
    const/4 v1, 0x1

    goto :goto_0

    .line 1076
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1081
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1086
    :cond_4
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    iget v2, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    invoke-virtual {v1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v13

    .line 1087
    .local v13, maxYearLeapMonth:I
    iget v3, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    .line 1088
    .local v3, maxMonth:I
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    invoke-virtual {v1, p1}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v11

    .line 1089
    .local v11, leapMonth:I
    if-eqz v13, :cond_6

    iget-boolean v1, p0, Lcom/oppo/widget/OppoDatePicker;->mIsMaxMonthLeap:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    if-le v1, v13, :cond_6

    .line 1090
    :cond_5
    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    add-int/lit8 v3, v1, 0x1

    .line 1093
    :cond_6
    if-nez v11, :cond_b

    .line 1095
    iget v2, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDay:I

    add-int/lit8 v6, p2, 0x1

    move-object v1, p0

    move v5, p1

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 1097
    const/4 v1, 0x0

    goto :goto_0

    .line 1099
    :cond_7
    add-int/lit8 v6, p2, 0x1

    iget v8, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, p0

    move v5, p1

    move/from16 v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 1101
    const/4 v1, 0x0

    goto :goto_0

    .line 1104
    :cond_8
    if-ltz p2, :cond_a

    const/16 v1, 0xb

    move/from16 v0, p2

    if-gt v0, v1, :cond_a

    .line 1106
    if-lez p3, :cond_9

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChMonthDays(II)I

    move-result v1

    move/from16 v0, p3

    if-gt v0, v1, :cond_9

    .line 1108
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1112
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1117
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1122
    :cond_b
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChMonthDays(II)I

    move-result v12

    .line 1124
    .local v12, lunarDayOfMonth:I
    if-ltz p2, :cond_f

    const/16 v1, 0xc

    move/from16 v0, p2

    if-gt v0, v1, :cond_f

    .line 1126
    iget v2, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDay:I

    add-int/lit8 v6, p2, 0x1

    move-object v1, p0

    move v5, p1

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 1128
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1130
    :cond_c
    add-int/lit8 v6, p2, 0x1

    iget v8, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, p0

    move v5, p1

    move/from16 v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 1132
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1134
    :cond_d
    if-lez p3, :cond_e

    move/from16 v0, p3

    if-gt v0, v12, :cond_e

    .line 1136
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1140
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1145
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private compareDate(IIIIII)Z
    .locals 2
    .parameter "y"
    .parameter "m"
    .parameter "d"
    .parameter "y1"
    .parameter "m1"
    .parameter "d1"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1152
    if-le p4, p1, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return v0

    .line 1156
    :cond_1
    if-ge p4, p1, :cond_2

    move v0, v1

    .line 1158
    goto :goto_0

    .line 1160
    :cond_2
    if-gt p5, p2, :cond_0

    .line 1164
    if-ge p5, p2, :cond_3

    move v0, v1

    .line 1166
    goto :goto_0

    .line 1168
    :cond_3
    if-gt p6, p3, :cond_0

    move v0, v1

    .line 1174
    goto :goto_0
.end method

.method private onTimeChanged()V
    .locals 4

    .prologue
    .line 761
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getCurrentYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getCurrentMonth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getCurrentDay()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;->onDateChanged(Lcom/oppo/widget/OppoDatePicker;III)V

    .line 766
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getCurrentIsChineseDate()Z

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getCurrentIsLeapMonthFlag()Z

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;->onChineseDateChanged(Lcom/oppo/widget/OppoDatePicker;ZZ)V

    .line 769
    :cond_0
    return-void
.end method

.method private setDateRange()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/16 v12, 0x1f

    const/16 v11, 0xc

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 682
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsOnlySolarCalendar:Z

    if-eqz v0, :cond_4

    .line 683
    iput v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMinMonth:I

    .line 684
    iput v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDay:I

    .line 711
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    invoke-virtual {v0, v1}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v9

    .line 712
    .local v9, maxYearLeapMonth:I
    iget v8, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    .line 713
    .local v8, maxMonth:I
    if-eqz v9, :cond_1

    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsMaxMonthLeap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    if-le v0, v9, :cond_1

    .line 714
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    add-int/lit8 v8, v0, 0x1

    .line 716
    :cond_1
    sget-object v0, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 717
    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v6, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v0

    if-nez v0, :cond_2

    .line 719
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    sput v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 720
    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 721
    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 724
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    iget v3, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDay:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v6, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    move-object v0, p0

    move v2, v8

    invoke-direct/range {v0 .. v6}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 726
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    sput v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 727
    sput v8, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 728
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDay:I

    sput v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 753
    :cond_3
    :goto_1
    sget v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/widget/OppoDatePicker;->updateSpinners(III)V

    .line 754
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->upDateDisplayData()V

    .line 755
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->onTimeChanged()V

    .line 756
    return-void

    .line 686
    .end local v8           #maxMonth:I
    .end local v9           #maxYearLeapMonth:I
    :cond_4
    const/4 v10, 0x0

    .line 687
    .local v10, result:[I
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->ChineseDateToSunDate(III)[I

    move-result-object v10

    .line 688
    if-eqz v10, :cond_5

    array-length v0, v10

    if-le v0, v3, :cond_5

    .line 689
    aget v0, v10, v2

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMinMonth:I

    .line 690
    aget v0, v10, v3

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDay:I

    .line 692
    :cond_5
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    invoke-virtual {v0, v1, v11, v12}, Lcom/oppo/util/ChineseDateAndSolarDate;->SunDateToChineseDate(III)[I

    move-result-object v10

    .line 693
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    aget v1, v10, v4

    invoke-virtual {v0, v1}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v7

    .line 695
    .local v7, leap:I
    if-eqz v7, :cond_7

    aget v0, v10, v2

    if-le v0, v7, :cond_7

    .line 696
    aget v0, v10, v2

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_6

    .line 697
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDatePicker;->mIsMaxMonthLeap:Z

    .line 701
    :goto_2
    aget v0, v10, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    .line 708
    :goto_3
    aget v0, v10, v3

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDay:I

    goto/16 :goto_0

    .line 699
    :cond_6
    iput-boolean v4, p0, Lcom/oppo/widget/OppoDatePicker;->mIsMaxMonthLeap:Z

    goto :goto_2

    .line 705
    :cond_7
    aget v0, v10, v2

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    goto :goto_3

    .line 731
    .end local v7           #leap:I
    .end local v10           #result:[I
    .restart local v8       #maxMonth:I
    .restart local v9       #maxYearLeapMonth:I
    :cond_8
    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    iget v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMinMonth:I

    iget v3, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDay:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v6, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v0

    if-nez v0, :cond_9

    .line 733
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    sput v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 734
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMinMonth:I

    sput v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 735
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDay:I

    sput v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 738
    :cond_9
    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v6, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    move-object v0, p0

    move v2, v11

    move v3, v12

    invoke-direct/range {v0 .. v6}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 740
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    sput v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 741
    sput v11, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 742
    sput v12, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    goto/16 :goto_1
.end method

.method private updateSpinners(III)V
    .locals 8
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const v7, 0x10600b7

    const v6, 0x10600b6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 895
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    invoke-virtual {v1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v0

    .line 897
    .local v0, leapMonth:I
    sget-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 899
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 900
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 901
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 902
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 903
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    const v2, 0x1040620

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 914
    :goto_0
    sget-boolean v1, Lcom/oppo/widget/OppoDatePicker;->mIsSelectStatus:Z

    if-eqz v1, :cond_0

    .line 916
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 917
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 918
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 920
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    iget v3, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoYearView;->setCurrentPos(I)V

    .line 925
    sget-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 927
    if-lt p3, v0, :cond_2

    if-eqz v0, :cond_2

    .line 929
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoMonthView;->setCurrentPos(I)V

    .line 941
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoDateView;->setCurrentPos(I)V

    .line 943
    return-void

    .line 907
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 908
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 909
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 910
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 911
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    const v2, 0x1040621

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 933
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoMonthView;->setCurrentPos(I)V

    goto :goto_1

    .line 938
    :cond_3
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoMonthView;->setCurrentPos(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCurrentDay()I
    .locals 1

    .prologue
    .line 1043
    sget v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    return v0
.end method

.method public getCurrentIsChineseDate()Z
    .locals 1

    .prologue
    .line 1048
    sget-object v0, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getCurrentIsLeapMonthFlag()Z
    .locals 1

    .prologue
    .line 1053
    sget-object v0, Lcom/oppo/widget/OppoDatePicker;->mIsLeapMonthFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getCurrentMonth()I
    .locals 1

    .prologue
    .line 1038
    sget v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    return v0
.end method

.method public getCurrentYear()I
    .locals 1

    .prologue
    .line 1033
    sget v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    return v0
.end method

.method public hideSwitchButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1028
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1030
    return-void
.end method

.method public init(IIILjava/lang/Boolean;ZZLcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V
    .locals 4
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"
    .parameter "isSelectStatus"
    .parameter "isHideDisplayDate"
    .parameter "onDateChangedListener"

    .prologue
    .line 841
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/oppo/widget/OppoDatePicker;->checkDate(IIIZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 843
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 844
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 845
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    .line 846
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 847
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 848
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 852
    .end local v0           #c:Ljava/util/Calendar;
    :cond_0
    sput p1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 853
    iput-boolean p6, p0, Lcom/oppo/widget/OppoDatePicker;->mIsHideDisplayDate:Z

    .line 854
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    invoke-virtual {v2, v3}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v1

    .line 858
    .local v1, leapMonth:I
    iget-boolean v2, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v2, :cond_1

    .line 860
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    iget-boolean v3, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoYearView;->setCalendarMode(Z)V

    .line 861
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    iget-boolean v3, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoMonthView;->setCalendarMode(Z)V

    .line 862
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    iget-boolean v3, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoDateView;->setCalendarMode(Z)V

    .line 870
    :cond_1
    add-int/lit8 v2, p2, 0x1

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 872
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 874
    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v1, :cond_2

    if-eqz v1, :cond_2

    .line 876
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    const v3, 0x1080521

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 880
    :cond_2
    sput p3, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 881
    sput-object p4, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    .line 882
    sput-boolean p5, Lcom/oppo/widget/OppoDatePicker;->mIsSelectStatus:Z

    .line 883
    iput-object p7, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    .line 889
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDatePicker;->updateSpinners(III)V

    .line 890
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->upDateDisplayData()V

    .line 891
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const v5, 0x109003b

    const/4 v1, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1192
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1193
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDateView;->setOnChangeListener(Lcom/oppo/widget/OppoDateView$OnChangedListener;)V

    .line 1194
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoYearView;->setOnChangeListener(Lcom/oppo/widget/OppoYearView$OnChangedListener;)V

    .line 1195
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoMonthView;->setOnChangeListener(Lcom/oppo/widget/OppoMonthView$OnChangedListener;)V

    .line 1196
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->removeAllViews()V

    .line 1197
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCreationOrientation:I

    .line 1204
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1206
    .local v8, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCreationOrientation:I

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 1208
    invoke-virtual {v8, v5, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1227
    :goto_0
    const v0, 0x10202e4

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    .line 1228
    const v0, 0x10202dc

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDateDisplayTextView:Landroid/widget/TextView;

    .line 1230
    const v0, 0x10202e2

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoDateView;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    .line 1231
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    new-instance v1, Lcom/oppo/widget/OppoDatePicker$7;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDatePicker$7;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDateView;->setOnChangeListener(Lcom/oppo/widget/OppoDateView$OnChangedListener;)V

    .line 1265
    const v0, 0x10202e0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoYearView;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    .line 1266
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    new-instance v1, Lcom/oppo/widget/OppoDatePicker$8;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDatePicker$8;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoYearView;->setOnChangeListener(Lcom/oppo/widget/OppoYearView$OnChangedListener;)V

    .line 1297
    const v0, 0x10202e1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMonthView;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    .line 1298
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    new-instance v1, Lcom/oppo/widget/OppoDatePicker$9;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDatePicker$9;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoMonthView;->setOnChangeListener(Lcom/oppo/widget/OppoMonthView$OnChangedListener;)V

    .line 1384
    const v0, 0x10202dd

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    .line 1385
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFadeEffectEnabled(Z)V

    .line 1386
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1387
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    new-instance v1, Lcom/oppo/widget/OppoDatePicker$10;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDatePicker$10;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1454
    const v0, 0x10202de

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    .line 1455
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFadeEffectEnabled(Z)V

    .line 1456
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1457
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v0, :cond_1

    .line 1459
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1462
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    new-instance v1, Lcom/oppo/widget/OppoDatePicker$11;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDatePicker$11;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1513
    const v0, 0x10202df

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    .line 1514
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFadeEffectEnabled(Z)V

    .line 1516
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v0, :cond_2

    .line 1518
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1521
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    new-instance v1, Lcom/oppo/widget/OppoDatePicker$12;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDatePicker$12;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1608
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    const/16 v1, 0x1e

    invoke-virtual {v0, v2, v1}, Lcom/oppo/widget/OppoDateView;->setRange(II)V

    .line 1609
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    const/16 v1, 0xc

    invoke-virtual {v0, v3, v1}, Lcom/oppo/widget/OppoMonthView;->setRange(II)V

    .line 1610
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoDatePicker;->setYearRange(II)Z

    .line 1612
    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v2, v0, -0x1

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    sget-object v4, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    sget-boolean v5, Lcom/oppo/widget/OppoDatePicker;->mIsSelectStatus:Z

    iget-boolean v6, p0, Lcom/oppo/widget/OppoDatePicker;->mIsHideDisplayDate:Z

    iget-object v7, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/widget/OppoDatePicker;->init(IIILjava/lang/Boolean;ZZLcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 1615
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->hideSwitchButton()V

    .line 1616
    return-void

    .line 1217
    :cond_3
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v0, :cond_4

    .line 1219
    invoke-virtual {v8, v5, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 1223
    :cond_4
    const v0, 0x109003e

    invoke-virtual {v8, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0
.end method

.method public playSoundEffect()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->audioManager:Landroid/media/AudioManager;

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->audioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 592
    return-void
.end method

.method public reFreshSelf()V
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoYearView;->reFreshSelf()V

    .line 1182
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoMonthView;->reFreshSelf()V

    .line 1183
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoDateView;->reFreshSelf()V

    .line 1184
    return-void
.end method

.method public reInitUi(IIIZZZZLcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V
    .locals 3
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"
    .parameter "isLeapMonth"
    .parameter "isSelectStatus"
    .parameter "isHideDisplayDate"
    .parameter "onDateChangedListener"

    .prologue
    .line 784
    sput p1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 785
    iput-boolean p7, p0, Lcom/oppo/widget/OppoDatePicker;->mIsHideDisplayDate:Z

    .line 786
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    invoke-virtual {v1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v0

    .line 787
    .local v0, leapMonth:I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    iget-boolean v2, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoYearView;->setCalendarMode(Z)V

    .line 790
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    iget-boolean v2, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoMonthView;->setCalendarMode(Z)V

    .line 791
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    iget-boolean v2, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoDateView;->setCalendarMode(Z)V

    .line 800
    :cond_0
    add-int/lit8 v1, p2, 0x1

    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 802
    if-eqz p4, :cond_1

    .line 804
    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v1, v1, -0x1

    if-ne v1, v0, :cond_2

    if-eqz v0, :cond_2

    .line 806
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    const v2, 0x1080521

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 814
    :cond_1
    :goto_0
    sput p3, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 815
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    .line 816
    sput-boolean p6, Lcom/oppo/widget/OppoDatePicker;->mIsSelectStatus:Z

    .line 817
    iput-object p8, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    .line 819
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDatePicker;->updateSpinners(III)V

    .line 820
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->upDateDisplayData()V

    .line 821
    return-void

    .line 810
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    const v2, 0x10805bb

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setIsOnlySolarCalendar(Z)V
    .locals 1
    .parameter "isOnlySolarCalendar"

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsOnlySolarCalendar:Z

    if-eq v0, p1, :cond_0

    .line 654
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDatePicker;->mIsOnlySolarCalendar:Z

    .line 655
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->setDateRange()V

    .line 657
    :cond_0
    return-void
.end method

.method public setOnDateChangedListener(Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V
    .locals 0
    .parameter "OnDateChangedListener"

    .prologue
    .line 645
    iput-object p1, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    .line 646
    return-void
.end method

.method public setYearRange(II)Z
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 668
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/widget/OppoYearView;->setRange(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    iput p1, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    .line 670
    iput p2, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    .line 671
    const/4 v0, 0x1

    .line 677
    .local v0, result:Z
    :goto_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->setDateRange()V

    .line 678
    return v0

    .line 673
    .end local v0           #result:Z
    :cond_0
    const/16 v1, 0x780

    iput v1, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    .line 674
    const/16 v1, 0x7f4

    iput v1, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    .line 675
    const/4 v0, 0x0

    .restart local v0       #result:Z
    goto :goto_0
.end method

.method public upDateDisplayData()V
    .locals 11

    .prologue
    .line 596
    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, defLanguage:Ljava/lang/String;
    sget v7, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .local v7, year:I
    sget v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 598
    .local v0, day:I
    const/4 v5, 0x1

    .line 599
    .local v5, month:I
    sget-object v9, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/oppo/widget/OppoDatePicker;->mIsLeapYear:Z

    if-eqz v9, :cond_1

    sget v9, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    iget v10, p0, Lcom/oppo/widget/OppoDatePicker;->mLeapMonth:I

    if-le v9, v10, :cond_1

    .line 601
    sget v9, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v5, v9, -0x1

    .line 605
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    .local v3, displayStr:Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v9, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 612
    :goto_1
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 613
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    add-int/lit8 v9, v5, -0x1

    const/16 v10, 0x1e

    invoke-static {v9, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    :goto_2
    iget-object v9, p0, Lcom/oppo/widget/OppoDatePicker;->mDateDisplayTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-boolean v9, p0, Lcom/oppo/widget/OppoDatePicker;->mIsHideDisplayDate:Z

    if-eqz v9, :cond_0

    .line 639
    iget-object v9, p0, Lcom/oppo/widget/OppoDatePicker;->mDateDisplayTextView:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    :cond_0
    return-void

    .line 603
    .end local v3           #displayStr:Ljava/lang/StringBuilder;
    :cond_1
    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    goto :goto_0

    .line 608
    .restart local v3       #displayStr:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    .line 610
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 620
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v9, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104039b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 621
    .local v8, yearStr:Ljava/lang/String;
    iget-object v9, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040089

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 622
    .local v6, monthStr:Ljava/lang/String;
    iget-object v9, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040391

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, dayStr:Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public witchCalendarType(Z)V
    .locals 9
    .parameter "isChineseDate"

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 947
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->playSoundEffect()V

    .line 948
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoYearView;->setStopRun(Z)V

    .line 949
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoMonthView;->setStopRun(Z)V

    .line 950
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoDateView;->setStopRun(Z)V

    .line 951
    if-eqz p1, :cond_0

    .line 953
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    const v3, 0x1040621

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 955
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    const v3, 0x10805bb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 964
    new-array v1, v4, [I

    .line 966
    .local v1, timeArray:[I
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    invoke-virtual {v2, v3}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v0

    .line 968
    .local v0, iLeapMonth:I
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/oppo/util/ChineseDateAndSolarDate;->ChineseDateToSunDate(III)[I

    move-result-object v1

    .line 971
    aget v2, v1, v7

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 972
    aget v2, v1, v6

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 973
    aget v2, v1, v8

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 982
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    .line 984
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoYearView;->setCurrentPos(I)V

    .line 985
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoMonthView;->setCurrentPos(I)V

    .line 986
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoDateView;->setCurrentPos(I)V

    .line 988
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoYearView;->reDrawChAndNewYear()V

    .line 1024
    .end local v0           #iLeapMonth:I
    :goto_0
    return-void

    .line 992
    .end local v1           #timeArray:[I
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    const v3, 0x1040620

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1001
    new-array v1, v4, [I

    .line 1002
    .restart local v1       #timeArray:[I
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/oppo/util/ChineseDateAndSolarDate;->SunDateToChineseDate(III)[I

    move-result-object v1

    .line 1005
    aget v2, v1, v7

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 1006
    aget v2, v1, v6

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 1007
    aget v2, v1, v8

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 1009
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    .line 1018
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoYearView;->setCurrentPos(I)V

    .line 1019
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoMonthView;->setCurrentPos(I)V

    .line 1020
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoDateView;->setCurrentPos(I)V

    .line 1022
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoYearView;->reDrawChAndNewYear()V

    goto :goto_0
.end method
