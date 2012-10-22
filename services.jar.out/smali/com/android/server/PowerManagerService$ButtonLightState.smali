.class Lcom/android/server/PowerManagerService$ButtonLightState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonLightState"
.end annotation


# instance fields
.field Enabled:Z

.field final Mask:I

.field Mode:I

.field Timeout:J

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;I)V
    .locals 2
    .parameter
    .parameter "mask"

    .prologue
    .line 3375
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Enabled:Z

    .line 3372
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    .line 3373
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Timeout:J

    .line 3376
    iput p2, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mask:I

    .line 3377
    return-void
.end method


# virtual methods
.method isEnabled()Z
    .locals 1

    .prologue
    .line 3398
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Enabled:Z

    return v0
.end method

.method isModeValid(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 3479
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 3487
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService$ButtonLightState;->setTargetLocked(I)V

    .line 3488
    return-void
.end method

.method setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 3380
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Enabled:Z

    if-ne v0, p1, :cond_0

    .line 3395
    :goto_0
    return-void

    .line 3384
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Enabled:Z

    .line 3385
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 3386
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Enabled:Z

    if-eqz v0, :cond_2

    .line 3387
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6700(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-gez v0, :cond_1

    .line 3388
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    const/16 v2, 0x64

    #setter for: Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$6702(Lcom/android/server/PowerManagerService;I)I

    .line 3394
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3392
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$6702(Lcom/android/server/PowerManagerService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method setModeLocked(IJ)V
    .locals 8
    .parameter "mode"
    .parameter "timeout"

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v6, 0x3

    .line 3439
    invoke-virtual {p0, p1}, Lcom/android/server/PowerManagerService$ButtonLightState;->isModeValid(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3476
    :cond_0
    :goto_0
    return-void

    .line 3443
    :cond_1
    iget v4, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    if-eq v4, p1, :cond_5

    move v0, v3

    .line 3444
    .local v0, modeChanged:Z
    :goto_1
    if-nez v0, :cond_2

    iget v4, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    if-ne v4, v6, :cond_0

    .line 3447
    :cond_2
    if-nez v0, :cond_3

    iget v4, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    if-ne v4, v6, :cond_3

    iget-wide v4, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Timeout:J

    cmp-long v4, v4, p2

    if-eqz v4, :cond_0

    .line 3451
    :cond_3
    iput p1, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    .line 3452
    iget v4, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    if-ne v4, v6, :cond_4

    .line 3453
    iput-wide p2, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Timeout:J

    .line 3456
    :cond_4
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3457
    iget v4, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    if-ne v4, v7, :cond_6

    .line 3458
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6800(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3459
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)F

    move-result v4

    float-to-int v2, v4

    .line 3460
    .local v2, value:I
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V
    invoke-static {v4, v3}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;Z)V

    .line 3462
    if-ltz v2, :cond_0

    .line 3463
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    const/high16 v4, -0x4080

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$6302(Lcom/android/server/PowerManagerService;F)F

    .line 3464
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V
    invoke-static {v3, v2}, Lcom/android/server/PowerManagerService;->access$5600(Lcom/android/server/PowerManagerService;I)V

    goto :goto_0

    .line 3443
    .end local v0           #modeChanged:Z
    .end local v2           #value:I
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 3469
    .restart local v0       #modeChanged:Z
    :cond_6
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)I

    move-result v1

    .line 3470
    .local v1, newState:I
    iget v4, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    if-eq v4, v3, :cond_7

    iget v3, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    if-ne v3, v6, :cond_8

    .line 3472
    :cond_7
    or-int/lit8 v1, v1, 0x4

    .line 3473
    :cond_8
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V
    invoke-static {v3, v1, v7}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;II)V

    goto :goto_0
.end method

.method setTargetLocked(I)V
    .locals 5
    .parameter "value"

    .prologue
    .line 3420
    if-gez p1, :cond_0

    .line 3421
    const/4 p1, 0x0

    .line 3424
    :cond_0
    iget v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3425
    const/4 p1, 0x0

    .line 3428
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    iget v1, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mask:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v0, v1, p1}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;II)V

    .line 3430
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3431
    iget v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 3432
    if-eqz p1, :cond_2

    .line 3433
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-wide v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Timeout:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Timeout:J

    :goto_0
    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3435
    :cond_2
    return-void

    .line 3433
    :cond_3
    const-wide/16 v0, 0x1770

    goto :goto_0
.end method

.method shouldHandleBitChange()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3402
    iget v1, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldHandleKey()Z
    .locals 2

    .prologue
    .line 3416
    iget v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldHandleScreenOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3408
    iget v1, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldHandleSensor()Z
    .locals 2

    .prologue
    .line 3412
    iget v0, p0, Lcom/android/server/PowerManagerService$ButtonLightState;->Mode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
