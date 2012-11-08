.class Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;
.super Landroid/os/AsyncTask;
.source "LomoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveFilterPictureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[B",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field fileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCamera;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;Lcom/oppo/camera/lomo/LomoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1179
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;-><init>(Lcom/oppo/camera/lomo/LomoCamera;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([[B)Ljava/lang/Boolean;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 1184
    aget-object v0, p1, v3

    .line 1185
    .local v0, data:[B
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->getPictureName()Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$4800(Lcom/oppo/camera/lomo/LomoCamera;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;->fileName:Ljava/lang/String;

    .line 1186
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;->fileName:Ljava/lang/String;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->saveFilterPicture([BLjava/lang/String;)Z
    invoke-static {v1, v0, v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$5800(Lcom/oppo/camera/lomo/LomoCamera;[BLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1187
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1189
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1179
    check-cast p1, [[B

    .end local p1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;->doInBackground([[B)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 1195
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1196
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1200
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1201
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1202
    .local v0, state:Z
    if-eqz v0, :cond_0

    .line 1204
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #getter for: Lcom/oppo/camera/lomo/LomoCamera;->mStorageManager:Lcom/oppo/camera/utils/StorageManager;
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$5000(Lcom/oppo/camera/lomo/LomoCamera;)Lcom/oppo/camera/utils/StorageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/utils/StorageManager;->fileScan(Ljava/lang/String;)V

    .line 1208
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->enableButtons()V
    invoke-static {v1}, Lcom/oppo/camera/lomo/LomoCamera;->access$4600(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 1209
    return-void

    .line 1206
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    const/4 v2, 0x0

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->fixKeyEventInterceptorInProcess([I)Z
    invoke-static {v1, v2}, Lcom/oppo/camera/lomo/LomoCamera;->access$5900(Lcom/oppo/camera/lomo/LomoCamera;[I)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1179
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 1213
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1215
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    #calls: Lcom/oppo/camera/lomo/LomoCamera;->disableButtons()V
    invoke-static {v0}, Lcom/oppo/camera/lomo/LomoCamera;->access$6000(Lcom/oppo/camera/lomo/LomoCamera;)V

    .line 1216
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1179
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/lomo/LomoCamera$SaveFilterPictureTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 1220
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1221
    return-void
.end method
