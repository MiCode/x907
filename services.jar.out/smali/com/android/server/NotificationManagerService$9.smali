.class Lcom/android/server/NotificationManagerService$9;
.super Ljava/util/TimerTask;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->startInterruptTimer()V
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
    .line 2299
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$9;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2301
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$9;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mUsbSelectionThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$3700(Lcom/android/server/NotificationManagerService;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2303
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$9;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mProcessing:Z
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$3802(Lcom/android/server/NotificationManagerService;Z)Z

    .line 2304
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$9;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mUmsProcessing:Z
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$3902(Lcom/android/server/NotificationManagerService;Z)Z

    .line 2305
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$9;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mUsbSelectionThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$3700(Lcom/android/server/NotificationManagerService;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 2307
    :cond_0
    return-void
.end method
