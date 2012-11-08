.class Landroid/media/AudioService$MediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 3281
    iput-object p1, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3281
    invoke-direct {p0, p1}, Landroid/media/AudioService$MediaButtonBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3284
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 3285
    .local v7, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3344
    :cond_0
    :goto_0
    return-void

    .line 3288
    :cond_1
    const-string v1, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/view/KeyEvent;

    .line 3289
    .local v10, event:Landroid/view/KeyEvent;
    if-eqz v10, :cond_0

    .line 3293
    invoke-static {}, Landroid/media/AudioService;->access$6800()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3294
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getMode()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getMode()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getMode()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 3297
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 3299
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3300
    iget-object v1, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v1}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v14

    monitor-enter v14

    .line 3301
    :try_start_2
    iget-object v1, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v1}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3303
    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3304
    .local v4, targetedIntent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 3305
    .local v11, extras:Landroid/os/Bundle;
    if-eqz v11, :cond_6

    .line 3306
    invoke-virtual {v4, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3308
    invoke-virtual {p0}, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->abortBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3318
    const/4 v8, 0x0

    .line 3319
    .local v8, bSkip:Z
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v1}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 3320
    .local v13, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3321
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 3322
    .local v12, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v1, v12, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/media/AudioService;->access$7400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3323
    iget-object v1, v12, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->reciever:Landroid/media/AudioService$InnerReceiver;
    invoke-static {v2}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)Landroid/media/AudioService$InnerReceiver;

    move-result-object v5

    iget-object v2, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v2}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 3324
    const/4 v8, 0x1

    .line 3325
    iget-object v1, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    #setter for: Landroid/media/AudioService;->relayContext:Landroid/content/Context;
    invoke-static {v1, v0}, Landroid/media/AudioService;->access$7602(Landroid/media/AudioService;Landroid/content/Context;)Landroid/content/Context;

    .line 3326
    iget-object v1, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #setter for: Landroid/media/AudioService;->relayIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$7702(Landroid/media/AudioService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 3332
    .end local v12           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_5
    if-nez v8, :cond_6

    .line 3333
    iget-object v1, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v1}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3342
    .end local v4           #targetedIntent:Landroid/content/Intent;
    .end local v8           #bSkip:Z
    .end local v11           #extras:Landroid/os/Bundle;
    .end local v13           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_6
    :goto_1
    :try_start_4
    monitor-exit v14

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 3336
    .restart local v4       #targetedIntent:Landroid/content/Intent;
    .restart local v8       #bSkip:Z
    .restart local v11       #extras:Landroid/os/Bundle;
    :catch_0
    move-exception v9

    .line 3337
    .local v9, e:Landroid/app/PendingIntent$CanceledException;
    :try_start_5
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending pending intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v3}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    invoke-virtual {v9}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method
