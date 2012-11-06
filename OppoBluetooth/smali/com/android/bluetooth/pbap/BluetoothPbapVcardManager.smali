.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;,
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    }
.end annotation


# static fields
.field static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field static final SIM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final SIM_URI:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 84
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    .line 94
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, "content://icc/adn"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_URI:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    .line 115
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    .line 116
    return-void
.end method


# virtual methods
.method public final composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZZ[B)I
    .locals 21
    .parameter "type"
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"
    .parameter "ignorefilter"
    .parameter "filter"

    .prologue
    .line 451
    const/4 v2, 0x1

    move/from16 v0, p3

    if-lt v0, v2, :cond_0

    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_1

    .line 452
    :cond_0
    const-string v2, "BluetoothPbapVcardManager"

    const-string v6, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/16 v2, 0xd0

    .line 507
    :goto_0
    return v2

    .line 455
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v5

    .line 457
    .local v5, typeSelection:Ljava/lang/String;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 458
    .local v3, myUri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    .line 461
    .local v4, CALLLOG_PROJECTION:[Ljava/lang/String;
    const/4 v14, 0x0

    .line 463
    .local v14, ID_COLUMN_INDEX:I
    const/4 v15, 0x0

    .line 464
    .local v15, callsCursor:Landroid/database/Cursor;
    const-wide/16 v19, 0x0

    .line 465
    .local v19, startPointId:J
    const-wide/16 v16, 0x0

    .line 468
    .local v16, endPointId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 470
    if-eqz v15, :cond_2

    .line 471
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 472
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v19

    .line 474
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_4

    .line 475
    move-wide/from16 v16, v19

    .line 483
    :cond_2
    :goto_1
    if-eqz v15, :cond_3

    .line 484
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 489
    :cond_3
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_6

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 499
    .local v18, recordSelection:Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_7

    .line 500
    move-object/from16 v8, v18

    .line 507
    .local v8, selection:Ljava/lang/String;
    :goto_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v9, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v6 .. v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;ZZ[B)I

    move-result v2

    goto :goto_0

    .line 477
    .end local v8           #selection:Ljava/lang/String;
    .end local v18           #recordSelection:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, p4, -0x1

    :try_start_1
    invoke-interface {v15, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 478
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    goto :goto_1

    .line 483
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_5

    .line 484
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 483
    :cond_5
    throw v2

    .line 494
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id>="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_id"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "<="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .restart local v18       #recordSelection:Ljava/lang/String;
    goto :goto_2

    .line 502
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") AND ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #selection:Ljava/lang/String;
    goto :goto_3
.end method

.method public final composeAndSendPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;IZ[B)I
    .locals 14
    .parameter "op"
    .parameter "offset"
    .parameter "vcardType21"
    .parameter "ownerVCard"
    .parameter "orderByWhat"
    .parameter "ignorefilter"
    .parameter "filter"

    .prologue
    .line 600
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ge v0, v1, :cond_0

    .line 601
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "Internal error: offset is not correct."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/16 v1, 0xd0

    .line 644
    :goto_0
    return v1

    .line 604
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 605
    .local v2, myUri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 606
    .local v11, contactCursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 607
    .local v5, selection:Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 608
    .local v12, contactId:J
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_4

    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v4, "in_visible_group=1"

    const/4 v5, 0x0

    const-string v6, "_id"

    .end local v5           #selection:Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 612
    if-eqz v11, :cond_1

    .line 613
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 614
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 618
    :cond_1
    if-eqz v11, :cond_2

    .line 619
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 640
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 644
    .restart local v5       #selection:Ljava/lang/String;
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;ZZ[B)I

    move-result v1

    goto :goto_0

    .line 618
    .end local v5           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_3

    .line 619
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 618
    :cond_3
    throw v1

    .line 622
    .restart local v5       #selection:Ljava/lang/String;
    :cond_4
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_7

    .line 624
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v4, "in_visible_group=1"

    const/4 v5, 0x0

    const-string v6, "display_name COLLATE NOCASE"

    .end local v5           #selection:Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 626
    if-eqz v11, :cond_5

    .line 627
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 628
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v12

    .line 632
    :cond_5
    if-eqz v11, :cond_2

    .line 633
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 632
    :catchall_1
    move-exception v1

    if-eqz v11, :cond_6

    .line 633
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 632
    :cond_6
    throw v1

    .line 637
    .restart local v5       #selection:Ljava/lang/String;
    :cond_7
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "Parameter orderByWhat is not supported!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/16 v1, 0xd0

    goto/16 :goto_0
.end method

.method public final composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;Z[B)I
    .locals 17
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"
    .parameter "ownerVCard"
    .parameter "ignorefilter"
    .parameter "filter"

    .prologue
    .line 512
    const/4 v2, 0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_0

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 513
    :cond_0
    const-string v2, "BluetoothPbapVcardManager"

    const-string v4, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/16 v2, 0xd0

    .line 552
    :goto_0
    return v2

    .line 516
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 518
    .local v3, myUri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 519
    .local v12, contactCursor:Landroid/database/Cursor;
    const-wide/16 v15, 0x0

    .line 520
    .local v15, startPointId:J
    const-wide/16 v13, 0x0

    .line 522
    .local v13, endPointId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "in_visible_group=1"

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 524
    if-eqz v12, :cond_2

    .line 525
    add-int/lit8 v2, p2, -0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 526
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v15

    .line 528
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 529
    move-wide v13, v15

    .line 537
    :cond_2
    :goto_1
    if-eqz v12, :cond_3

    .line 538
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_3
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_6

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "in_visible_group=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 552
    .local v6, selection:Ljava/lang/String;
    :goto_2
    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;ZZ[B)I

    move-result v2

    goto :goto_0

    .line 531
    .end local v6           #selection:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, p3, -0x1

    :try_start_1
    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 532
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v13

    goto :goto_1

    .line 537
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_5

    .line 538
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 537
    :cond_5
    throw v2

    .line 546
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id>="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "in_visible_group=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #selection:Ljava/lang/String;
    goto :goto_2
.end method

.method public final composeAndSendSIMPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;I)I
    .locals 10
    .parameter "op"
    .parameter "offset"
    .parameter "vcardType21"
    .parameter "ownerVCard"
    .parameter "orderByWhat"

    .prologue
    const/16 v6, 0xd0

    const/4 v7, 0x1

    .line 649
    if-ge p2, v7, :cond_1

    .line 650
    const-string v7, "BluetoothPbapVcardManager"

    const-string v8, "Internal error: offset is not correct."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .end local p1
    :cond_0
    :goto_0
    return v6

    .line 653
    .restart local p1
    :cond_1
    const-string v7, "content://icc/adn"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 655
    .local v4, myUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 656
    .local v2, composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    const/4 v0, 0x0

    .line 658
    .local v0, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_0
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 659
    .end local v2           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .local v3, composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :try_start_1
    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    invoke-direct {v1, p0, p1, p4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 660
    .end local v0           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v1, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v3, v4, v7, v8, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-nez v7, :cond_4

    .line 683
    :cond_2
    if-eqz v3, :cond_3

    .line 684
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 686
    :cond_3
    if-eqz v1, :cond_0

    .line 687
    .end local p1
    :goto_1
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    goto :goto_0

    .line 664
    .restart local p1
    :cond_4
    :try_start_3
    sget v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p5, v7, :cond_8

    .line 666
    add-int/lit8 v7, p2, -0x1

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->moveToPosition(IZ)V

    .line 671
    :cond_5
    :goto_2
    sget-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v7, :cond_6

    .line 672
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v7, 0x1

    iput-boolean v7, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 673
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 675
    :cond_6
    invoke-virtual {v3, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v5

    .line 676
    .local v5, vcard:Ljava/lang/String;
    if-nez v5, :cond_b

    .line 677
    const-string v7, "BluetoothPbapVcardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to read a contact. Error reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 683
    if-eqz v3, :cond_7

    .line 684
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 686
    :cond_7
    if-eqz v1, :cond_0

    goto :goto_1

    .line 667
    .end local v5           #vcard:Ljava/lang/String;
    .restart local p1
    :cond_8
    :try_start_4
    sget v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p5, v7, :cond_5

    .line 669
    add-int/lit8 v7, p2, -0x1

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->moveToPosition(IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 683
    .end local p1
    :catchall_0
    move-exception v6

    move-object v0, v1

    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v0       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v2, v3

    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v2       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :goto_3
    if-eqz v2, :cond_9

    .line 684
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 686
    :cond_9
    if-eqz v0, :cond_a

    .line 687
    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 683
    :cond_a
    throw v6

    .line 681
    .end local v0           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v2           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v5       #vcard:Ljava/lang/String;
    :cond_b
    :try_start_5
    invoke-virtual {v1, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 683
    if-eqz v3, :cond_c

    .line 684
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 686
    :cond_c
    if-eqz v1, :cond_d

    .line 687
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 691
    :cond_d
    const/16 v6, 0xa0

    goto/16 :goto_0

    .line 683
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .end local v5           #vcard:Ljava/lang/String;
    .restart local v0       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local p1
    :catchall_1
    move-exception v6

    goto :goto_3

    .end local v2           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v2       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    goto :goto_3
.end method

.method public final composeAndSendSIMPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;)I
    .locals 10
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"
    .parameter "ownerVCard"

    .prologue
    .line 556
    const/4 v7, 0x1

    if-lt p2, v7, :cond_0

    if-le p2, p3, :cond_2

    .line 557
    :cond_0
    const-string v7, "BluetoothPbapVcardManager"

    const-string v8, "internal error: startPoint or endPoint is not correct."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/16 v7, 0xd0

    .line 595
    .end local p1
    :cond_1
    :goto_0
    return v7

    .line 560
    .restart local p1
    :cond_2
    const-string v7, "content://icc/adn"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 561
    .local v5, myUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 562
    .local v2, composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    const/4 v0, 0x0

    .line 564
    .local v0, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_0
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    .end local v2           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .local v3, composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :try_start_1
    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    invoke-direct {v1, p0, p1, p5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 567
    .end local v0           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v1, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v3, v5, v7, v8, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    if-nez v7, :cond_5

    .line 569
    :cond_3
    const/16 v7, 0xd0

    .line 587
    if-eqz v3, :cond_4

    .line 588
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 590
    :cond_4
    if-eqz v1, :cond_1

    .line 591
    :goto_1
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    goto :goto_0

    .line 571
    :cond_5
    add-int/lit8 v7, p2, -0x1

    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v3, v7, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->moveToPosition(IZ)V

    .line 572
    add-int/lit8 v4, p2, -0x1

    .local v4, count:I
    :goto_2
    if-ge v4, p3, :cond_6

    .line 573
    sget-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v7, :cond_9

    .line 574
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v7, 0x1

    iput-boolean v7, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 575
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 587
    :cond_6
    if-eqz v3, :cond_7

    .line 588
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 590
    :cond_7
    if-eqz v1, :cond_8

    .line 591
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 595
    :cond_8
    const/16 v7, 0xa0

    goto :goto_0

    .line 578
    .restart local p1
    :cond_9
    :try_start_4
    invoke-virtual {v3, p4}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v6

    .line 579
    .local v6, vcard:Ljava/lang/String;
    if-nez v6, :cond_b

    .line 580
    const-string v7, "BluetoothPbapVcardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to read a contact. Error reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 582
    const/16 v7, 0xd0

    .line 587
    if-eqz v3, :cond_a

    .line 588
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 590
    :cond_a
    if-eqz v1, :cond_1

    goto :goto_1

    .line 584
    :cond_b
    :try_start_5
    invoke-virtual {v1, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 572
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 587
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .end local v4           #count:I
    .end local v6           #vcard:Ljava/lang/String;
    .restart local v0       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :catchall_0
    move-exception v7

    .end local p1
    :goto_3
    if-eqz v2, :cond_c

    .line 588
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 590
    :cond_c
    if-eqz v0, :cond_d

    .line 591
    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 587
    :cond_d
    throw v7

    .end local v2           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local p1
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v2       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    goto :goto_3

    .end local v0           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v2           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .end local p1
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v0       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v2, v3

    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v2       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    goto :goto_3
.end method

.method public final composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;ZZ[B)I
    .locals 13
    .parameter "op"
    .parameter "selection"
    .parameter "vcardType21"
    .parameter "ownerVCard"
    .parameter "isContacts"
    .parameter "ignorefilter"
    .parameter "filter"

    .prologue
    .line 696
    const-wide/16 v5, 0x0

    .line 699
    .local v5, timestamp:J
    if-eqz p5, :cond_11

    .line 700
    const/4 v3, 0x0

    .line 701
    .local v3, composer:Lcom/android/vcard/VCardComposer;
    new-instance v9, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;

    invoke-direct {v9, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    .line 702
    .local v9, vcardfilter:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
    if-nez p6, :cond_0

    .line 703
    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->setFilter([B)V

    .line 705
    :cond_0
    const/4 v1, 0x0

    .line 709
    .local v1, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    if-eqz p3, :cond_5

    .line 710
    const/high16 v8, -0x4000

    .line 714
    .local v8, vcardType:I
    :goto_0
    :try_start_0
    invoke-virtual {v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->isPhotoEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 715
    const/high16 v10, 0x80

    or-int/2addr v8, v10

    .line 717
    :cond_1
    new-instance v4, Lcom/android/vcard/VCardComposer;

    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {v4, v10, v8, v11}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .local v4, composer:Lcom/android/vcard/VCardComposer;
    :try_start_1
    new-instance v10, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$2;

    invoke-direct {v10, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$2;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    invoke-virtual {v4, v10}, Lcom/android/vcard/VCardComposer;->setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V

    .line 733
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v0, p4

    invoke-direct {v2, p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 734
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v2, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_2
    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const-string v12, "_id"

    invoke-virtual {v4, v10, p2, v11, v12}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result v10

    if-nez v10, :cond_6

    .line 736
    :cond_2
    const/16 v10, 0xd0

    .line 760
    if-eqz v4, :cond_3

    .line 761
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 763
    :cond_3
    if-eqz v2, :cond_4

    .line 764
    :goto_1
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 807
    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .end local v8           #vcardType:I
    .end local v9           #vcardfilter:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
    .end local p1
    :cond_4
    :goto_2
    return v10

    .line 712
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    .restart local v9       #vcardfilter:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
    .restart local p1
    :cond_5
    const v8, -0x3fffffff

    .restart local v8       #vcardType:I
    goto :goto_0

    .line 739
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    :cond_6
    :try_start_3
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_7

    .line 740
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v10, :cond_a

    .line 741
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v10, 0x1

    iput-boolean v10, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 742
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 760
    :cond_7
    if-eqz v4, :cond_8

    .line 761
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 763
    :cond_8
    if-eqz v2, :cond_9

    .line 764
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 807
    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .end local v8           #vcardType:I
    .end local v9           #vcardfilter:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
    :cond_9
    :goto_3
    const/16 v10, 0xa0

    goto :goto_2

    .line 745
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    .restart local v8       #vcardType:I
    .restart local v9       #vcardfilter:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
    .restart local p1
    :cond_a
    :try_start_4
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v7

    .line 746
    .local v7, vcard:Ljava/lang/String;
    if-nez p6, :cond_b

    .line 747
    move/from16 v0, p3

    invoke-virtual {v9, v7, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->applyFilter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 749
    :cond_b
    if-nez v7, :cond_d

    .line 750
    const-string v10, "BluetoothPbapVcardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read a contact. Error reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 752
    const/16 v10, 0xd0

    .line 760
    if-eqz v4, :cond_c

    .line 761
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 763
    :cond_c
    if-eqz v2, :cond_4

    goto :goto_1

    .line 754
    :cond_d
    :try_start_5
    invoke-virtual {v2, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-result v10

    if-nez v10, :cond_6

    .line 756
    const/16 v10, 0xd0

    .line 760
    if-eqz v4, :cond_e

    .line 761
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 763
    :cond_e
    if-eqz v2, :cond_4

    goto :goto_1

    .line 760
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .end local v7           #vcard:Ljava/lang/String;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    :catchall_0
    move-exception v10

    .end local p1
    :goto_4
    if-eqz v3, :cond_f

    .line 761
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 763
    :cond_f
    if-eqz v1, :cond_10

    .line 764
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 760
    :cond_10
    throw v10

    .line 768
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .end local v8           #vcardType:I
    .end local v9           #vcardfilter:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
    .restart local p1
    :cond_11
    const/4 v3, 0x0

    .line 769
    .local v3, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    const/4 v1, 0x0

    .line 772
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_6
    new-instance v4, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 773
    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .local v4, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :try_start_7
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v0, p4

    invoke-direct {v2, p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 774
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_8
    sget-object v10, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const-string v12, "_id DESC"

    invoke-virtual {v4, v10, p2, v11, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result v10

    if-nez v10, :cond_15

    .line 777
    :cond_12
    const/16 v10, 0xd0

    .line 795
    if-eqz v4, :cond_13

    .line 796
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 798
    :cond_13
    if-eqz v2, :cond_4

    .line 799
    :goto_5
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    goto/16 :goto_2

    .line 792
    .restart local v7       #vcard:Ljava/lang/String;
    :cond_14
    :try_start_9
    invoke-virtual {v2, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z

    .line 780
    .end local v7           #vcard:Ljava/lang/String;
    :cond_15
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_16

    .line 781
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v10, :cond_18

    .line 782
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v10, 0x1

    iput-boolean v10, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 783
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 795
    :cond_16
    if-eqz v4, :cond_17

    .line 796
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 798
    :cond_17
    if-eqz v2, :cond_9

    .line 799
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    goto/16 :goto_3

    .line 786
    .restart local p1
    :cond_18
    :try_start_a
    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v7

    .line 787
    .restart local v7       #vcard:Ljava/lang/String;
    if-nez v7, :cond_14

    .line 788
    const-string v10, "BluetoothPbapVcardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read a contact. Error reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 790
    const/16 v10, 0xd0

    .line 795
    if-eqz v4, :cond_19

    .line 796
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 798
    :cond_19
    if-eqz v2, :cond_4

    goto :goto_5

    .line 795
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v4           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .end local v7           #vcard:Ljava/lang/String;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_1
    move-exception v10

    .end local p1
    :goto_6
    if-eqz v3, :cond_1a

    .line 796
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 798
    :cond_1a
    if-eqz v1, :cond_1b

    .line 799
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 795
    :cond_1b
    throw v10

    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v4       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local p1
    :catchall_2
    move-exception v10

    move-object v3, v4

    .end local v4           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_6

    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .end local p1
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v4       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_3
    move-exception v10

    move-object v1, v2

    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v3, v4

    .end local v4           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_6

    .line 760
    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .local v4, composer:Lcom/android/vcard/VCardComposer;
    .restart local v8       #vcardType:I
    .restart local v9       #vcardfilter:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
    .restart local p1
    :catchall_4
    move-exception v10

    move-object v3, v4

    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .local v3, composer:Lcom/android/vcard/VCardComposer;
    goto/16 :goto_4

    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .end local p1
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    :catchall_5
    move-exception v10

    move-object v1, v2

    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v3, v4

    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    goto/16 :goto_4
.end method

.method public final getCallHistorySize(I)I
    .locals 8
    .parameter "type"

    .prologue
    .line 179
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 180
    .local v1, myUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, selection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 182
    .local v7, size:I
    const/4 v6, 0x0

    .line 184
    .local v6, callCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 186
    if-eqz v6, :cond_0

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 190
    :cond_0
    if-eqz v6, :cond_1

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_1
    return v7

    .line 190
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_2
    throw v0
.end method

.method public final getContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .parameter "phoneNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v13, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v19, startNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v17, onlyphoneNumber:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, j:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v11, v1, :cond_1

    .line 384
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 385
    .local v8, c:C
    const/16 v1, 0x30

    if-lt v8, v1, :cond_0

    const/16 v1, 0x39

    if-gt v8, v1, :cond_0

    .line 386
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 383
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 389
    .end local v8           #c:C
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 390
    .local v7, SearchOnlyNumber:Ljava/lang/String;
    const/4 v9, 0x0

    .line 391
    .local v9, contactCursor:Landroid/database/Cursor;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 394
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_PROJECTION:[Ljava/lang/String;

    const-string v4, "in_visible_group=1"

    const/4 v5, 0x0

    const-string v6, "display_name"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 397
    if-eqz v9, :cond_a

    .line 398
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_a

    .line 400
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 401
    .local v14, number:Ljava/lang/String;
    if-nez v14, :cond_4

    .line 398
    :cond_2
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 435
    .end local v14           #number:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 436
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_3
    throw v1

    .line 405
    .restart local v14       #number:Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .local v16, onlyNumber:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v11, v1, :cond_6

    .line 407
    invoke-virtual {v14, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 408
    .restart local v8       #c:C
    const/16 v1, 0x30

    if-lt v8, v1, :cond_5

    const/16 v1, 0x39

    if-gt v8, v1, :cond_5

    .line 409
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 406
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 412
    .end local v8           #c:C
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 414
    .local v20, tmpNumber:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 415
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 416
    .local v12, name:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 421
    :cond_7
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v12           #name:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 425
    .restart local v12       #name:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 430
    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 435
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #number:Ljava/lang/String;
    .end local v16           #onlyNumber:Ljava/lang/StringBuilder;
    .end local v20           #tmpNumber:Ljava/lang/String;
    :cond_a
    if-eqz v9, :cond_b

    .line 436
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 439
    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 440
    .local v18, startListSize:I
    const/4 v10, 0x0

    .local v10, index:I
    :goto_4
    move/from16 v0, v18

    if-ge v10, v0, :cond_d

    .line 441
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 442
    .local v15, object:Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 443
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 446
    .end local v15           #object:Ljava/lang/String;
    :cond_d
    return-object v13
.end method

.method public final getContactsSize()I
    .locals 8

    .prologue
    .line 145
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 146
    .local v1, myUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 147
    .local v7, size:I
    const/4 v6, 0x0

    .line 149
    .local v6, contactCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 150
    if-eqz v6, :cond_0

    .line 151
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 154
    :cond_0
    if-eqz v6, :cond_1

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_1
    return v7

    .line 154
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_2
    throw v0
.end method

.method public final getOwnerPhoneNumberVcard(Z)Ljava/lang/String;
    .locals 5
    .parameter "vcardType21"

    .prologue
    .line 119
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneNum()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, number:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, vcard:Ljava/lang/String;
    return-object v3
.end method

.method public final getPhonebookNameList(I)Ljava/util/ArrayList;
    .locals 9
    .parameter "orderByWhat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v8, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 281
    .local v1, myUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 283
    .local v6, contactCursor:Landroid/database/Cursor;
    :try_start_0
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p1, v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 292
    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    .line 293
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 295
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 299
    :cond_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 303
    .end local v7           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_2
    throw v0

    .line 287
    :cond_3
    :try_start_1
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p1, v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const-string v5, "display_name COLLATE NOCASE"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 303
    :cond_4
    if-eqz v6, :cond_5

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_5
    return-object v8
.end method

.method public final getPhonebookSize(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 129
    sparse-switch p1, :sswitch_data_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getCallHistorySize(I)I

    move-result v0

    .line 141
    .local v0, size:I
    :goto_0
    return v0

    .line 131
    .end local v0           #size:I
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactsSize()I

    move-result v0

    .line 132
    .restart local v0       #size:I
    goto :goto_0

    .line 134
    .end local v0           #size:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getSIMContactsSize()I

    move-result v0

    .line 135
    .restart local v0       #size:I
    goto :goto_0

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getSIMContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .parameter "phoneNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v13, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v19, startNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .local v17, onlyphoneNumber:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, j:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v11, v1, :cond_1

    .line 315
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 316
    .local v8, c:C
    const/16 v1, 0x30

    if-lt v8, v1, :cond_0

    const/16 v1, 0x39

    if-gt v8, v1, :cond_0

    .line 317
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 314
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 320
    .end local v8           #c:C
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 322
    .local v7, SearchOnlyNumber:Ljava/lang/String;
    const/4 v9, 0x0

    .line 323
    .local v9, contactCursor:Landroid/database/Cursor;
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 326
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 328
    if-eqz v9, :cond_a

    .line 329
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_a

    .line 331
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 332
    .local v14, number:Ljava/lang/String;
    if-nez v14, :cond_4

    .line 329
    :cond_2
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 366
    .end local v14           #number:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 367
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_3
    throw v1

    .line 336
    .restart local v14       #number:Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .local v16, onlyNumber:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v11, v1, :cond_6

    .line 338
    invoke-virtual {v14, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 339
    .restart local v8       #c:C
    const/16 v1, 0x30

    if-lt v8, v1, :cond_5

    const/16 v1, 0x39

    if-gt v8, v1, :cond_5

    .line 340
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 337
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 343
    .end local v8           #c:C
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 345
    .local v20, tmpNumber:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 346
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 347
    .local v12, name:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 352
    :cond_7
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v12           #name:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 356
    .restart local v12       #name:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 361
    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 366
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #number:Ljava/lang/String;
    .end local v16           #onlyNumber:Ljava/lang/StringBuilder;
    .end local v20           #tmpNumber:Ljava/lang/String;
    :cond_a
    if-eqz v9, :cond_b

    .line 367
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 371
    .local v18, startListSize:I
    const/4 v10, 0x0

    .local v10, index:I
    :goto_4
    move/from16 v0, v18

    if-ge v10, v0, :cond_d

    .line 372
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 373
    .local v15, object:Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 374
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 377
    .end local v15           #object:Ljava/lang/String;
    :cond_d
    return-object v13
.end method

.method public final getSIMContactsSize()I
    .locals 8

    .prologue
    .line 162
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 163
    .local v1, myUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 164
    .local v7, size:I
    const/4 v6, 0x0

    .line 166
    .local v6, contactCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 167
    if-eqz v6, :cond_0

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 171
    :cond_0
    if-eqz v6, :cond_1

    .line 172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_1
    return v7

    .line 171
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_2
    throw v0
.end method

.method public final getSIMPhonebookNameList(I)Ljava/util/ArrayList;
    .locals 10
    .parameter "orderByWhat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v9, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v6, allnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 240
    .local v1, myUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 242
    .local v7, contactCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 243
    if-eqz v7, :cond_2

    .line 244
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 247
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 250
    :cond_0
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 254
    .end local v8           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    .line 255
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_1
    throw v0

    :cond_2
    if-eqz v7, :cond_3

    .line 255
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_3
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p1, v0, :cond_5

    .line 270
    :cond_4
    :goto_1
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 271
    return-object v9

    .line 260
    :cond_5
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p1, v0, :cond_4

    .line 262
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method public final loadCallHistoryList(I)Ljava/util/ArrayList;
    .locals 11
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 198
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 199
    .local v1, myUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v4

    const-string v0, "name"

    aput-object v0, v2, v5

    .line 203
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 204
    .local v7, CALLS_NUMBER_COLUMN_INDEX:I
    const/4 v6, 0x1

    .line 206
    .local v6, CALLS_NAME_COLUMN_INDEX:I
    const/4 v8, 0x0

    .line 207
    .local v8, callCursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 211
    if-eqz v8, :cond_3

    .line 212
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 214
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 215
    .local v10, name:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 218
    const-string v0, "-1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040004

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 224
    :cond_1
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 228
    .end local v10           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 229
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_2
    throw v0

    :cond_3
    if-eqz v8, :cond_4

    .line 229
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_4
    return-object v9
.end method
