.class Lcom/oppo/widget/OppoDatePicker$10;
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
    .line 1393
    iput-object p1, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1396
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoYearView;->setStopRun(Z)V

    .line 1397
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoMonthView;->setStopRun(Z)V

    .line 1398
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoDateView;->setStopRun(Z)V

    .line 1399
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDatePicker;->playSoundEffect()V

    .line 1400
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1700(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1401
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1800(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1402
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1800(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10600b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1403
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1700(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10600b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1405
    sget-object v2, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1407
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1700(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x1040621

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1418
    const/4 v2, 0x3

    new-array v1, v2, [I

    .line 1420
    .local v1, timeArray:[I
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1100(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/util/ChineseDateAndSolarDate;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    invoke-virtual {v2, v3}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v0

    .line 1422
    .local v0, iLeapMonth:I
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1100(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/util/ChineseDateAndSolarDate;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/oppo/util/ChineseDateAndSolarDate;->ChineseDateToSunDate(III)[I

    move-result-object v1

    .line 1425
    aget v2, v1, v7

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 1426
    aget v2, v1, v6

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 1427
    const/4 v2, 0x2

    aget v2, v1, v2

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 1436
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    .line 1438
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    iget-object v4, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mStartYear:I
    invoke-static {v4}, Lcom/oppo/widget/OppoDatePicker;->access$000(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoYearView;->setCurrentPos(I)V

    .line 1439
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoMonthView;->setCurrentPos(I)V

    .line 1440
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoDateView;->setCurrentPos(I)V

    .line 1442
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/widget/OppoYearView;->reDrawChAndNewYear()V

    .line 1443
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDatePicker;->upDateDisplayData()V

    .line 1451
    .end local v0           #iLeapMonth:I
    .end local v1           #timeArray:[I
    :goto_0
    return-void

    .line 1447
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$10;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDatePicker;->upDateDisplayData()V

    goto :goto_0
.end method
