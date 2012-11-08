.class Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;
.super Ljava/lang/Object;
.source "ManualRewindViewer.java"

# interfaces
.implements Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/app/ManualRewindViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUiManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ManualRewindViewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;-><init>(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V

    return-void
.end method


# virtual methods
.method public needsDrawing()Z
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x0

    return v0
.end method

.method public onDeselect(Lcom/oppo/camera/rewind/ui/Widget;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1700(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/ui/Wheel;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheelGroup:Lcom/oppo/camera/rewind/ui/Group;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1800(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/ui/Group;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    const/4 v1, 0x0

    #calls: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->startHideWheel(Z)V
    invoke-static {v0, v1}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1900(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Z)V

    .line 1114
    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 1060
    const/4 v1, 0x0

    .line 1061
    .local v1, code:I
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$700(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1062
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #setter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;
    invoke-static {v4, v5}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$702(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1064
    :cond_0
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$700(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$800(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I

    move-result v5

    iget-object v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$900(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1065
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1000(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/BitmapManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/BitmapManager;->lockDisplayed()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1066
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    .line 1067
    .local v3, unlock:Z
    if-eqz v0, :cond_6

    .line 1068
    const/4 v2, 0x0

    .line 1069
    .local v2, srcRect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/ScreenAnimation;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1070
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/ScreenAnimation;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->update(J)V

    .line 1071
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/ScreenAnimation;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->render(Landroid/graphics/Bitmap;)V

    .line 1072
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/ScreenAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1073
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/ScreenAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->done()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1074
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBgLayer:Lcom/oppo/camera/rewind/ui/Background;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1200(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/ui/Background;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/ui/Background;->hide()V

    .line 1075
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBgLayer:Lcom/oppo/camera/rewind/ui/Background;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1200(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/ui/Background;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/oppo/camera/rewind/ui/Background;->setMoving(Z)V

    .line 1076
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/ScreenAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->end()V

    .line 1078
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/ScreenAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/ScreenAnimation;->getUserCode()I

    move-result v1

    .line 1079
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    const/4 v5, 0x0

    #setter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mZoomer:Lcom/oppo/camera/rewind/app/ScreenAnimation;
    invoke-static {v4, v5}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1102(Lcom/oppo/camera/rewind/app/ManualRewindViewer;Lcom/oppo/camera/rewind/app/ScreenAnimation;)Lcom/oppo/camera/rewind/app/ScreenAnimation;

    .line 1084
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1300(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Landroid/graphics/Paint;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1085
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$700(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBgPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1400(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1087
    :cond_2
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$700(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1300(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1091
    .end local v2           #srcRect:Landroid/graphics/Rect;
    :goto_1
    if-eqz v3, :cond_3

    .line 1092
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1000(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/BitmapManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/rewind/app/BitmapManager;->unlockDisplayed()V

    .line 1094
    :cond_3
    if-eqz v1, :cond_4

    .line 1095
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mBmps:Lcom/oppo/camera/rewind/app/BitmapManager;
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1000(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/app/BitmapManager;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayWidth:I
    invoke-static {v5}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$800(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I

    move-result v5

    iget-object v6, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mDisplayHeight:I
    invoke-static {v6}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$900(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v6, v7}, Lcom/oppo/camera/rewind/app/BitmapManager;->createBitmaps(IILandroid/graphics/Bitmap$Config;)V

    .line 1097
    const/4 v4, 0x1

    if-ne v1, v4, :cond_7

    .line 1099
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #calls: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->endShowWheel()V
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1500(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V

    .line 1105
    :cond_4
    :goto_2
    return-void

    .line 1082
    .restart local v2       #srcRect:Landroid/graphics/Rect;
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 1089
    .end local v2           #srcRect:Landroid/graphics/Rect;
    :cond_6
    const-string v4, "ManualRewindViewer"

    const-string v5, "mCurBitmap == null!!!!!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1102
    :cond_7
    iget-object v4, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #calls: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->endHideWheel()V
    invoke-static {v4}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1600(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V

    goto :goto_2
.end method

.method public onIndexFocused(Lcom/oppo/camera/rewind/ui/Widget;I)V
    .locals 4
    .parameter "w"
    .parameter "index"

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1700(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/ui/Wheel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v0, v0, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v0, p2}, Lcom/oppo/camera/rewind/app/RewindSession;->setForeground(I)V

    .line 1122
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v1, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v1, v1, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/app/RewindSession;->getBackground()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    iget-object v2, v2, Lcom/oppo/camera/rewind/app/RewindViewer;->mRewind:Lcom/oppo/camera/rewind/app/RewindSession;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/app/RewindSession;->getForeground()I

    move-result v2

    const/4 v3, 0x0

    #calls: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->setupZoomRect(IILandroid/graphics/Rect;)V
    invoke-static {v0, v1, v2, v3}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$2000(Lcom/oppo/camera/rewind/app/ManualRewindViewer;IILandroid/graphics/Rect;)V

    .line 1125
    :cond_0
    return-void
.end method

.method public onIndexSelected(Lcom/oppo/camera/rewind/ui/Widget;I)V
    .locals 1
    .parameter "w"
    .parameter "index"

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mWheel:Lcom/oppo/camera/rewind/ui/Wheel;
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$1700(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Lcom/oppo/camera/rewind/ui/Wheel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #getter for: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->mUpdatePreview:Z
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$2100(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #calls: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->needUpdate(I)Z
    invoke-static {v0, p2}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$2200(Lcom/oppo/camera/rewind/app/ManualRewindViewer;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/rewind/app/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/oppo/camera/rewind/app/ManualRewindViewer;

    #calls: Lcom/oppo/camera/rewind/app/ManualRewindViewer;->requestMagnifiedUpdate()V
    invoke-static {v0}, Lcom/oppo/camera/rewind/app/ManualRewindViewer;->access$2300(Lcom/oppo/camera/rewind/app/ManualRewindViewer;)V

    goto :goto_0
.end method

.method public onNoneSelected()V
    .locals 0

    .prologue
    .line 1117
    return-void
.end method

.method public onSelected(Lcom/oppo/camera/rewind/ui/Widget;)V
    .locals 0
    .parameter "w"

    .prologue
    .line 1108
    return-void
.end method
