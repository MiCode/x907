.class public Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
.super Ljava/lang/Object;
.source "BluetoothOppReceiveFileInfo.java"


# static fields
.field private static sDesiredStoragePath:Ljava/lang/String;


# instance fields
.field public mFileName:Ljava/lang/String;

.field public mLength:J

.field public mOutputStream:Ljava/io/FileOutputStream;

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v1, 0x0

    .line 88
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V
    .locals 0
    .parameter "filename"
    .parameter "length"
    .parameter "outputStream"
    .parameter "status"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    .line 83
    iput p5, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    .line 84
    iput-wide p2, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    .line 85
    return-void
.end method

.method private static chooseUniquefilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filename"
    .parameter "extension"

    .prologue
    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, fullfilename:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 294
    move-object v0, p0

    .line 296
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    .line 327
    :goto_0
    return-object v5

    .line 299
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/bluetooth/opp/Constants;->filename_SEQUENCE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 311
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 312
    .local v3, rnd:Ljava/util/Random;
    const/4 v4, 0x1

    .line 313
    .local v4, sequence:I
    const/4 v2, 0x1

    .local v2, magnitude:I
    :goto_1
    const v5, 0x3b9aca00

    if-ge v2, v5, :cond_5

    .line 314
    const/4 v1, 0x0

    .local v1, iteration:I
    :goto_2
    const/16 v5, 0x9

    if-ge v1, v5, :cond_4

    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    if-nez p1, :cond_2

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v0

    .line 321
    goto :goto_0

    .line 323
    :cond_3
    const-string v5, "BluetoothOpp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file with sequence number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 313
    :cond_4
    mul-int/lit8 v2, v2, 0xa

    goto :goto_1

    .line 327
    .end local v1           #iteration:I
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private static choosefilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "hint"

    .prologue
    const/16 v4, 0x2f

    .line 331
    const/4 v0, 0x0

    .line 334
    .local v0, filename:Ljava/lang/String;
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    const/16 v2, 0x5c

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 338
    const-string v2, "BluetoothOpp"

    const-string v3, "getting filename from hint"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 340
    .local v1, index:I
    if-lez v1, :cond_1

    .line 341
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    .end local v1           #index:I
    :cond_0
    :goto_0
    return-object v0

    .line 343
    .restart local v1       #index:I
    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static generateFileInfo(Landroid/content/Context;I)Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .locals 32
    .parameter "context"
    .parameter "id"

    .prologue
    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 137
    .local v2, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 138
    .local v23, res:Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 139
    .local v3, contentUri:Landroid/net/Uri;
    const/16 v16, 0x0

    .local v16, filename:Ljava/lang/String;
    const/16 v17, 0x0

    .line 140
    .local v17, hint:Ljava/lang/String;
    const-wide/16 v19, 0x0

    .line 141
    .local v19, length:J
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "hint"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-string v9, "total_bytes"

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const-string v9, "mimetype"

    aput-object v9, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 144
    .local v21, metadataCursor:Landroid/database/Cursor;
    if-eqz v21, :cond_8

    .line 146
    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 147
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 148
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    int-to-long v6, v4

    .line 151
    .end local v19           #length:J
    .local v6, length:J
    :goto_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 155
    :goto_1
    const/4 v10, 0x0

    .line 156
    .local v10, base:Ljava/io/File;
    const/16 v26, 0x0

    .line 172
    .local v26, stat:Landroid/os/StatFs;
    invoke-static/range {v17 .. v17}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->choosefilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 174
    const-string v4, "save_path"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 175
    .local v22, path:Ljava/lang/String;
    const/16 v24, 0x0

    .line 181
    .local v24, root_path:Ljava/lang/String;
    if-eqz v22, :cond_0

    const-string v4, "Card"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getExternalSdState()Ljava/lang/String;

    move-result-object v4

    const-string v8, "mounted"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    sget-object v24, Lcom/android/bluetooth/opp/Constants;->MEMORY_CARD_ROOT:Ljava/lang/String;

    .line 190
    :goto_2
    sget-object v24, Lcom/android/bluetooth/opp/Constants;->PHONE_ROOT:Ljava/lang/String;

    .line 191
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->getSaveDir(Ljava/lang/String;)I

    move-result v11

    .line 192
    .local v11, dirId:I
    const/16 v25, 0x0

    .line 193
    .local v25, save_path:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    .end local v10           #base:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .restart local v10       #base:Ljava/io/File;
    const-string v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "base path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_1

    .line 196
    const-string v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive File aborted - can\'t create base directory "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    .line 264
    :goto_3
    return-object v4

    .line 151
    .end local v6           #length:J
    .end local v10           #base:Ljava/io/File;
    .end local v11           #dirId:I
    .end local v22           #path:Ljava/lang/String;
    .end local v24           #root_path:Ljava/lang/String;
    .end local v25           #save_path:Ljava/lang/String;
    .end local v26           #stat:Landroid/os/StatFs;
    .restart local v19       #length:J
    :catchall_0
    move-exception v4

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v4

    .line 188
    .end local v19           #length:J
    .restart local v6       #length:J
    .restart local v10       #base:Ljava/io/File;
    .restart local v22       #path:Ljava/lang/String;
    .restart local v24       #root_path:Ljava/lang/String;
    .restart local v26       #stat:Landroid/os/StatFs;
    :cond_0
    sget-object v24, Lcom/android/bluetooth/opp/Constants;->PHONE_ROOT:Ljava/lang/String;

    goto :goto_2

    .line 200
    .restart local v11       #dirId:I
    .restart local v25       #save_path:Ljava/lang/String;
    :cond_1
    new-instance v26, Landroid/os/StatFs;

    .end local v26           #stat:Landroid/os/StatFs;
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 211
    .restart local v26       #stat:Landroid/os/StatFs;
    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x4

    sub-long v28, v28, v30

    mul-long v8, v8, v28

    cmp-long v4, v8, v6

    if-gez v4, :cond_2

    .line 212
    const-string v4, "BluetoothOpp"

    const-string v8, "Receive File aborted - not enough free space"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ee

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto :goto_3

    .line 217
    :cond_2
    if-nez v16, :cond_3

    .line 219
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto :goto_3

    .line 221
    :cond_3
    const/4 v15, 0x0

    .line 222
    .local v15, extension:Ljava/lang/String;
    const-string v4, "."

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 223
    .local v13, dotIndex:I
    if-gez v13, :cond_5

    .line 225
    const-string v4, "BluetoothOpp"

    const-string v8, "no extension"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 236
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->chooseUniquefilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, fullfilename:Ljava/lang/String;
    const-string v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Generated received filename "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-eqz v5, :cond_6

    .line 246
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 247
    const/16 v4, 0x2f

    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v18, v4, 0x1

    .line 249
    .local v18, index:I
    if-lez v18, :cond_4

    .line 250
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 251
    .local v12, displayName:Ljava/lang/String;
    const-string v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New display name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v27, updateValues:Landroid/content/ContentValues;
    const-string v4, "hint"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v3, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 257
    .end local v12           #displayName:Ljava/lang/String;
    .end local v27           #updateValues:Landroid/content/ContentValues;
    :cond_4
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 259
    .end local v18           #index:I
    :catch_0
    move-exception v14

    .line 260
    .local v14, e:Ljava/io/IOException;
    const-string v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error when creating file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto/16 :goto_3

    .line 230
    .end local v5           #fullfilename:Ljava/lang/String;
    .end local v14           #e:Ljava/io/IOException;
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 231
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_4

    .line 264
    .restart local v5       #fullfilename:Ljava/lang/String;
    :cond_6
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto/16 :goto_3

    .end local v5           #fullfilename:Ljava/lang/String;
    .end local v6           #length:J
    .end local v10           #base:Ljava/io/File;
    .end local v11           #dirId:I
    .end local v13           #dotIndex:I
    .end local v15           #extension:Ljava/lang/String;
    .end local v22           #path:Ljava/lang/String;
    .end local v24           #root_path:Ljava/lang/String;
    .end local v25           #save_path:Ljava/lang/String;
    .end local v26           #stat:Landroid/os/StatFs;
    .restart local v19       #length:J
    :cond_7
    move-wide/from16 v6, v19

    .end local v19           #length:J
    .restart local v6       #length:J
    goto/16 :goto_0

    .end local v6           #length:J
    .restart local v19       #length:J
    :cond_8
    move-wide/from16 v6, v19

    .end local v19           #length:J
    .restart local v6       #length:J
    goto/16 :goto_1
.end method

.method public static getSaveDir(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 130
    invoke-static {p0}, Lcom/android/bluetooth/opp/Constants;->getExtensionFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/opp/Constants;->getDirTypeFromExtension(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
