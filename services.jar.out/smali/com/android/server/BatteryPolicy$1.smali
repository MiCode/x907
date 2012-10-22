.class Lcom/android/server/BatteryPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/BatteryPolicy$1;->this$0:Lcom/android/server/BatteryPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/server/BatteryPolicy$1;->this$0:Lcom/android/server/BatteryPolicy;

    #calls: Lcom/android/server/BatteryPolicy;->updateBattery(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/BatteryPolicy;->access$000(Lcom/android/server/BatteryPolicy;Landroid/content/Intent;)V

    .line 76
    :cond_0
    return-void
.end method
