.class Lcom/oppo/ImageScaleView/ActionHandler$1;
.super Ljava/lang/Object;
.source "ActionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/ImageScaleView/ActionHandler;->handleReboundAction(FFLandroid/graphics/PointF;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/ImageScaleView/ActionHandler;

.field final synthetic val$deltaX:F

.field final synthetic val$deltaY:F

.field final synthetic val$imageScalePoint:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/oppo/ImageScaleView/ActionHandler;FFLandroid/graphics/PointF;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    iput p2, p0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$deltaX:F

    iput p3, p0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$deltaY:F

    iput-object p4, p0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$imageScalePoint:Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 348
    const/16 v19, 0x0

    .line 349
    .local v19, needTranslateRebound:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$deltaX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$deltaY:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 350
    :cond_0
    const/16 v19, 0x1

    .line 351
    :cond_1
    const-wide/16 v5, 0x0

    .line 353
    .local v5, endScale:D
    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$deltaX:F

    .line 354
    .local v15, currentX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$deltaY:F

    move/from16 v16, v0

    .line 356
    .local v16, currentY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$deltaX:F

    move/from16 v21, v0

    .line 357
    .local v21, preX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$deltaY:F

    move/from16 v22, v0

    .line 361
    .local v22, preY:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$deltaX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$deltaY:F

    invoke-static {v2, v3}, Lcom/oppo/ImageScaleView/MathTools;->computePointDistance(FF)F

    move-result v17

    .line 362
    .local v17, distance:F
    const/high16 v2, 0x4040

    mul-float v2, v2, v17

    const/high16 v3, 0x447a

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x4348

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 363
    .local v18, duration:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$200(Lcom/oppo/ImageScaleView/ActionHandler;)D

    move-result-wide v2

    const-wide/high16 v7, 0x3ff0

    cmpg-double v2, v2, v7

    if-gez v2, :cond_7

    .line 364
    const-wide/high16 v2, 0x3ff0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D
    invoke-static {v4}, Lcom/oppo/ImageScaleView/ActionHandler;->access$200(Lcom/oppo/ImageScaleView/ActionHandler;)D

    move-result-wide v7

    sub-double/2addr v2, v7

    const-wide v7, 0x407c200000000000L

    mul-double/2addr v2, v7

    move/from16 v0, v18

    float-to-double v7, v0

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v18, v0

    .line 365
    const-wide/high16 v5, 0x3ff0

    .line 371
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$200(Lcom/oppo/ImageScaleView/ActionHandler;)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v23, v0

    .local v23, scale:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$200(Lcom/oppo/ImageScaleView/ActionHandler;)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v20, v0

    .line 372
    .local v20, preScale:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolS:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->forceFinish()V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolX:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$400(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->forceFinish()V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolY:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$500(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->forceFinish()V

    .line 375
    const-wide/16 v2, 0x0

    cmpl-double v2, v5, v2

    if-eqz v2, :cond_3

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolS:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D
    invoke-static {v3}, Lcom/oppo/ImageScaleView/ActionHandler;->access$200(Lcom/oppo/ImageScaleView/ActionHandler;)D

    move-result-wide v3

    move/from16 v0, v18

    float-to-double v7, v0

    invoke-virtual/range {v2 .. v8}, Lcom/oppo/ImageScaleView/BezierScrollTool;->startSpring(DDD)V

    .line 378
    :cond_3
    if-eqz v19, :cond_4

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolX:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$400(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$deltaX:F

    float-to-double v8, v2

    const-wide/16 v10, 0x0

    move/from16 v0, v18

    float-to-double v12, v0

    invoke-virtual/range {v7 .. v13}, Lcom/oppo/ImageScaleView/BezierScrollTool;->startSpring(DDD)V

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolY:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$500(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$deltaY:F

    float-to-double v8, v2

    const-wide/16 v10, 0x0

    move/from16 v0, v18

    float-to-double v12, v0

    invoke-virtual/range {v7 .. v13}, Lcom/oppo/ImageScaleView/BezierScrollTool;->startSpring(DDD)V

    .line 382
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolX:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$400(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->isFinish()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolY:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$500(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->isFinish()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolS:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->isFinish()Z

    move-result v2

    if-nez v2, :cond_6

    .line 383
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mIsRequestReboundFinish:Z
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$600(Lcom/oppo/ImageScaleView/ActionHandler;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolS:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->isFinish()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 422
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    const/4 v3, 0x0

    #setter for: Lcom/oppo/ImageScaleView/ActionHandler;->isRebounding:Z
    invoke-static {v2, v3}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1102(Lcom/oppo/ImageScaleView/ActionHandler;Z)Z

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    const/4 v3, 0x0

    #setter for: Lcom/oppo/ImageScaleView/ActionHandler;->mIsRequestReboundFinish:Z
    invoke-static {v2, v3}, Lcom/oppo/ImageScaleView/ActionHandler;->access$602(Lcom/oppo/ImageScaleView/ActionHandler;Z)Z

    .line 424
    return-void

    .line 366
    .end local v20           #preScale:F
    .end local v23           #scale:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$200(Lcom/oppo/ImageScaleView/ActionHandler;)D

    move-result-wide v2

    const-wide/high16 v7, 0x4010

    cmpl-double v2, v2, v7

    if-lez v2, :cond_2

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mActualScale:D
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$200(Lcom/oppo/ImageScaleView/ActionHandler;)D

    move-result-wide v2

    const-wide/high16 v7, 0x4010

    sub-double/2addr v2, v7

    const-wide v7, 0x407c200000000000L

    mul-double/2addr v2, v7

    const-wide/high16 v7, 0x4010

    div-double/2addr v2, v7

    move/from16 v0, v18

    float-to-double v7, v0

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v18, v0

    .line 368
    const-wide/high16 v5, 0x4010

    goto/16 :goto_0

    .line 386
    .restart local v20       #preScale:F
    .restart local v23       #scale:F
    :cond_8
    const-wide/16 v2, 0x0

    cmpl-double v2, v5, v2

    if-eqz v2, :cond_9

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolS:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->computeScrollOffset()Z

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolS:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->getSpringValue()D

    move-result-wide v2

    double-to-float v14, v2

    .line 389
    .local v14, curScale:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    div-float v3, v14, v20

    #calls: Lcom/oppo/ImageScaleView/ActionHandler;->limitCurrentScale(F)F
    invoke-static {v2, v3}, Lcom/oppo/ImageScaleView/ActionHandler;->access$700(Lcom/oppo/ImageScaleView/ActionHandler;F)F

    move-result v23

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$800(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/graphics/Matrix;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$imageScalePoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$deltaX:F

    add-float/2addr v3, v4

    sub-float/2addr v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$imageScalePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->val$deltaY:F

    add-float/2addr v4, v7

    sub-float v4, v4, v16

    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 391
    move/from16 v20, v14

    .line 393
    .end local v14           #curScale:F
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mIsRequestReboundFinish:Z
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$600(Lcom/oppo/ImageScaleView/ActionHandler;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolS:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->isFinish()Z

    move-result v2

    if-nez v2, :cond_6

    .line 396
    :cond_a
    if-eqz v19, :cond_b

    .line 397
    const/4 v2, 0x0

    cmpl-float v2, v15, v2

    if-eqz v2, :cond_d

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolX:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$400(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->computeScrollOffset()Z

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolX:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$400(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->getSpringValue()D

    move-result-wide v2

    double-to-float v15, v2

    .line 403
    :goto_2
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-eqz v2, :cond_e

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolY:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$500(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->computeScrollOffset()Z

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolY:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$500(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->getSpringValue()D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v16, v0

    .line 410
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$800(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/graphics/Matrix;

    move-result-object v2

    sub-float v3, v21, v15

    sub-float v4, v22, v16

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 412
    move/from16 v21, v15

    .line 413
    move/from16 v22, v16

    .line 416
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mIsRequestReboundFinish:Z
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$600(Lcom/oppo/ImageScaleView/ActionHandler;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolS:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$300(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->isFinish()Z

    move-result v2

    if-nez v2, :cond_6

    .line 419
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$1000(Lcom/oppo/ImageScaleView/ActionHandler;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mRedrawCallback:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/oppo/ImageScaleView/ActionHandler;->access$900(Lcom/oppo/ImageScaleView/ActionHandler;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    invoke-static {}, Lcom/oppo/ImageScaleView/ThreadTools;->sleep()V

    goto/16 :goto_1

    .line 401
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolX:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$400(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->forceFinish()V

    goto :goto_2

    .line 407
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/ImageScaleView/ActionHandler$1;->this$0:Lcom/oppo/ImageScaleView/ActionHandler;

    #getter for: Lcom/oppo/ImageScaleView/ActionHandler;->mBezierScrollToolY:Lcom/oppo/ImageScaleView/BezierScrollTool;
    invoke-static {v2}, Lcom/oppo/ImageScaleView/ActionHandler;->access$500(Lcom/oppo/ImageScaleView/ActionHandler;)Lcom/oppo/ImageScaleView/BezierScrollTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/ImageScaleView/BezierScrollTool;->forceFinish()V

    goto :goto_3
.end method
