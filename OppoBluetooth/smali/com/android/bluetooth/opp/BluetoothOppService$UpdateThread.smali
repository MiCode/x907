.class Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
.super Ljava/lang/Thread;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 1
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    .line 507
    const-string v0, "Bluetooth Share Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 508
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v2, 0x0

    .line 512
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 514
    const/4 v12, 0x0

    .line 516
    .local v12, keepService:Z
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v1

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 518
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "multiple UpdateThreads in BluetoothOppService"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 521
    :cond_0
    :try_start_1
    const-string v0, "BtOpp Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pendingUpdate is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1700(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " keepUpdateThread is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sListenStarted is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1700(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 524
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1502(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    .line 525
    if-nez v12, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->stopSelf()V

    .line 527
    monitor-exit v1

    .line 662
    :cond_1
    :goto_1
    return-void

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 530
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->finishNotification()V

    .line 531
    monitor-exit v1

    goto :goto_1

    .line 533
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v3, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z
    invoke-static {v0, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1702(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 534
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 538
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 542
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 544
    const/4 v7, 0x0

    .line 546
    .local v7, arrayPos:I
    const/4 v12, 0x0

    .line 547
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    .line 549
    .local v11, isAfterLast:Z
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 565
    .local v10, idColumn:I
    :goto_2
    if-eqz v11, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_14

    .line 566
    :cond_4
    if-eqz v11, :cond_6

    .line 570
    const-string v1, "BtOpp Service"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array update: trimming "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " @ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 574
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v2, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    .line 576
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->deleteShare(I)V
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2100(Lcom/android/bluetooth/opp/BluetoothOppService;I)V

    goto :goto_2

    .line 578
    :cond_6
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 580
    .local v9, id:I
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v7, v0, :cond_a

    .line 581
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->insertShare(Landroid/database/Cursor;I)V
    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2200(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V

    .line 582
    const-string v0, "BtOpp Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array update: inserting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " @ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 584
    const/4 v12, 0x1

    .line 586
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->visibleNotification(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2300(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 587
    const/4 v12, 0x1

    .line 589
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->needAction(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2400(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 590
    const/4 v12, 0x1

    .line 593
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 594
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 595
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    goto/16 :goto_2

    .line 597
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v6, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 599
    .local v6, arrayId:I
    if-ge v6, v9, :cond_c

    .line 600
    const-string v0, "BtOpp Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array update: removing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " @ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 603
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v2, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    .line 605
    :cond_b
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->deleteShare(I)V
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2100(Lcom/android/bluetooth/opp/BluetoothOppService;I)V

    goto/16 :goto_2

    .line 606
    :cond_c
    if-ne v6, v9, :cond_10

    .line 609
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->userAccepted:Z
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2500(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v1

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->updateShare(Landroid/database/Cursor;IZ)V
    invoke-static {v0, v8, v7, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2600(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;IZ)V

    .line 610
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 611
    const/4 v12, 0x1

    .line 613
    :cond_d
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->visibleNotification(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2300(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 614
    const/4 v12, 0x1

    .line 616
    :cond_e
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->needAction(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2400(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 617
    const/4 v12, 0x1

    .line 620
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 621
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 622
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    goto/16 :goto_2

    .line 626
    :cond_10
    const-string v0, "BtOpp Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array update: appending "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " @ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->insertShare(Landroid/database/Cursor;I)V
    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2200(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V

    .line 629
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 630
    const/4 v12, 0x1

    .line 632
    :cond_11
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->visibleNotification(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2300(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 633
    const/4 v12, 0x1

    .line 635
    :cond_12
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->needAction(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2400(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 636
    const/4 v12, 0x1

    .line 638
    :cond_13
    add-int/lit8 v7, v7, 0x1

    .line 639
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 640
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    goto/16 :goto_2

    .line 651
    .end local v6           #arrayId:I
    .end local v9           #id:I
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 652
    .local v13, now:J
    const-wide/16 v0, 0x0

    sget-wide v3, Lcom/android/bluetooth/opp/BluetoothOppService;->lastNotifyStamp:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_15

    sget-wide v0, Lcom/android/bluetooth/opp/BluetoothOppService;->lastNotifyStamp:J

    sget-wide v3, Lcom/android/bluetooth/opp/BluetoothOppService;->TIME_SPACE_BETEEEN_NOTIFY:J

    add-long/2addr v0, v3

    cmp-long v0, v0, v13

    if-gez v0, :cond_16

    .line 654
    :cond_15
    const-string v0, "BtOpp Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNotification for opp now:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " lastNotifyStamp:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v3, Lcom/android/bluetooth/opp/BluetoothOppService;->lastNotifyStamp:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    sput-wide v13, Lcom/android/bluetooth/opp/BluetoothOppService;->lastNotifyStamp:J

    .line 656
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 660
    :cond_16
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
