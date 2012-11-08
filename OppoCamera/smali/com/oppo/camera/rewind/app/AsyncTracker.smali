.class public Lcom/oppo/camera/rewind/app/AsyncTracker;
.super Ljava/lang/Object;
.source "AsyncTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/app/AsyncTracker$1;,
        Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;,
        Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;
    }
.end annotation


# instance fields
.field private mCompleted:I

.field private mJobId:I

.field private mJobListener:Lcom/oppo/camera/rewind/app/JobListener;

.field private mListener:Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;

.field private mLooperThread:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

.field private mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

.field private mSize:I

.field private mToUiHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;-><init>(Lcom/oppo/camera/rewind/app/AsyncTracker;Lcom/oppo/camera/rewind/app/AsyncTracker$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mLooperThread:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mCompleted:I

    .line 28
    new-instance v0, Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;

    invoke-direct {v0, p0}, Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;-><init>(Lcom/oppo/camera/rewind/app/AsyncTracker;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mToUiHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;

    .line 34
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mLooperThread:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->start()V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;-><init>(Lcom/oppo/camera/rewind/app/AsyncTracker;Lcom/oppo/camera/rewind/app/AsyncTracker$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mLooperThread:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mCompleted:I

    .line 28
    new-instance v0, Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;

    invoke-direct {v0, p0}, Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;-><init>(Lcom/oppo/camera/rewind/app/AsyncTracker;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mToUiHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;

    .line 38
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mLooperThread:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->start()V

    .line 39
    iput p1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mSize:I

    .line 40
    return-void
.end method

.method static synthetic access$200(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mListener:Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/camera/rewind/app/AsyncTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mCompleted:I

    return v0
.end method

.method static synthetic access$408(Lcom/oppo/camera/rewind/app/AsyncTracker;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mCompleted:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mCompleted:I

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/JobListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mJobListener:Lcom/oppo/camera/rewind/app/JobListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/camera/rewind/app/AsyncTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mJobId:I

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/RectTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oppo/camera/rewind/app/AsyncTracker;Lcom/oppo/camera/rewind/app/RectTracker;)Lcom/oppo/camera/rewind/app/RectTracker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mRectTracker:Lcom/oppo/camera/rewind/app/RectTracker;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oppo/camera/rewind/app/AsyncTracker;)Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mToUiHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$ToUiHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/camera/rewind/app/AsyncTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mSize:I

    return v0
.end method


# virtual methods
.method public addImage(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mLooperThread:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->access$100(Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;)Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 64
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mLooperThread:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->access$100(Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;)Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mLooperThread:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mLooperThread:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->access$100(Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;)Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 72
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mLooperThread:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->access$100(Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;)Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 73
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mLooperThread:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->access$100(Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;)Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mListener:Lcom/oppo/camera/rewind/app/RectTracker$RectTrackerListener;

    .line 78
    return-void
.end method

.method public setTracker(Lcom/oppo/camera/rewind/app/RectTracker;)V
    .locals 3
    .parameter "tracker"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mLooperThread:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->access$100(Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;)Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v2, p1}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 49
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker;->mLooperThread:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;

    #getter for: Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->access$100(Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;)Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    return-void
.end method
