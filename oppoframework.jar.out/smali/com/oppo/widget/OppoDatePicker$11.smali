.class Lcom/oppo/widget/OppoDatePicker$11;
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
    .line 1451
    iput-object p1, p0, Lcom/oppo/widget/OppoDatePicker$11;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1454
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$11;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/oppo/widget/OppoYearView;->setStopRun(Z)V

    .line 1455
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$11;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/oppo/widget/OppoMonthView;->setStopRun(Z)V

    .line 1456
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$11;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/oppo/widget/OppoDateView;->setStopRun(Z)V

    .line 1457
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$11;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDatePicker;->playSoundEffect()V

    .line 1458
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$11;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1800(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1459
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$11;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1700(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1460
    sget-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1462
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$11;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1800(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x1040620

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1471
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 1472
    .local v0, timeArray:[I
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$11;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1100(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/util/ChineseDateAndSolarDate;

    move-result-object v1

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/oppo/util/ChineseDateAndSolarDate;->SunDateToChineseDate(III)[I

    move-result-object v0

    .line 1475
    aget v1, v0, v6

    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 1476
    aget v1, v0, v5

    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 1477
    const/4 v1, 0x2

    aget v1, v0, v1

    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 1479
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    .line 1488
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$11;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;

    move-result-object v1

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker$11;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mStartYear:I
    invoke-static {v3}, Lcom/oppo/widget/OppoDatePicker;->access$000(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoYearView;->setCurrentPos(I)V

    .line 1489
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$11;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;

    move-result-object v1

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoMonthView;->setCurrentPos(I)V

    .line 1490
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$11;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;

    move-result-object v1

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoDateView;->setCurrentPos(I)V

    .line 1492
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$11;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/widget/OppoYearView;->reDrawChAndNewYear()V

    .line 1493
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$11;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDatePicker;->upDateDisplayData()V

    .line 1495
    .end local v0           #timeArray:[I
    :cond_0
    return-void
.end method
