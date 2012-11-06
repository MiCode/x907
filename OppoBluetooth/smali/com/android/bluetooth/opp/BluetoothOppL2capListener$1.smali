.class Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;
.super Ljava/lang/Thread;
.source "BluetoothOppL2capListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 129
    const/4 v5, 0x1

    .line 135
    .local v5, serverOK:Z
    const/4 v3, 0x0

    .line 136
    .local v3, i:I
    const/4 v3, 0x0

    :goto_0
    const/16 v7, 0xa

    if-ge v3, v7, :cond_0

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->access$000(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 138
    :try_start_0
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->access$300(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtOppL2cappsm:I
    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->access$200(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureEl2capOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v8

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->access$102(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_1
    if-nez v5, :cond_0

    .line 145
    monitor-enter p0

    .line 147
    :try_start_1
    const-string v7, "BtOppL2CapListener"

    const-string v8, "wait 3 seconds"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-wide/16 v7, 0xbb8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, e1:Ljava/io/IOException;
    const-string v7, "BtOppL2CapListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error create L2capServerSocket "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v5, 0x0

    goto :goto_1

    .line 149
    .end local v2           #e1:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 150
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v7, "BtOppL2CapListener"

    const-string v8, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    const/4 v8, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z
    invoke-static {v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->access$002(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;Z)Z

    goto :goto_2

    .line 153
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 158
    :cond_0
    if-nez v5, :cond_1

    .line 159
    const-string v7, "BtOppL2CapListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error start listening after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " try"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z
    invoke-static {v7, v10}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->access$002(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;Z)Z

    .line 163
    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->access$000(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 164
    const-string v7, "BtOppL2CapListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Accept thread started on channel "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtOppL2cappsm:I
    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->access$200(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_2
    :goto_3
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->access$000(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 169
    :try_start_4
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->access$100(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 170
    .local v0, clientSocket:Landroid/bluetooth/BluetoothSocket;
    const-string v7, "BtOppL2CapListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Accepted connection from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothSocket;->setDesiredAmpPolicy(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 175
    const-string v7, "BtOppL2CapListener"

    const-string v8, "Unable to set AMP policy, using default (BR/EDR req)."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_3
    new-instance v6, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppTransport;-><init>(Landroid/bluetooth/BluetoothSocket;I)V

    .line 181
    .local v6, transport:Lcom/android/bluetooth/opp/BluetoothOppTransport;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 182
    .local v4, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mCallback:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->access$400(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 183
    const/16 v7, 0x64

    iput v7, v4, Landroid/os/Message;->what:I

    .line 184
    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 185
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 186
    .end local v0           #clientSocket:Landroid/bluetooth/BluetoothSocket;
    .end local v4           #msg:Landroid/os/Message;
    .end local v6           #transport:Lcom/android/bluetooth/opp/BluetoothOppTransport;
    :catch_2
    move-exception v1

    .line 187
    .local v1, e:Ljava/io/IOException;
    const-string v7, "BtOppL2CapListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error accept connection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 190
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    const-string v7, "BtOppL2CapListener"

    const-string v8, "BluetoothSocket listen thread finished"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method
