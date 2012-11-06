.class public Lcom/android/bluetooth/opp/BluetoothOppL2capListener;
.super Ljava/lang/Object;
.source "BluetoothOppL2capListener.java"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtOppL2cappsm:I

.field private mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mCallback:Landroid/os/Handler;

.field private volatile mInterrupted:Z

.field private mSocketAcceptThread:Ljava/lang/Thread;

.field private mTcpServerSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 78
    const/16 v0, 0x1487

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;-><init>(Landroid/bluetooth/BluetoothAdapter;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;I)V
    .locals 4
    .parameter "adapter"
    .parameter "psm"

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 75
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mTcpServerSocket:Ljava/net/ServerSocket;

    .line 82
    iput p2, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtOppL2cappsm:I

    .line 83
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 86
    const-string v1, "BtOppL2CapListener"

    const-string v2, "Applying OBEX debug system properties."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v1, "debug.bt.opp.server.l2cap_psm"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, debugPsm:I
    if-ltz v0, :cond_0

    .line 90
    const-string v1, "BtOppL2CapListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEBUG: Forcing OBEX L2CAP listener on psm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtOppL2cappsm:I

    .line 94
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtOppL2cappsm:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mCallback:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized start(Landroid/os/Handler;)Z
    .locals 2
    .parameter "callback"

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 98
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mCallback:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;

    const-string v1, "BtOppL2CapListener"

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppL2capListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z

    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 204
    const-string v1, "BtOppL2CapListener"

    const-string v2, "stopping Accept Thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mInterrupted:Z

    .line 217
    const-string v1, "BtOppL2CapListener"

    const-string v2, "close mBtServerSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 221
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 229
    const-string v1, "BtOppL2CapListener"

    const-string v2, "waiting for thread to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 232
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->mCallback:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 237
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v1, "BtOppL2CapListener"

    const-string v2, "Error close mBtServerSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 203
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 233
    :catch_1
    move-exception v0

    .line 234
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "BtOppL2CapListener"

    const-string v2, "Interrupted waiting for Accept Thread to join"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
