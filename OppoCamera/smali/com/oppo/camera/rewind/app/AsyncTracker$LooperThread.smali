.class Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;
.super Ljava/lang/Thread;
.source "AsyncTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/AsyncTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LooperThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/AsyncTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/AsyncTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/AsyncTracker;Lcom/oppo/camera/rewind/app/AsyncTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;-><init>(Lcom/oppo/camera/rewind/app/AsyncTracker;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;)Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 116
    new-instance v0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;-><init>(Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;Lcom/oppo/camera/rewind/app/AsyncTracker$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/AsyncTracker$LooperThread$MyHandler;

    .line 117
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 118
    return-void
.end method
