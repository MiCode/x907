.class public Lcom/oppo/widget/OppoDigitalClock;
.super Landroid/widget/LinearLayout;
.source "OppoDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoDigitalClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final SYSTEM:Ljava/lang/String; = "/system/fonts/"

.field private static final SYSTEM_FONT_TIME_BACKGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock_Highlight.ttf"

.field private static final TAG:Ljava/lang/String; = "OppoDigitalClock"

.field private static final sTimeFont:Landroid/graphics/Typeface;


# instance fields
.field private final debug:Z

.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private final mCompareString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHourTextView:Landroid/widget/TextView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mMinuteTextView:Landroid/widget/TextView;

.field private mPmString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "/system/fonts/AndroidClock_Highlight.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoDigitalClock;->sTimeFont:Landroid/graphics/Typeface;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
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

    .line 167
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-boolean v4, p0, Lcom/oppo/widget/OppoDigitalClock;->debug:Z

    .line 41
    const-string v2, ":"

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalClock;->mCompareString:Ljava/lang/String;

    .line 46
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalClock;->mAmString:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalClock;->mPmString:Ljava/lang/String;

    .line 50
    iput-boolean v5, p0, Lcom/oppo/widget/OppoDigitalClock;->mLive:Z

    .line 54
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalClock;->mContext:Landroid/content/Context;

    .line 56
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalClock;->mHourTextView:Landroid/widget/TextView;

    .line 57
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalClock;->mMinuteTextView:Landroid/widget/TextView;

    .line 58
    iput-object v3, p0, Lcom/oppo/widget/OppoDigitalClock;->mAmPmTextView:Landroid/widget/TextView;

    .line 68
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalClock;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v2, Lcom/oppo/widget/OppoDigitalClock$1;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoDigitalClock$1;-><init>(Lcom/oppo/widget/OppoDigitalClock;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    iput-object p1, p0, Lcom/oppo/widget/OppoDigitalClock;->mContext:Landroid/content/Context;

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 172
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalClock;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 174
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090090

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 176
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, ampm:[Ljava/lang/String;
    aget-object v2, v0, v4

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalClock;->mAmString:Ljava/lang/String;

    .line 178
    aget-object v2, v0, v5

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalClock;->mPmString:Ljava/lang/String;

    .line 180
    const v2, 0x10203a3

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalClock;->mHourTextView:Landroid/widget/TextView;

    .line 181
    const v2, 0x10203a5

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalClock;->mMinuteTextView:Landroid/widget/TextView;

    .line 182
    const v2, 0x1020372

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/widget/OppoDigitalClock;->mAmPmTextView:Landroid/widget/TextView;

    .line 184
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalClock;->mHourTextView:Landroid/widget/TextView;

    sget-object v3, Lcom/oppo/widget/OppoDigitalClock;->sTimeFont:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 185
    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalClock;->mMinuteTextView:Landroid/widget/TextView;

    sget-object v3, Lcom/oppo/widget/OppoDigitalClock;->sTimeFont:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 187
    invoke-direct {p0}, Lcom/oppo/widget/OppoDigitalClock;->setDateFormat()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoDigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oppo/widget/OppoDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/oppo/widget/OppoDigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoDigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/oppo/widget/OppoDigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/oppo/widget/OppoDigitalClock;->mFormat:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalClock;->mFormat:Ljava/lang/String;

    const-string v1, "h:mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDigitalClock;->setShowAmPm(Z)V

    .line 158
    return-void

    .line 156
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method

.method private updateTime()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 107
    iget-boolean v5, p0, Lcom/oppo/widget/OppoDigitalClock;->mLive:Z

    if-eqz v5, :cond_0

    .line 109
    iget-object v5, p0, Lcom/oppo/widget/OppoDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 112
    :cond_0
    iget-object v5, p0, Lcom/oppo/widget/OppoDigitalClock;->mFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/oppo/widget/OppoDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    .local v3, newTime:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 114
    .local v0, index:I
    const-string v1, ""

    .line 115
    .local v1, newHour:Ljava/lang/CharSequence;
    const-string v2, ""

    .line 117
    .local v2, newMinute:Ljava/lang/CharSequence;
    const/4 v5, -0x1

    if-eq v5, v0, :cond_1

    .line 124
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 125
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/OppoDigitalClock;->mHourTextView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v5, p0, Lcom/oppo/widget/OppoDigitalClock;->mMinuteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v5, p0, Lcom/oppo/widget/OppoDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoDigitalClock;->setIsMorning(Z)V

    .line 138
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 197
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 199
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDigitalClock;->mAttached:Z

    if-eqz v1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 203
    :cond_0
    iput-boolean v4, p0, Lcom/oppo/widget/OppoDigitalClock;->mAttached:Z

    .line 205
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDigitalClock;->mLive:Z

    if-eqz v1, :cond_1

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 208
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/oppo/widget/OppoDigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/oppo/widget/OppoDigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDigitalClock$FormatChangeObserver;-><init>(Lcom/oppo/widget/OppoDigitalClock;)V

    iput-object v1, p0, Lcom/oppo/widget/OppoDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 215
    iget-object v1, p0, Lcom/oppo/widget/OppoDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/oppo/widget/OppoDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    invoke-direct {p0}, Lcom/oppo/widget/OppoDigitalClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 224
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDigitalClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDigitalClock;->mAttached:Z

    .line 230
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDigitalClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/widget/OppoDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/oppo/widget/OppoDigitalClock;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalClock;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalClock;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDigitalClock;->mLive:Z

    .line 193
    return-void
.end method

.method public setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/oppo/widget/OppoDigitalClock;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    return-void

    .line 91
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/oppo/widget/OppoDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 102
    invoke-direct {p0}, Lcom/oppo/widget/OppoDigitalClock;->updateTime()V

    .line 103
    return-void
.end method
