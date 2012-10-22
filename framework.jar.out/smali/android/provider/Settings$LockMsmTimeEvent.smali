.class public final Landroid/provider/Settings$LockMsmTimeEvent;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LockMsmTimeEvent"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final LOCKMSMTIME_VALUE:Ljava/lang/String; = "lockmsmtime_value"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String; = null

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_lockmsmt_version"

.field private static final TAG:Ljava/lang/String; = "LockMsmTimeEvent"

.field private static sNameValueCache:Landroid/provider/Settings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5375
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Settings$LockMsmTimeEvent;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 5409
    const-string v0, "content://settings/lockmsmtime"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$LockMsmTimeEvent;->CONTENT_URI:Landroid/net/Uri;

    .line 5418
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "lockmsmtime_value"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$LockMsmTimeEvent;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5370
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized getLockMsmTimeValue(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 5
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 5387
    const-class v1, Landroid/provider/Settings$LockMsmTimeEvent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/provider/Settings$LockMsmTimeEvent;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    if-nez v0, :cond_0

    .line 5388
    new-instance v0, Landroid/provider/Settings$NameValueCache;

    const-string/jumbo v2, "sys.settings_lockmsmt_version"

    sget-object v3, Landroid/provider/Settings$LockMsmTimeEvent;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "GET_lockmsmtime"

    invoke-direct {v0, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$LockMsmTimeEvent;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 5391
    :cond_0
    sget-object v0, Landroid/provider/Settings$LockMsmTimeEvent;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1}, Landroid/provider/Settings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 5387
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static putLockMsmTimeValue(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 3
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 5402
    const-string v0, "LockMsmTimeEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putLockMsmTimeValue -- value ---------------------------- == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5403
    sget-object v0, Landroid/provider/Settings$LockMsmTimeEvent;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$LockMsmTimeEvent;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method