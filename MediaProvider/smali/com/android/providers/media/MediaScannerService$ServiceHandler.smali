.class final Lcom/android/providers/media/MediaScannerService$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 309
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 312
    .local v0, arguments:Landroid/os/Bundle;
    const-string v11, "filepath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, filePath:Ljava/lang/String;
    const-string v11, "directory"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, directory:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 318
    :try_start_0
    const-string v11, "listener"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 319
    .local v1, binder:Landroid/os/IBinder;
    if-nez v1, :cond_1

    const/4 v7, 0x0

    .line 321
    .local v7, listener:Landroid/media/IMediaScannerListener;
    :goto_0
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v12, "mimetype"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v11, v5, v12}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 322
    .local v9, uri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 323
    invoke-interface {v7, v5, v9}, Landroid/media/IMediaScannerListener;->scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v7           #listener:Landroid/media/IMediaScannerListener;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Lcom/android/providers/media/MediaScannerService;->stopSelf(I)V

    .line 413
    :goto_2
    return-void

    .line 319
    .restart local v1       #binder:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    invoke-static {v1}, Landroid/media/IMediaScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerListener;

    move-result-object v7

    goto :goto_0

    .line 326
    .end local v1           #binder:Landroid/os/IBinder;
    :cond_2
    if-eqz v3, :cond_4

    .line 328
    invoke-static {}, Loppo/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 336
    const-string v11, "/"

    invoke-virtual {v3, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 338
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    :cond_3
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v12, "external"

    #calls: Lcom/android/providers/media/MediaScannerService;->scan(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v3, v12}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 408
    :catch_0
    move-exception v4

    .line 409
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "MediaScannerService"

    const-string v12, "Exception in handleMessage"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 345
    .end local v4           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_2
    const-string v11, "volume"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 346
    .local v10, volume:Ljava/lang/String;
    const/4 v2, 0x0

    .line 351
    .local v2, directories:[Ljava/lang/String;
    const-string v11, "internal"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 355
    const-string v11, "MediaScannerService"

    const-string v12, "handleMessage()----need to scan internal"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/String;

    .end local v2           #directories:[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "/system/media"

    aput-object v12, v2, v11

    .line 399
    .restart local v2       #directories:[Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz v2, :cond_0

    .line 401
    const-string v11, "MediaScannerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start scanning volume "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v2, v10}, Lcom/android/providers/media/MediaScannerService;->access$400(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v11, "MediaScannerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "done scanning volume "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 358
    :cond_6
    const-string v11, "external"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 361
    const-string v11, "is_external_sd"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 364
    .local v6, isExternalSd:Z
    if-eqz v6, :cond_8

    .line 366
    const-string v11, "MediaScannerService"

    const-string v12, "handleMessage()----need to scan external sd"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {}, Loppo/os/Environment;->getExternalSdState()Ljava/lang/String;

    move-result-object v8

    .line 368
    .local v8, state:Ljava/lang/String;
    const-string v11, "mounted"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "mounted_ro"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 371
    const-string v11, "MediaScannerService"

    const-string v12, "try to scan umounted external sd "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 374
    :cond_7
    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/String;

    .end local v2           #directories:[Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {}, Loppo/os/Environment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v11

    .line 379
    .restart local v2       #directories:[Ljava/lang/String;
    goto :goto_3

    .line 383
    .end local v8           #state:Ljava/lang/String;
    :cond_8
    const-string v11, "MediaScannerService"

    const-string v12, "handleMessage()----need to scan internal sd"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {}, Loppo/os/Environment;->getInternalSdState()Ljava/lang/String;

    move-result-object v8

    .line 385
    .restart local v8       #state:Ljava/lang/String;
    const-string v11, "mounted"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "mounted_ro"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 388
    const-string v11, "MediaScannerService"

    const-string v12, "try to scan umounted internal sd "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 391
    :cond_9
    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/String;

    .end local v2           #directories:[Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {}, Loppo/os/Environment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v2       #directories:[Ljava/lang/String;
    goto/16 :goto_3
.end method
