.class Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppIncomingFileConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 97
    const-string v1, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->onTimeout()V
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$000(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 103
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$100(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$100(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$100(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "BluetoothIncomingFileConfirmActivity"

    const-string v2, "stop transfer for Receiver canceled!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;
    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$202(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 113
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$200(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "confirm"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$300(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$200(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    goto :goto_0
.end method
