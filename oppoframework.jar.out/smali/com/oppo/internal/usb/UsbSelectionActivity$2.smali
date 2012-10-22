.class Lcom/oppo/internal/usb/UsbSelectionActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/internal/usb/UsbSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;


# direct methods
.method constructor <init>(Lcom/oppo/internal/usb/UsbSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oppo/internal/usb/UsbSelectionActivity$2;->this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    const-string v3, "plugged"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 96
    .local v1, batteryCharging:Z
    :cond_0
    if-nez v1, :cond_3

    .line 97
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity$2;->this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;

    #getter for: Lcom/oppo/internal/usb/UsbSelectionActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/oppo/internal/usb/UsbSelectionActivity;->access$200(Lcom/oppo/internal/usb/UsbSelectionActivity;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 99
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz v2, :cond_1

    .line 100
    const v3, 0x10404e6

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 102
    :cond_1
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity$2;->this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;

    #getter for: Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/oppo/internal/usb/UsbSelectionActivity;->access$300(Lcom/oppo/internal/usb/UsbSelectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 103
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity$2;->this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;

    #getter for: Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/oppo/internal/usb/UsbSelectionActivity;->access$300(Lcom/oppo/internal/usb/UsbSelectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 104
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity$2;->this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;

    #setter for: Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v5}, Lcom/oppo/internal/usb/UsbSelectionActivity;->access$302(Lcom/oppo/internal/usb/UsbSelectionActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 106
    :cond_2
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity$2;->this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;

    invoke-virtual {v3}, Lcom/oppo/internal/usb/UsbSelectionActivity;->dismiss()V

    .line 118
    .end local v1           #batteryCharging:Z
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :cond_3
    :goto_0
    return-void

    .line 108
    :cond_4
    const-string v3, "android.intent.action.ACTION_USB_SELECED_FINISH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity$2;->this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;

    #getter for: Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/oppo/internal/usb/UsbSelectionActivity;->access$300(Lcom/oppo/internal/usb/UsbSelectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 110
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity$2;->this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;

    #getter for: Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/oppo/internal/usb/UsbSelectionActivity;->access$300(Lcom/oppo/internal/usb/UsbSelectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 111
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity$2;->this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;

    #setter for: Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v5}, Lcom/oppo/internal/usb/UsbSelectionActivity;->access$302(Lcom/oppo/internal/usb/UsbSelectionActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 113
    :cond_5
    const-string v3, "UsbSelectedType"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelected:I

    sput v3, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelectedBeforeConfirm:I

    .line 115
    const-string v3, "UsbSelectionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   mSelected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelected:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity$2;->this$0:Lcom/oppo/internal/usb/UsbSelectionActivity;

    #getter for: Lcom/oppo/internal/usb/UsbSelectionActivity;->mAdapter:Lcom/oppo/internal/usb/UsbSelectionAdapter;
    invoke-static {v3}, Lcom/oppo/internal/usb/UsbSelectionActivity;->access$400(Lcom/oppo/internal/usb/UsbSelectionActivity;)Lcom/oppo/internal/usb/UsbSelectionAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/internal/usb/UsbSelectionAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
