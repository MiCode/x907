.class Lcom/android/server/NotificationManagerService$10;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2310
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$10;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 2313
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2315
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.ACTION_USB_SELECED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2316
    const-string v3, "UsbSelectedType"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2318
    .local v2, type:I
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$10;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mUsbSelected:I
    invoke-static {v3, v2}, Lcom/android/server/NotificationManagerService;->access$4002(Lcom/android/server/NotificationManagerService;I)I

    .line 2321
    if-ne v6, v2, :cond_0

    .line 2322
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$10;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_PRE_SHARED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2324
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$10;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.STATE_USB_STORAGE_BEFORE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2326
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$10;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mUmsProcessing:Z
    invoke-static {v3, v6}, Lcom/android/server/NotificationManagerService;->access$3902(Lcom/android/server/NotificationManagerService;Z)Z

    .line 2328
    :cond_0
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUsbSelectionReceiver handleUsbSelectedStart type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$10;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->handleUsbSelectedStart(I)V
    invoke-static {v3, v2}, Lcom/android/server/NotificationManagerService;->access$4100(Lcom/android/server/NotificationManagerService;I)V

    .line 2351
    .end local v2           #type:I
    :cond_1
    :goto_0
    return-void

    .line 2330
    :cond_2
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2334
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$10;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mProcessing:Z
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$3800(Lcom/android/server/NotificationManagerService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2335
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$10;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mStateQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$4200(Lcom/android/server/NotificationManagerService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 2336
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$10;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mStateQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$4200(Lcom/android/server/NotificationManagerService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2338
    :catch_0
    move-exception v1

    .line 2339
    .local v1, ex:Ljava/lang/InterruptedException;
    const-string v3, "NotificationService"

    const-string v4, "Failed to put response onto queue"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2341
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :cond_4
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2343
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$10;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateUsbNotification()V
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$4300(Lcom/android/server/NotificationManagerService;)V

    goto :goto_0

    .line 2345
    :cond_5
    const-string v3, "android.intent.action.ACTION_USB_SELECTE_DIALOG_HIDE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2348
    const-string v3, "shouldbeHide"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$4402(Z)Z

    goto :goto_0
.end method
