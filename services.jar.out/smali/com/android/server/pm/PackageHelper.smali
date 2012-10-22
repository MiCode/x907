.class public Lcom/android/server/pm/PackageHelper;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PackageHelper"

.field private static sPackageHelper:Lcom/android/server/pm/PackageHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static instance()Lcom/android/server/pm/PackageHelper;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/server/pm/PackageHelper;->sPackageHelper:Lcom/android/server/pm/PackageHelper;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/android/server/pm/PackageHelper;

    invoke-direct {v0}, Lcom/android/server/pm/PackageHelper;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageHelper;->sPackageHelper:Lcom/android/server/pm/PackageHelper;

    .line 29
    :cond_0
    sget-object v0, Lcom/android/server/pm/PackageHelper;->sPackageHelper:Lcom/android/server/pm/PackageHelper;

    return-object v0
.end method


# virtual methods
.method public isSystemUid(Ljava/lang/String;)Z
    .locals 1
    .parameter "uidname"

    .prologue
    .line 20
    const-string v0, "oppo.uid.nearme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
