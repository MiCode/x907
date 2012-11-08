.class public Lcom/oppo/camera/views/RotateImageView;
.super Landroid/widget/ImageView;
.source "RotateImageView.java"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput v0, p0, Lcom/oppo/camera/views/RotateImageView;->mCurrentDegree:I

    .line 43
    iput v0, p0, Lcom/oppo/camera/views/RotateImageView;->mStartDegree:I

    .line 44
    iput v0, p0, Lcom/oppo/camera/views/RotateImageView;->mTargetDegree:I

    .line 46
    iput-boolean v0, p0, Lcom/oppo/camera/views/RotateImageView;->mClockwise:Z

    .line 48
    iput-wide v1, p0, Lcom/oppo/camera/views/RotateImageView;->mAnimationStartTime:J

    .line 49
    iput-wide v1, p0, Lcom/oppo/camera/views/RotateImageView;->mAnimationEndTime:J

    .line 53
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 93
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 97
    .local v4, bounds:Landroid/graphics/Rect;
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v16, v18, v19

    .line 98
    .local v16, w:I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v8, v18, v19

    .line 100
    .local v8, h:I
    if-eqz v16, :cond_0

    if-eqz v8, :cond_0

    .line 102
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/views/RotateImageView;->mCurrentDegree:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/views/RotateImageView;->mTargetDegree:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 104
    const-wide/16 v18, 0x8

    :try_start_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v13

    .line 109
    .local v13, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oppo/camera/views/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v13, v18

    if-gez v18, :cond_5

    .line 110
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oppo/camera/views/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v18, v0

    sub-long v18, v13, v18

    move-wide/from16 v0, v18

    long-to-int v6, v0

    .line 111
    .local v6, deltaTime:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/views/RotateImageView;->mStartDegree:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/camera/views/RotateImageView;->mClockwise:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .end local v6           #deltaTime:I
    :goto_2
    mul-int/lit16 v0, v6, 0x12c

    move/from16 v19, v0

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    add-int v5, v18, v19

    .line 113
    .local v5, degree:I
    if-ltz v5, :cond_4

    rem-int/lit16 v5, v5, 0x168

    .line 114
    :goto_3
    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/camera/views/RotateImageView;->mCurrentDegree:I

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/RotateImageView;->invalidate()V

    .line 120
    .end local v5           #degree:I
    .end local v13           #time:J
    :cond_2
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/RotateImageView;->getPaddingLeft()I

    move-result v10

    .line 121
    .local v10, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/RotateImageView;->getPaddingTop()I

    move-result v15

    .line 122
    .local v15, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/RotateImageView;->getPaddingRight()I

    move-result v11

    .line 123
    .local v11, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/RotateImageView;->getPaddingBottom()I

    move-result v3

    .line 124
    .local v3, bottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/RotateImageView;->getWidth()I

    move-result v18

    sub-int v18, v18, v10

    sub-int v17, v18, v11

    .line 125
    .local v17, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/RotateImageView;->getHeight()I

    move-result v18

    sub-int v18, v18, v15

    sub-int v9, v18, v3

    .line 127
    .local v9, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v12

    .line 128
    .local v12, saveCount:I
    new-instance v18, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v19, 0x0

    const/16 v20, 0x3

    invoke-direct/range {v18 .. v20}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 129
    div-int/lit8 v18, v17, 0x2

    add-int v18, v18, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, v9, 0x2

    add-int v19, v19, v15

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/views/RotateImageView;->mCurrentDegree:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 131
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    neg-int v0, v8

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 132
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 111
    .end local v3           #bottom:I
    .end local v9           #height:I
    .end local v10           #left:I
    .end local v11           #right:I
    .end local v12           #saveCount:I
    .end local v15           #top:I
    .end local v17           #width:I
    .restart local v6       #deltaTime:I
    .restart local v13       #time:J
    :cond_3
    neg-int v6, v6

    goto/16 :goto_2

    .line 113
    .end local v6           #deltaTime:I
    .restart local v5       #degree:I
    :cond_4
    rem-int/lit16 v0, v5, 0x168

    move/from16 v18, v0

    move/from16 v0, v18

    add-int/lit16 v5, v0, 0x168

    goto/16 :goto_3

    .line 117
    .end local v5           #degree:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/camera/views/RotateImageView;->mTargetDegree:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/camera/views/RotateImageView;->mCurrentDegree:I

    goto/16 :goto_4

    .line 105
    .end local v13           #time:J
    :catch_0
    move-exception v18

    goto/16 :goto_1
.end method

.method public setDegree(I)V
    .locals 5
    .parameter "degree"

    .prologue
    .line 68
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 69
    :goto_0
    iget v1, p0, Lcom/oppo/camera/views/RotateImageView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 87
    :goto_1
    return-void

    .line 68
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 71
    :cond_1
    iput p1, p0, Lcom/oppo/camera/views/RotateImageView;->mTargetDegree:I

    .line 72
    iget v1, p0, Lcom/oppo/camera/views/RotateImageView;->mCurrentDegree:I

    iput v1, p0, Lcom/oppo/camera/views/RotateImageView;->mStartDegree:I

    .line 73
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oppo/camera/views/RotateImageView;->mAnimationStartTime:J

    .line 75
    iget v1, p0, Lcom/oppo/camera/views/RotateImageView;->mTargetDegree:I

    iget v2, p0, Lcom/oppo/camera/views/RotateImageView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 76
    .local v0, diff:I
    if-ltz v0, :cond_3

    .line 80
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 82
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/oppo/camera/views/RotateImageView;->mClockwise:Z

    .line 83
    iget-wide v1, p0, Lcom/oppo/camera/views/RotateImageView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0x12c

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/oppo/camera/views/RotateImageView;->mAnimationEndTime:J

    .line 85
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateImageView;->invalidate()V

    goto :goto_1

    .line 76
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 82
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public setDegreeWithoutAnimation(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 57
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 58
    :goto_0
    iget v0, p0, Lcom/oppo/camera/views/RotateImageView;->mTargetDegree:I

    if-ne p1, v0, :cond_1

    .line 64
    :goto_1
    return-void

    .line 57
    :cond_0
    rem-int/lit16 v0, p1, 0x168

    add-int/lit16 p1, v0, 0x168

    goto :goto_0

    .line 60
    :cond_1
    iput p1, p0, Lcom/oppo/camera/views/RotateImageView;->mTargetDegree:I

    .line 61
    iget v0, p0, Lcom/oppo/camera/views/RotateImageView;->mCurrentDegree:I

    iput v0, p0, Lcom/oppo/camera/views/RotateImageView;->mStartDegree:I

    .line 62
    invoke-virtual {p0}, Lcom/oppo/camera/views/RotateImageView;->invalidate()V

    goto :goto_1
.end method
