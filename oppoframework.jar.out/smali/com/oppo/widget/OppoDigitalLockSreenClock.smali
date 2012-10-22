.class public Lcom/oppo/widget/OppoDigitalLockSreenClock;
.super Landroid/widget/LinearLayout;
.source "OppoDigitalLockSreenClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoDigitalLockSreenClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final TAG:Ljava/lang/String; = "OppoDigitalLockClock"


# instance fields
.field private final debug:Z

.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mAttached:Z

.field private mBitmapClockNum0:Landroid/graphics/Bitmap;

.field private mBitmapClockNum1:Landroid/graphics/Bitmap;

.field private mBitmapClockNum2:Landroid/graphics/Bitmap;

.field private mBitmapClockNum3:Landroid/graphics/Bitmap;

.field private mBitmapClockNum4:Landroid/graphics/Bitmap;

.field private mBitmapClockNum5:Landroid/graphics/Bitmap;

.field private mBitmapClockNum6:Landroid/graphics/Bitmap;

.field private mBitmapClockNum7:Landroid/graphics/Bitmap;

.field private mBitmapClockNum8:Landroid/graphics/Bitmap;

.field private mBitmapClockNum9:Landroid/graphics/Bitmap;

.field private mBitmapClockNumSpr:Landroid/graphics/Bitmap;

.field private mCalendar:Ljava/util/Calendar;

.field private final mCompareString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHourImageView1:Landroid/widget/ImageView;

.field private mHourImageView2:Landroid/widget/ImageView;

.field private mImageView:Landroid/widget/ImageView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsShowAmPm:Z

.field private mLive:Z

.field private mMinuteImageView1:Landroid/widget/ImageView;

.field private mMinuteImageView2:Landroid/widget/ImageView;

.field private mPmString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoDigitalLockSreenClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 356
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 360
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-boolean v4, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->debug:Z

    .line 43
    const-string v2, ":"

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mCompareString:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mAmString:Ljava/lang/String;

    .line 49
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mPmString:Ljava/lang/String;

    .line 52
    iput-boolean v5, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mLive:Z

    .line 56
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    .line 58
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView1:Landroid/widget/ImageView;

    .line 59
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView2:Landroid/widget/ImageView;

    .line 60
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView1:Landroid/widget/ImageView;

    .line 61
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView2:Landroid/widget/ImageView;

    .line 62
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mImageView:Landroid/widget/ImageView;

    .line 63
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mAmPmTextView:Landroid/widget/TextView;

    .line 64
    iput-boolean v4, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mIsShowAmPm:Z

    .line 67
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum0:Landroid/graphics/Bitmap;

    .line 68
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum1:Landroid/graphics/Bitmap;

    .line 69
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum2:Landroid/graphics/Bitmap;

    .line 70
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum3:Landroid/graphics/Bitmap;

    .line 71
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum4:Landroid/graphics/Bitmap;

    .line 72
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum5:Landroid/graphics/Bitmap;

    .line 73
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum6:Landroid/graphics/Bitmap;

    .line 74
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum7:Landroid/graphics/Bitmap;

    .line 75
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum8:Landroid/graphics/Bitmap;

    .line 76
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum9:Landroid/graphics/Bitmap;

    .line 77
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNumSpr:Landroid/graphics/Bitmap;

    .line 79
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v2, Lcom/oppo/widget/OppoDigitalLockSreenClock$1;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoDigitalLockSreenClock$1;-><init>(Lcom/oppo/widget/OppoDigitalLockSreenClock;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 361
    iput-object p1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    .line 363
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mCalendar:Ljava/util/Calendar;

    .line 365
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 367
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090091

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 369
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, ampm:[Ljava/lang/String;
    aget-object v2, v0, v4

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mAmString:Ljava/lang/String;

    .line 371
    aget-object v2, v0, v5

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mPmString:Ljava/lang/String;

    .line 373
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->initClockNumBitmap()V

    .line 374
    const v2, 0x10203a6

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView1:Landroid/widget/ImageView;

    .line 375
    const v2, 0x10203a7

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView2:Landroid/widget/ImageView;

    .line 376
    const v2, 0x10203a9

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView1:Landroid/widget/ImageView;

    .line 377
    const v2, 0x10203aa

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView2:Landroid/widget/ImageView;

    .line 380
    const v2, 0x10203ab

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mAmPmTextView:Landroid/widget/TextView;

    .line 382
    const v2, 0x10203a8

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mImageView:Landroid/widget/ImageView;

    .line 383
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNumSpr:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNumSpr:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->setDateFormat()V

    .line 387
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoDigitalLockSreenClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoDigitalLockSreenClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoDigitalLockSreenClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoDigitalLockSreenClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoDigitalLockSreenClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mFormat:Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mFormat:Ljava/lang/String;

    const-string v1, "h:mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->setShowAmPm(Z)V

    .line 351
    return-void

    .line 349
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method

.method private showHourTime(I)V
    .locals 5
    .parameter "hour"

    .prologue
    const/4 v4, 0x0

    .line 154
    div-int/lit8 v0, p1, 0xa

    .line 155
    .local v0, hour1:I
    rem-int/lit8 v1, p1, 0xa

    .line 157
    .local v1, hour2:I
    if-nez v0, :cond_4

    iget-boolean v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mIsShowAmPm:Z

    if-nez v2, :cond_4

    .line 158
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum0:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum0:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum1:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum1:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum2:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 175
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum2:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 235
    :cond_3
    :goto_1
    return-void

    .line 163
    :cond_4
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView1:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 182
    :pswitch_0
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum0:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 183
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum0:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 187
    :pswitch_1
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum1:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 188
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum1:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 192
    :pswitch_2
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum2:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 193
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum2:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 197
    :pswitch_3
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum3:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 198
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum3:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 202
    :pswitch_4
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum4:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum4:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 207
    :pswitch_5
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum5:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 208
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum5:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 212
    :pswitch_6
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum6:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 213
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum6:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 217
    :pswitch_7
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum7:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 218
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum7:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 222
    :pswitch_8
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum8:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 223
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum8:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 227
    :pswitch_9
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum9:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 228
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHourImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum9:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private showMinuteTime(I)V
    .locals 4
    .parameter "minute"

    .prologue
    .line 239
    div-int/lit8 v0, p1, 0xa

    .line 240
    .local v0, minute1:I
    rem-int/lit8 v1, p1, 0xa

    .line 242
    .local v1, minute2:I
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum0:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum0:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum1:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum1:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum2:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 251
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum2:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum3:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 255
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum3:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 257
    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum4:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 258
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum4:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 260
    :cond_4
    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum5:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 261
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum5:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 263
    :cond_5
    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum6:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 264
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum6:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    :cond_6
    const/4 v2, 0x7

    if-ne v0, v2, :cond_7

    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum7:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 267
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum7:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    :cond_7
    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum8:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8

    .line 270
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum8:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 272
    :cond_8
    const/16 v2, 0x9

    if-ne v0, v2, :cond_9

    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum9:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    .line 273
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum9:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    :cond_9
    packed-switch v1, :pswitch_data_0

    .line 331
    :cond_a
    :goto_0
    return-void

    .line 279
    :pswitch_0
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum0:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    .line 280
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum0:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum1:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    .line 285
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum1:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 289
    :pswitch_2
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum2:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    .line 290
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum2:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 294
    :pswitch_3
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum3:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    .line 295
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum3:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 299
    :pswitch_4
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum4:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    .line 300
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum4:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 304
    :pswitch_5
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum5:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    .line 305
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum5:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 309
    :pswitch_6
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum6:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    .line 310
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum6:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 314
    :pswitch_7
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum7:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    .line 315
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum7:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 319
    :pswitch_8
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum8:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    .line 320
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum8:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 324
    :pswitch_9
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum9:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    .line 325
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mMinuteImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum9:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private updateTime()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 119
    iget-boolean v5, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mLive:Z

    if-eqz v5, :cond_0

    .line 121
    iget-object v5, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 124
    :cond_0
    iget-object v5, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    .local v3, newTime:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 126
    .local v0, index:I
    const-string v1, ""

    .line 127
    .local v1, newHour:Ljava/lang/CharSequence;
    const-string v2, ""

    .line 129
    .local v2, newMinute:Ljava/lang/CharSequence;
    const/4 v5, -0x1

    if-eq v5, v0, :cond_1

    .line 136
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 137
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->showHourTime(I)V

    .line 149
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->showMinuteTime(I)V

    .line 150
    iget-object v5, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->setIsMorning(Z)V

    .line 151
    return-void
.end method


# virtual methods
.method public initClockNumBitmap()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080572

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum0:Landroid/graphics/Bitmap;

    .line 394
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080573

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum1:Landroid/graphics/Bitmap;

    .line 395
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080574

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum2:Landroid/graphics/Bitmap;

    .line 396
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080575

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum3:Landroid/graphics/Bitmap;

    .line 397
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080576

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum4:Landroid/graphics/Bitmap;

    .line 398
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080577

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum5:Landroid/graphics/Bitmap;

    .line 399
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080578

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum6:Landroid/graphics/Bitmap;

    .line 400
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080579

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum7:Landroid/graphics/Bitmap;

    .line 401
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108057a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum8:Landroid/graphics/Bitmap;

    .line 402
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108057b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum9:Landroid/graphics/Bitmap;

    .line 403
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108057c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNumSpr:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 460
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 462
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mAttached:Z

    if-eqz v1, :cond_0

    .line 482
    :goto_0
    return-void

    .line 466
    :cond_0
    iput-boolean v4, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mAttached:Z

    .line 468
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mLive:Z

    if-eqz v1, :cond_1

    .line 470
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 471
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 477
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/oppo/widget/OppoDigitalLockSreenClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDigitalLockSreenClock$FormatChangeObserver;-><init>(Lcom/oppo/widget/OppoDigitalLockSreenClock;)V

    iput-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 478
    iget-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 481
    invoke-direct {p0}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 486
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 487
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 491
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mAttached:Z

    .line 493
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 500
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->recycleClockNumBitmap()V

    goto :goto_0
.end method

.method public recycleClockNumBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 407
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 409
    iput-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum0:Landroid/graphics/Bitmap;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 413
    iput-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum1:Landroid/graphics/Bitmap;

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 417
    iput-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum2:Landroid/graphics/Bitmap;

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum3:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum3:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 420
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum3:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 421
    iput-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum3:Landroid/graphics/Bitmap;

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum4:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum4:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 424
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum4:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 425
    iput-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum4:Landroid/graphics/Bitmap;

    .line 427
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum5:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum5:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 428
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum5:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 429
    iput-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum5:Landroid/graphics/Bitmap;

    .line 431
    :cond_5
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum6:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum6:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 432
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum6:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 433
    iput-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum6:Landroid/graphics/Bitmap;

    .line 435
    :cond_6
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum7:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum7:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 436
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum7:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 437
    iput-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum7:Landroid/graphics/Bitmap;

    .line 439
    :cond_7
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum8:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum8:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 440
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum8:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 441
    iput-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum8:Landroid/graphics/Bitmap;

    .line 443
    :cond_8
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum9:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum9:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 444
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum9:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    iput-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNum9:Landroid/graphics/Bitmap;

    .line 447
    :cond_9
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNumSpr:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNumSpr:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 448
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNumSpr:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 449
    iput-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mBitmapClockNumSpr:Landroid/graphics/Bitmap;

    .line 451
    :cond_a
    return-void
.end method

.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 455
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mLive:Z

    .line 456
    return-void
.end method

.method public setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mIsShowAmPm:Z

    .line 103
    iget-object v1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    return-void

    .line 103
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock;->mCalendar:Ljava/util/Calendar;

    .line 114
    invoke-direct {p0}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->updateTime()V

    .line 115
    return-void
.end method
