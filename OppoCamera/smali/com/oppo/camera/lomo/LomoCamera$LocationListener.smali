.class Lcom/oppo/camera/lomo/LomoCamera$LocationListener;
.super Ljava/lang/Object;
.source "LomoCamera.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/lomo/LomoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/oppo/camera/lomo/LomoCamera;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/lomo/LomoCamera;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "provider"

    .prologue
    .line 1890
    iput-object p1, p0, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;->this$0:Lcom/oppo/camera/lomo/LomoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;->mValid:Z

    .line 1891
    iput-object p2, p0, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;->mProvider:Ljava/lang/String;

    .line 1892
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 1893
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 1936
    iget-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .parameter "newLocation"

    .prologue
    const-wide/16 v2, 0x0

    .line 1896
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 1910
    :goto_0
    return-void

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 1909
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;->mValid:Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 1916
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;->mValid:Z

    .line 1917
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 1913
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 1920
    packed-switch p2, :pswitch_data_0

    .line 1933
    :goto_0
    return-void

    .line 1923
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/lomo/LomoCamera$LocationListener;->mValid:Z

    goto :goto_0

    .line 1920
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
