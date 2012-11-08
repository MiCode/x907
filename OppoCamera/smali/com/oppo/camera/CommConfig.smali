.class public Lcom/oppo/camera/CommConfig;
.super Landroid/app/Application;
.source "CommConfig.java"


# static fields
.field public static CAMERA_SETTING_SHAREPREFERENCE:Ljava/lang/String;

.field public static EXTERNAL_IMG_PATH:Ljava/lang/String;

.field public static EXTERNAL_LOMO_IMG_PATH:Ljava/lang/String;

.field public static EXTERNAL_VID_PATH:Ljava/lang/String;

.field public static INTERNAL_IMG_PATH:Ljava/lang/String;

.field public static INTERNAL_LOMO_IMG_PATH:Ljava/lang/String;

.field public static INTERNAL_VID_PATH:Ljava/lang/String;


# instance fields
.field private mCameraSettings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "camera_settings_share_preference"

    sput-object v0, Lcom/oppo/camera/CommConfig;->CAMERA_SETTING_SHAREPREFERENCE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    sget-object v0, Lcom/oppo/camera/CommConfig;->CAMERA_SETTING_SHAREPREFERENCE:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/CommConfig;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/CommConfig;->mCameraSettings:Landroid/content/SharedPreferences;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/CommConfig;->INTERNAL_LOMO_IMG_PATH:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/CommConfig;->EXTERNAL_LOMO_IMG_PATH:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/CommConfig;->INTERNAL_IMG_PATH:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/CommConfig;->EXTERNAL_IMG_PATH:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/CommConfig;->INTERNAL_VID_PATH:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/CommConfig;->EXTERNAL_VID_PATH:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static instance(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 25
    invoke-direct {p0, p0}, Lcom/oppo/camera/CommConfig;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method
