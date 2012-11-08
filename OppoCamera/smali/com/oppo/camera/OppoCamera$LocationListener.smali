.class Lcom/oppo/camera/OppoCamera$LocationListener;
.super Ljava/lang/Object;
.source "OppoCamera.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/OppoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/oppo/camera/OppoCamera;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/OppoCamera;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "provider"

    .prologue
    .line 2251
    iput-object p1, p0, Lcom/oppo/camera/OppoCamera$LocationListener;->this$0:Lcom/oppo/camera/OppoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/OppoCamera$LocationListener;->mValid:Z

    .line 2252
    iput-object p2, p0, Lcom/oppo/camera/OppoCamera$LocationListener;->mProvider:Ljava/lang/String;

    .line 2253
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/oppo/camera/OppoCamera$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/OppoCamera$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 2254
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 2282
    iget-boolean v0, p0, Lcom/oppo/camera/OppoCamera$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$LocationListener;->mLastLocation:Landroid/location/Location;

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

    .line 2257
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 2262
    :goto_0
    return-void

    .line 2260
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/OppoCamera$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 2261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/OppoCamera$LocationListener;->mValid:Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 2268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/OppoCamera$LocationListener;->mValid:Z

    .line 2269
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 2265
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 2272
    packed-switch p2, :pswitch_data_0

    .line 2279
    :goto_0
    return-void

    .line 2275
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/OppoCamera$LocationListener;->mValid:Z

    goto :goto_0

    .line 2272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
