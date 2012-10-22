.class public Lcom/oppo/widget/OppoDatePickerDialog;
.super Landroid/app/AlertDialog;
.source "OppoDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;,
        Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final ISCHINESEDATE:Ljava/lang/String; = "isChineseDate"

.field private static final ISHIDEDISPLAYDATE:Ljava/lang/String; = "IsHideDisplayDate"

.field private static final ISLEAPMONTH:Ljava/lang/String; = "isLeapMonth"

.field private static final ISSELECTSTATUS:Ljava/lang/String; = "IsSelectStatus"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final TAG:Ljava/lang/String; = "OppoDatePickerDialog"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final debug:Z

.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;

.field private final mCallBackReleaseSource:Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;

.field private mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

.field private mCurrentDay:I

.field private mCurrentIsChineseDate:Z

.field private mCurrentIsHideDisplayDate:Z

.field private mCurrentIsSelectStatus:Z

.field private mCurrentMonth:I

.field private mCurrentYear:I

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDatePicker:Lcom/oppo/widget/OppoDatePicker;

.field private mInitialDay:I

.field private mInitialIsChineseDate:Z

.field private mInitialIsHideDisplayDate:Z

.field private mInitialIsSelectStatus:Z

.field private mInitialMonth:I

.field private mInitialYear:I

.field private final mTitleDateFormat:Ljava/text/DateFormat;

.field private final mWeekDays:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;III)V
    .locals 12
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 522
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->debug:Z

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 524
    iput-object p3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBack:Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;

    .line 525
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBackReleaseSource:Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;

    .line 526
    move/from16 v0, p4

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    .line 527
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    .line 528
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    .line 529
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    .line 530
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    .line 531
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    .line 533
    move/from16 v0, p4

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentYear:I

    .line 534
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentMonth:I

    .line 535
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentDay:I

    .line 536
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsChineseDate:Z

    .line 537
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsSelectStatus:Z

    .line 538
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsHideDisplayDate:Z

    .line 540
    new-instance v1, Lcom/oppo/util/ChineseDateAndSolarDate;

    invoke-direct {v1}, Lcom/oppo/util/ChineseDateAndSolarDate;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 541
    new-instance v10, Ljava/text/DateFormatSymbols;

    invoke-direct {v10}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 542
    .local v10, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 544
    invoke-static {p1}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 545
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 547
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 549
    const v1, 0x1040622

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 550
    const v1, 0x1040404

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 551
    const/high16 v1, 0x104

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 552
    const v1, 0x10803c7

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setIcon(I)V

    .line 554
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 556
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v1, 0x109003c

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 557
    .local v11, view:Landroid/view/View;
    invoke-virtual {p0, v11}, Lcom/oppo/widget/OppoDatePickerDialog;->setView(Landroid/view/View;)V

    .line 558
    const v1, 0x10202e7

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoDatePicker;

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    .line 565
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    iget v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    iget v3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    iget-boolean v7, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/oppo/widget/OppoDatePicker;->init(IIILjava/lang/Boolean;ZZLcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 567
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 12
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->debug:Z

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 291
    iput-object p3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBack:Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;

    .line 292
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBackReleaseSource:Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;

    .line 293
    move/from16 v0, p4

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    .line 294
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    .line 295
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    .line 296
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    .line 297
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    .line 298
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    .line 300
    move/from16 v0, p4

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentYear:I

    .line 301
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentMonth:I

    .line 302
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentDay:I

    .line 303
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsChineseDate:Z

    .line 304
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsSelectStatus:Z

    .line 305
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsHideDisplayDate:Z

    .line 307
    new-instance v1, Lcom/oppo/util/ChineseDateAndSolarDate;

    invoke-direct {v1}, Lcom/oppo/util/ChineseDateAndSolarDate;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 308
    new-instance v10, Ljava/text/DateFormatSymbols;

    invoke-direct {v10}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 309
    .local v10, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 311
    invoke-static {p1}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 312
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 313
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 315
    const v1, 0x1040622

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    const v1, 0x1040404

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 317
    const/high16 v1, 0x104

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 318
    const v1, 0x10803c7

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setIcon(I)V

    .line 320
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 322
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v1, 0x109003c

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 323
    .local v11, view:Landroid/view/View;
    invoke-virtual {p0, v11}, Lcom/oppo/widget/OppoDatePickerDialog;->setView(Landroid/view/View;)V

    .line 324
    const v1, 0x10202e7

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoDatePicker;

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    .line 325
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    iget v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    iget v3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    iget-boolean v7, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/oppo/widget/OppoDatePicker;->init(IIILjava/lang/Boolean;ZZLcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 327
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;IIIZZ)V
    .locals 12
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"
    .parameter "isSelectStatus"

    .prologue
    .line 404
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->debug:Z

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 406
    iput-object p3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBack:Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;

    .line 407
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBackReleaseSource:Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;

    .line 408
    move/from16 v0, p4

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    .line 409
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    .line 410
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    .line 411
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    .line 412
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    .line 413
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    .line 415
    move/from16 v0, p4

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentYear:I

    .line 416
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentMonth:I

    .line 417
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentDay:I

    .line 418
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsChineseDate:Z

    .line 419
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsSelectStatus:Z

    .line 420
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsHideDisplayDate:Z

    .line 422
    new-instance v1, Lcom/oppo/util/ChineseDateAndSolarDate;

    invoke-direct {v1}, Lcom/oppo/util/ChineseDateAndSolarDate;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 423
    new-instance v10, Ljava/text/DateFormatSymbols;

    invoke-direct {v10}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 424
    .local v10, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 426
    invoke-static {p1}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 427
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 429
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 431
    const v1, 0x1040622

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    const v1, 0x1040404

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 433
    const/high16 v1, 0x104

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 434
    const v1, 0x10803c7

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setIcon(I)V

    .line 436
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 438
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v1, 0x109003c

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 439
    .local v11, view:Landroid/view/View;
    invoke-virtual {p0, v11}, Lcom/oppo/widget/OppoDatePickerDialog;->setView(Landroid/view/View;)V

    .line 440
    const v1, 0x10202e7

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoDatePicker;

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    .line 441
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    iget v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    iget v3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    iget-boolean v7, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/oppo/widget/OppoDatePicker;->init(IIILjava/lang/Boolean;ZZLcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 443
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;IIIZZZ)V
    .locals 12
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"
    .parameter "isSelectStatus"
    .parameter "isHideDisplaydate"

    .prologue
    .line 647
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->debug:Z

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 649
    iput-object p3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBack:Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;

    .line 650
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBackReleaseSource:Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;

    .line 651
    move/from16 v0, p4

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    .line 652
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    .line 653
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    .line 654
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    .line 655
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    .line 656
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    .line 658
    move/from16 v0, p4

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentYear:I

    .line 659
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentMonth:I

    .line 660
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentDay:I

    .line 661
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsChineseDate:Z

    .line 662
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsSelectStatus:Z

    .line 663
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsHideDisplayDate:Z

    .line 665
    new-instance v1, Lcom/oppo/util/ChineseDateAndSolarDate;

    invoke-direct {v1}, Lcom/oppo/util/ChineseDateAndSolarDate;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 666
    new-instance v10, Ljava/text/DateFormatSymbols;

    invoke-direct {v10}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 667
    .local v10, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 669
    invoke-static {p1}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 670
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 672
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 674
    const v1, 0x1040622

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 675
    const v1, 0x1040404

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 676
    const/high16 v1, 0x104

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 677
    const v1, 0x10803c7

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setIcon(I)V

    .line 679
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 681
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v1, 0x109003c

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 682
    .local v11, view:Landroid/view/View;
    invoke-virtual {p0, v11}, Lcom/oppo/widget/OppoDatePickerDialog;->setView(Landroid/view/View;)V

    .line 683
    const v1, 0x10202e7

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoDatePicker;

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    .line 684
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    iget v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    iget v3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    iget-boolean v7, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/oppo/widget/OppoDatePicker;->init(IIILjava/lang/Boolean;ZZLcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 686
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;III)V
    .locals 12
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "callBackReleaseSource"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 460
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->debug:Z

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 462
    iput-object p3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBack:Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;

    .line 463
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBackReleaseSource:Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;

    .line 464
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    .line 465
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    .line 466
    move/from16 v0, p7

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    .line 467
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    .line 468
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    .line 469
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    .line 471
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentYear:I

    .line 472
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentMonth:I

    .line 473
    move/from16 v0, p7

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentDay:I

    .line 474
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsChineseDate:Z

    .line 475
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsSelectStatus:Z

    .line 476
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsHideDisplayDate:Z

    .line 478
    new-instance v1, Lcom/oppo/util/ChineseDateAndSolarDate;

    invoke-direct {v1}, Lcom/oppo/util/ChineseDateAndSolarDate;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 479
    new-instance v10, Ljava/text/DateFormatSymbols;

    invoke-direct {v10}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 480
    .local v10, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 482
    invoke-static {p1}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 483
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 485
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 487
    const v1, 0x1040622

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 488
    const v1, 0x1040404

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 489
    const/high16 v1, 0x104

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 490
    const v1, 0x10803c7

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setIcon(I)V

    .line 492
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 494
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v1, 0x109003c

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 495
    .local v11, view:Landroid/view/View;
    invoke-virtual {p0, v11}, Lcom/oppo/widget/OppoDatePickerDialog;->setView(Landroid/view/View;)V

    .line 496
    const v1, 0x10202e7

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoDatePicker;

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    .line 503
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    iget v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    iget v3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    iget-boolean v7, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/oppo/widget/OppoDatePicker;->init(IIILjava/lang/Boolean;ZZLcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 505
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;IIIZ)V
    .locals 12
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "callBackReleaseSource"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->debug:Z

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 235
    iput-object p3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBack:Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;

    .line 236
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBackReleaseSource:Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;

    .line 237
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    .line 238
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    .line 239
    move/from16 v0, p7

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    .line 240
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    .line 241
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    .line 242
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    .line 244
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentYear:I

    .line 245
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentMonth:I

    .line 246
    move/from16 v0, p7

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentDay:I

    .line 247
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsChineseDate:Z

    .line 248
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsSelectStatus:Z

    .line 249
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsHideDisplayDate:Z

    .line 251
    new-instance v1, Lcom/oppo/util/ChineseDateAndSolarDate;

    invoke-direct {v1}, Lcom/oppo/util/ChineseDateAndSolarDate;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 252
    new-instance v10, Ljava/text/DateFormatSymbols;

    invoke-direct {v10}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 253
    .local v10, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 255
    invoke-static {p1}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 256
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 259
    const v1, 0x1040622

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    const v1, 0x1040404

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 261
    const/high16 v1, 0x104

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 262
    const v1, 0x10803c7

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setIcon(I)V

    .line 264
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 266
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v1, 0x109003c

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 267
    .local v11, view:Landroid/view/View;
    invoke-virtual {p0, v11}, Lcom/oppo/widget/OppoDatePickerDialog;->setView(Landroid/view/View;)V

    .line 268
    const v1, 0x10202e7

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoDatePicker;

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    .line 269
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    iget v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    iget v3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    iget-boolean v7, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/oppo/widget/OppoDatePicker;->init(IIILjava/lang/Boolean;ZZLcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;IIIZZ)V
    .locals 12
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "callBackReleaseSource"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"
    .parameter "isSelectStatus"

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->debug:Z

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 348
    iput-object p3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBack:Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;

    .line 349
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBackReleaseSource:Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;

    .line 350
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    .line 351
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    .line 352
    move/from16 v0, p7

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    .line 353
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    .line 354
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    .line 355
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    .line 357
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentYear:I

    .line 358
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentMonth:I

    .line 359
    move/from16 v0, p7

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentDay:I

    .line 360
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsChineseDate:Z

    .line 361
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsSelectStatus:Z

    .line 362
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsHideDisplayDate:Z

    .line 364
    new-instance v1, Lcom/oppo/util/ChineseDateAndSolarDate;

    invoke-direct {v1}, Lcom/oppo/util/ChineseDateAndSolarDate;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 365
    new-instance v10, Ljava/text/DateFormatSymbols;

    invoke-direct {v10}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 366
    .local v10, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 368
    invoke-static {p1}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 369
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 371
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 373
    const v1, 0x1040622

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    const v1, 0x1040404

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 375
    const/high16 v1, 0x104

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 376
    const v1, 0x10803c7

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setIcon(I)V

    .line 378
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 380
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v1, 0x109003c

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 381
    .local v11, view:Landroid/view/View;
    invoke-virtual {p0, v11}, Lcom/oppo/widget/OppoDatePickerDialog;->setView(Landroid/view/View;)V

    .line 382
    const v1, 0x10202e7

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoDatePicker;

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    .line 383
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    iget v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    iget v3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    iget-boolean v7, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/oppo/widget/OppoDatePicker;->init(IIILjava/lang/Boolean;ZZLcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 385
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;IIIZZZ)V
    .locals 12
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "callBackReleaseSource"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"
    .parameter "isSelectStatus"
    .parameter "isHideDisplaydate"

    .prologue
    .line 588
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->debug:Z

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 590
    iput-object p3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBack:Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;

    .line 591
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBackReleaseSource:Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;

    .line 592
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    .line 593
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    .line 594
    move/from16 v0, p7

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    .line 595
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    .line 596
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    .line 597
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    .line 599
    move/from16 v0, p5

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentYear:I

    .line 600
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentMonth:I

    .line 601
    move/from16 v0, p7

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentDay:I

    .line 602
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsChineseDate:Z

    .line 603
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsSelectStatus:Z

    .line 604
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsHideDisplayDate:Z

    .line 606
    new-instance v1, Lcom/oppo/util/ChineseDateAndSolarDate;

    invoke-direct {v1}, Lcom/oppo/util/ChineseDateAndSolarDate;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 607
    new-instance v10, Ljava/text/DateFormatSymbols;

    invoke-direct {v10}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 608
    .local v10, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 610
    invoke-static {p1}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 611
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 613
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 615
    const v1, 0x1040622

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 616
    const v1, 0x1040404

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 617
    const/high16 v1, 0x104

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 618
    const v1, 0x10803c7

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDatePickerDialog;->setIcon(I)V

    .line 620
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 622
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v1, 0x109003c

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 623
    .local v11, view:Landroid/view/View;
    invoke-virtual {p0, v11}, Lcom/oppo/widget/OppoDatePickerDialog;->setView(Landroid/view/View;)V

    .line 624
    const v1, 0x10202e7

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoDatePicker;

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    .line 625
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    iget v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialYear:I

    iget v3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialMonth:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialDay:I

    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsChineseDate:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    iget-boolean v7, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/oppo/widget/OppoDatePicker;->init(IIILjava/lang/Boolean;ZZLcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 627
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 123
    const v2, 0x1030315

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oppo/widget/OppoDatePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;III)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 8
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"

    .prologue
    .line 153
    const v2, 0x1030315

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/oppo/widget/OppoDatePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;IIIZ)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;IIIZZ)V
    .locals 9
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"
    .parameter "isSelectStatus"

    .prologue
    .line 184
    const v2, 0x1030315

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oppo/widget/OppoDatePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;IIIZZ)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;IIIZZZ)V
    .locals 10
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"
    .parameter "isSelectStatus"
    .parameter "isHideDisplaydate"

    .prologue
    .line 212
    const v2, 0x1030315

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/oppo/widget/OppoDatePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;IIIZZZ)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;III)V
    .locals 8
    .parameter "context"
    .parameter "callBack"
    .parameter "callBackReleaseSource"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 113
    const v2, 0x1030315

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/oppo/widget/OppoDatePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;III)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;IIIZ)V
    .locals 9
    .parameter "context"
    .parameter "callBack"
    .parameter "callBackReleaseSource"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"

    .prologue
    .line 142
    const v2, 0x1030315

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oppo/widget/OppoDatePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;IIIZ)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;IIIZZ)V
    .locals 10
    .parameter "context"
    .parameter "callBack"
    .parameter "callBackReleaseSource"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"
    .parameter "isSelectStatus"

    .prologue
    .line 172
    const v2, 0x1030315

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/oppo/widget/OppoDatePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;IIIZZ)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;IIIZZZ)V
    .locals 11
    .parameter "context"
    .parameter "callBack"
    .parameter "callBackReleaseSource"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"
    .parameter "isSelectStatus"
    .parameter "isHideDisplaydate"

    .prologue
    .line 198
    const v2, 0x1030315

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/oppo/widget/OppoDatePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;IIIZZZ)V

    .line 201
    return-void
.end method


# virtual methods
.method public onChineseDateChanged(Lcom/oppo/widget/OppoDatePicker;ZZ)V
    .locals 0
    .parameter "view"
    .parameter "isChineseDate"
    .parameter "isLeapMonth"

    .prologue
    .line 816
    iput-boolean p2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsChineseDate:Z

    .line 817
    iput-boolean p3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsSelectStatus:Z

    .line 818
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 732
    packed-switch p2, :pswitch_data_0

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 736
    :pswitch_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBack:Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDatePicker;->clearFocus()V

    .line 740
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    iget v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentYear:I

    invoke-virtual {v1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v0

    .line 771
    .local v0, leapMonth:I
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBack:Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    iget v3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentYear:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentMonth:I

    iget v5, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentDay:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;->onDateSet(Lcom/oppo/widget/OppoDatePicker;III)V

    .line 778
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBack:Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    iget-object v3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDatePicker;->getCurrentIsLeapMonthFlag()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoDatePicker;->getCurrentIsChineseDate()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/oppo/widget/OppoDatePickerDialog$OnDateSetListener;->onIsLeapMonthSet(Lcom/oppo/widget/OppoDatePicker;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 785
    .end local v0           #leapMonth:I
    :pswitch_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBackReleaseSource:Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;

    if-eqz v1, :cond_1

    .line 787
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDatePicker;->clearFocus()V

    .line 788
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCallBackReleaseSource:Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-interface {v1, v2}, Lcom/oppo/widget/OppoDatePickerDialog$OnDateReleaseSourceListener;->OnDateReleaseSource(Lcom/oppo/widget/OppoDatePicker;)V

    .line 790
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 732
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDateChanged(Lcom/oppo/widget/OppoDatePicker;III)V
    .locals 0
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 803
    iput p2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentYear:I

    .line 804
    iput p3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentMonth:I

    .line 805
    iput p4, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentDay:I

    .line 806
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 845
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 846
    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 847
    .local v1, year:I
    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 848
    .local v9, month:I
    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 849
    .local v3, day:I
    const-string v0, "isChineseDate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 850
    .local v4, isChineseDate:Z
    const-string v0, "isLeapMonth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 851
    .local v5, isChineseLeapMonth:Z
    const-string v0, "IsSelectStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 852
    .local v6, isSelectStatus:Z
    const-string v0, "IsHideDisplayDate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 860
    .local v7, isHideDisplayDate:Z
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    add-int/lit8 v2, v9, -0x1

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/oppo/widget/OppoDatePicker;->reInitUi(IIIZZZZLcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 863
    iput v3, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentDay:I

    .line 864
    add-int/lit8 v0, v9, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentMonth:I

    .line 865
    iput v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentYear:I

    .line 866
    iput-boolean v4, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsChineseDate:Z

    .line 867
    iput-boolean v6, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsSelectStatus:Z

    .line 868
    iput-boolean v7, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mCurrentIsHideDisplayDate:Z

    .line 870
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 827
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 828
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDatePicker;->getCurrentYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 829
    const-string v1, "month"

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDatePicker;->getCurrentMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 830
    const-string v1, "day"

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDatePicker;->getCurrentDay()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 831
    const-string v1, "isChineseDate"

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDatePicker;->getCurrentIsChineseDate()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 832
    const-string v1, "isLeapMonth"

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDatePicker;->getCurrentIsLeapMonthFlag()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 833
    const-string v1, "IsSelectStatus"

    iget-boolean v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsSelectStatus:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 834
    const-string v1, "IsHideDisplayDate"

    iget-boolean v2, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mInitialIsHideDisplayDate:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 835
    return-object v0
.end method

.method public reFreshDdatePickerDialog()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoDatePicker;->reFreshSelf()V

    .line 723
    :cond_0
    return-void
.end method

.method public setIsOnlySolarCalendar(Z)V
    .locals 1
    .parameter "isOnlySolarCalendar"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoDatePicker;->setIsOnlySolarCalendar(Z)V

    .line 696
    :cond_0
    return-void
.end method

.method public setYearRange(II)Z
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v0, 0x0

    .line 706
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    if-nez v1, :cond_1

    .line 712
    :cond_0
    :goto_0
    return v0

    .line 709
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/widget/OppoDatePicker;->setYearRange(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    const/4 v0, 0x1

    goto :goto_0
.end method
