.class Landroid/media/AudioService$InnerReceiver;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 3355
    iput-object p1, p0, Landroid/media/AudioService$InnerReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .parameter "pendingIntent"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "resultExtras"

    .prologue
    const/4 v8, 0x0

    .line 3361
    if-nez p3, :cond_2

    iget-object v3, p0, Landroid/media/AudioService$InnerReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->relayIntent:Landroid/content/Intent;
    invoke-static {v3}, Landroid/media/AudioService;->access$7700(Landroid/media/AudioService;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/AudioService$InnerReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->relayContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3363
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService$InnerReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v3}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3364
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService$InnerReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v3}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3365
    iget-object v3, p0, Landroid/media/AudioService$InnerReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v3}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3366
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3367
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 3368
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/media/AudioService;->access$7400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3371
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroid/media/AudioService$InnerReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->relayContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/media/AudioService$InnerReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->relayIntent:Landroid/content/Intent;
    invoke-static {v7}, Landroid/media/AudioService;->access$7700(Landroid/media/AudioService;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 3376
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3384
    :cond_2
    :goto_0
    iget-object v3, p0, Landroid/media/AudioService$InnerReceiver;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->relayIntent:Landroid/content/Intent;
    invoke-static {v3, v8}, Landroid/media/AudioService;->access$7702(Landroid/media/AudioService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 3385
    iget-object v3, p0, Landroid/media/AudioService$InnerReceiver;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->relayContext:Landroid/content/Context;
    invoke-static {v3, v8}, Landroid/media/AudioService;->access$7602(Landroid/media/AudioService;Landroid/content/Context;)Landroid/content/Context;

    .line 3386
    return-void

    .line 3376
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3377
    :catch_0
    move-exception v0

    .line 3378
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending RELAY pending intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioService$InnerReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v5}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method
