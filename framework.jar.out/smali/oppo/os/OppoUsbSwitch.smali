.class public Loppo/os/OppoUsbSwitch;
.super Ljava/lang/Object;
.source "OppoUsbSwitch.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "OppoUsbSwitch"

    sput-object v0, Loppo/os/OppoUsbSwitch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setChargingEnbaled(I)I
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 35
    if-ne p0, v2, :cond_0

    const-string v0, "false"

    const-string/jumbo v1, "ro.factorymode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string/jumbo v0, "sys.usb.config"

    const-string/jumbo v1, "mass_storage"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return v2
.end method

.method public static setFactoryModeEnbaled(I)I
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 27
    if-ne p0, v2, :cond_0

    const-string v0, "false"

    const-string/jumbo v1, "ro.factorymode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string/jumbo v0, "sys.usb.config"

    const-string v1, "diag,serial_tty,rmnet_smd,adb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    return v2
.end method

.method public static setRndisEnbaled(I)I
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 49
    if-ne p0, v2, :cond_0

    const-string v0, "false"

    const-string/jumbo v1, "ro.factorymode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo v0, "sys.usb.config"

    const-string/jumbo v1, "rndis"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    return v2
.end method

.method public static setSyncEnbaled(I)I
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 42
    if-ne p0, v2, :cond_0

    const-string v0, "false"

    const-string/jumbo v1, "ro.factorymode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string/jumbo v0, "sys.usb.config"

    const-string v1, "adb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return v2
.end method
