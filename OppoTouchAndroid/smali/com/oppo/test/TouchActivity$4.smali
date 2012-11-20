.class Lcom/oppo/test/TouchActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "TouchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/test/TouchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/test/TouchActivity;


# direct methods
.method constructor <init>(Lcom/oppo/test/TouchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/oppo/test/TouchActivity$4;->this$0:Lcom/oppo/test/TouchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x3

    const/4 v11, 0x0

    .line 578
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, intentAction:Ljava/lang/String;
    sget-object v9, Lcom/android/internal/policy/impl/OppoFPDUtils;->ACTION_KEY_EVENT:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 582
    iget-object v9, p0, Lcom/oppo/test/TouchActivity$4;->this$0:Lcom/oppo/test/TouchActivity;

    #getter for: Lcom/oppo/test/TouchActivity;->mAnimWakeLock:Lcom/oppo/test/FPDWakeLock;
    invoke-static {v9}, Lcom/oppo/test/TouchActivity;->access$100(Lcom/oppo/test/TouchActivity;)Lcom/oppo/test/FPDWakeLock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oppo/test/FPDWakeLock;->isHeld()Z

    move-result v9

    if-nez v9, :cond_1

    .line 584
    iget-object v9, p0, Lcom/oppo/test/TouchActivity$4;->this$0:Lcom/oppo/test/TouchActivity;

    #getter for: Lcom/oppo/test/TouchActivity;->mSleeping:Z
    invoke-static {v9}, Lcom/oppo/test/TouchActivity;->access$200(Lcom/oppo/test/TouchActivity;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 586
    iget-object v9, p0, Lcom/oppo/test/TouchActivity$4;->this$0:Lcom/oppo/test/TouchActivity;

    #calls: Lcom/oppo/test/TouchActivity;->tryAcquireChargeLock()V
    invoke-static {v9}, Lcom/oppo/test/TouchActivity;->access$300(Lcom/oppo/test/TouchActivity;)V

    .line 588
    :cond_0
    const-string v9, "action"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v9

    aget v0, v9, v11

    .line 589
    .local v0, action:I
    const-string v9, "keycode"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v9

    aget v1, v9, v11

    .line 590
    .local v1, code:I
    new-instance v4, Landroid/view/KeyEvent;

    invoke-direct {v4, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 591
    .local v4, ke:Landroid/view/KeyEvent;
    iget-object v9, p0, Lcom/oppo/test/TouchActivity$4;->this$0:Lcom/oppo/test/TouchActivity;

    invoke-virtual {v9, v4}, Lcom/oppo/test/TouchActivity;->myDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 671
    .end local v0           #action:I
    .end local v1           #code:I
    .end local v4           #ke:Landroid/view/KeyEvent;
    :cond_1
    :goto_0
    return-void

    .line 595
    :cond_2
    const-string v9, "com.android.alarmclock.alarmclock.STARTUP_CHOICE"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 597
    new-instance v6, Landroid/content/Intent;

    iget-object v9, p0, Lcom/oppo/test/TouchActivity$4;->this$0:Lcom/oppo/test/TouchActivity;

    const-class v10, Lcom/oppo/test/StartupActivity;

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 598
    .local v6, t:Landroid/content/Intent;
    iget-object v9, p0, Lcom/oppo/test/TouchActivity$4;->this$0:Lcom/oppo/test/TouchActivity;

    invoke-virtual {v9, v6, v11}, Lcom/oppo/test/TouchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 600
    .end local v6           #t:Landroid/content/Intent;
    :cond_3
    const-string v9, "FPD_android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 603
    :cond_4
    const-string v9, "timestamp"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 606
    .local v7, timestamp:J
    iget-object v9, p0, Lcom/oppo/test/TouchActivity$4;->this$0:Lcom/oppo/test/TouchActivity;

    #calls: Lcom/oppo/test/TouchActivity;->onBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v9, p2}, Lcom/oppo/test/TouchActivity;->access$400(Lcom/oppo/test/TouchActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 613
    .end local v7           #timestamp:J
    :cond_5
    const-string v9, "com.android.alarmclock.alarmclock.SNOOZE"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 615
    iget-object v9, p0, Lcom/oppo/test/TouchActivity$4;->this$0:Lcom/oppo/test/TouchActivity;

    #getter for: Lcom/oppo/test/TouchActivity;->mSwitchWakeLock:Lcom/oppo/test/FPDWakeLock;
    invoke-static {v9}, Lcom/oppo/test/TouchActivity;->access$500(Lcom/oppo/test/TouchActivity;)Lcom/oppo/test/FPDWakeLock;

    move-result-object v9

    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, v10, v11}, Lcom/oppo/test/FPDWakeLock;->acquire(J)V

    .line 616
    iget-object v9, p0, Lcom/oppo/test/TouchActivity$4;->this$0:Lcom/oppo/test/TouchActivity;

    #getter for: Lcom/oppo/test/TouchActivity;->mAlarmWakeLock:Lcom/oppo/test/FPDWakeLock;
    invoke-static {v9}, Lcom/oppo/test/TouchActivity;->access$600(Lcom/oppo/test/TouchActivity;)Lcom/oppo/test/FPDWakeLock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oppo/test/FPDWakeLock;->release()V

    goto :goto_0

    .line 618
    :cond_6
    const-string v9, "com.android.alarmclock.alarmclock.ALARM_ALERT"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 621
    const/4 v9, 0x1

    invoke-static {v9}, Landroid/os/Power;->setScreenState(Z)I

    .line 622
    iget-object v9, p0, Lcom/oppo/test/TouchActivity$4;->this$0:Lcom/oppo/test/TouchActivity;

    #getter for: Lcom/oppo/test/TouchActivity;->mAlarmWakeLock:Lcom/oppo/test/FPDWakeLock;
    invoke-static {v9}, Lcom/oppo/test/TouchActivity;->access$600(Lcom/oppo/test/TouchActivity;)Lcom/oppo/test/FPDWakeLock;

    move-result-object v9

    const-wide/32 v10, 0x493e0

    invoke-virtual {v9, v10, v11}, Lcom/oppo/test/FPDWakeLock;->acquire(J)V

    .line 623
    const-string v9, "TouchAndroid"

    const-string v10, "receive ALARM_ALERT_ACTION"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 626
    :cond_7
    const-string v9, "fpd.alram_arrived"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 628
    const-string v9, "fpd_alram_target_extra"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, extra:Ljava/lang/String;
    const-string v9, "TouchAndroid"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "receive ALRAM_ARRIVED_ACTION with target package ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string v9, "com.android.alarmclock"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 637
    iget-object v9, p0, Lcom/oppo/test/TouchActivity$4;->this$0:Lcom/oppo/test/TouchActivity;

    #calls: Lcom/oppo/test/TouchActivity;->restoreLCDBackLight()V
    invoke-static {v9}, Lcom/oppo/test/TouchActivity;->access$700(Lcom/oppo/test/TouchActivity;)V

    goto/16 :goto_0

    .line 639
    :cond_8
    const-string v9, "com.android.settings"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 644
    iget-object v9, p0, Lcom/oppo/test/TouchActivity$4;->this$0:Lcom/oppo/test/TouchActivity;

    #getter for: Lcom/oppo/test/TouchActivity;->mTimerBootWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/oppo/test/TouchActivity;->access$800(Lcom/oppo/test/TouchActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    const-wide/16 v10, 0x2710

    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 646
    iget-object v9, p0, Lcom/oppo/test/TouchActivity$4;->this$0:Lcom/oppo/test/TouchActivity;

    #calls: Lcom/oppo/test/TouchActivity;->exitFPDMode()V
    invoke-static {v9}, Lcom/oppo/test/TouchActivity;->access$900(Lcom/oppo/test/TouchActivity;)V

    goto/16 :goto_0

    .line 648
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 650
    const-string v9, "TouchAndroid"

    const-string v10, "receive AUTO_SHUTDOWN_ACTION at FPD mode"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 660
    .end local v2           #extra:Ljava/lang/String;
    :cond_a
    const-string v9, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 662
    const-string v9, "state"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 663
    .local v5, state:I
    if-eq v5, v10, :cond_1

    .line 665
    const-string v9, "TouchAndroid"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected telephony state ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] at FPD mode, retry apply air plane mode"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
