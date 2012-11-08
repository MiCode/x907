.class Lcom/oppo/camera/rewind/app/RewindApp$Rewinding;
.super Lcom/oppo/camera/rewind/app/RewindApp$State;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Rewinding"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindApp;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 928
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp$Rewinding;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/rewind/app/RewindApp$State;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 928
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp$Rewinding;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected beforeSwitching()V
    .locals 2

    .prologue
    .line 930
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$Rewinding;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindApp$State;

    move-result-object v0

    instance-of v0, v0, Lcom/oppo/camera/rewind/app/RewindApp$Loading;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$Rewinding;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindApp$State;

    move-result-object v0

    instance-of v0, v0, Lcom/oppo/camera/rewind/app/RewindApp$Capturing;

    if-nez v0, :cond_0

    .line 931
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current task not load or capture!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 934
    :cond_0
    return-void
.end method

.method protected start()V
    .locals 0

    .prologue
    .line 937
    return-void
.end method
