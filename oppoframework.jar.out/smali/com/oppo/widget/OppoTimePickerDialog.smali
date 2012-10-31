.class public Lcom/oppo/widget/OppoTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "OppoTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoTimePickerDialog$OnReleaseSourceListener;,
        Lcom/oppo/widget/OppoTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final debug:Z

.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallback:Lcom/oppo/widget/OppoTimePickerDialog$OnTimeSetListener;

.field private final mCallbackRelease:Lcom/oppo/widget/OppoTimePickerDialog$OnReleaseSourceListener;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mInitialHourOfDay:I

.field private mInitialMinute:I

.field private mIs24HourView:Z

.field private final mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/oppo/widget/OppoTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 5
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "is24HourView"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    const-string v2, "OppoTimePickerDialog"

    iput-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->TAG:Ljava/lang/String;

    .line 57
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->debug:Z

    .line 72
    iput v3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCurrentHour:I

    .line 73
    iput v3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCurrentMinute:I

    .line 169
    iput-object p3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCallback:Lcom/oppo/widget/OppoTimePickerDialog$OnTimeSetListener;

    .line 170
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCallbackRelease:Lcom/oppo/widget/OppoTimePickerDialog$OnReleaseSourceListener;

    .line 171
    iput p4, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mInitialHourOfDay:I

    .line 172
    iput p5, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mInitialMinute:I

    .line 173
    iput-boolean p6, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mIs24HourView:Z

    .line 176
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 177
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 178
    const v2, 0x104053d

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoTimePickerDialog;->setTitle(I)V

    .line 181
    const v2, 0x1040404

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, p0}, Lcom/oppo/widget/OppoTimePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 182
    const/high16 v2, 0x104

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, p0}, Lcom/oppo/widget/OppoTimePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 183
    const v2, 0x10803d9

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoTimePickerDialog;->setIcon(I)V

    .line 185
    new-instance v2, Lcom/oppo/widget/OppoTimePicker;

    invoke-direct {v2, p1}, Lcom/oppo/widget/OppoTimePicker;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    .line 187
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, Container:Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 189
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTimePickerDialog;->setView(Landroid/view/View;)V

    .line 194
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    iget-boolean v3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mIs24HourView:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 195
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    iget v3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 196
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    iget v3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mInitialMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 197
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v2, p0}, Lcom/oppo/widget/OppoTimePicker;->setOnTimeChangedListener(Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oppo/widget/OppoTimePickerDialog$OnTimeSetListener;Lcom/oppo/widget/OppoTimePickerDialog$OnReleaseSourceListener;IIZ)V
    .locals 5
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "callBackRelease"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "is24HourView"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    const-string v2, "OppoTimePickerDialog"

    iput-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->TAG:Ljava/lang/String;

    .line 57
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->debug:Z

    .line 72
    iput v3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCurrentHour:I

    .line 73
    iput v3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCurrentMinute:I

    .line 121
    iput-object p3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCallback:Lcom/oppo/widget/OppoTimePickerDialog$OnTimeSetListener;

    .line 122
    iput-object p4, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCallbackRelease:Lcom/oppo/widget/OppoTimePickerDialog$OnReleaseSourceListener;

    .line 123
    iput p5, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mInitialHourOfDay:I

    .line 124
    iput p6, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mInitialMinute:I

    .line 125
    iput-boolean p7, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mIs24HourView:Z

    .line 128
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 130
    const v2, 0x104053d

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoTimePickerDialog;->setTitle(I)V

    .line 133
    const v2, 0x1040404

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, p0}, Lcom/oppo/widget/OppoTimePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 134
    const/high16 v2, 0x104

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, p0}, Lcom/oppo/widget/OppoTimePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 135
    const v2, 0x10803d9

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoTimePickerDialog;->setIcon(I)V

    .line 137
    new-instance v2, Lcom/oppo/widget/OppoTimePicker;

    invoke-direct {v2, p1}, Lcom/oppo/widget/OppoTimePicker;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    .line 139
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, Container:Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 141
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0xf

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 144
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTimePickerDialog;->setView(Landroid/view/View;)V

    .line 147
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    iget-boolean v3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mIs24HourView:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 148
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    iget v3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 149
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    iget v3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mInitialMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 150
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v2, p0}, Lcom/oppo/widget/OppoTimePicker;->setOnTimeChangedListener(Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/widget/OppoTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .parameter "context"
    .parameter "callBack"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "is24HourView"

    .prologue
    .line 86
    const v2, 0x1030317

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oppo/widget/OppoTimePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/widget/OppoTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/widget/OppoTimePickerDialog$OnTimeSetListener;Lcom/oppo/widget/OppoTimePickerDialog$OnReleaseSourceListener;IIZ)V
    .locals 8
    .parameter "context"
    .parameter "callBack"
    .parameter "callBackRelease"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "is24HourView"

    .prologue
    .line 101
    const v2, 0x1030317

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/oppo/widget/OppoTimePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/widget/OppoTimePickerDialog$OnTimeSetListener;Lcom/oppo/widget/OppoTimePickerDialog$OnReleaseSourceListener;IIZ)V

    .line 103
    return-void
.end method


# virtual methods
.method public getCurrentHour()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCurrentHour:I

    return v0
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCurrentMinute:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 207
    packed-switch p2, :pswitch_data_0

    .line 233
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCallback:Lcom/oppo/widget/OppoTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTimePicker;->clearFocus()V

    .line 214
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCallback:Lcom/oppo/widget/OppoTimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoTimePicker;->getCurrentHour()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoTimePicker;->getCurrentMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oppo/widget/OppoTimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/oppo/widget/OppoTimePicker;II)V

    .line 217
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 223
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCallbackRelease:Lcom/oppo/widget/OppoTimePickerDialog$OnReleaseSourceListener;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTimePicker;->clearFocus()V

    .line 226
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCallbackRelease:Lcom/oppo/widget/OppoTimePickerDialog$OnReleaseSourceListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoTimePickerDialog$OnReleaseSourceListener;->onTimeReleaseSource(Lcom/oppo/widget/OppoTimePicker;)V

    .line 228
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 266
    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 267
    .local v0, hour:I
    const-string v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 268
    .local v1, minute:I
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 269
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 270
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    iget-boolean v3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mIs24HourView:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 271
    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v2, p0}, Lcom/oppo/widget/OppoTimePicker;->setOnTimeChangedListener(Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;)V

    .line 272
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 257
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoTimePicker;->getCurrentHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    const-string v1, "minute"

    iget-object v2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoTimePicker;->getCurrentMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    return-object v0
.end method

.method public onTimeChanged(Lcom/oppo/widget/OppoTimePicker;II)V
    .locals 3
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 238
    iput p2, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCurrentHour:I

    .line 239
    iput p3, p0, Lcom/oppo/widget/OppoTimePickerDialog;->mCurrentMinute:I

    .line 240
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePickerDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- hourOfDay : minute == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method
