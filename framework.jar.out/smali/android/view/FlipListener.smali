.class public Landroid/view/FlipListener;
.super Ljava/lang/Object;
.source "FlipListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FlipListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field public static final FLIPPED:Ljava/lang/String; = "device_flipped"

.field public static final FLIP_TO_GROUND:I = 0x1

.field public static final FLIP_TO_SKY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FlipListener"

.field private static final localLOGV:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/view/FlipListener$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/FlipListener;-><init>(Landroid/content/Context;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "rate"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/FlipListener;->mEnabled:Z

    .line 54
    iput-object p1, p0, Landroid/view/FlipListener;->mContext:Landroid/content/Context;

    .line 55
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/view/FlipListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 57
    iput p2, p0, Landroid/view/FlipListener;->mRate:I

    .line 58
    iget-object v0, p0, Landroid/view/FlipListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/FlipListener;->mSensor:Landroid/hardware/Sensor;

    .line 59
    iget-object v0, p0, Landroid/view/FlipListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Landroid/view/FlipListener$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Landroid/view/FlipListener$SensorEventListenerImpl;-><init>(Landroid/view/FlipListener;)V

    iput-object v0, p0, Landroid/view/FlipListener;->mSensorEventListener:Landroid/view/FlipListener$SensorEventListenerImpl;

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/view/FlipListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/FlipListener;->notifyFlipped(Z)V

    return-void
.end method

.method private notifyFlipped(Z)V
    .locals 2
    .parameter "toSky"

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "device_flipped"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Landroid/view/FlipListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    return-void

    .line 120
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Landroid/view/FlipListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 90
    const-string v0, "FlipListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-boolean v0, p0, Landroid/view/FlipListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Landroid/view/FlipListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/FlipListener;->mSensorEventListener:Landroid/view/FlipListener$SensorEventListenerImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/FlipListener;->mEnabled:Z

    goto :goto_0
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Landroid/view/FlipListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 71
    const-string v0, "FlipListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-boolean v0, p0, Landroid/view/FlipListener;->mEnabled:Z

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Landroid/view/FlipListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/FlipListener;->mSensorEventListener:Landroid/view/FlipListener$SensorEventListenerImpl;

    iget-object v2, p0, Landroid/view/FlipListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Landroid/view/FlipListener;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/FlipListener;->mEnabled:Z

    goto :goto_0
.end method

.method public setValidFlipDuration(J)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/view/FlipListener;->mSensorEventListener:Landroid/view/FlipListener$SensorEventListenerImpl;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Landroid/view/FlipListener;->mSensorEventListener:Landroid/view/FlipListener$SensorEventListenerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/view/FlipListener$SensorEventListenerImpl;->setDetectOverTime(J)V

    .line 113
    :cond_0
    return-void
.end method
