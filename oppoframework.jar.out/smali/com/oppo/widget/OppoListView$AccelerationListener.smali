.class abstract Lcom/oppo/widget/OppoListView$AccelerationListener;
.super Ljava/lang/Object;
.source "OppoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AccelerationListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoListView$AccelerationListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field public static final ACCELERATION_REPORT_VALUE:I = 0x1f4


# instance fields
.field private mAcceleration:I

.field private mEnabled:Z

.field private mOldListener:Landroid/view/OrientationListener;

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field final synthetic this$0:Lcom/oppo/widget/OppoListView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoListView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1685
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoListView$AccelerationListener;-><init>(Lcom/oppo/widget/OppoListView;Landroid/content/Context;I)V

    .line 1686
    return-void
.end method

.method public constructor <init>(Lcom/oppo/widget/OppoListView;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "rate"

    .prologue
    const/4 v0, 0x0

    .line 1697
    iput-object p1, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1663
    iput v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mAcceleration:I

    .line 1665
    iput-boolean v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mEnabled:Z

    .line 1698
    const-string v0, "sensor"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1699
    iput p3, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mRate:I

    .line 1700
    iget-object v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mSensor:Landroid/hardware/Sensor;

    .line 1701
    iget-object v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 1703
    new-instance v0, Lcom/oppo/widget/OppoListView$AccelerationListener$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoListView$AccelerationListener$SensorEventListenerImpl;-><init>(Lcom/oppo/widget/OppoListView$AccelerationListener;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 1705
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoListView$AccelerationListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1662
    iget v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mAcceleration:I

    return v0
.end method

.method static synthetic access$1002(Lcom/oppo/widget/OppoListView$AccelerationListener;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1662
    iput p1, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mAcceleration:I

    return p1
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoListView$AccelerationListener;)Landroid/view/OrientationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mOldListener:Landroid/view/OrientationListener;

    return-object v0
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 1740
    :cond_0
    :goto_0
    return-void

    .line 1735
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mEnabled:Z

    goto :goto_0
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 1725
    :cond_0
    :goto_0
    return-void

    .line 1720
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mEnabled:Z

    if-nez v0, :cond_0

    .line 1722
    iget-object v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mEnabled:Z

    goto :goto_0
.end method

.method public abstract onAccelerationChanged(I)V
.end method

.method registerListener(Landroid/view/OrientationListener;)V
    .locals 0
    .parameter "lis"

    .prologue
    .line 1708
    iput-object p1, p0, Lcom/oppo/widget/OppoListView$AccelerationListener;->mOldListener:Landroid/view/OrientationListener;

    .line 1709
    return-void
.end method
