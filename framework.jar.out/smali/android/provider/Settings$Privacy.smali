.class public final Landroid/provider/Settings$Privacy;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Privacy"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final FILE_ENCRYPT_CONTENT_URI:Landroid/net/Uri; = null

.field public static final FILE_ENCRYPT_STATUS:Ljava/lang/String; = "file_encrypt_status"

.field public static final FILE_PASSWORD:Ljava/lang/String; = "file_password"

.field public static final PRIVACY_PROTECT_STATUS:Ljava/lang/String; = "privacy_protect_status"

.field public static final PRIVATE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final PRIVATE_PASSWORD:Ljava/lang/String; = "private_password"

.field public static final RESTORE_FACTORY_PASSWORD:Ljava/lang/String; = "restore_factory_password"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String; = null

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_privacy_version"

.field private static final TAG:Ljava/lang/String; = "Privacy"

.field private static sNameValueCache:Landroid/provider/Settings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4919
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Settings$Privacy;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 5021
    const-string v0, "content://settings/privacy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Privacy;->CONTENT_URI:Landroid/net/Uri;

    .line 5027
    const-string v0, "content://file/fileencrypt"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Privacy;->FILE_ENCRYPT_CONTENT_URI:Landroid/net/Uri;

    .line 5035
    const-string v0, "content://settings/private"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Privacy;->PRIVATE_CONTENT_URI:Landroid/net/Uri;

    .line 5074
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "private_password"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "file_password"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "file_encrypt_status"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "privacy_protect_status"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "restore_factory_password"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$Privacy;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4914
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method private static canActivityProtected(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "context"
    .parameter "componentName"

    .prologue
    const/4 v3, 0x0

    .line 5331
    if-nez p1, :cond_1

    .line 5332
    const-string v4, "Privacy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t use componentName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with null value! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5355
    :cond_0
    :goto_0
    return v3

    .line 5336
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 5337
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    if-nez v2, :cond_2

    .line 5338
    const-string v4, "Privacy"

    const-string v5, "Can\'t get PackageManager "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5342
    :cond_2
    const/4 v0, 0x0

    .line 5344
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 5345
    if-nez v0, :cond_3

    .line 5346
    const-string v4, "Privacy"

    const-string v5, "Can\'t get ActivityInfo of the target class."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5350
    :catch_0
    move-exception v1

    .line 5351
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Privacy"

    const-string v5, "PackageManager catch NameNotFoundException."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5355
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    iget v4, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static cancelFileEncrypted(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 5
    .parameter "cr"
    .parameter "path"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5177
    sget-object v2, Landroid/provider/Settings$Privacy;->FILE_ENCRYPT_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "path=?"

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 5181
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static checkFilePassword(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter "cr"
    .parameter "password"

    .prologue
    .line 5123
    const-string v1, "file_password"

    invoke-static {p0, v1}, Landroid/provider/Settings$Privacy;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5124
    .local v0, stored_password:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 5125
    :cond_0
    const/4 v1, 0x0

    .line 5126
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static getFileEncryptToggle(Landroid/content/ContentResolver;)Z
    .locals 3
    .parameter "cr"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5137
    const-string v2, "file_encrypt_status"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Privacy;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4993
    invoke-static {p0, p1}, Landroid/provider/Settings$Privacy;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4995
    .local v1, v:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4996
    :catch_0
    move-exception v0

    .line 4997
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 4965
    invoke-static {p0, p1}, Landroid/provider/Settings$Privacy;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4967
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 4969
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 4968
    .restart local p2
    :catch_0
    move-exception v0

    .line 4969
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getPrivacyProtectToggle(Landroid/content/ContentResolver;)Z
    .locals 3
    .parameter "cr"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5148
    const-string/jumbo v2, "privacy_protect_status"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Privacy;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 4931
    const-class v1, Landroid/provider/Settings$Privacy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/provider/Settings$Privacy;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    if-nez v0, :cond_0

    .line 4932
    new-instance v0, Landroid/provider/Settings$NameValueCache;

    const-string/jumbo v2, "sys.settings_privacy_version"

    sget-object v3, Landroid/provider/Settings$Privacy;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "GET_privacy"

    invoke-direct {v0, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Privacy;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 4935
    :cond_0
    sget-object v0, Landroid/provider/Settings$Privacy;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1}, Landroid/provider/Settings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 4931
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static hasComponentProtected(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 11
    .parameter "context"
    .parameter "componentName"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5290
    if-nez p1, :cond_0

    .line 5291
    const-string v0, "Privacy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t use componentName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with null value! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 5319
    :goto_0
    return v0

    .line 5295
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 5296
    .local v7, pkgName:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 5297
    const-string v0, "Privacy"

    const-string v1, "This Intent doesn\'t hava package name."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 5298
    goto :goto_0

    .line 5301
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Privacy;->PRIVATE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v3, "state"

    aput-object v3, v2, v9

    const-string v3, "app_name=?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object v7, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5303
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v10, :cond_4

    .line 5305
    :cond_2
    if-eqz v6, :cond_3

    .line 5306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v9

    .line 5307
    goto :goto_0

    .line 5310
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5311
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 5312
    .local v8, state:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5314
    if-eqz v8, :cond_5

    .line 5316
    invoke-static {p0, p1}, Landroid/provider/Settings$Privacy;->canActivityProtected(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v9

    .line 5319
    goto :goto_0
.end method

.method public static hasFileEncrypted(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 9
    .parameter "cr"
    .parameter "path"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5094
    invoke-static {p0}, Landroid/provider/Settings$Privacy;->getFileEncryptToggle(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 5111
    :goto_0
    return v0

    .line 5099
    :cond_0
    sget-object v1, Landroid/provider/Settings$Privacy;->FILE_ENCRYPT_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v0, "path"

    aput-object v0, v2, v7

    const-string/jumbo v3, "path=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5101
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    move v0, v7

    .line 5102
    goto :goto_0

    .line 5105
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 5106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 5107
    goto :goto_0

    .line 5110
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 5111
    goto :goto_0
.end method

.method public static hasPackageProtected(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 10
    .parameter "cr"
    .parameter "pkgName"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5193
    if-nez p1, :cond_0

    move v0, v8

    .line 5217
    :goto_0
    return v0

    .line 5196
    :cond_0
    invoke-static {p0}, Landroid/provider/Settings$Privacy;->getPrivacyProtectToggle(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v8

    .line 5197
    goto :goto_0

    .line 5200
    :cond_1
    sget-object v1, Landroid/provider/Settings$Privacy;->PRIVATE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v0, "state"

    aput-object v0, v2, v8

    const-string v3, "app_name=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5202
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v9, :cond_4

    .line 5204
    :cond_2
    if-eqz v6, :cond_3

    .line 5205
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 5206
    goto :goto_0

    .line 5209
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5210
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 5211
    .local v7, state:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5212
    if-nez v7, :cond_5

    move v0, v8

    .line 5213
    goto :goto_0

    :cond_5
    move v0, v9

    .line 5217
    goto :goto_0
.end method

.method public static hasPackageProtected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 5261
    if-nez p1, :cond_1

    .line 5262
    const-string v2, "Privacy"

    const-string v3, "Can\'t use a Intent with null value! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5278
    :cond_0
    :goto_0
    return v1

    .line 5266
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Privacy;->getPrivacyProtectToggle(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5271
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 5272
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_2

    .line 5273
    const-string v2, "Privacy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t use componentName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with null value! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5278
    :cond_2
    invoke-static {p0, v0}, Landroid/provider/Settings$Privacy;->hasComponentProtected(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    goto :goto_0
.end method

.method public static hasPackageProtected(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "pkgName"
    .parameter "className"

    .prologue
    const/4 v1, 0x0

    .line 5230
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 5231
    :cond_0
    const-string v2, "Privacy"

    const-string v3, "Can\'t use a empty package name & class name."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5246
    :cond_1
    :goto_0
    return v1

    .line 5235
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Privacy;->getPrivacyProtectToggle(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5240
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5241
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_3

    .line 5242
    const-string v2, "Privacy"

    const-string v3, "Can\'t create a new componentName object."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5246
    :cond_3
    invoke-static {p0, v0}, Landroid/provider/Settings$Privacy;->hasComponentProtected(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    goto :goto_0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 5015
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Privacy;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 4946
    sget-object v0, Landroid/provider/Settings$Privacy;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Privacy;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setFileEncrypted(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter "cr"
    .parameter "path"

    .prologue
    .line 5159
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5160
    .local v0, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5161
    sget-object v1, Landroid/provider/Settings$Privacy;->FILE_ENCRYPT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5162
    const/4 v1, 0x0

    .line 5164
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
