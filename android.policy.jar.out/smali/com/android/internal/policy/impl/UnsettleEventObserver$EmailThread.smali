.class Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailThread;
.super Ljava/lang/Thread;
.source "UnsettleEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UnsettleEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmailThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailThread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 263
    const/4 v7, 0x0

    .line 265
    .local v7, count:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailThread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.email.provider/mailbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "unreadCount"

    aput-object v3, v2, v5

    const-string v3, "type = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 269
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 271
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hzh -- get EmailThread == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    if-eqz v6, :cond_1

    .line 278
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 280
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v7, v0

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v8

    .line 285
    .local v8, e:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    const-string v0, "StatusBar"

    const-string v1, "Cursor index out of bounds exception -- please cheak!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    .end local v8           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailThread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    #getter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mOldEmailCount:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$200(Lcom/android/internal/policy/impl/UnsettleEventObserver;)I

    move-result v0

    if-eq v0, v7, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailThread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    #setter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mOldEmailCount:I
    invoke-static {v0, v7}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$202(Lcom/android/internal/policy/impl/UnsettleEventObserver;I)I

    .line 294
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.oppo.lockscreeneventNO"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v9, mmsIntent:Landroid/content/Intent;
    const-string v0, "pakeageName"

    const-string v1, "com.android.email"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v0, "emailnotifytime"

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string v0, "number"

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailThread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/policy/impl/UnsettleEventObserver;->writeFile1(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$300(Lcom/android/internal/policy/impl/UnsettleEventObserver;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailThread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 301
    .end local v9           #mmsIntent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 289
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
