.class Lcom/oppo/widget/OppoDatePicker$7;
.super Ljava/lang/Object;
.source "OppoDatePicker.java"

# interfaces
.implements Lcom/oppo/widget/OppoDateView$OnChangedListener;


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
    .line 1232
    iput-object p1, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/oppo/widget/OppoDateView;I)V
    .locals 4
    .parameter "picker"
    .parameter "currentResult"

    .prologue
    .line 1235
    sput p2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 1236
    sget-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1238
    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mStartYear:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$000(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v2

    if-ne v1, v2, :cond_0

    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMinMonth:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$100(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v2

    if-ne v1, v2, :cond_0

    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMinDay:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$200(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1241
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMinDay:I
    invoke-static {v3}, Lcom/oppo/widget/OppoDatePicker;->access$200(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/oppo/widget/OppoDateView;->reDrawDate(ZI)V

    .line 1262
    :goto_0
    return-void

    .line 1244
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #calls: Lcom/oppo/widget/OppoDatePicker;->onTimeChanged()V
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$400(Lcom/oppo/widget/OppoDatePicker;)V

    .line 1261
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDatePicker;->upDateDisplayData()V

    goto :goto_0

    .line 1248
    :cond_1
    sget v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 1249
    .local v0, month:I
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mIsLeapYear:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$500(Lcom/oppo/widget/OppoDatePicker;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$600(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mLeapMonth:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$700(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v2

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mIsMaxMonthLeap:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$800(Lcom/oppo/widget/OppoDatePicker;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1250
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$600(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1253
    :cond_3
    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mEndYear:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$900(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v2

    if-ne v1, v2, :cond_4

    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    if-ne v1, v0, :cond_4

    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMaxDay:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$1000(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v2

    if-le v1, v2, :cond_4

    .line 1256
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMaxDay:I
    invoke-static {v3}, Lcom/oppo/widget/OppoDatePicker;->access$1000(Lcom/oppo/widget/OppoDatePicker;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/oppo/widget/OppoDateView;->reDrawDate(ZI)V

    goto :goto_0

    .line 1259
    :cond_4
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$7;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #calls: Lcom/oppo/widget/OppoDatePicker;->onTimeChanged()V
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$400(Lcom/oppo/widget/OppoDatePicker;)V

    goto :goto_1
.end method
