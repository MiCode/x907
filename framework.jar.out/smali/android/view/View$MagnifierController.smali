.class public Landroid/view/View$MagnifierController;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/view/View$FloatController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MagnifierController"
.end annotation


# static fields
.field private static final JITTER_THRESHOLD:F = 1.5f


# instance fields
.field private final mHider:Ljava/lang/Runnable;

.field private mLastRawX:F

.field private mLastRawY:F

.field private mLastX:F

.field private mLastY:F

.field private final mMagnifier:Landroid/view/View$MagnifierView;

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 16081
    iput-object p1, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16075
    new-instance v0, Landroid/view/View$MagnifierController$1;

    invoke-direct {v0, p0}, Landroid/view/View$MagnifierController$1;-><init>(Landroid/view/View$MagnifierController;)V

    iput-object v0, p0, Landroid/view/View$MagnifierController;->mHider:Ljava/lang/Runnable;

    .line 16082
    new-instance v0, Landroid/view/View$MagnifierView;

    #getter for: Landroid/view/View;->mMagnifierWidth:I
    invoke-static {p1}, Landroid/view/View;->access$2700(Landroid/view/View;)I

    move-result v1

    #getter for: Landroid/view/View;->mMagnifierHeight:I
    invoke-static {p1}, Landroid/view/View;->access$2800(Landroid/view/View;)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Landroid/view/View$MagnifierView;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Landroid/view/View$MagnifierController;->mMagnifier:Landroid/view/View$MagnifierView;

    .line 16083
    #getter for: Landroid/view/View;->mMagnifierScale:F
    invoke-static {p1}, Landroid/view/View;->access$2900(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View$MagnifierController;->setScale(F)V

    .line 16084
    return-void
.end method

.method private checkForJitter(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v6, 0x3fc0

    .line 16157
    iget v5, p0, Landroid/view/View$MagnifierController;->mLastX:F

    sub-float v1, v5, p1

    .line 16158
    .local v1, xdiff:F
    iget v5, p0, Landroid/view/View$MagnifierController;->mLastY:F

    sub-float v2, v5, p2

    .line 16159
    .local v2, ydiff:F
    cmpl-float v5, v1, v6

    if-gtz v5, :cond_0

    neg-float v5, v1

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    cmpl-float v5, v2, v6

    if-gtz v5, :cond_0

    neg-float v5, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    :cond_0
    move v0, v3

    .line 16162
    .local v0, notJitter:Z
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return v3

    .end local v0           #notJitter:Z
    :cond_1
    move v0, v4

    .line 16159
    goto :goto_0

    .restart local v0       #notJitter:Z
    :cond_2
    move v3, v4

    .line 16162
    goto :goto_1
.end method

.method private hideDelayed(I)V
    .locals 4
    .parameter "msec"

    .prologue
    .line 16134
    iget-object v0, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    iget-object v1, p0, Landroid/view/View$MagnifierController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16135
    iget-object v0, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    iget-object v1, p0, Landroid/view/View$MagnifierController;->mHider:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16136
    return-void
.end method

.method private hideWithCallbacks()V
    .locals 2

    .prologue
    .line 16123
    invoke-virtual {p0}, Landroid/view/View$MagnifierController;->isShowing()Z

    move-result v0

    .line 16125
    .local v0, showing:Z
    invoke-virtual {p0}, Landroid/view/View$MagnifierController;->hide()V

    .line 16127
    if-nez v0, :cond_0

    .line 16131
    :goto_0
    return-void

    .line 16130
    :cond_0
    iget-object v1, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->onMagnifierHide(Landroid/view/View$FloatController;)V

    goto :goto_0
.end method

.method private setAnimationStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 16143
    iget-object v0, p0, Landroid/view/View$MagnifierController;->mMagnifier:Landroid/view/View$MagnifierView;

    invoke-virtual {v0, p1}, Landroid/view/View$MagnifierView;->setAnimationStyle(I)V

    .line 16144
    return-void
.end method

.method private updatePosition(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 16147
    iget-object v0, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->onMagnifierUpdate(Landroid/view/View$FloatController;II)V

    .line 16149
    invoke-virtual {p0}, Landroid/view/View$MagnifierController;->updatePosition()V

    .line 16150
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 16111
    iget-object v0, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    iget-object v1, p0, Landroid/view/View$MagnifierController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16113
    invoke-virtual {p0}, Landroid/view/View$MagnifierController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 16120
    :cond_0
    :goto_0
    return-void

    .line 16116
    :cond_1
    iget-object v0, p0, Landroid/view/View$MagnifierController;->mMagnifier:Landroid/view/View$MagnifierView;

    invoke-virtual {v0}, Landroid/view/View$MagnifierView;->hide()V

    .line 16118
    iget-object v0, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mMagnifierInterceptTouch:Z
    invoke-static {v0}, Landroid/view/View;->access$3100(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16119
    iget-object v0, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlwaysDeliverTouchToTarget(Z)V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 16139
    iget-object v0, p0, Landroid/view/View$MagnifierController;->mMagnifier:Landroid/view/View$MagnifierView;

    invoke-virtual {v0}, Landroid/view/View$MagnifierView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 16233
    iget-object v0, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->onMagnifierDetached(Landroid/view/View$FloatController;)V

    .line 16235
    iget-object v0, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    iget-object v1, p0, Landroid/view/View$MagnifierController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16236
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 16168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 16222
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View$MagnifierController;->isShowing()Z

    move-result v5

    return v5

    .line 16170
    :pswitch_0
    iget-object v5, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mTempCoords:[I
    invoke-static {v5}, Landroid/view/View;->access$3300(Landroid/view/View;)[I

    move-result-object v0

    .line 16171
    .local v0, coors:[I
    iget-object v5, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 16173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 16174
    .local v1, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 16175
    .local v2, rawY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 16176
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 16179
    .local v4, y:F
    iput v3, p0, Landroid/view/View$MagnifierController;->mLastX:F

    iput v4, p0, Landroid/view/View$MagnifierController;->mLastY:F

    .line 16180
    iput v1, p0, Landroid/view/View$MagnifierController;->mLastRawX:F

    iput v2, p0, Landroid/view/View$MagnifierController;->mLastRawY:F

    .line 16182
    iget-object v5, p0, Landroid/view/View$MagnifierController;->mMagnifier:Landroid/view/View$MagnifierView;

    aget v6, v0, v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    aget v7, v0, v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    #calls: Landroid/view/View$MagnifierView;->moveTo(FFFF)V
    invoke-static {v5, v1, v2, v6, v7}, Landroid/view/View$MagnifierView;->access$3400(Landroid/view/View$MagnifierView;FFFF)V

    .line 16183
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroid/view/View$MagnifierController;->updatePosition(II)V

    goto :goto_0

    .line 16189
    .end local v0           #coors:[I
    .end local v1           #rawX:F
    .end local v2           #rawY:F
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_1
    iget-object v5, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mTempCoords:[I
    invoke-static {v5}, Landroid/view/View;->access$3300(Landroid/view/View;)[I

    move-result-object v0

    .line 16190
    .restart local v0       #coors:[I
    iget-object v5, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 16192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 16193
    .restart local v1       #rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 16194
    .restart local v2       #rawY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 16195
    .restart local v3       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 16197
    .restart local v4       #y:F
    invoke-direct {p0, v3, v4}, Landroid/view/View$MagnifierController;->checkForJitter(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 16198
    iget v3, p0, Landroid/view/View$MagnifierController;->mLastX:F

    iget v4, p0, Landroid/view/View$MagnifierController;->mLastY:F

    .line 16199
    iget v1, p0, Landroid/view/View$MagnifierController;->mLastRawX:F

    iget v2, p0, Landroid/view/View$MagnifierController;->mLastRawY:F

    .line 16207
    :goto_1
    iget-object v5, p0, Landroid/view/View$MagnifierController;->mMagnifier:Landroid/view/View$MagnifierView;

    aget v6, v0, v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    aget v7, v0, v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    #calls: Landroid/view/View$MagnifierView;->moveTo(FFFF)V
    invoke-static {v5, v1, v2, v6, v7}, Landroid/view/View$MagnifierView;->access$3400(Landroid/view/View$MagnifierView;FFFF)V

    .line 16208
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroid/view/View$MagnifierController;->updatePosition(II)V

    goto/16 :goto_0

    .line 16203
    :cond_1
    iput v3, p0, Landroid/view/View$MagnifierController;->mLastX:F

    iput v4, p0, Landroid/view/View$MagnifierController;->mLastY:F

    .line 16204
    iput v1, p0, Landroid/view/View$MagnifierController;->mLastRawX:F

    iput v2, p0, Landroid/view/View$MagnifierController;->mLastRawY:F

    goto :goto_1

    .line 16216
    .end local v0           #coors:[I
    .end local v1           #rawX:F
    .end local v2           #rawY:F
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View$MagnifierController;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 16217
    invoke-direct {p0}, Landroid/view/View$MagnifierController;->hideWithCallbacks()V

    goto/16 :goto_0

    .line 16168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    .line 16226
    if-nez p1, :cond_0

    .line 16227
    invoke-virtual {p0}, Landroid/view/View$MagnifierController;->hide()V

    .line 16229
    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 16092
    iget-object v0, p0, Landroid/view/View$MagnifierController;->mMagnifier:Landroid/view/View$MagnifierView;

    invoke-virtual {v0, p1}, Landroid/view/View$MagnifierView;->setScale(F)V

    .line 16093
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 16096
    invoke-virtual {p0}, Landroid/view/View$MagnifierController;->updatePosition()V

    .line 16098
    invoke-virtual {p0}, Landroid/view/View$MagnifierController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16108
    :cond_0
    :goto_0
    return-void

    .line 16101
    :cond_1
    iget-object v0, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->onMagnifierShow(Landroid/view/View$FloatController;)V

    .line 16103
    iget-object v0, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mMagnifierAnimationStyle:I
    invoke-static {v0}, Landroid/view/View;->access$3000(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/View$MagnifierController;->setAnimationStyle(I)V

    .line 16104
    iget-object v0, p0, Landroid/view/View$MagnifierController;->mMagnifier:Landroid/view/View$MagnifierView;

    invoke-virtual {v0}, Landroid/view/View$MagnifierView;->show()V

    .line 16106
    iget-object v0, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mMagnifierInterceptTouch:Z
    invoke-static {v0}, Landroid/view/View;->access$3100(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16107
    iget-object v0, p0, Landroid/view/View$MagnifierController;->this$0:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlwaysDeliverTouchToTarget(Z)V

    goto :goto_0
.end method

.method public updatePosition()V
    .locals 1

    .prologue
    .line 16153
    iget-object v0, p0, Landroid/view/View$MagnifierController;->mMagnifier:Landroid/view/View$MagnifierView;

    #calls: Landroid/view/View$MagnifierView;->moveTo()V
    invoke-static {v0}, Landroid/view/View$MagnifierView;->access$3200(Landroid/view/View$MagnifierView;)V

    .line 16154
    return-void
.end method
