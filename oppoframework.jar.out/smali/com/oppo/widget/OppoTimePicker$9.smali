.class Lcom/oppo/widget/OppoTimePicker$9;
.super Ljava/lang/Object;
.source "OppoTimePicker.java"

# interfaces
.implements Lcom/oppo/widget/OppoSelectPmorAmView$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoTimePicker;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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
    .line 603
    iput-object p1, p0, Lcom/oppo/widget/OppoTimePicker$9;->this$0:Lcom/oppo/widget/OppoTimePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/oppo/widget/OppoSelectPmorAmView;Z)V
    .locals 4
    .parameter "picker"
    .parameter "result"

    .prologue
    const/16 v3, 0xc

    .line 606
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$9;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->debug:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$800(Lcom/oppo/widget/OppoTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$9;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$100(Lcom/oppo/widget/OppoTimePicker;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "luoyaojun -- result == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$9;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$300(Lcom/oppo/widget/OppoTimePicker;)Z

    move-result v0

    if-ne v0, p2, :cond_1

    .line 635
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$9;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$300(Lcom/oppo/widget/OppoTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 620
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$9;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$000(Lcom/oppo/widget/OppoTimePicker;)I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 622
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$9;->this$0:Lcom/oppo/widget/OppoTimePicker;

    invoke-static {v0, v3}, Lcom/oppo/widget/OppoTimePicker;->access$012(Lcom/oppo/widget/OppoTimePicker;I)I

    .line 632
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$9;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #setter for: Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z
    invoke-static {v0, p2}, Lcom/oppo/widget/OppoTimePicker;->access$302(Lcom/oppo/widget/OppoTimePicker;Z)Z

    .line 633
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$9;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #calls: Lcom/oppo/widget/OppoTimePicker;->onTimeChanged()V
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$400(Lcom/oppo/widget/OppoTimePicker;)V

    .line 634
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$9;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #calls: Lcom/oppo/widget/OppoTimePicker;->updateDispayTime()V
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$500(Lcom/oppo/widget/OppoTimePicker;)V

    goto :goto_0

    .line 627
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$9;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$000(Lcom/oppo/widget/OppoTimePicker;)I

    move-result v0

    if-lt v0, v3, :cond_2

    .line 629
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$9;->this$0:Lcom/oppo/widget/OppoTimePicker;

    invoke-static {v0, v3}, Lcom/oppo/widget/OppoTimePicker;->access$020(Lcom/oppo/widget/OppoTimePicker;I)I

    goto :goto_1
.end method
