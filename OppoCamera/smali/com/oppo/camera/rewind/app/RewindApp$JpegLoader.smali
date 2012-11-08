.class Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;
.super Landroid/os/AsyncTask;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JpegLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/RewindApp;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/RewindApp;Lcom/oppo/camera/rewind/app/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1000
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;-><init>(Lcom/oppo/camera/rewind/app/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .parameter "ints"

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->predefinedSizes:[I

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->predefinedSizes:[I

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->loadFromAssets([Ljava/lang/String;[I)V
    invoke-static {v0, v1, v2}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3500(Lcom/oppo/camera/rewind/app/RewindApp;[Ljava/lang/String;[I)V

    .line 1008
    :goto_0
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;->this$0:Lcom/oppo/camera/rewind/app/RewindApp;

    #getter for: Lcom/oppo/camera/rewind/app/RewindApp;->mConfig:Lcom/oppo/camera/rewind/app/RewindViewerConfig;
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3200(Lcom/oppo/camera/rewind/app/RewindApp;)Lcom/oppo/camera/rewind/app/RewindViewerConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    #calls: Lcom/oppo/camera/rewind/app/RewindApp;->loadFromSD([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/RewindApp;->access$3600(Lcom/oppo/camera/rewind/app/RewindApp;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1000
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1015
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1000
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 1012
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1000
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/rewind/app/RewindApp$JpegLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
