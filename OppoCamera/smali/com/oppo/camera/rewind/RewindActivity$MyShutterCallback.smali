.class final Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Lcom/scalado/camera/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyShutterCallback"
.end annotation


# instance fields
.field private mNumPicturesLeft:I

.field final synthetic this$0:Lcom/oppo/camera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;I)V
    .locals 0
    .parameter
    .parameter "burstSize"

    .prologue
    .line 903
    iput-object p1, p0, Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 904
    iput p2, p0, Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;->mNumPicturesLeft:I

    .line 905
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/RewindActivity;ILcom/oppo/camera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 900
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;-><init>(Lcom/oppo/camera/rewind/RewindActivity;I)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 1

    .prologue
    .line 909
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;->mNumPicturesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;->mNumPicturesLeft:I

    .line 910
    iget v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;->mNumPicturesLeft:I

    if-nez v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/oppo/camera/rewind/RewindActivity$MyShutterCallback;->this$0:Lcom/oppo/camera/rewind/RewindActivity;

    #getter for: Lcom/oppo/camera/rewind/RewindActivity;->mRewindApp:Lcom/oppo/camera/rewind/app/RewindApp;
    invoke-static {v0}, Lcom/oppo/camera/rewind/RewindActivity;->access$3300(Lcom/oppo/camera/rewind/RewindActivity;)Lcom/oppo/camera/rewind/app/RewindApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->onShutterComplete()V

    .line 913
    :cond_0
    return-void
.end method
