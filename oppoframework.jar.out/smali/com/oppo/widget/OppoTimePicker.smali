.class public Lcom/oppo/widget/OppoTimePicker;
.super Landroid/widget/FrameLayout;
.source "OppoTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final NO_OP_CHANGE_LISTENER:Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private debug:Z

.field private mAmAndPmButton:Landroid/widget/ImageButton;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mHourView:Lcom/oppo/widget/OppoTimeView;

.field private mIs24Hour:Z

.field private mIsAlarmTimePicker:Z

.field private mIsAm:Z

.field private mMinuteView:Lcom/oppo/widget/OppoTimeView;

.field private mOnTimeChangedListener:Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;

.field private mSelectPmorAmView:Lcom/oppo/widget/OppoSelectPmorAmView;

.field private mTextView:Landroid/widget/TextView;

.field private mTimePickerBackground:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/oppo/widget/OppoTimePicker$1;

    invoke-direct {v0}, Lcom/oppo/widget/OppoTimePicker$1;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoTimePicker;->NO_OP_CHANGE_LISTENER:Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const-string v5, "OppoTimePicker"

    iput-object v5, p0, Lcom/oppo/widget/OppoTimePicker;->TAG:Ljava/lang/String;

    .line 26
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTimePicker;->debug:Z

    .line 28
    iput-object v6, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteView:Lcom/oppo/widget/OppoTimeView;

    .line 29
    iput-object v6, p0, Lcom/oppo/widget/OppoTimePicker;->mHourView:Lcom/oppo/widget/OppoTimeView;

    .line 34
    iput v7, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I

    .line 35
    iput v7, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentMinute:I

    .line 38
    iput-boolean v7, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z

    .line 45
    iput-object v6, p0, Lcom/oppo/widget/OppoTimePicker;->mAmAndPmButton:Landroid/widget/ImageButton;

    .line 47
    iput-object v6, p0, Lcom/oppo/widget/OppoTimePicker;->mSelectPmorAmView:Lcom/oppo/widget/OppoSelectPmorAmView;

    .line 48
    iput-object v6, p0, Lcom/oppo/widget/OppoTimePicker;->mTextView:Landroid/widget/TextView;

    .line 53
    iput-boolean v7, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAlarmTimePicker:Z

    .line 55
    iput-object v6, p0, Lcom/oppo/widget/OppoTimePicker;->mContext:Landroid/content/Context;

    .line 117
    iput-object p1, p0, Lcom/oppo/widget/OppoTimePicker;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoTimePicker;->mConfiguration:Landroid/content/res/Configuration;

    .line 119
    iget-object v5, p0, Lcom/oppo/widget/OppoTimePicker;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/oppo/widget/OppoTimePicker;->mCreationOrientation:I

    .line 121
    sget-object v5, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {p1, p2, v5, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 123
    .local v1, a:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 126
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 128
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 129
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 126
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :pswitch_0
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAlarmTimePicker:Z

    goto :goto_1

    .line 138
    .end local v2           #attr:I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_1
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 144
    .local v4, inflater:Landroid/view/LayoutInflater;
    iget-boolean v5, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAlarmTimePicker:Z

    if-eqz v5, :cond_2

    .line 146
    const v5, 0x1090022

    invoke-virtual {v4, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 160
    :goto_2
    const v5, 0x102029e

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/oppo/widget/OppoTimePicker;->mTextView:Landroid/widget/TextView;

    .line 161
    const v5, 0x10202a1

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoTimeView;

    iput-object v5, p0, Lcom/oppo/widget/OppoTimePicker;->mHourView:Lcom/oppo/widget/OppoTimeView;

    .line 162
    iget-object v5, p0, Lcom/oppo/widget/OppoTimePicker;->mHourView:Lcom/oppo/widget/OppoTimeView;

    new-instance v6, Lcom/oppo/widget/OppoTimePicker$2;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoTimePicker$2;-><init>(Lcom/oppo/widget/OppoTimePicker;)V

    invoke-virtual {v5, v6}, Lcom/oppo/widget/OppoTimeView;->setOnChangeListener(Lcom/oppo/widget/OppoTimeView$OnChangedListener;)V

    .line 191
    const v5, 0x10202a2

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoTimeView;

    iput-object v5, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteView:Lcom/oppo/widget/OppoTimeView;

    .line 192
    iget-object v5, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteView:Lcom/oppo/widget/OppoTimeView;

    new-instance v6, Lcom/oppo/widget/OppoTimePicker$3;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoTimePicker$3;-><init>(Lcom/oppo/widget/OppoTimePicker;)V

    invoke-virtual {v5, v6}, Lcom/oppo/widget/OppoTimeView;->setOnChangeListener(Lcom/oppo/widget/OppoTimeView$OnChangedListener;)V

    .line 204
    const v5, 0x102029d

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/oppo/widget/OppoTimePicker;->mAmAndPmButton:Landroid/widget/ImageButton;

    .line 205
    iget-object v5, p0, Lcom/oppo/widget/OppoTimePicker;->mAmAndPmButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setFadeEffectEnabled(Z)V

    .line 206
    iget-object v5, p0, Lcom/oppo/widget/OppoTimePicker;->mAmAndPmButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/oppo/widget/OppoTimePicker$4;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoTimePicker$4;-><init>(Lcom/oppo/widget/OppoTimePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v5, 0x102029f

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoSelectPmorAmView;

    iput-object v5, p0, Lcom/oppo/widget/OppoTimePicker;->mSelectPmorAmView:Lcom/oppo/widget/OppoSelectPmorAmView;

    .line 236
    iget-object v5, p0, Lcom/oppo/widget/OppoTimePicker;->mSelectPmorAmView:Lcom/oppo/widget/OppoSelectPmorAmView;

    new-instance v6, Lcom/oppo/widget/OppoTimePicker$5;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoTimePicker$5;-><init>(Lcom/oppo/widget/OppoTimePicker;)V

    invoke-virtual {v5, v6}, Lcom/oppo/widget/OppoSelectPmorAmView;->setOnChangeListener(Lcom/oppo/widget/OppoSelectPmorAmView$OnChangedListener;)V

    .line 270
    const v5, 0x1020444

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoTimePicker;->mTimePickerBackground:Landroid/view/View;

    .line 272
    return-void

    .line 150
    :cond_2
    iget v5, p0, Lcom/oppo/widget/OppoTimePicker;->mCreationOrientation:I

    iget-object v6, p0, Lcom/oppo/widget/OppoTimePicker;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 152
    const v5, 0x1090103

    invoke-virtual {v4, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_2

    .line 156
    :cond_3
    const v5, 0x1090106

    invoke-virtual {v4, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_2

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoTimePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$002(Lcom/oppo/widget/OppoTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$012(Lcom/oppo/widget/OppoTimePicker;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iget v0, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$020(Lcom/oppo/widget/OppoTimePicker;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iget v0, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoTimePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoTimePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoTimePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/widget/OppoTimePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->updateDispayTime()V

    return-void
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoTimePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentMinute:I

    return v0
.end method

.method static synthetic access$602(Lcom/oppo/widget/OppoTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentMinute:I

    return p1
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoTimePicker;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mAmAndPmButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoTimePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimePicker;->debug:Z

    return v0
.end method

.method private configurePickerRanges()V
    .locals 6

    .prologue
    const/16 v5, 0x3b

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 337
    const-string v0, "OppoTimePicker "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chenxw check confiureChanges oh yeah mIs34Hour = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mHourView:Lcom/oppo/widget/OppoTimeView;

    const/16 v1, 0x17

    iget-boolean v2, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z

    invoke-virtual {v0, v3, v1, v2}, Lcom/oppo/widget/OppoTimeView;->setRange(IIZ)V

    .line 341
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteView:Lcom/oppo/widget/OppoTimeView;

    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z

    invoke-virtual {v0, v3, v5, v1}, Lcom/oppo/widget/OppoTimeView;->setRange(IIZ)V

    .line 342
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAlarmTimePicker:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mHourView:Lcom/oppo/widget/OppoTimeView;

    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAlarmTimePicker:Z

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTimeView;->setAlarm(Z)Z

    .line 345
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteView:Lcom/oppo/widget/OppoTimeView;

    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAlarmTimePicker:Z

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTimeView;->setAlarm(Z)Z

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mAmAndPmButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mSelectPmorAmView:Lcom/oppo/widget/OppoSelectPmorAmView;

    invoke-virtual {v0, v4}, Lcom/oppo/widget/OppoSelectPmorAmView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mHourView:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTimeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 351
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mTimePickerBackground:Landroid/view/View;

    const v1, 0x1080906

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 368
    :goto_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->updateDispayTime()V

    .line 370
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mHourView:Lcom/oppo/widget/OppoTimeView;

    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z

    invoke-virtual {v0, v3, v1, v2}, Lcom/oppo/widget/OppoTimeView;->setRange(IIZ)V

    .line 355
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteView:Lcom/oppo/widget/OppoTimeView;

    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z

    invoke-virtual {v0, v3, v5, v1}, Lcom/oppo/widget/OppoTimeView;->setRange(IIZ)V

    .line 356
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAlarmTimePicker:Z

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mHourView:Lcom/oppo/widget/OppoTimeView;

    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAlarmTimePicker:Z

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTimeView;->setAlarm(Z)Z

    .line 359
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteView:Lcom/oppo/widget/OppoTimeView;

    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAlarmTimePicker:Z

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTimeView;->setAlarm(Z)Z

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mSelectPmorAmView:Lcom/oppo/widget/OppoSelectPmorAmView;

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoSelectPmorAmView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mAmAndPmButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mHourView:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTimeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 365
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mTimePickerBackground:Landroid/view/View;

    const v1, 0x1080905

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hour : minute == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getCurrentHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getCurrentMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mOnTimeChangedListener:Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getCurrentHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->getCurrentMinute()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oppo/widget/OppoTimePicker;II)V

    .line 101
    return-void
.end method

.method private updateDispayTime()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, time:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->debug:Z

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDispayTime -- mIs24Hour == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z

    if-eqz v1, :cond_1

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I

    invoke-virtual {p0, v2, v5}, Lcom/oppo/widget/OppoTimePicker;->getdisplaytimedata(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentMinute:I

    invoke-virtual {p0, v2, v4}, Lcom/oppo/widget/OppoTimePicker;->getdisplaytimedata(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    return-void

    .line 289
    :cond_1
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z

    if-eqz v1, :cond_2

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I

    invoke-virtual {p0, v2, v5}, Lcom/oppo/widget/OppoTimePicker;->getdisplaytimedata(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentMinute:I

    invoke-virtual {p0, v2, v4}, Lcom/oppo/widget/OppoTimePicker;->getdisplaytimedata(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I

    add-int/lit8 v2, v2, -0xc

    invoke-virtual {p0, v2, v5}, Lcom/oppo/widget/OppoTimePicker;->getdisplaytimedata(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentMinute:I

    invoke-virtual {p0, v2, v4}, Lcom/oppo/widget/OppoTimePicker;->getdisplaytimedata(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateHourDisplay()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 396
    iget v0, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I

    .line 397
    .local v0, currentHour:I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z

    if-nez v1, :cond_0

    .line 400
    if-le v0, v2, :cond_1

    .line 402
    add-int/lit8 v0, v0, -0xc

    .line 411
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mHourView:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v1, v0}, Lcom/oppo/widget/OppoTimeView;->setCurrentPos(I)V

    .line 413
    iget v1, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z

    .line 414
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mSelectPmorAmView:Lcom/oppo/widget/OppoSelectPmorAmView;

    iget-boolean v2, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoSelectPmorAmView;->setCurrentStatus(Z)V

    .line 415
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker;->mAmAndPmButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z

    if-eqz v1, :cond_3

    const v1, 0x10800e0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 416
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->updateDispayTime()V

    .line 417
    return-void

    .line 404
    :cond_1
    if-nez v0, :cond_0

    .line 406
    const/16 v0, 0xc

    goto :goto_0

    .line 413
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 415
    :cond_3
    const v1, 0x108066c

    goto :goto_2
.end method

.method private updateMinuteDisplay()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteView:Lcom/oppo/widget/OppoTimeView;

    iget v1, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentMinute:I

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTimeView;->setCurrentPos(I)V

    .line 435
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->updateDispayTime()V

    .line 436
    return-void
.end method


# virtual methods
.method public getCurrentHour()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I

    return v0
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentMinute:I

    return v0
.end method

.method public getdisplaytimedata(IZ)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .parameter "isHour"

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, returnData:Ljava/lang/String;
    const/16 v1, 0x9

    if-gt p1, v1, :cond_1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_0
    :goto_0
    return-object v0

    .line 311
    :cond_1
    if-nez p1, :cond_4

    .line 313
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_2
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    .line 319
    const-string v0, "12"

    goto :goto_0

    .line 321
    :cond_3
    if-nez p2, :cond_0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hideDisplayTextViewOfTime()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 499
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->debug:Z

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->TAG:Ljava/lang/String;

    const-string v2, "onConfigurationChanged ---is called !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 504
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mHourView:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoTimeView;->setOnChangeListener(Lcom/oppo/widget/OppoTimeView$OnChangedListener;)V

    .line 505
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteView:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoTimeView;->setOnChangeListener(Lcom/oppo/widget/OppoTimeView$OnChangedListener;)V

    .line 506
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mSelectPmorAmView:Lcom/oppo/widget/OppoSelectPmorAmView;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoSelectPmorAmView;->setOnChangeListener(Lcom/oppo/widget/OppoSelectPmorAmView$OnChangedListener;)V

    .line 507
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTimePicker;->removeAllViews()V

    .line 509
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->debug:Z

    if-eqz v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCreationOrientation == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/widget/OppoTimePicker;->mCreationOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/oppo/widget/OppoTimePicker;->mCreationOrientation:I

    .line 516
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->debug:Z

    if-eqz v1, :cond_2

    .line 518
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCreationOrientation changed == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/widget/OppoTimePicker;->mCreationOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 524
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAlarmTimePicker:Z

    if-eqz v1, :cond_3

    .line 526
    const v1, 0x1090022

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 540
    :goto_0
    const v1, 0x102029e

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mTextView:Landroid/widget/TextView;

    .line 541
    const v1, 0x10202a1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoTimeView;

    iput-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mHourView:Lcom/oppo/widget/OppoTimeView;

    .line 542
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mHourView:Lcom/oppo/widget/OppoTimeView;

    new-instance v2, Lcom/oppo/widget/OppoTimePicker$6;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoTimePicker$6;-><init>(Lcom/oppo/widget/OppoTimePicker;)V

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTimeView;->setOnChangeListener(Lcom/oppo/widget/OppoTimeView$OnChangedListener;)V

    .line 570
    const v1, 0x10202a2

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoTimeView;

    iput-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteView:Lcom/oppo/widget/OppoTimeView;

    .line 571
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteView:Lcom/oppo/widget/OppoTimeView;

    new-instance v2, Lcom/oppo/widget/OppoTimePicker$7;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoTimePicker$7;-><init>(Lcom/oppo/widget/OppoTimePicker;)V

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTimeView;->setOnChangeListener(Lcom/oppo/widget/OppoTimeView$OnChangedListener;)V

    .line 583
    const v1, 0x102029d

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mAmAndPmButton:Landroid/widget/ImageButton;

    .line 584
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mAmAndPmButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setFadeEffectEnabled(Z)V

    .line 585
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mAmAndPmButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oppo/widget/OppoTimePicker$8;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoTimePicker$8;-><init>(Lcom/oppo/widget/OppoTimePicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    const v1, 0x102029f

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoSelectPmorAmView;

    iput-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mSelectPmorAmView:Lcom/oppo/widget/OppoSelectPmorAmView;

    .line 613
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker;->mSelectPmorAmView:Lcom/oppo/widget/OppoSelectPmorAmView;

    new-instance v2, Lcom/oppo/widget/OppoTimePicker$9;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoTimePicker$9;-><init>(Lcom/oppo/widget/OppoTimePicker;)V

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoSelectPmorAmView;->setOnChangeListener(Lcom/oppo/widget/OppoSelectPmorAmView$OnChangedListener;)V

    .line 649
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->configurePickerRanges()V

    .line 650
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->updateHourDisplay()V

    .line 651
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->updateMinuteDisplay()V

    .line 652
    return-void

    .line 530
    :cond_3
    iget v1, p0, Lcom/oppo/widget/OppoTimePicker;->mCreationOrientation:I

    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 532
    const v1, 0x1090103

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 536
    :cond_4
    const v1, 0x1090106

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .parameter "currentHour"

    .prologue
    .line 386
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I

    .line 387
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->updateHourDisplay()V

    .line 389
    return-void
.end method

.method public setCurrentHourAndMinute(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter "currentHour"
    .parameter "currentMinute"

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 378
    invoke-virtual {p0, p2}, Lcom/oppo/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 379
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1
    .parameter "currentMinute"

    .prologue
    .line 425
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTimePicker;->mCurrentMinute:I

    .line 426
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->updateMinuteDisplay()V

    .line 427
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "is24Hour"

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 446
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoTimePicker;->configurePickerRanges()V

    .line 450
    return-void
.end method

.method public setLayoutStyle(Z)V
    .locals 0
    .parameter "isAlarmTimePicker"

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTimePicker;->mIsAlarmTimePicker:Z

    .line 470
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;)V
    .locals 0
    .parameter "onTimeChangedListener"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/oppo/widget/OppoTimePicker;->mOnTimeChangedListener:Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;

    .line 93
    return-void
.end method

.method public setTimeInvisible()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    :cond_0
    return-void
.end method

.method public stopSoundEffect(Z)V
    .locals 1
    .parameter "isStop"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mHourView:Lcom/oppo/widget/OppoTimeView;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mHourView:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoTimeView;->stopSoundEffect(Z)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteView:Lcom/oppo/widget/OppoTimeView;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker;->mMinuteView:Lcom/oppo/widget/OppoTimeView;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoTimeView;->stopSoundEffect(Z)V

    .line 494
    :cond_1
    return-void
.end method
