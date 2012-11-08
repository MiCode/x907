.class public Lcom/oppo/camera/utils/OppoBrowseImage;
.super Ljava/lang/Object;
.source "OppoBrowseImage.java"


# static fields
.field private static final IMAGE_PROJECTION:[Ljava/lang/String;

.field private static final IMAGE_STORAGE_URI:Landroid/net/Uri;


# instance fields
.field cols:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field public mId:J

.field public mLastPictureUri:Landroid/net/Uri;

.field private mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/camera/utils/OppoBrowseImage;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 36
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oppo/camera/utils/OppoBrowseImage;->IMAGE_STORAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_data"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->cols:[Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private isUriValid(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 115
    if-nez p1, :cond_0

    .line 129
    :goto_0
    return v2

    .line 119
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 121
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 122
    const-string v3, "OppoBrowseImage"

    const-string v4, "Fail to open URI."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 127
    .local v0, ex:Ljava/io/IOException;
    goto :goto_0

    .line 125
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getPictureCount(Ljava/lang/String;)I
    .locals 4
    .parameter "path"

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, count:I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    new-instance v3, Lcom/oppo/camera/utils/OppoBrowseImage$1;

    invoke-direct {v3, p0}, Lcom/oppo/camera/utils/OppoBrowseImage$1;-><init>(Lcom/oppo/camera/utils/OppoBrowseImage;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 72
    .local v2, files:[Ljava/io/File;
    array-length v0, v2

    .line 74
    .end local v2           #files:[Ljava/io/File;
    :cond_0
    return v0
.end method

.method public setScreenHintListener(Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;)V
    .locals 0
    .parameter "onShowHintViewListener"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    .line 177
    return-void
.end method

.method public updateLastPictureUri(Ljava/lang/String;)V
    .locals 10
    .parameter "lastName"

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mLastPictureUri:Landroid/net/Uri;

    .line 79
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oppo/camera/utils/OppoBrowseImage;->IMAGE_STORAGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/oppo/camera/utils/OppoBrowseImage;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    .line 84
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 88
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    const-string v2, "_display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, lastPictureName:Ljava/lang/String;
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 93
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 95
    .local v7, id:J
    sget-object v0, Lcom/oppo/camera/utils/OppoBrowseImage;->IMAGE_STORAGE_URI:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mLastPictureUri:Landroid/net/Uri;

    .line 96
    iput-wide v7, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .end local v7           #id:J
    .end local v9           #lastPictureName:Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 107
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.NEW_PICTURE"

    iget-object v3, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mLastPictureUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    .restart local v9       #lastPictureName:Ljava/lang/String;
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 102
    .end local v9           #lastPictureName:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 103
    .local v6, e:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "OppoBrowseImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 107
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 106
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_7

    .line 107
    iget-object v1, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public viewLastPicture(Ljava/lang/String;)Z
    .locals 9
    .parameter "imagePath"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 139
    const-string v4, "external_sd"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    sget-object p1, Lcom/oppo/camera/CommConfig;->EXTERNAL_IMG_PATH:Ljava/lang/String;

    .line 144
    :goto_0
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 147
    :cond_0
    iget-object v4, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/provider/Settings$Privacy;->hasFileEncrypted(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    iget-object v4, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v7, 0x7f0a001a

    invoke-interface {v4, v7}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    .line 150
    :cond_1
    iget-object v4, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mLastPictureUri:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/oppo/camera/utils/OppoBrowseImage;->isUriValid(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 151
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.cooliris.media.action.REVIEW"

    iget-object v7, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mLastPictureUri:Landroid/net/Uri;

    invoke-direct {v2, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 152
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "come_from_camera"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    const-string v4, "lcd_brightness"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 155
    :try_start_0
    iget-object v4, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 156
    iget-object v4, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v7, 0x7f040017

    const v8, 0x10a0003

    invoke-virtual {v4, v7, v8}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v4, v5

    .line 171
    .end local v2           #intent:Landroid/content/Intent;
    :goto_2
    return v4

    .line 142
    :cond_2
    sget-object p1, Lcom/oppo/camera/CommConfig;->INTERNAL_IMG_PATH:Ljava/lang/String;

    goto :goto_0

    .line 157
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 159
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v7, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mLastPictureUri:Landroid/net/Uri;

    invoke-direct {v3, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .end local v2           #intent:Landroid/content/Intent;
    .local v3, intent:Landroid/content/Intent;
    :try_start_2
    const-string v4, "come_from_camera"

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    const-string v4, "lcd_brightness"

    const/high16 v7, 0x3f80

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 162
    iget-object v4, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 163
    iget-object v4, p0, Lcom/oppo/camera/utils/OppoBrowseImage;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v7, 0x7f040017

    const v8, 0x10a0003

    invoke-virtual {v4, v7, v8}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 167
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 164
    :catch_1
    move-exception v0

    .line 165
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :goto_3
    const-string v4, "OppoBrowseImage"

    const-string v5, "review image fail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v6

    .line 166
    goto :goto_2

    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    move v4, v6

    .line 171
    goto :goto_2

    .line 164
    .restart local v1       #ex:Landroid/content/ActivityNotFoundException;
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_3
.end method
