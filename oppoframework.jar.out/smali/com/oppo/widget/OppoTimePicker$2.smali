.class Lcom/oppo/widget/OppoTimePicker$2;
.super Ljava/lang/Object;
.source "OppoTimePicker.java"

# interfaces
.implements Lcom/oppo/widget/OppoTimeView$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoTimePicker;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoTimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/oppo/widget/OppoTimePicker$2;->this$0:Lcom/oppo/widget/OppoTimePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/oppo/widget/OppoTimeView;I)V
    .locals 4
    .parameter "picker"
    .parameter "currentResult"

    .prologue
    const/16 v3, 0xc

    .line 166
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$2;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #setter for: Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I
    invoke-static {v0, p2}, Lcom/oppo/widget/OppoTimePicker;->access$002(Lcom/oppo/widget/OppoTimePicker;I)I

    .line 168
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$2;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$100(Lcom/oppo/widget/OppoTimePicker;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- mCurrentHourStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker$2;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I
    invoke-static {v2}, Lcom/oppo/widget/OppoTimePicker;->access$000(Lcom/oppo/widget/OppoTimePicker;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$2;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mIs24Hour:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$200(Lcom/oppo/widget/OppoTimePicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$2;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$000(Lcom/oppo/widget/OppoTimePicker;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 176
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$2;->this$0:Lcom/oppo/widget/OppoTimePicker;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoTimePicker;->access$002(Lcom/oppo/widget/OppoTimePicker;I)I

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$2;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$300(Lcom/oppo/widget/OppoTimePicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$2;->this$0:Lcom/oppo/widget/OppoTimePicker;

    invoke-static {v0, v3}, Lcom/oppo/widget/OppoTimePicker;->access$012(Lcom/oppo/widget/OppoTimePicker;I)I

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$2;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$100(Lcom/oppo/widget/OppoTimePicker;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- mCurrentHourEnd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker$2;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I
    invoke-static {v2}, Lcom/oppo/widget/OppoTimePicker;->access$000(Lcom/oppo/widget/OppoTimePicker;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$2;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #calls: Lcom/oppo/widget/OppoTimePicker;->onTimeChanged()V
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$400(Lcom/oppo/widget/OppoTimePicker;)V

    .line 187
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$2;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #calls: Lcom/oppo/widget/OppoTimePicker;->updateDispayTime()V
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$500(Lcom/oppo/widget/OppoTimePicker;)V

    .line 188
    return-void
.end method
