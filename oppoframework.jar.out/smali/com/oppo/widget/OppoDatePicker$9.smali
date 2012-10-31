.class Lcom/oppo/widget/OppoDatePicker$9;
.super Ljava/lang/Object;
.source "OppoDatePicker.java"

# interfaces
.implements Lcom/oppo/widget/OppoMonthView$OnChangedListener;


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
    .line 1290
    iput-object p1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/oppo/widget/OppoMonthView;ILjava/lang/Boolean;)V
    .locals 5
    .parameter "picker"
    .parameter "currentResult"
    .parameter "isLeapMonth"

    .prologue
    const/4 v4, 0x0

    .line 1298
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1100(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/util/ChineseDateAndSolarDate;

    move-result-object v1

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    invoke-virtual {v1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v0

    .line 1300
    .local v0, leapMonth:I
    sget-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1302
    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mEndYear:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$900(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$600(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v1

    if-gt p2, v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$600(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mIsMaxMonthLeap:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$800(Lcom/oppo/widget/OppoDatePicker;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1306
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I
    invoke-static {v3}, Lcom/oppo/widget/OppoDatePicker;->access$600(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mIsMaxMonthLeap:Z
    invoke-static {v4}, Lcom/oppo/widget/OppoDatePicker;->access$800(Lcom/oppo/widget/OppoDatePicker;)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/oppo/widget/OppoMonthView;->onReDrawMonthAction(ZIZ)V

    .line 1372
    :goto_0
    return-void

    .line 1309
    :cond_1
    if-eqz v0, :cond_5

    .line 1311
    if-ne p2, v0, :cond_3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1313
    add-int/lit8 v1, p2, 0x1

    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 1341
    :cond_2
    :goto_1
    sput-object p3, Lcom/oppo/widget/OppoDatePicker;->mIsLeapMonthFlag:Ljava/lang/Boolean;

    .line 1349
    sget-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1352
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoDateView;->setStopRun(Z)V

    .line 1353
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDateView;->reDraw()V

    .line 1354
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1100(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/util/ChineseDateAndSolarDate;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    invoke-virtual {v2, v3, v4}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetSolarMonthDays(II)I

    move-result v2

    #setter for: Lcom/oppo/widget/OppoDatePicker;->mCourrentNewMonthDayNumber:I
    invoke-static {v1, v2}, Lcom/oppo/widget/OppoDatePicker;->access$1302(Lcom/oppo/widget/OppoDatePicker;I)I

    .line 1371
    :goto_2
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDatePicker;->upDateDisplayData()V

    goto :goto_0

    .line 1315
    :cond_3
    if-le p2, v0, :cond_4

    .line 1317
    add-int/lit8 v1, p2, 0x1

    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    goto :goto_1

    .line 1321
    :cond_4
    sput p2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    goto :goto_1

    .line 1326
    :cond_5
    sput p2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    goto :goto_1

    .line 1331
    :cond_6
    sput p2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 1333
    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mStartYear:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$000(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v2

    if-ne v1, v2, :cond_2

    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMinMonth:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$100(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1335
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMinMonth:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$100(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mIsMaxMonthLeap:Z
    invoke-static {v3}, Lcom/oppo/widget/OppoDatePicker;->access$800(Lcom/oppo/widget/OppoDatePicker;)Z

    move-result v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/oppo/widget/OppoMonthView;->onReDrawMonthAction(ZIZ)V

    goto :goto_0

    .line 1358
    :cond_7
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1360
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1400(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x1080521

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1367
    :goto_3
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoDateView;->setStopRun(Z)V

    .line 1368
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDateView;->reDraw()V

    .line 1369
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1100(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/util/ChineseDateAndSolarDate;

    move-result-object v2

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    invoke-virtual {v2, v3, v4}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChMonthDays(II)I

    move-result v2

    #setter for: Lcom/oppo/widget/OppoDatePicker;->mCourrentChineseMonthDayNumber:I
    invoke-static {v1, v2}, Lcom/oppo/widget/OppoDatePicker;->access$1502(Lcom/oppo/widget/OppoDatePicker;I)I

    goto :goto_2

    .line 1364
    :cond_8
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$9;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1400(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x10805bb

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3
.end method
