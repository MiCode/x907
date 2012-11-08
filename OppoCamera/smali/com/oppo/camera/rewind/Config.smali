.class public Lcom/oppo/camera/rewind/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static backgroundSelectionEnabled:Z

.field public static burstSize:I

.field public static externalViewer:Ljava/lang/String;

.field public static previewCallbacksEnabled:Z

.field public static previewEnabled:Z

.field public static rewindMode:I

.field public static saveEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 9
    const/4 v0, 0x5

    sput v0, Lcom/oppo/camera/rewind/Config;->burstSize:I

    .line 10
    sput-boolean v1, Lcom/oppo/camera/rewind/Config;->previewEnabled:Z

    .line 11
    sput-boolean v1, Lcom/oppo/camera/rewind/Config;->backgroundSelectionEnabled:Z

    .line 12
    sput-boolean v1, Lcom/oppo/camera/rewind/Config;->saveEnabled:Z

    .line 14
    const-string v0, "com.scalado.applications.TestOpenGL"

    sput-object v0, Lcom/oppo/camera/rewind/Config;->externalViewer:Ljava/lang/String;

    .line 16
    sput v2, Lcom/oppo/camera/rewind/Config;->rewindMode:I

    .line 17
    sput-boolean v2, Lcom/oppo/camera/rewind/Config;->previewCallbacksEnabled:Z

    .line 23
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Blaze generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Full Android on Blaze or SDP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    :cond_0
    const/16 v0, 0xb

    sput v0, Lcom/oppo/camera/rewind/Config;->burstSize:I

    .line 28
    :cond_1
    :goto_0
    return-void

    .line 25
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "myTouch_4G_Slide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
