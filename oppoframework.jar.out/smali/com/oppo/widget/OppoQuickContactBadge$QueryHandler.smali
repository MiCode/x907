.class Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "OppoQuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoQuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoQuickContactBadge;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoQuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;->this$0:Lcom/oppo/widget/OppoQuickContactBadge;

    .line 305
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 306
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 311
    const/4 v5, 0x0

    .line 312
    .local v5, lookupUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 313
    .local v3, createUri:Landroid/net/Uri;
    const-wide/16 v1, -0x1

    .line 314
    .local v1, contactId:J
    const/4 v6, 0x0

    .line 318
    .local v6, trigger:Z
    packed-switch p1, :pswitch_data_0

    .line 352
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 354
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_1
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 364
    iget-object v7, p0, Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;->this$0:Lcom/oppo/widget/OppoQuickContactBadge;

    check-cast p2, Ljava/lang/String;

    .end local p2
    #calls: Lcom/oppo/widget/OppoQuickContactBadge;->trigger(JLjava/lang/String;)V
    invoke-static {v7, v1, v2, p2}, Lcom/oppo/widget/OppoQuickContactBadge;->access$000(Lcom/oppo/widget/OppoQuickContactBadge;JLjava/lang/String;)V

    .line 371
    :cond_2
    :goto_1
    return-void

    .line 321
    .restart local p2
    :pswitch_0
    const/4 v6, 0x1

    .line 322
    :try_start_0
    const-string v8, "tel"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    const/4 v9, 0x0

    invoke-static {v8, v7, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 326
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 328
    sget v7, Lcom/oppo/widget/OppoQuickContactBadge;->PHONE_ID_COLUMN_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 329
    sget v7, Lcom/oppo/widget/OppoQuickContactBadge;->PHONE_LOOKUP_STRING_COLUMN_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, lookupKey:Ljava/lang/String;
    invoke-static {v1, v2, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 331
    goto :goto_0

    .line 336
    .end local v4           #lookupKey:Ljava/lang/String;
    :pswitch_2
    const/4 v6, 0x1

    .line 337
    const-string v8, "mailto"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    const/4 v9, 0x0

    invoke-static {v8, v7, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 341
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 343
    sget v7, Lcom/oppo/widget/OppoQuickContactBadge;->EMAIL_ID_COLUMN_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 344
    sget v7, Lcom/oppo/widget/OppoQuickContactBadge;->EMAIL_LOOKUP_STRING_COLUMN_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 345
    .restart local v4       #lookupKey:Ljava/lang/String;
    invoke-static {v1, v2, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    goto :goto_0

    .line 352
    .end local v4           #lookupKey:Ljava/lang/String;
    :catchall_0
    move-exception v7

    if-eqz p3, :cond_3

    .line 354
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v7

    .line 366
    :cond_4
    if-eqz v3, :cond_2

    .line 369
    iget-object v7, p0, Lcom/oppo/widget/OppoQuickContactBadge$QueryHandler;->this$0:Lcom/oppo/widget/OppoQuickContactBadge;

    const-wide/16 v8, -0x1

    check-cast p2, Ljava/lang/String;

    .end local p2
    #calls: Lcom/oppo/widget/OppoQuickContactBadge;->trigger(JLjava/lang/String;)V
    invoke-static {v7, v8, v9, p2}, Lcom/oppo/widget/OppoQuickContactBadge;->access$000(Lcom/oppo/widget/OppoQuickContactBadge;JLjava/lang/String;)V

    goto :goto_1

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
