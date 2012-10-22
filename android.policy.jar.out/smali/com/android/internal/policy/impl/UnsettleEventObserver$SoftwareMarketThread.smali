.class Lcom/android/internal/policy/impl/UnsettleEventObserver$SoftwareMarketThread;
.super Ljava/lang/Thread;
.source "UnsettleEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UnsettleEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftwareMarketThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SoftwareMarketThread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 233
    const/4 v8, 0x0

    .line 235
    .local v8, count:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SoftwareMarketThread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oppo.market/upgrade"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 238
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 242
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 246
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.oppo.lockscreeneventNO"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v6, SoftMktIntent:Landroid/content/Intent;
    const-string v0, "pakeageName"

    const-string v1, "com.oppo.market"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v0, "-- huzhaohui--"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- huzhaohuiSoftwareMarket --count ==  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v0, "number"

    invoke-virtual {v6, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SoftwareMarketThread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    return-void

    .line 246
    .end local v6           #SoftMktIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method
