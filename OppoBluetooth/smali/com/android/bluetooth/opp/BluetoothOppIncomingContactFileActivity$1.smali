.class Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity$1;
.super Ljava/lang/Object;
.source "BluetoothOppIncomingContactFileActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 167
    const-string v0, "BluetoothOppIncomingContactFileActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick:arg2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-wide/16 v0, 0x2

    cmp-long v0, v0, p4

    if-nez v0, :cond_0

    .line 170
    const-string v0, "BluetoothOppIncomingContactFileActivity"

    const-string v1, "just save as file"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->finish()V

    .line 195
    return-void

    .line 172
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p4

    if-nez v0, :cond_2

    .line 174
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->access$000()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->filename:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->access$100(Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->saveToSimCard(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->access$200(Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->filename:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->access$100(Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->saveToPhone(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->access$300(Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->access$000()Z

    move-result v0

    if-ne v3, v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->filename:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->access$100(Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->saveToPhone(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->access$300(Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_3
    const-string v0, "BluetoothOppIncomingContactFileActivity"

    const-string v1, "just save as file"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
