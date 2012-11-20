.class public Lcom/oppo/test/FPDAutoShutdown;
.super Ljava/lang/Object;
.source "FPDAutoShutdown.java"


# static fields
.field public static final AUTO_SHUTDOWN_ACTION:Ljava/lang/String; = "android.intent.action.auto_shutdown"

.field private static final DELAY:J = 0x36ee800L

.field private static final TAG:Ljava/lang/String; = "FPDAutoShutDown"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/oppo/test/FPDAutoShutdown;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public cancelLastAlarm()V
    .locals 6

    .prologue
    .line 45
    iget-object v2, p0, Lcom/oppo/test/FPDAutoShutdown;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 47
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/oppo/test/FPDAutoShutdown;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.auto_shutdown"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x1000

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 51
    .local v1, triggerIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 52
    const-string v2, "FPDAutoShutDown"

    const-string v3, "cancelLastAlarm"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public setNewAlarm()V
    .locals 12

    .prologue
    const-wide/32 v10, 0x927c0

    const/4 v9, 0x0

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x36ee800

    add-long v3, v5, v7

    .line 25
    .local v3, when:J
    div-long v5, v3, v10

    mul-long/2addr v5, v10

    const-wide/32 v7, 0x2bf20

    add-long/2addr v5, v7

    const-wide/16 v7, 0x7530

    add-long v3, v5, v7

    .line 26
    invoke-virtual {p0}, Lcom/oppo/test/FPDAutoShutdown;->cancelLastAlarm()V

    .line 27
    iget-object v5, p0, Lcom/oppo/test/FPDAutoShutdown;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 29
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.auto_shutdown"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/oppo/test/FPDAutoShutdown;->mContext:Landroid/content/Context;

    const/high16 v6, 0x1000

    invoke-static {v5, v9, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 34
    .local v2, triggerIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v9, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 35
    const-string v5, "FPDAutoShutDown"

    const-string v6, "trigger shutdown  [960]min later"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method
