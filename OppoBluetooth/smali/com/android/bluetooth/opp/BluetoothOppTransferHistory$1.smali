.class Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;
.super Landroid/os/Handler;
.source "BluetoothOppTransferHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 206
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 207
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1$1;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mThread:Ljava/lang/Thread;

    .line 222
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 239
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
