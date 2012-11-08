.class Lcom/android/server/NotificationManagerService$UsbSelectionHandler;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbSelectionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "loop"

    .prologue
    .line 1966
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$UsbSelectionHandler;->this$0:Lcom/android/server/NotificationManagerService;

    .line 1967
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1968
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1973
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1981
    :goto_0
    return-void

    .line 1975
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$UsbSelectionHandler;->this$0:Lcom/android/server/NotificationManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/NotificationManagerService;->handleUsbSelected(I)V
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$3600(Lcom/android/server/NotificationManagerService;I)V

    goto :goto_0

    .line 1973
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
