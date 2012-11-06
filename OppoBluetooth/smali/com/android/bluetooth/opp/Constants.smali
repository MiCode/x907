.class public Lcom/android/bluetooth/opp/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACCEPTABLE_SHARE_INBOUND_BOOK_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_SHARE_INBOUND_CALENDAR_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_SHARE_INBOUND_CONTACT_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_SHARE_INBOUND_IMAGE_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_SHARE_INBOUND_MUSIC_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_SHARE_INBOUND_OFFICE_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_SHARE_INBOUND_RECORDER_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_SHARE_INBOUND_THEME_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_SHARE_INBOUND_VEDIO_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String;

.field public static final MEMORY_CARD_ROOT:Ljava/lang/String;

.field public static final PHONE_ROOT:Ljava/lang/String;

.field public static final SavePathDirs:[I

.field public static final UNACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

.field public static final UNACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String;

.field public static filename_SEQUENCE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "image/*"

    aput-object v1, v0, v3

    const-string v1, "text/x-vcard"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String;

    .line 129
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "virus/*"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->UNACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String;

    .line 138
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image/*"

    aput-object v1, v0, v3

    const-string v1, "video/*"

    aput-object v1, v0, v4

    const-string v1, "audio/*"

    aput-object v1, v0, v5

    const-string v1, "text/x-vcard"

    aput-object v1, v0, v6

    const-string v1, "text/plain"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "text/html"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "application/zip"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "application/vnd.ms-excel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "application/msword"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "application/vnd.ms-powerpoint"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "application/pdf"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    .line 156
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "text/x-vcalendar"

    aput-object v1, v0, v3

    const-string v1, "text/x-vcard"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->UNACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    .line 161
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "vcs"

    aput-object v1, v0, v3

    const-string v1, "ics"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_CALENDAR_TYPES:[Ljava/lang/String;

    .line 166
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "vcf"

    aput-object v1, v0, v3

    const-string v1, "csv"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_CONTACT_TYPES:[Ljava/lang/String;

    .line 171
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mp3"

    aput-object v1, v0, v3

    const-string v1, "midi"

    aput-object v1, v0, v4

    const-string v1, "wma"

    aput-object v1, v0, v5

    const-string v1, "lrc"

    aput-object v1, v0, v6

    const-string v1, "wav"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "imy"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "aac"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "awb"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ape"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ogg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flac"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m4a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_MUSIC_TYPES:[Ljava/lang/String;

    .line 179
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "jpg"

    aput-object v1, v0, v3

    const-string v1, "jpeg"

    aput-object v1, v0, v4

    const-string v1, "png"

    aput-object v1, v0, v5

    const-string v1, "bmp"

    aput-object v1, v0, v6

    const-string v1, "wbmp"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "gif"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_IMAGE_TYPES:[Ljava/lang/String;

    .line 188
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mp4"

    aput-object v1, v0, v3

    const-string v1, "3gp"

    aput-object v1, v0, v4

    const-string v1, "avi"

    aput-object v1, v0, v5

    const-string v1, "wmv"

    aput-object v1, v0, v6

    const-string v1, "rmvb"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "asf"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flv"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "srt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_VEDIO_TYPES:[Ljava/lang/String;

    .line 194
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "txt"

    aput-object v1, v0, v3

    const-string v1, "pdb"

    aput-object v1, v0, v4

    const-string v1, "umd"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_BOOK_TYPES:[Ljava/lang/String;

    .line 199
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "theme"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_THEME_TYPES:[Ljava/lang/String;

    .line 202
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "amr"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_RECORDER_TYPES:[Ljava/lang/String;

    .line 208
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "doc"

    aput-object v1, v0, v3

    const-string v1, "xls"

    aput-object v1, v0, v4

    const-string v1, "ppt"

    aput-object v1, v0, v5

    const-string v1, "pdf"

    aput-object v1, v0, v6

    const-string v1, "docx"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "xlsx"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pptx"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_OFFICE_TYPES:[Ljava/lang/String;

    .line 258
    const-string v0, "-"

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->filename_SEQUENCE_SEPARATOR:Ljava/lang/String;

    .line 273
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->SavePathDirs:[I

    .line 278
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->PHONE_ROOT:Ljava/lang/String;

    .line 279
    invoke-static {}, Lcom/oppo/os/OppoEnvironment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->MEMORY_CARD_ROOT:Ljava/lang/String;

    return-void

    .line 273
    nop

    :array_0
    .array-data 0x4
        0x60t 0x0t 0x4t 0x7ft
        0x61t 0x0t 0x4t 0x7ft
        0x62t 0x0t 0x4t 0x7ft
        0x67t 0x0t 0x4t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDirTypeFromExtension(Ljava/lang/String;)I
    .locals 4
    .parameter "extension"

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, dirId:I
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extension:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    if-nez p0, :cond_0

    .line 360
    const v1, 0x7f040067

    .line 404
    :goto_0
    return v1

    .line 363
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_MUSIC_TYPES:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    const-string v1, "BluetoothOpp"

    const-string v2, "music file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const v0, 0x7f040060

    :goto_1
    move v1, v0

    .line 404
    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_IMAGE_TYPES:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    const-string v1, "BluetoothOpp"

    const-string v2, "image file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const v0, 0x7f040061

    goto :goto_1

    .line 373
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_VEDIO_TYPES:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 375
    const-string v1, "BluetoothOpp"

    const-string v2, "vedio file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const v0, 0x7f040062

    goto :goto_1

    .line 378
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_BOOK_TYPES:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 380
    const-string v1, "BluetoothOpp"

    const-string v2, "book file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const v0, 0x7f040063

    goto :goto_1

    .line 383
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_THEME_TYPES:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 385
    const-string v1, "BluetoothOpp"

    const-string v2, "theme file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const v0, 0x7f040064

    goto :goto_1

    .line 388
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_RECORDER_TYPES:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 390
    const-string v1, "BluetoothOpp"

    const-string v2, "recorder file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const v0, 0x7f040065

    goto :goto_1

    .line 393
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_OFFICE_TYPES:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 395
    const-string v1, "BluetoothOpp"

    const-string v2, "office file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const v0, 0x7f040066

    goto/16 :goto_1

    .line 400
    :cond_7
    const-string v1, "BluetoothOpp"

    const-string v2, "other file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const v0, 0x7f040067

    goto/16 :goto_1
.end method

.method public static getExtensionFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    .line 318
    if-nez p0, :cond_0

    .line 320
    const/4 v1, 0x0

    .line 332
    :goto_0
    return-object v1

    .line 323
    :cond_0
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 324
    .local v0, dotIndex:I
    const/4 v1, 0x0

    .line 326
    .local v1, extension:Ljava/lang/String;
    if-gez v0, :cond_1

    .line 328
    const-string v2, "BluetoothOpp"

    const-string v3, "no extension"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isCalendarFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 481
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCalendarFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-static {p0}, Lcom/android/bluetooth/opp/Constants;->getExtensionFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, extension:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_CALENDAR_TYPES:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    const-string v1, "BluetoothOpp"

    const-string v2, "calendar file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v1, 0x1

    .line 488
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isContactFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 493
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isContactFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {p0}, Lcom/android/bluetooth/opp/Constants;->getExtensionFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, extension:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_CONTACT_TYPES:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    const-string v1, "BluetoothOpp"

    const-string v2, "contact file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v1, 0x1

    .line 500
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static logHeader(Ljavax/obex/HeaderSet;)V
    .locals 4
    .parameter "hs"

    .prologue
    .line 553
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dumping HeaderSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :try_start_0
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COUNT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc0

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LENGTH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc3

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIME_ISO_8601 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x44

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIME_4_BYTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc4

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DESCRIPTION : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TARGET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x46

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x47

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WHO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4a

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBJECT_CLASS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4f

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_PARAMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump HeaderSet error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 543
    if-nez p0, :cond_0

    .line 545
    const/4 v1, 0x0

    .line 549
    :goto_0
    return v1

    .line 547
    :cond_0
    const-string v1, "\\*"

    const-string v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 549
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    const/4 v4, 0x0

    .line 530
    if-nez p0, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v4

    .line 534
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 535
    .local v3, matchType:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 536
    const/4 v4, 0x1

    goto :goto_0

    .line 534
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static sendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-static {p2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.TRANSFER_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    const-string v1, "com.android.bluetooth"

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 314
    :cond_0
    return-void
.end method

.method public static sendIntentIfInBoundSessionCompleted(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 508
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 510
    const-string v0, "BluetoothOpp"

    const-string v1, "maybe just received calendar/contact file"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :goto_0
    return-void

    .line 513
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.ALL_TRANSFERS_IN_INBOUND_SESSION_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    const-string v1, "com.android.bluetooth"

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 516
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 517
    const-string v3, "keys_in_statistic"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 518
    const-string v1, "sums_in_statistic"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 519
    const-string v1, "last_received_file_in_statistic"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static sendIntentIfOutBoundSessionCompleted(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 524
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.ALL_TRANSFERS_IN_OUTBOUND_SESSION_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    const-string v1, "com.android.bluetooth"

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 527
    return-void
.end method

.method public static updateInBoundSessionStatus(Landroid/content/Context;JLjava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "timestamp"
    .parameter "lastReceivedFileInDIr"

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status >= \'200\' AND direction == 1 AND timestamp == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "total_bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "current_bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "hint"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "timestamp"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 414
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 415
    .local v10, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 416
    .local v7, dirId:I
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 417
    .local v9, integer:Ljava/lang/Integer;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 418
    .local v8, hashMap:Ljava/util/HashMap;
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 420
    if-nez v6, :cond_0

    .line 421
    const-string v0, "BluetoothOpp"

    const-string v1, "updateInBoundSessionStatus:no opp is transfering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 425
    const-string v0, "BluetoothOpp"

    const-string v1, "updateInBoundSessionStatus:no opp is transfering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 431
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 433
    const-string v0, "hint"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 434
    invoke-static {v10}, Lcom/android/bluetooth/opp/Constants;->isCalendarFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v10}, Lcom/android/bluetooth/opp/Constants;->isContactFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    :cond_2
    const-string v0, "BluetoothOpp"

    const-string v1, "maybe calendar or contact file"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 439
    :cond_3
    invoke-static {v10}, Lcom/android/bluetooth/opp/Constants;->getExtensionFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/opp/Constants;->getDirTypeFromExtension(Ljava/lang/String;)I

    move-result v7

    .line 440
    new-instance v9, Ljava/lang/Integer;

    .end local v9           #integer:Ljava/lang/Integer;
    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 441
    .restart local v9       #integer:Ljava/lang/Integer;
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 443
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 447
    :cond_4
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 450
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 453
    invoke-static {p0, v8, p3}, Lcom/android/bluetooth/opp/Constants;->sendIntentIfInBoundSessionCompleted(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateOutBoundSessionStatus(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "timestamp"

    .prologue
    const/4 v4, 0x0

    .line 457
    const-string v0, "BluetoothOpp"

    const-string v1, "updateOutBoundSessionStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status >= \'400\' AND direction == 0 AND timestamp == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "total_bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "current_bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v2, v5

    const/4 v5, 0x1

    const-string v7, "hint"

    aput-object v7, v2, v5

    const/4 v5, 0x2

    const-string v7, "timestamp"

    aput-object v7, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 466
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 467
    const-string v0, "BluetoothOpp"

    const-string v1, "cursour=null;updateOutBoundSessionStatus:no opp is transfering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 471
    const-string v0, "BluetoothOpp"

    const-string v1, "count=0;updateOutBoundSessionStatus:no opp is transfering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 475
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 476
    invoke-static {p0}, Lcom/android/bluetooth/opp/Constants;->sendIntentIfOutBoundSessionCompleted(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static updateShareStatus(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 297
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 298
    .local v1, updateValues:Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 300
    invoke-static {p0, v0, p2}, Lcom/android/bluetooth/opp/Constants;->sendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 301
    return-void
.end method
