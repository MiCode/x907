.class Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;
.super Ljava/util/TimerTask;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/rewind/ui/UiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationTimerTask"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/oppo/camera/rewind/ui/UiManager;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/rewind/ui/UiManager;)V
    .locals 1
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;->this$0:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 676
    const-string v0, "AnimationTimerTask"

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/rewind/ui/UiManager;Lcom/oppo/camera/rewind/ui/UiManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;-><init>(Lcom/oppo/camera/rewind/ui/UiManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 683
    :try_start_0
    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;->this$0:Lcom/oppo/camera/rewind/ui/UiManager;

    #getter for: Lcom/oppo/camera/rewind/ui/UiManager;->mSyncObj:Ljava/lang/Object;
    invoke-static {v7}, Lcom/oppo/camera/rewind/ui/UiManager;->access$300(Lcom/oppo/camera/rewind/ui/UiManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 685
    .local v4, t:J
    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;->this$0:Lcom/oppo/camera/rewind/ui/UiManager;

    #setter for: Lcom/oppo/camera/rewind/ui/UiManager;->mCurTime:J
    invoke-static {v7, v4, v5}, Lcom/oppo/camera/rewind/ui/UiManager;->access$402(Lcom/oppo/camera/rewind/ui/UiManager;J)J

    .line 686
    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;->this$0:Lcom/oppo/camera/rewind/ui/UiManager;

    #getter for: Lcom/oppo/camera/rewind/ui/UiManager;->mTouchDown:Z
    invoke-static {v7}, Lcom/oppo/camera/rewind/ui/UiManager;->access$500(Lcom/oppo/camera/rewind/ui/UiManager;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;->this$0:Lcom/oppo/camera/rewind/ui/UiManager;

    #getter for: Lcom/oppo/camera/rewind/ui/UiManager;->mLstDrawT:J
    invoke-static {v7}, Lcom/oppo/camera/rewind/ui/UiManager;->access$600(Lcom/oppo/camera/rewind/ui/UiManager;)J

    move-result-wide v9

    sub-long v9, v4, v9

    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;->this$0:Lcom/oppo/camera/rewind/ui/UiManager;

    #getter for: Lcom/oppo/camera/rewind/ui/UiManager;->mAnimIvl:J
    invoke-static {v7}, Lcom/oppo/camera/rewind/ui/UiManager;->access$700(Lcom/oppo/camera/rewind/ui/UiManager;)J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-ltz v7, :cond_5

    .line 687
    :cond_0
    const/4 v1, 0x0

    .line 688
    .local v1, doUpdate:Z
    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;->this$0:Lcom/oppo/camera/rewind/ui/UiManager;

    iget-object v7, v7, Lcom/oppo/camera/rewind/ui/UiManager;->mListener:Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;

    invoke-interface {v7}, Lcom/oppo/camera/rewind/ui/UiManager$UiManagerListener;->needsDrawing()Z

    move-result v0

    .line 689
    .local v0, doDraw:Z
    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;->this$0:Lcom/oppo/camera/rewind/ui/UiManager;

    #getter for: Lcom/oppo/camera/rewind/ui/UiManager;->mWidgets:Ljava/util/Vector;
    invoke-static {v7}, Lcom/oppo/camera/rewind/ui/UiManager;->access$800(Lcom/oppo/camera/rewind/ui/UiManager;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/camera/rewind/ui/Widget;

    .line 690
    .local v6, w:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {v6}, Lcom/oppo/camera/rewind/ui/Widget;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 691
    invoke-virtual {v6}, Lcom/oppo/camera/rewind/ui/Widget;->isMoving()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 692
    invoke-virtual {v6, v4, v5}, Lcom/oppo/camera/rewind/ui/Widget;->update(J)V

    .line 693
    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;->this$0:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v7, v6}, Lcom/oppo/camera/rewind/ui/UiManager;->setDirty(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 694
    const/4 v0, 0x1

    .line 696
    :cond_2
    invoke-virtual {v6}, Lcom/oppo/camera/rewind/ui/Widget;->isDirty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 697
    const/4 v0, 0x1

    goto :goto_0

    .line 701
    .end local v6           #w:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_3
    if-nez v0, :cond_4

    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;->this$0:Lcom/oppo/camera/rewind/ui/UiManager;

    #getter for: Lcom/oppo/camera/rewind/ui/UiManager;->mDirty:Z
    invoke-static {v7}, Lcom/oppo/camera/rewind/ui/UiManager;->access$900(Lcom/oppo/camera/rewind/ui/UiManager;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 702
    :cond_4
    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;->this$0:Lcom/oppo/camera/rewind/ui/UiManager;

    #calls: Lcom/oppo/camera/rewind/ui/UiManager;->updateDirtyArea()V
    invoke-static {v7}, Lcom/oppo/camera/rewind/ui/UiManager;->access$1000(Lcom/oppo/camera/rewind/ui/UiManager;)V

    .line 703
    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;->this$0:Lcom/oppo/camera/rewind/ui/UiManager;

    #calls: Lcom/oppo/camera/rewind/ui/UiManager;->privateDraw()Z
    invoke-static {v7}, Lcom/oppo/camera/rewind/ui/UiManager;->access$1100(Lcom/oppo/camera/rewind/ui/UiManager;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 704
    iget-object v7, p0, Lcom/oppo/camera/rewind/ui/UiManager$AnimationTimerTask;->this$0:Lcom/oppo/camera/rewind/ui/UiManager;

    const/4 v9, 0x0

    #setter for: Lcom/oppo/camera/rewind/ui/UiManager;->mDirty:Z
    invoke-static {v7, v9}, Lcom/oppo/camera/rewind/ui/UiManager;->access$902(Lcom/oppo/camera/rewind/ui/UiManager;Z)Z

    .line 708
    .end local v0           #doDraw:Z
    .end local v1           #doUpdate:Z
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    monitor-exit v8

    .line 713
    .end local v4           #t:J
    :goto_1
    return-void

    .line 708
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 709
    :catch_0
    move-exception v2

    .line 710
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "AnimationTimerTask"

    const-string v8, "Exception in timer task!"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
