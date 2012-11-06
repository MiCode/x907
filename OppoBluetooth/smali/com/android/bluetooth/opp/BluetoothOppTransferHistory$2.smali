.class Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$2;
.super Ljava/lang/Object;
.source "BluetoothOppTransferHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->promptClearList()V
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
    .line 307
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 314
    return-void
.end method
