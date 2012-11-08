.class Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;
.super Ljava/lang/Object;
.source "RewindApp.java"

# interfaces
.implements Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRewindViewerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindApp;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 0
    .parameter

    .prologue
    .line 944
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 944
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;)V

    return-void
.end method


# virtual methods
.method public onAllImagesAdded()V
    .locals 4

    .prologue
    .line 947
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    move-result-object v0

    iget v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 948
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    new-instance v1, Lcom/oppo/camera/rewind/app/RewindApp$Rewinding;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/oppo/camera/rewind/app/RewindApp$Rewinding;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->switchTask(Lcom/oppo/camera/rewind/app/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$1500(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$State;)V

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3400(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3400(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onAllImagesAdded()V

    .line 953
    :cond_1
    return-void
.end method

.method public onEndHideWheel()V
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3400(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onEndHideWheel()V

    .line 982
    return-void
.end method

.method public onEndShowWheel()V
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3400(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onEndShowWheel()V

    .line 987
    return-void
.end method

.method public onExit()V
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3400(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3400(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onExit()V

    .line 971
    :cond_0
    return-void
.end method

.method public onFaceDetecionComplete(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 956
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->indexSelector:Lcom/oppo/camera/rewind/app/ExtIndexSelector;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->indexSelector:Lcom/oppo/camera/rewind/app/ExtIndexSelector;

    invoke-interface {v0, p1}, Lcom/oppo/camera/rewind/app/ExtIndexSelector;->selectIndex(I)V

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->topBar:Lcom/oppo/camera/rewind/app/ExtWidget;

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/ExtWidget;->show()V

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3400(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 963
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3400(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onFaceDetecionComplete(I)V

    .line 965
    :cond_2
    return-void
.end method

.method public onSaved(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3400(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3400(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onSaved(Ljava/lang/String;)V

    .line 977
    :cond_0
    return-void
.end method

.method public onStartHideWheel()V
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3400(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onStartHideWheel()V

    .line 992
    return-void
.end method

.method public onStartShowWheel()V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$MyRewindViewerCallback;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mRewindCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3400(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onStartShowWheel()V

    .line 997
    return-void
.end method
