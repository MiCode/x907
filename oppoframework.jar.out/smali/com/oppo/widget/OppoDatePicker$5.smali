.class Lcom/oppo/widget/OppoDatePicker$5;
.super Ljava/lang/Object;
.source "OppoDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 426
    iput-object p1, p0, Lcom/oppo/widget/OppoDatePicker$5;->this$0:Lcom/oppo/widget/OppoDatePicker;

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

    .line 429
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$5;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/oppo/widget/OppoYearView;->setStopRun(Z)V

    .line 430
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$5;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/oppo/widget/OppoMonthView;->setStopRun(Z)V

    .line 431
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$5;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/oppo/widget/OppoDateView;->setStopRun(Z)V

    .line 432
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$5;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDatePicker;->playSoundEffect()V

    .line 433
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$5;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1800(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 434
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$5;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1700(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 435
    sget-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$5;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1800(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x1040620

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 446
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 447
    .local v0, timeArray:[I
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$5;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1100(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/util/ChineseDateAndSolarDate;

    move-result-object v1

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/oppo/util/ChineseDateAndSolarDate;->SunDateToChineseDate(III)[I

    move-result-object v0

    .line 450
    aget v1, v0, v6

    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 451
    aget v1, v0, v5

    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 452
    const/4 v1, 0x2

    aget v1, v0, v1

    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 454
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    .line 463
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$5;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;

    move-result-object v1

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker$5;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mStartYear:I
    invoke-static {v3}, Lcom/oppo/widget/OppoDatePicker;->access$000(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoYearView;->setCurrentPos(I)V

    .line 464
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$5;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;

    move-result-object v1

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoMonthView;->setCurrentPos(I)V

    .line 465
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$5;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;

    move-result-object v1

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoDateView;->setCurrentPos(I)V

    .line 467
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$5;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/widget/OppoYearView;->reDrawChAndNewYear()V

    .line 468
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$5;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDatePicker;->upDateDisplayData()V

    .line 470
    .end local v0           #timeArray:[I
    :cond_0
    return-void
.end method
