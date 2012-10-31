.class Lcom/android/server/NotificationManagerService$8;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->reshowMessageBox(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;

.field final synthetic val$array:Ljava/util/ArrayList;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/app/PendingIntent;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1677
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$8;->val$pendingIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/server/NotificationManagerService$8;->val$array:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1681
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$8;->val$pendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 1683
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$8;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    .line 1684
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$8;->val$array:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1685
    .local v0, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    if-eqz v0, :cond_0

    .line 1686
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->tag:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    invoke-interface {v1, v2, v3, v4}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1693
    .end local v0           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationDialogItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2900(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 1694
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x1

    #calls: Lcom/android/server/NotificationManagerService;->dismissMessageBoxLocked(Z)Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$3000(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1695
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1696
    return-void

    .line 1691
    :cond_1
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$3500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/StatusBarManagerService;->expand()V

    goto :goto_0

    .line 1695
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1687
    :catch_0
    move-exception v1

    goto :goto_0
.end method
