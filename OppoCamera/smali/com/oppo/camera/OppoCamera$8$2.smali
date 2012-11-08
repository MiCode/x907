.class Lcom/oppo/camera/OppoCamera$8$2;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/OppoCamera$8;->onPictureTaken([BLcom/scalado/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/camera/OppoCamera$8;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/oppo/camera/OppoCamera$8;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$8$2;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iput-object p2, p0, Lcom/oppo/camera/OppoCamera$8$2;->val$data:[B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 1377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1378
    .local v3, dateTaken:J
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$8$2;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v0, v0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->createName(J)Ljava/lang/String;
    invoke-static {v0, v3, v4}, Lcom/oppo/camera/OppoCamera;->access$4100(Lcom/oppo/camera/OppoCamera;J)Ljava/lang/String;

    move-result-object v2

    .line 1379
    .local v2, title:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1380
    .local v6, filename:Ljava/lang/String;
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$8$2;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v0, v0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mFeatureMode:I
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$1500(Lcom/oppo/camera/OppoCamera;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1389
    :goto_0
    const-string v0, "OppoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savePicThread,Save image = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/oppo/camera/OppoCamera$8$2;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v5, v5, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mSavePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/camera/OppoCamera;->access$4300(Lcom/oppo/camera/OppoCamera;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Lcom/oppo/camera/utils/LogUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1390
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$8$2;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v0, v0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;
    invoke-static {v0}, Lcom/oppo/camera/OppoCamera;->access$4500(Lcom/oppo/camera/OppoCamera;)Lcom/oppo/camera/utils/StorageManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/oppo/camera/OppoCamera$8$2;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v5, v5, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mSavePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/camera/OppoCamera;->access$4300(Lcom/oppo/camera/OppoCamera;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/utils/StorageManager;->fileScan(Ljava/lang/String;)V

    .line 1391
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$8$2;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v0, v0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #setter for: Lcom/oppo/camera/OppoCamera;->mImageHasSaved:Z
    invoke-static {v0, v9}, Lcom/oppo/camera/OppoCamera;->access$1802(Lcom/oppo/camera/OppoCamera;Z)Z

    .line 1392
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$8$2;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v0, v0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #calls: Lcom/oppo/camera/OppoCamera;->fixKeyEventInterceptorInProcess([I)Z
    invoke-static {v0, v7}, Lcom/oppo/camera/OppoCamera;->access$4600(Lcom/oppo/camera/OppoCamera;[I)Z

    .line 1393
    return-void

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$8$2;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v0, v0, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$8$2;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v1, v1, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/oppo/camera/OppoCamera;->access$4200(Lcom/oppo/camera/OppoCamera;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v5, p0, Lcom/oppo/camera/OppoCamera$8$2;->this$1:Lcom/oppo/camera/OppoCamera$8;

    iget-object v5, v5, Lcom/oppo/camera/OppoCamera$8;->this$0:Lcom/oppo/camera/OppoCamera;

    #getter for: Lcom/oppo/camera/OppoCamera;->mSavePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/camera/OppoCamera;->access$4300(Lcom/oppo/camera/OppoCamera;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/oppo/camera/OppoCamera$8$2;->val$data:[B

    #calls: Lcom/oppo/camera/OppoCamera;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B)Z
    invoke-static/range {v0 .. v8}, Lcom/oppo/camera/OppoCamera;->access$4400(Lcom/oppo/camera/OppoCamera;Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B)Z

    goto :goto_0
.end method
