.class Lcom/oppo/widget/OppoDatePicker$12;
.super Ljava/lang/Object;
.source "OppoDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoDatePicker;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoDatePicker;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoDatePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1522
    iput-object p1, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1525
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoYearView;->setStopRun(Z)V

    .line 1526
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoMonthView;->setStopRun(Z)V

    .line 1527
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoDateView;->setStopRun(Z)V

    .line 1528
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDatePicker;->playSoundEffect()V

    .line 1530
    sget-object v2, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1532
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1900(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x1040621

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1534
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1400(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x10805bb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1543
    new-array v1, v4, [I

    .line 1545
    .local v1, timeArray:[I
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1100(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/util/ChineseDateAndSolarDate;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    invoke-virtual {v2, v3}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v0

    .line 1547
    .local v0, iLeapMonth:I
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1100(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/util/ChineseDateAndSolarDate;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/oppo/util/ChineseDateAndSolarDate;->ChineseDateToSunDate(III)[I

    move-result-object v1

    .line 1550
    aget v2, v1, v7

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 1551
    aget v2, v1, v6

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 1552
    aget v2, v1, v8

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 1561
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    .line 1563
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    iget-object v4, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mStartYear:I
    invoke-static {v4}, Lcom/oppo/widget/OppoDatePicker;->access$000(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoYearView;->setCurrentPos(I)V

    .line 1564
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoMonthView;->setCurrentPos(I)V

    .line 1565
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoDateView;->setCurrentPos(I)V

    .line 1567
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/widget/OppoYearView;->reDrawChAndNewYear()V

    .line 1568
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDatePicker;->upDateDisplayData()V

    .line 1605
    .end local v0           #iLeapMonth:I
    :goto_0
    return-void

    .line 1572
    .end local v1           #timeArray:[I
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1900(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x1040620

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1581
    new-array v1, v4, [I

    .line 1582
    .restart local v1       #timeArray:[I
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1100(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/util/ChineseDateAndSolarDate;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/oppo/util/ChineseDateAndSolarDate;->SunDateToChineseDate(III)[I

    move-result-object v1

    .line 1585
    aget v2, v1, v7

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 1586
    aget v2, v1, v6

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 1587
    aget v2, v1, v8

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 1589
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    .line 1598
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    iget-object v4, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mStartYear:I
    invoke-static {v4}, Lcom/oppo/widget/OppoDatePicker;->access$000(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoYearView;->setCurrentPos(I)V

    .line 1599
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoMonthView;->setCurrentPos(I)V

    .line 1600
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoDateView;->setCurrentPos(I)V

    .line 1602
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/widget/OppoYearView;->reDrawChAndNewYear()V

    .line 1603
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$12;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDatePicker;->upDateDisplayData()V

    goto :goto_0
.end method
