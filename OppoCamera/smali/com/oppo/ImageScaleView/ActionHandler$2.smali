.class Lcom/oppo/ImageScaleView/ActionHandler$2;
.super Ljava/lang/Object;
.source "ActionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/ImageScaleView/ActionHandler;->handleFlingAction(Landroid/view/MotionEvent;FFILandroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/ImageScaleView/ActionHandler;

.field final synthetic val$event:Landroid/view/MotionEvent;

.field final synthetic val$mode:I

.field final synthetic val$r:Landroid/graphics/RectF;

.field final synthetic val$velocityX:F

.field final synthetic val$velocityY:F


# direct methods
.method constructor <init>(Lcom/oppo/ImageScaleView/ActionHandler;IFFLandroid/graphics/RectF;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    iput p2, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$mode:I

    iput p3, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$velocityX:F

    iput p4, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$velocityY:F

    iput-object p5, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$r:Landroid/graphics/RectF;

    iput-object p6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$event:Landroid/view/MotionEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/high16 v13, 0x4040

    const/high16 v6, 0x3f80

    const/high16 v7, -0x4080

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 475
    iget-object v8, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #setter for: Lcom/oppo/ImageScaleView/ActionHandler;->isRebounding:Z
    invoke-static {v8, v12}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1102(Lcom/oppo/ImageScaleView/ActionHandler;Z)Z

    .line 476
    const/4 v0, 0x0

    .local v0, currentX:F
    const/4 v1, 0x0

    .line 477
    .local v1, currentY:F
    const/4 v2, 0x0

    .local v2, signX:F
    const/4 v3, 0x0

    .line 478
    .local v3, signY:F
    iget-object v8, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolX:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v8}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1200(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->forceFinish()V

    .line 479
    iget v8, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$mode:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    .line 480
    iget v8, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$velocityX:F

    cmpl-float v8, v8, v11

    if-ltz v8, :cond_5

    move v2, v6

    .line 481
    :goto_0
    iget v8, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$velocityX:F

    const/high16 v9, 0x420c

    mul-float/2addr v8, v9

    mul-float v4, v8, v2

    .line 482
    .local v4, vx:F
    iget-object v8, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolX:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v8}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1200(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v8

    const/high16 v9, 0x42f0

    div-float v9, v4, v9

    const/high16 v10, 0x447a

    invoke-virtual {v8, v4, v9, v10}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->setVelocityDistanceTime(FFF)V

    .line 485
    .end local v4           #vx:F
    :cond_0
    iget-object v8, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolY:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v8}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->forceFinish()V

    .line 486
    iget v8, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$mode:I

    if-eq v8, v12, :cond_1

    .line 487
    iget v8, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$velocityY:F

    cmpl-float v8, v8, v11

    if-ltz v8, :cond_6

    move v3, v6

    .line 488
    :goto_1
    iget v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$velocityY:F

    const/high16 v7, 0x420c

    mul-float/2addr v6, v7

    mul-float v5, v6, v3

    .line 489
    .local v5, vy:F
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolY:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v6

    const/high16 v7, 0x42f0

    div-float v7, v5, v7

    const/high16 v8, 0x447a

    invoke-virtual {v6, v5, v7, v8}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->setVelocityDistanceTime(FFF)V

    .line 492
    .end local v5           #vy:F
    :cond_1
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mPreviousLocationRecord:Lcom/oppo/ImageScaleView/PreviousLocationRecord;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1400(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/PreviousLocationRecord;

    move-result-object v6

    invoke-virtual {v6, v11, v11}, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->recordPreviousCoordinate(FF)V

    .line 493
    :cond_2
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolX:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1200(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->isFinish()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolY:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->isFinish()Z

    move-result v6

    if-nez v6, :cond_4

    .line 494
    :cond_3
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mIsRequestReboundFinish:Z
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$600(Lcom/oppo/ImageScaleView/ActionHandler;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 495
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolX:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1200(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->forceFinish()V

    .line 496
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolY:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->forceFinish()V

    .line 536
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    const/4 v7, 0x0

    #setter for: Lcom/oppo/ImageScaleView/ActionHandler;->isRebounding:Z
    invoke-static {v6, v7}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1102(Lcom/oppo/ImageScaleView/ActionHandler;Z)Z

    .line 537
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    const/4 v7, 0x0

    #setter for: Lcom/oppo/ImageScaleView/ActionHandler;->mIsRequestReboundFinish:Z
    invoke-static {v6, v7}, Lcom/oppo/ImageScaleView/ActionHandler;->access$602(Lcom/oppo/ImageScaleView/ActionHandler;Z)Z

    .line 538
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1000(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mRedrawCallback:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/oppo/ImageScaleView/ActionHandler;->access$900(Lcom/oppo/ImageScaleView/ActionHandler;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 539
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    iget-object v7, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v6, v7}, Lcom/oppo/ImageScaleView/ActionHandler;->handleReboundAction(Landroid/view/MotionEvent;)V

    .line 540
    return-void

    :cond_5
    move v2, v7

    .line 480
    goto/16 :goto_0

    :cond_6
    move v3, v7

    .line 487
    goto :goto_1

    .line 499
    :cond_7
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolX:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1200(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->getCurrentDistance()F

    move-result v0

    .line 500
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolY:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->getCurrentDistance()F

    move-result v1

    .line 502
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$800(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mPreviousLocationRecord:Lcom/oppo/ImageScaleView/PreviousLocationRecord;
    invoke-static {v7}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1400(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/PreviousLocationRecord;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->getDistanceX(F)F

    move-result v7

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mPreviousLocationRecord:Lcom/oppo/ImageScaleView/PreviousLocationRecord;
    invoke-static {v8}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1400(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/PreviousLocationRecord;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->getDistanceY(F)F

    move-result v8

    mul-float/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 503
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mPreviousLocationRecord:Lcom/oppo/ImageScaleView/PreviousLocationRecord;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1400(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/PreviousLocationRecord;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lcom/oppo/ImageScaleView/PreviousLocationRecord;->recordPreviousCoordinate(FF)V

    .line 504
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1000(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mRedrawCallback:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/oppo/ImageScaleView/ActionHandler;->access$900(Lcom/oppo/ImageScaleView/ActionHandler;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 505
    invoke-static {}, Lcom/oppo/ImageScaleView/ThreadTools;->sleep()V

    .line 506
    iget v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$mode:I

    if-ne v6, v12, :cond_9

    .line 507
    cmpl-float v6, v2, v11

    if-lez v6, :cond_8

    .line 508
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$r:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;
    invoke-static {v7}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1500(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;
    invoke-static {v8}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1500(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x4080

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 509
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolX:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1200(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->forceFinish()V

    .line 510
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolY:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->forceFinish()V

    goto/16 :goto_2

    .line 514
    :cond_8
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$r:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v0

    iget-object v7, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;
    invoke-static {v7}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1500(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;
    invoke-static {v8}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1500(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x4080

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 515
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolX:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1200(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->forceFinish()V

    .line 516
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolY:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->forceFinish()V

    goto/16 :goto_2

    .line 520
    :cond_9
    iget v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$mode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 521
    cmpl-float v6, v3, v11

    if-lez v6, :cond_a

    .line 522
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$r:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;
    invoke-static {v7}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1500(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;
    invoke-static {v8}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1500(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v13

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 523
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolX:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1200(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->forceFinish()V

    .line 524
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolY:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->forceFinish()V

    goto/16 :goto_2

    .line 528
    :cond_a
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->val$r:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v1

    iget-object v7, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;
    invoke-static {v7}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1500(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mScreenRect:Landroid/graphics/RectF;
    invoke-static {v8}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1500(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v13

    sub-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 529
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolX:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1200(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->forceFinish()V

    .line 530
    iget-object v6, p0, Lcom/oppo/ImageScaleView/ActionHandler$2;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mSwitchCurveToolY:Lcom/oppo/ImageScaleView/SwitchCurveTool;
    invoke-static {v6}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/SwitchCurveTool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/ImageScaleView/SwitchCurveTool;->forceFinish()V

    goto/16 :goto_2
.end method
