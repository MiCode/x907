.class Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1$1;
.super Ljava/lang/Object;
.source "BluetoothOppTransferHistory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1$1;->this$1:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1$1;->this$1:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearAllDownloads()V
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V

    .line 212
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1$1;->this$1:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1$1;->this$1:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1$1;->this$1:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 216
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1$1;->this$1:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1$1;->this$1:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->finish()V

    .line 219
    return-void
.end method
