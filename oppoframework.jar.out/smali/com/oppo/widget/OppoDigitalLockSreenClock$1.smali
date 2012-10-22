.class Lcom/oppo/widget/OppoDigitalLockSreenClock$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoDigitalLockSreenClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDigitalLockSreenClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoDigitalLockSreenClock;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoDigitalLockSreenClock;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock$1;->this$0:Lcom/oppo/widget/OppoDigitalLockSreenClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock$1;->this$0:Lcom/oppo/widget/OppoDigitalLockSreenClock;

    #getter for: Lcom/oppo/widget/OppoDigitalLockSreenClock;->mLive:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->access$000(Lcom/oppo/widget/OppoDigitalLockSreenClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock$1;->this$0:Lcom/oppo/widget/OppoDigitalLockSreenClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lcom/oppo/widget/OppoDigitalLockSreenClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->access$102(Lcom/oppo/widget/OppoDigitalLockSreenClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock$1;->this$0:Lcom/oppo/widget/OppoDigitalLockSreenClock;

    #getter for: Lcom/oppo/widget/OppoDigitalLockSreenClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->access$300(Lcom/oppo/widget/OppoDigitalLockSreenClock;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oppo/widget/OppoDigitalLockSreenClock$1$1;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDigitalLockSreenClock$1$1;-><init>(Lcom/oppo/widget/OppoDigitalLockSreenClock$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method
