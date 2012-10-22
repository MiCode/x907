.class Lcom/android/server/BootReceiver$1;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BootReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iput-object p2, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 77
    const-string v2, "/cache/recovery/intent"

    .line 78
    .local v2, otaFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    const-string v5, "BootReceiver"

    const-string v6, "/cache/recovery/intent file is exist!!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v5, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    #calls: Lcom/android/server/BootReceiver;->readOTAUpdateResult(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/server/BootReceiver;->access$000(Lcom/android/server/BootReceiver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, otaResultStr:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    const-string v5, "BootReceiver"

    const-string v6, "OTA update successed!!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.OPPO_OTA_UPDATE_SUCCESSED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v3, otaIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    const-string v5, "persist.sys.panictime"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v3           #otaIntent:Landroid/content/Intent;
    .end local v4           #otaResultStr:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v6, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/server/BootReceiver;->logOppoBootEvents(Landroid/content/Context;)V
    invoke-static {v5, v6}, Lcom/android/server/BootReceiver;->access$100(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v6, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V
    invoke-static {v5, v6}, Lcom/android/server/BootReceiver;->access$200(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :goto_2
    return-void

    .line 91
    .restart local v4       #otaResultStr:Ljava/lang/String;
    :cond_1
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    const-string v5, "BootReceiver"

    const-string v6, "OTA update failed!!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.OPPO_OTA_UPDATE_FAILED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .restart local v3       #otaIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    .end local v3           #otaIntent:Landroid/content/Intent;
    :cond_2
    const-string v5, "BootReceiver"

    const-string v6, "OTA update file\'s date is invalid!!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v4           #otaResultStr:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "BootReceiver"

    const-string v6, "Can\'t log boot events"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 114
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 115
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v5, "BootReceiver"

    const-string v6, "Can\'t remove old update packages"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
