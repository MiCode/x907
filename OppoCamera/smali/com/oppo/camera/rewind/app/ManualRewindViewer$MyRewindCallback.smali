.class Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;
.super Ljava/lang/Object;
.source "ManualRewindViewer.java"

# interfaces
.implements Lcom/oppo/camera/rewind/app/RewindSession$RewindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/ManualRewindViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRewindCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ManualRewindViewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1177
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;-><init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V

    return-void
.end method


# virtual methods
.method public onBackgroundReady(ILcom/scalado/base/Image;)V
    .locals 0
    .parameter "index"
    .parameter "background"

    .prologue
    .line 1266
    return-void
.end method

.method public onEntryReady(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    if-nez v0, :cond_0

    .line 1212
    :goto_0
    return-void

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mEntriesReady:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$3200(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1208
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #calls: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->startAsyncDetectFaces()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$3300(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mAsyncTracker:Lcom/oppo/camera/rewind/app/AsyncTracker;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/app/AsyncTracker;->addImage(I)V

    .line 1211
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    invoke-static {v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$3208(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I

    goto :goto_0
.end method

.method public onSaved(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewer;->mCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewer;->mCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    invoke-interface {v0, p1}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onSaved(Ljava/lang/String;)V

    .line 1272
    :cond_0
    return-void
.end method

.method public onScreen(Landroid/graphics/Bitmap;Lcom/scalado/caps/screen/Screen;I)V
    .locals 7
    .parameter "bitmap"
    .parameter "screen"
    .parameter "user"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1215
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1000(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/BitmapManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oppo/camera/rewind/app/BitmapManager;->release(Landroid/graphics/Bitmap;)V

    .line 1216
    if-ne p3, v6, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v2, v2, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    if-eqz v2, :cond_2

    .line 1217
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    new-instance v3, Lcom/oppo/camera/rewind/app/ScreenAnimation;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v4, v4, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/RewindSession;->getCoordTransform()Lcom/oppo/camera/rewind/app/CoordTransform;

    move-result-object v4

    invoke-direct {v3, p2, v4, v6}, Lcom/oppo/camera/rewind/app/ScreenAnimation;-><init>(Lcom/scalado/caps/screen/Screen;Lcom/oppo/camera/rewind/app/CoordTransform;I)V

    #setter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;
    invoke-static {v2, v3}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1102(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ScreenAnimation;)Lcom/oppo/camera/rewind/app/ScreenAnimation;

    .line 1219
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/ScreenAnimation;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$3400(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->ZOOM_TIME:J
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$3500(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->zoomIn(Landroid/graphics/Rect;J)V

    .line 1226
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v2, v2, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    if-nez v2, :cond_3

    .line 1248
    :cond_1
    :goto_1
    return-void

    .line 1220
    :cond_2
    if-ne p3, v5, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v2, v2, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    if-eqz v2, :cond_0

    .line 1221
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    new-instance v3, Lcom/oppo/camera/rewind/app/ScreenAnimation;

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v4, v4, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/RewindSession;->getCoordTransform()Lcom/oppo/camera/rewind/app/CoordTransform;

    move-result-object v4

    invoke-direct {v3, p2, v4, v5}, Lcom/oppo/camera/rewind/app/ScreenAnimation;-><init>(Lcom/scalado/caps/screen/Screen;Lcom/oppo/camera/rewind/app/CoordTransform;I)V

    #setter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;
    invoke-static {v2, v3}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1102(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ScreenAnimation;)Lcom/oppo/camera/rewind/app/ScreenAnimation;

    .line 1223
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/ScreenAnimation;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$3400(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->ZOOM_TIME:J
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$3500(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->zoomOut(Landroid/graphics/Rect;J)V

    goto :goto_0

    .line 1230
    :cond_3
    invoke-virtual {p2}, Lcom/scalado/caps/screen/Screen;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    .line 1231
    .local v1, dims:Lcom/scalado/base/Size;
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1000(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/BitmapManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v4, v5}, Lcom/oppo/camera/rewind/app/BitmapManager;->createBitmaps(IILandroid/graphics/Bitmap$Config;)V

    .line 1233
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1000(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/BitmapManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/app/BitmapManager;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1234
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 1237
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1000(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/BitmapManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oppo/camera/rewind/app/BitmapManager;->displayAndLock(Landroid/graphics/Bitmap;)V

    .line 1238
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/ScreenAnimation;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1239
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/ScreenAnimation;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->render(Landroid/graphics/Bitmap;)V

    .line 1240
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBgLayer:Lcom/oppo/camera/rewind/ui/Background;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1200(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/ui/Background;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/oppo/camera/rewind/ui/Background;->setMoving(Z)V

    .line 1245
    :goto_2
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1000(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/BitmapManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/app/BitmapManager;->unlockDisplayed()V

    .line 1246
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBgLayer:Lcom/oppo/camera/rewind/ui/Background;
    invoke-static {v2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1200(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/ui/Background;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/ui/Background;->show()V

    .line 1247
    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v2, v2, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/ui/UiManager;->requestDraw()V

    goto/16 :goto_1

    .line 1242
    :cond_4
    invoke-virtual {p2}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 1243
    invoke-virtual {p2}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_2
.end method

.method public onScreenChanged(Lcom/scalado/caps/screen/Screen;)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 1200
    return-void
.end method

.method public onThumbnailReady(ILcom/scalado/base/Image;)V
    .locals 2
    .parameter "index"
    .parameter "thumbnail"

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    if-nez v0, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #calls: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->drawSrcMgrBg(I)V
    invoke-static {v0, p1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$3600(Lcom/oppo/camera/rewind/app/ManualRewindViewer;I)V

    .line 1256
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    invoke-static {v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$3708(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I

    .line 1257
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mThumbsReady:I
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$3700(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mNumImages:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$3800(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewer;->mCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewer;->mCallback:Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;

    invoke-interface {v0}, Lcom/oppo/camera/rewind/app/RewindViewer$RewindViewerCallback;->onAllImagesAdded()V

    goto :goto_0
.end method

.method public onUpdateComplete(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x0

    .line 1181
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #setter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBlockedUntilUpdated:Z
    invoke-static {v0, v3}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$2802(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Z)Z

    .line 1182
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    if-nez v0, :cond_0

    .line 1192
    :goto_0
    return-void

    .line 1185
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFirstTime:Z
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$2900(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mStartIndex:I
    invoke-static {v1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$3000(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I

    move-result v1

    const/4 v2, 0x1

    #calls: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->setFaceRects(IZ)V
    invoke-static {v0, v1, v2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$3100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;IZ)V

    .line 1188
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #setter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mFirstTime:Z
    invoke-static {v0, v3}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$2902(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Z)Z

    .line 1190
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1000(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/BitmapManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/app/BitmapManager;->display(Landroid/graphics/Bitmap;)V

    .line 1191
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/UiManager;->requestDraw()V

    goto :goto_0
.end method

.method public onUpdateMagnifiedComplete(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1700(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/ui/Wheel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/rewind/ui/Wheel;->setImage(Landroid/graphics/Bitmap;)V

    .line 1196
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewer;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/UiManager;->requestDraw()V

    .line 1197
    return-void
.end method
