.class Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;
.super Ljava/lang/Thread;
.source "RewindSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LooperThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindSession;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;)V
    .locals 0
    .parameter

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->this$0:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1109
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindSession;Lcom/oppo/camera/rewind/app/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1077
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;-><init>(Lcom/oppo/camera/rewind/app/RewindSession;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;)Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1081
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1083
    new-instance v0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;-><init>(Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;Lcom/oppo/camera/rewind/app/RewindSession$1;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/app/RewindSession$LooperThread;->mHandler:Lcom/oppo/camera/rewind/app/RewindSession$LooperThread$MyHandler;

    .line 1084
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1085
    return-void
.end method
