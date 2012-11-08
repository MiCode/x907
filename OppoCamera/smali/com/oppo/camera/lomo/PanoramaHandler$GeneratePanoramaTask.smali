.class Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;
.super Landroid/os/AsyncTask;
.source "PanoramaHandler.java"

# interfaces
.implements Lcom/oppo/camera/panorama/PanoramaStitcher$StitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/PanoramaHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeneratePanoramaTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/oppo/camera/panorama/PanoramaStitcher$StitcherListener;"
    }
.end annotation


# instance fields
.field filePath:Ljava/lang/String;

.field panoramaStitcher:Lcom/oppo/camera/panorama/PanoramaStitcher;

.field final synthetic this$0:Lcom/oppo/camera/lomo/PanoramaHandler;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/lomo/PanoramaHandler;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->this$0:Lcom/oppo/camera/lomo/PanoramaHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->filePath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/lomo/PanoramaHandler;Lcom/oppo/camera/lomo/PanoramaHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;-><init>(Lcom/oppo/camera/lomo/PanoramaHandler;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 137
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->filePath:Ljava/lang/String;

    .line 139
    :try_start_0
    new-instance v1, Lcom/oppo/camera/panorama/PanoramaStitcher;

    iget-object v2, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->this$0:Lcom/oppo/camera/lomo/PanoramaHandler;

    #getter for: Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderSize:Lcom/scalado/base/Size;
    invoke-static {v2}, Lcom/oppo/camera/lomo/PanoramaHandler;->access$100(Lcom/oppo/camera/lomo/PanoramaHandler;)Lcom/scalado/base/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->this$0:Lcom/oppo/camera/lomo/PanoramaHandler;

    #getter for: Lcom/oppo/camera/lomo/PanoramaHandler;->mViewFinderSize:Lcom/scalado/base/Size;
    invoke-static {v3}, Lcom/oppo/camera/lomo/PanoramaHandler;->access$100(Lcom/oppo/camera/lomo/PanoramaHandler;)Lcom/scalado/base/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->this$0:Lcom/oppo/camera/lomo/PanoramaHandler;

    #getter for: Lcom/oppo/camera/lomo/PanoramaHandler;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v4}, Lcom/oppo/camera/lomo/PanoramaHandler;->access$200(Lcom/oppo/camera/lomo/PanoramaHandler;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/oppo/camera/panorama/PanoramaStitcher;-><init>(IILcom/scalado/caps/autorama/Direction;)V

    iput-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->panoramaStitcher:Lcom/oppo/camera/panorama/PanoramaStitcher;

    .line 140
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->panoramaStitcher:Lcom/oppo/camera/panorama/PanoramaStitcher;

    invoke-virtual {v1, p0}, Lcom/oppo/camera/panorama/PanoramaStitcher;->setStitcherListener(Lcom/oppo/camera/panorama/PanoramaStitcher$StitcherListener;)V

    .line 141
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->panoramaStitcher:Lcom/oppo/camera/panorama/PanoramaStitcher;

    iget-object v2, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->this$0:Lcom/oppo/camera/lomo/PanoramaHandler;

    #getter for: Lcom/oppo/camera/lomo/PanoramaHandler;->mFrameList:Ljava/util/List;
    invoke-static {v2}, Lcom/oppo/camera/lomo/PanoramaHandler;->access$300(Lcom/oppo/camera/lomo/PanoramaHandler;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/panorama/PanoramaStitcher;->stitchPanorama(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPanoramaGenerated()V
    .locals 4

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->this$0:Lcom/oppo/camera/lomo/PanoramaHandler;

    iget-object v2, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->panoramaStitcher:Lcom/oppo/camera/panorama/PanoramaStitcher;

    iget-object v3, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->filePath:Ljava/lang/String;

    #calls: Lcom/oppo/camera/lomo/PanoramaHandler;->saveImage(Lcom/oppo/camera/panorama/PanoramaStitcher;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/oppo/camera/lomo/PanoramaHandler;->access$500(Lcom/oppo/camera/lomo/PanoramaHandler;Lcom/oppo/camera/panorama/PanoramaStitcher;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->this$0:Lcom/oppo/camera/lomo/PanoramaHandler;

    iget-object v1, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->filePath:Ljava/lang/String;

    #calls: Lcom/oppo/camera/lomo/PanoramaHandler;->sendOnPanoramaGenerated(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/oppo/camera/lomo/PanoramaHandler;->access$400(Lcom/oppo/camera/lomo/PanoramaHandler;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->panoramaStitcher:Lcom/oppo/camera/panorama/PanoramaStitcher;

    .line 155
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 160
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 184
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->publishProgress([Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/lomo/PanoramaHandler$GeneratePanoramaTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
