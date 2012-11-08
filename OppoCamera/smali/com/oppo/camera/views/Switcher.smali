.class public Lcom/oppo/camera/views/Switcher;
.super Landroid/widget/ImageView;
.source "Switcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/views/Switcher$OnSwitchListener;
    }
.end annotation


# instance fields
.field private mAnimationStartPosition:I

.field private mAnimationStartTime:J

.field private mListener:Lcom/oppo/camera/views/Switcher$OnSwitchListener;

.field private mPosition:I

.field private mSwitch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/views/Switcher;->mSwitch:Z

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/camera/views/Switcher;->mAnimationStartTime:J

    .line 60
    return-void
.end method

.method private startParkingAnimation()V
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/views/Switcher;->mAnimationStartTime:J

    .line 144
    iget v0, p0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    iput v0, p0, Lcom/oppo/camera/views/Switcher;->mAnimationStartPosition:I

    .line 145
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/oppo/camera/views/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 149
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 150
    .local v2, drawableHeight:I
    invoke-virtual {p0}, Lcom/oppo/camera/views/Switcher;->getHeight()I

    move-result v3

    .line 151
    .local v3, height:I
    invoke-virtual {p0}, Lcom/oppo/camera/views/Switcher;->getPaddingTop()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0}, Lcom/oppo/camera/views/Switcher;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v0, v5, v2

    .line 153
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 154
    .local v4, x:I
    invoke-virtual {p0}, Lcom/oppo/camera/views/Switcher;->getPaddingTop()I

    move-result v5

    sub-int v5, v4, v5

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    .line 155
    iget v5, p0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    if-gez v5, :cond_0

    const/4 v5, 0x0

    iput v5, p0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    .line 156
    :cond_0
    iget v5, p0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    if-le v5, v0, :cond_1

    iput v0, p0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/views/Switcher;->invalidate()V

    .line 158
    return-void
.end method

.method private tryToSetSwitch(Z)V
    .locals 1
    .parameter "onOff"

    .prologue
    .line 91
    :try_start_0
    iput-boolean p1, p0, Lcom/oppo/camera/views/Switcher;->mSwitch:Z

    .line 92
    iget-object v0, p0, Lcom/oppo/camera/views/Switcher;->mListener:Lcom/oppo/camera/views/Switcher$OnSwitchListener;

    invoke-interface {v0, p0}, Lcom/oppo/camera/views/Switcher$OnSwitchListener;->onSwitchChanged(Lcom/oppo/camera/views/Switcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-direct {p0}, Lcom/oppo/camera/views/Switcher;->startParkingAnimation()V

    .line 96
    return-void

    .line 94
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/oppo/camera/views/Switcher;->startParkingAnimation()V

    throw v0
.end method


# virtual methods
.method public getState()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/oppo/camera/views/Switcher;->mSwitch:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 164
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 165
    .local v5, drawableHeight:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 167
    .local v6, drawableWidth:I
    if-eqz v6, :cond_0

    if-nez v5, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/Switcher;->getHeight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/Switcher;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/Switcher;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int v1, v12, v5

    .line 173
    .local v1, available:I
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/oppo/camera/views/Switcher;->mAnimationStartTime:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-eqz v12, :cond_9

    .line 174
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    .line 175
    .local v10, time:J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/oppo/camera/views/Switcher;->mAnimationStartTime:J

    sub-long v12, v10, v12

    long-to-int v2, v12

    .line 176
    .local v2, deltaTime:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/camera/views/Switcher;->mAnimationStartPosition:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/camera/views/Switcher;->mSwitch:Z

    if-eqz v13, :cond_5

    .end local v2           #deltaTime:I
    :goto_1
    mul-int/lit16 v13, v2, 0xc8

    div-int/lit16 v13, v13, 0x3e8

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    .line 178
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    if-gez v12, :cond_2

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    .line 179
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    if-le v12, v1, :cond_3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    .line 180
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/camera/views/Switcher;->mSwitch:Z

    if-eqz v13, :cond_6

    .end local v1           #available:I
    :goto_2
    if-ne v12, v1, :cond_7

    const/4 v3, 0x1

    .line 181
    .local v3, done:Z
    :goto_3
    if-nez v3, :cond_8

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/Switcher;->invalidate()V

    .line 189
    .end local v3           #done:Z
    .end local v10           #time:J
    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/Switcher;->getPaddingTop()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    add-int v8, v12, v13

    .line 190
    .local v8, offsetTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/Switcher;->getWidth()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/Switcher;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/Switcher;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v7, v12, 0x2

    .line 192
    .local v7, offsetLeft:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v9

    .line 193
    .local v9, saveCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 194
    int-to-float v12, v7

    int-to-float v13, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 196
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 176
    .end local v7           #offsetLeft:I
    .end local v8           #offsetTop:I
    .end local v9           #saveCount:I
    .restart local v1       #available:I
    .restart local v2       #deltaTime:I
    .restart local v10       #time:J
    :cond_5
    neg-int v2, v2

    goto :goto_1

    .line 180
    .end local v2           #deltaTime:I
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .end local v1           #available:I
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 184
    .restart local v3       #done:Z
    :cond_8
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/oppo/camera/views/Switcher;->mAnimationStartTime:J

    goto :goto_4

    .line 186
    .end local v3           #done:Z
    .end local v10           #time:J
    .restart local v1       #available:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/views/Switcher;->isPressed()Z

    move-result v12

    if-nez v12, :cond_4

    .line 187
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oppo/camera/views/Switcher;->mSwitch:Z

    if-eqz v12, :cond_a

    .end local v1           #available:I
    :goto_5
    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    goto :goto_4

    .restart local v1       #available:I
    :cond_a
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 207
    invoke-virtual {p0, p2}, Lcom/oppo/camera/views/Switcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/oppo/camera/views/Switcher;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    :goto_0
    return v3

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/views/Switcher;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/camera/views/Switcher;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/oppo/camera/views/Switcher;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/oppo/camera/views/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v0, v1, v4

    .line 117
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    move v3, v2

    .line 139
    goto :goto_0

    .line 119
    :pswitch_0
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/oppo/camera/views/Switcher;->mAnimationStartTime:J

    .line 120
    invoke-virtual {p0, v2}, Lcom/oppo/camera/views/Switcher;->setPressed(Z)V

    .line 121
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 125
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 129
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/oppo/camera/views/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 130
    iget v1, p0, Lcom/oppo/camera/views/Switcher;->mPosition:I

    div-int/lit8 v4, v0, 0x2

    if-lt v1, v4, :cond_1

    move v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lcom/oppo/camera/views/Switcher;->tryToSetSwitch(Z)V

    .line 131
    invoke-virtual {p0, v3}, Lcom/oppo/camera/views/Switcher;->setPressed(Z)V

    goto :goto_1

    :cond_1
    move v1, v3

    .line 130
    goto :goto_2

    .line 135
    :pswitch_3
    iget-boolean v1, p0, Lcom/oppo/camera/views/Switcher;->mSwitch:Z

    invoke-direct {p0, v1}, Lcom/oppo/camera/views/Switcher;->tryToSetSwitch(Z)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/oppo/camera/views/Switcher;->setPressed(Z)V

    goto :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setCameraMode()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/views/Switcher;->setPressed(Z)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/views/Switcher;->mSwitch:Z

    .line 71
    return-void
.end method

.method public setOnSwitchListener(Lcom/oppo/camera/views/Switcher$OnSwitchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/oppo/camera/views/Switcher;->mListener:Lcom/oppo/camera/views/Switcher$OnSwitchListener;

    .line 108
    return-void
.end method

.method public setState(Z)V
    .locals 0
    .parameter "initalData"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/oppo/camera/views/Switcher;->mSwitch:Z

    .line 104
    return-void
.end method

.method public setVideoMode()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/oppo/camera/views/Switcher;->setPressed(Z)V

    .line 75
    iput-boolean v0, p0, Lcom/oppo/camera/views/Switcher;->mSwitch:Z

    .line 76
    return-void
.end method
