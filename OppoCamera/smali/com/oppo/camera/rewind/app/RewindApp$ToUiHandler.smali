.class Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;
.super Landroid/os/Handler;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindApp;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1023
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1025
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mCurTask:Lcom/oppo/camera/rewind/app/RewindApp$State;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindApp$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/RewindApp$State;->acceptsImages()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3700(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/SourceManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->createSourceManager()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3800(Lcom/oppo/camera/rewind/app/RewindApp;)V

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3700(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/SourceManager;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/rewind/app/SourceManager;->addJpeg(Ljava/nio/ByteBuffer;)I

    .line 1032
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mSrcMgr:Lcom/oppo/camera/rewind/app/SourceManager;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3700(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/SourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/app/SourceManager;->size()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mBurstSize:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3900(Lcom/oppo/camera/rewind/app/RewindApp;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    new-instance v1, Lcom/oppo/camera/rewind/app/RewindApp$Rewinding;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/oppo/camera/rewind/app/RewindApp$Rewinding;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1500(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$State;)V

    goto :goto_0

    .line 1037
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    move-result-object v0

    iget v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mViewer:Lcom/oppo/camera/rewind/app/RewindViewer;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3100(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer;

    move-result-object v0

    const-string v1, "Merging..."

    invoke-virtual {v0, v1}, Lcom/oppo/camera/rewind/app/RewindViewer;->clearDisplay(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->shutterButton:Lcom/oppo/camera/rewind/app/ExtWidget;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$ToUiHandler;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->shutterButton:Lcom/oppo/camera/rewind/app/ExtWidget;

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/ExtWidget;->hide()V

    goto :goto_0

    .line 1023
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
