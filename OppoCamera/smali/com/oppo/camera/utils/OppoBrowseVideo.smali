.class public Lcom/oppo/camera/utils/OppoBrowseVideo;
.super Ljava/lang/Object;
.source "OppoBrowseVideo.java"


# static fields
.field private static final VIDEO_PROJECTION:[Ljava/lang/String;

.field private static final VIDEO_STORAGE_URI:Landroid/net/Uri;


# instance fields
.field cols:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field public mId:J

.field public mLastVideoUri:Landroid/net/Uri;

.field private mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/utils/OppoBrowseVideo;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/camera/utils/OppoBrowseVideo;->VIDEO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
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

    iput-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->cols:[Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private isUriValid(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 93
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return v2

    .line 97
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 99
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 100
    const-string v3, "OppoBrowseVideo"

    const-string v4, "Fail to open URI."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 105
    .local v0, ex:Ljava/io/IOException;
    goto :goto_0

    .line 103
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getVideoCount(Ljava/lang/String;)I
    .locals 4
    .parameter "path"

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, count:I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    new-instance v3, Lcom/oppo/camera/utils/OppoBrowseVideo$1;

    invoke-direct {v3, p0}, Lcom/oppo/camera/utils/OppoBrowseVideo$1;-><init>(Lcom/oppo/camera/utils/OppoBrowseVideo;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 63
    .local v2, files:[Ljava/io/File;
    array-length v0, v2

    .line 65
    .end local v2           #files:[Ljava/io/File;
    :cond_0
    return v0
.end method

.method public setScreenHintListener(Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;)V
    .locals 0
    .parameter "onShowHintViewListener"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    .line 142
    return-void
.end method

.method public updateThumbnailUri(Ljava/lang/String;)V
    .locals 8
    .parameter "path"

    .prologue
    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v7, where:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, whereclause:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->cols:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mCursor:Landroid/database/Cursor;

    .line 74
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 80
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mId:J

    .line 81
    sget-object v0, Lcom/oppo/camera/utils/OppoBrowseVideo;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mLastVideoUri:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 82
    :catch_0
    move-exception v6

    .line 83
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "OppoBrowseVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 86
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 87
    iget-object v1, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public viewLastVideo(Ljava/lang/String;)Z
    .locals 9
    .parameter "videoPath"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 114
    :cond_0
    iget-object v6, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/provider/Settings$Privacy;->hasFileEncrypted(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 115
    iget-object v5, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mOnShowHintViewListener:Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;

    const v6, 0x7f0a001a

    invoke-interface {v5, v6}, Lcom/oppo/camera/setting/IconsPanelController$OnShowHintViewListener;->onShowHintView(I)V

    .line 137
    :goto_0
    return v4

    .line 118
    :cond_1
    const-string v6, "OppoBrowseVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLastVideoUri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mLastVideoUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v6, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mLastVideoUri:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/oppo/camera/utils/OppoBrowseVideo;->isUriValid(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mLastVideoUri:Landroid/net/Uri;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "switch_from_videocamera"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    :try_start_0
    iget-object v4, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v4, v5

    .line 134
    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 128
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mLastVideoUri:Landroid/net/Uri;

    invoke-direct {v3, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    .end local v2           #intent:Landroid/content/Intent;
    .local v3, intent:Landroid/content/Intent;
    :try_start_2
    iget-object v4, p0, Lcom/oppo/camera/utils/OppoBrowseVideo;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 132
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 130
    :catch_1
    move-exception v0

    .line 131
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :goto_2
    const-string v4, "OppoBrowseVideo"

    const-string v6, "review video fail"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 136
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    const-string v5, "OppoBrowseVideo"

    const-string v6, "Can\'t view last video."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    .restart local v1       #ex:Landroid/content/ActivityNotFoundException;
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_2
.end method
