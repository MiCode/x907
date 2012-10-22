.class Lcom/oppo/widget/OppoDigitalClock$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoDigitalClock;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoDigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oppo/widget/OppoDigitalClock$1;->this$0:Lcom/oppo/widget/OppoDigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalClock$1;->this$0:Lcom/oppo/widget/OppoDigitalClock;

    #getter for: Lcom/oppo/widget/OppoDigitalClock;->mLive:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoDigitalClock;->access$000(Lcom/oppo/widget/OppoDigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalClock$1;->this$0:Lcom/oppo/widget/OppoDigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lcom/oppo/widget/OppoDigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoDigitalClock;->access$102(Lcom/oppo/widget/OppoDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalClock$1;->this$0:Lcom/oppo/widget/OppoDigitalClock;

    #getter for: Lcom/oppo/widget/OppoDigitalClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/widget/OppoDigitalClock;->access$300(Lcom/oppo/widget/OppoDigitalClock;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oppo/widget/OppoDigitalClock$1$1;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDigitalClock$1$1;-><init>(Lcom/oppo/widget/OppoDigitalClock$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method
