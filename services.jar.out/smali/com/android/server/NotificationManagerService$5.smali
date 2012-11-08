.class Lcom/android/server/NotificationManagerService$5;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1532
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1535
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1542
    :goto_0
    return-void

    .line 1537
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/NotificationManagerService;->reshowMessageBox(I)V
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$3400(Lcom/android/server/NotificationManagerService;I)V

    goto :goto_0

    .line 1540
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$2800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onPanelRevealed()V

    goto :goto_0

    .line 1535
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
