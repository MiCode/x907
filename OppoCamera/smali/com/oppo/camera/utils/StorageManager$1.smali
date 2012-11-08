.class Lcom/oppo/camera/utils/StorageManager$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/utils/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/utils/StorageManager;


# direct methods
.method constructor <init>(Lcom/oppo/camera/utils/StorageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oppo/camera/utils/StorageManager$1;->this$0:Lcom/oppo/camera/utils/StorageManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager$1;->this$0:Lcom/oppo/camera/utils/StorageManager;

    #getter for: Lcom/oppo/camera/utils/StorageManager;->mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;
    invoke-static {v1}, Lcom/oppo/camera/utils/StorageManager;->access$000(Lcom/oppo/camera/utils/StorageManager;)Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager$1;->this$0:Lcom/oppo/camera/utils/StorageManager;

    #getter for: Lcom/oppo/camera/utils/StorageManager;->mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;
    invoke-static {v1}, Lcom/oppo/camera/utils/StorageManager;->access$000(Lcom/oppo/camera/utils/StorageManager;)Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;->onStorageUnmount()V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager$1;->this$0:Lcom/oppo/camera/utils/StorageManager;

    const/4 v2, 0x1

    #setter for: Lcom/oppo/camera/utils/StorageManager;->isEJECT:Z
    invoke-static {v1, v2}, Lcom/oppo/camera/utils/StorageManager;->access$102(Lcom/oppo/camera/utils/StorageManager;Z)Z

    .line 116
    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager$1;->this$0:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v1}, Lcom/oppo/camera/utils/StorageManager;->checkStorage()V

    .line 119
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager$1;->this$0:Lcom/oppo/camera/utils/StorageManager;

    #getter for: Lcom/oppo/camera/utils/StorageManager;->mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;
    invoke-static {v1}, Lcom/oppo/camera/utils/StorageManager;->access$000(Lcom/oppo/camera/utils/StorageManager;)Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager$1;->this$0:Lcom/oppo/camera/utils/StorageManager;

    #getter for: Lcom/oppo/camera/utils/StorageManager;->mMountStateChangedListener:Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;
    invoke-static {v1}, Lcom/oppo/camera/utils/StorageManager;->access$000(Lcom/oppo/camera/utils/StorageManager;)Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/camera/utils/StorageManager$OnMountStateChangedListener;->onStorageMounted()V

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager$1;->this$0:Lcom/oppo/camera/utils/StorageManager;

    #setter for: Lcom/oppo/camera/utils/StorageManager;->isEJECT:Z
    invoke-static {v1, v3}, Lcom/oppo/camera/utils/StorageManager;->access$102(Lcom/oppo/camera/utils/StorageManager;Z)Z

    .line 126
    :cond_3
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager$1;->this$0:Lcom/oppo/camera/utils/StorageManager;

    #setter for: Lcom/oppo/camera/utils/StorageManager;->isEJECT:Z
    invoke-static {v1, v3}, Lcom/oppo/camera/utils/StorageManager;->access$102(Lcom/oppo/camera/utils/StorageManager;Z)Z

    .line 128
    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager$1;->this$0:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v1}, Lcom/oppo/camera/utils/StorageManager;->checkStorage()V

    .line 133
    :cond_5
    :goto_0
    return-void

    .line 129
    :cond_6
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 130
    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager$1;->this$0:Lcom/oppo/camera/utils/StorageManager;

    #setter for: Lcom/oppo/camera/utils/StorageManager;->isEJECT:Z
    invoke-static {v1, v3}, Lcom/oppo/camera/utils/StorageManager;->access$102(Lcom/oppo/camera/utils/StorageManager;Z)Z

    .line 131
    iget-object v1, p0, Lcom/oppo/camera/utils/StorageManager$1;->this$0:Lcom/oppo/camera/utils/StorageManager;

    invoke-virtual {v1}, Lcom/oppo/camera/utils/StorageManager;->checkStorage()V

    goto :goto_0
.end method
