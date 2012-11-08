.class Lcom/oppo/camera/setting/SettingMenuBase$Mutex;
.super Ljava/lang/Object;
.source "SettingMenuBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/setting/SettingMenuBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Mutex"
.end annotation


# static fields
.field private static mLockKey:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lock(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 310
    sget-object v0, Lcom/oppo/camera/setting/SettingMenuBase$Mutex;->mLockKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/setting/SettingMenuBase$Mutex;->mLockKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    :cond_0
    sput-object p0, Lcom/oppo/camera/setting/SettingMenuBase$Mutex;->mLockKey:Ljava/lang/String;

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unLock()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/camera/setting/SettingMenuBase$Mutex;->mLockKey:Ljava/lang/String;

    .line 320
    return-void
.end method
