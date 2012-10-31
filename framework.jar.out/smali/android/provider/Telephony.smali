.class public final Landroid/provider/Telephony;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$Intents;,
        Landroid/provider/Telephony$Carriers;,
        Landroid/provider/Telephony$MmsSms;,
        Landroid/provider/Telephony$Mms;,
        Landroid/provider/Telephony$Threads;,
        Landroid/provider/Telephony$ThreadsColumns;,
        Landroid/provider/Telephony$CanonicalAddressesColumns;,
        Landroid/provider/Telephony$BaseMmsColumns;,
        Landroid/provider/Telephony$Sms;,
        Landroid/provider/Telephony$TextBasedSmsColumns;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOCAL_LOGV:Z = true

.field private static final OPPO_SMSMMS_APPEND_STRING:Ljava/lang/String; = "oppoprotected"

.field private static final TAG:Ljava/lang/String; = "Telephony"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static isMmsUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 2367
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSmsMmsProtected(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 2312
    const-string v0, "content://com.android.secure.provider.SecureData/privacy_protect_config/app_protect"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2313
    .local v1, uriStatus:Landroid/net/Uri;
    new-array v2, v13, [Ljava/lang/String;

    const-string/jumbo v0, "status"

    aput-object v0, v2, v12

    .line 2314
    .local v2, projectStatus:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 2317
    .local v10, cursorStatus:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 2322
    if-nez v10, :cond_0

    move v0, v12

    .line 2363
    :goto_0
    return v0

    .line 2318
    :catch_0
    move-exception v11

    .local v11, e:Ljava/lang/Exception;
    move v0, v12

    .line 2319
    goto :goto_0

    .line 2327
    .end local v11           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2328
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-ne v0, v13, :cond_3

    .line 2337
    :cond_1
    if-eqz v10, :cond_2

    .line 2338
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2342
    :cond_2
    const-string v0, "content://com.android.secure.provider.SecureData/protected_apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2343
    .local v4, uriAppprotected:Landroid/net/Uri;
    new-array v5, v13, [Ljava/lang/String;

    const-string/jumbo v0, "pkg_name"

    aput-object v0, v5, v12

    .line 2344
    .local v5, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2345
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_7

    move v0, v12

    .line 2346
    goto :goto_0

    .line 2337
    .end local v4           #uriAppprotected:Landroid/net/Uri;
    .end local v5           #projection:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz v10, :cond_4

    .line 2338
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v12

    goto :goto_0

    .line 2334
    :catch_1
    move-exception v11

    .line 2337
    .restart local v11       #e:Ljava/lang/Exception;
    if-eqz v10, :cond_5

    .line 2338
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v12

    goto :goto_0

    .line 2337
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_6

    .line 2338
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2350
    .restart local v4       #uriAppprotected:Landroid/net/Uri;
    .restart local v5       #projection:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_7
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2351
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-eqz v0, :cond_7

    .line 2358
    if-eqz v9, :cond_8

    .line 2359
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    move v0, v13

    goto :goto_0

    .line 2358
    :cond_9
    if-eqz v9, :cond_a

    .line 2359
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a
    move v0, v12

    .line 2363
    goto :goto_0

    .line 2355
    :catch_2
    move-exception v11

    .line 2358
    .restart local v11       #e:Ljava/lang/Exception;
    if-eqz v9, :cond_b

    .line 2359
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b
    move v0, v12

    goto :goto_0

    .line 2358
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_c

    .line 2359
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0
.end method

.method public static isSmsMmsUri(Landroid/net/Uri;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 2379
    invoke-static {p0}, Landroid/provider/Telephony;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/provider/Telephony;->isSmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/provider/Telephony;->isSms_MmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSmsUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 2371
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSms_MmsUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 2375
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mms-sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setSmsMmsCommonUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    return-object p0

    invoke-static {p0}, Landroid/provider/Telephony;->isSmsMmsUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/provider/Telephony;->setUriWithoutOppoTag(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "oppoprotected"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static setUriWithoutOppoTag(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 2292
    if-nez p0, :cond_1

    .line 2293
    const/4 p0, 0x0

    .line 2308
    :cond_0
    :goto_0
    return-object p0

    .line 2296
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?oppoprotected=1/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2297
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?oppoprotected=1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 2300
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&oppoprotected=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2301
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&oppoprotected=1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 2304
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?oppoprotected=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2305
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?oppoprotected=1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method
