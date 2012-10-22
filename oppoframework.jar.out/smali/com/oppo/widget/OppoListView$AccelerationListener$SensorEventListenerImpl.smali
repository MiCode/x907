.class Lcom/oppo/widget/OppoListView$AccelerationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "OppoListView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoListView$AccelerationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final _DATA_X:I = 0x0

.field private static final _DATA_Y:I = 0x1

.field private static final _DATA_Z:I = 0x2


# instance fields
.field final synthetic this$1:Lcom/oppo/widget/OppoListView$AccelerationListener;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoListView$AccelerationListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1742
    iput-object p1, p0, Lcom/oppo/widget/OppoListView$AccelerationListener$SensorEventListenerImpl;->this$1:Lcom/oppo/widget/OppoListView$AccelerationListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1772
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 1748
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 1749
    .local v4, values:[F
    const/4 v3, 0x0

    .line 1750
    .local v3, acceleration:I
    const/4 v5, 0x0

    aget v5, v4, v5

    neg-float v0, v5

    .line 1751
    .local v0, X:F
    aget v5, v4, v7

    neg-float v1, v5

    .line 1752
    .local v1, Y:F
    const/4 v5, 0x2

    aget v5, v4, v5

    neg-float v2, v5

    .line 1756
    .local v2, Z:F
    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 1759
    iget-object v5, p0, Lcom/oppo/widget/OppoListView$AccelerationListener$SensorEventListenerImpl;->this$1:Lcom/oppo/widget/OppoListView$AccelerationListener;

    #getter for: Lcom/oppo/widget/OppoListView$AccelerationListener;->mOldListener:Landroid/view/OrientationListener;
    invoke-static {v5}, Lcom/oppo/widget/OppoListView$AccelerationListener;->access$900(Lcom/oppo/widget/OppoListView$AccelerationListener;)Landroid/view/OrientationListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1760
    iget-object v5, p0, Lcom/oppo/widget/OppoListView$AccelerationListener$SensorEventListenerImpl;->this$1:Lcom/oppo/widget/OppoListView$AccelerationListener;

    #getter for: Lcom/oppo/widget/OppoListView$AccelerationListener;->mOldListener:Landroid/view/OrientationListener;
    invoke-static {v5}, Lcom/oppo/widget/OppoListView$AccelerationListener;->access$900(Lcom/oppo/widget/OppoListView$AccelerationListener;)Landroid/view/OrientationListener;

    move-result-object v5

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v5, v7, v6}, Landroid/view/OrientationListener;->onSensorChanged(I[F)V

    .line 1762
    :cond_0
    iget-object v5, p0, Lcom/oppo/widget/OppoListView$AccelerationListener$SensorEventListenerImpl;->this$1:Lcom/oppo/widget/OppoListView$AccelerationListener;

    #getter for: Lcom/oppo/widget/OppoListView$AccelerationListener;->mAcceleration:I
    invoke-static {v5}, Lcom/oppo/widget/OppoListView$AccelerationListener;->access$1000(Lcom/oppo/widget/OppoListView$AccelerationListener;)I

    move-result v5

    if-eq v3, v5, :cond_2

    .line 1763
    iget-object v5, p0, Lcom/oppo/widget/OppoListView$AccelerationListener$SensorEventListenerImpl;->this$1:Lcom/oppo/widget/OppoListView$AccelerationListener;

    #getter for: Lcom/oppo/widget/OppoListView$AccelerationListener;->mAcceleration:I
    invoke-static {v5}, Lcom/oppo/widget/OppoListView$AccelerationListener;->access$1000(Lcom/oppo/widget/OppoListView$AccelerationListener;)I

    move-result v5

    sub-int v5, v3, v5

    const/16 v6, 0x1f4

    if-lt v5, v6, :cond_1

    .line 1764
    iget-object v5, p0, Lcom/oppo/widget/OppoListView$AccelerationListener$SensorEventListenerImpl;->this$1:Lcom/oppo/widget/OppoListView$AccelerationListener;

    invoke-virtual {v5, v3}, Lcom/oppo/widget/OppoListView$AccelerationListener;->onAccelerationChanged(I)V

    .line 1766
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/OppoListView$AccelerationListener$SensorEventListenerImpl;->this$1:Lcom/oppo/widget/OppoListView$AccelerationListener;

    #setter for: Lcom/oppo/widget/OppoListView$AccelerationListener;->mAcceleration:I
    invoke-static {v5, v3}, Lcom/oppo/widget/OppoListView$AccelerationListener;->access$1002(Lcom/oppo/widget/OppoListView$AccelerationListener;I)I

    .line 1768
    :cond_2
    return-void
.end method
