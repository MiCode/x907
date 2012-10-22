.class Landroid/hardware/SensorManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SensorManager$ListenerDelegate;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/SensorManager$ListenerDelegate;

.field final synthetic val$this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/SensorManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iput-object p3, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->val$this$0:Landroid/hardware/SensorManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 562
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/SensorEvent;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .local v3, t:Landroid/hardware/SensorEvent;
    iget-object v4, v3, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    .line 570
    .local v2, handle:I
    iget-object v4, v3, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 583
    iget-object v4, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v4, v4, Landroid/hardware/SensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 584
    iget-object v4, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v4, v4, Landroid/hardware/SensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 585
    iget-object v4, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v4}, Landroid/hardware/SensorManager$ListenerDelegate;->access$100(Landroid/hardware/SensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v4

    iget-object v5, v3, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    invoke-interface {v4, v5, v6}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 591
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v4}, Landroid/hardware/SensorManager$ListenerDelegate;->access$100(Landroid/hardware/SensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 592
    invoke-static {}, Landroid/hardware/SensorManager;->access$200()Landroid/hardware/SensorManager$SensorEventPool;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager$SensorEventPool;->returnToPool(Landroid/hardware/SensorEvent;)V

    .line 593
    .end local v2           #handle:I
    .end local v3           #t:Landroid/hardware/SensorEvent;
    :goto_1
    return-void

    .line 563
    :catch_0
    move-exception v1

    .line 564
    .local v1, exec:Ljava/lang/ClassCastException;
    const-string v4, "SensorManager"

    const-string v5, "ListenerDelegate.mHandler.handleMessage:msg.obj cast to SensorEvent exception!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 575
    .end local v1           #exec:Ljava/lang/ClassCastException;
    .restart local v2       #handle:I
    .restart local v3       #t:Landroid/hardware/SensorEvent;
    :pswitch_0
    iget-object v4, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v4, v4, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 576
    .local v0, accuracy:I
    iget v4, v3, Landroid/hardware/SensorEvent;->accuracy:I

    if-ltz v4, :cond_0

    iget v4, v3, Landroid/hardware/SensorEvent;->accuracy:I

    if-eq v0, v4, :cond_0

    .line 577
    iget-object v4, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v4, v4, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    iget v5, v3, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 578
    iget-object v4, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v4}, Landroid/hardware/SensorManager$ListenerDelegate;->access$100(Landroid/hardware/SensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v4

    iget-object v5, v3, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v6, v3, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-interface {v4, v5, v6}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
