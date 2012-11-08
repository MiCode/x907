.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPA:I = 0xa

.field public static final FILE_TYPE_3GPP:I = 0x19

.field public static final FILE_TYPE_3GPP2:I = 0x1a

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AC3:I = 0xb

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_APE:I = 0xd

.field public static final FILE_TYPE_APK:I = 0x48

.field public static final FILE_TYPE_ASF:I = 0x1c

.field public static final FILE_TYPE_AVI:I = 0x1f

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x2c

.field public static final FILE_TYPE_CSV:I = 0x3d

.field public static final FILE_TYPE_DASH:I = 0x37

.field public static final FILE_TYPE_DAT:I = 0x3f

.field public static final FILE_TYPE_DIVX:I = 0x20

.field public static final FILE_TYPE_DOC:I = 0x42

.field public static final FILE_TYPE_DOCX:I = 0x43

.field public static final FILE_TYPE_EPUB:I = 0x4e

.field public static final FILE_TYPE_F4V:I = 0x26

.field public static final FILE_TYPE_FL:I = 0x5b

.field public static final FILE_TYPE_FLAC:I = 0xe

.field public static final FILE_TYPE_FLV:I = 0x25

.field public static final FILE_TYPE_GIF:I = 0x2a

.field public static final FILE_TYPE_HTML:I = 0x4c

.field public static final FILE_TYPE_HTTPLIVE:I = 0x36

.field public static final FILE_TYPE_ICS:I = 0x41

.field public static final FILE_TYPE_IMY:I = 0x16

.field public static final FILE_TYPE_JPEG:I = 0x29

.field public static final FILE_TYPE_LRC:I = 0x4d

.field public static final FILE_TYPE_M3U:I = 0x33

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_MID:I = 0x14

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1d

.field public static final FILE_TYPE_MOV:I = 0x24

.field public static final FILE_TYPE_MP2:I = 0x10

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1e

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x17

.field public static final FILE_TYPE_MS_EXCEL:I = 0x52

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x53

.field public static final FILE_TYPE_MS_WORD:I = 0x51

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_OPUB:I = 0x4f

.field public static final FILE_TYPE_PCM:I = 0x13

.field public static final FILE_TYPE_PDF:I = 0x4a

.field public static final FILE_TYPE_PLS:I = 0x34

.field public static final FILE_TYPE_PNG:I = 0x2b

.field public static final FILE_TYPE_PPT:I = 0x46

.field public static final FILE_TYPE_PPTX:I = 0x47

.field public static final FILE_TYPE_QCP:I = 0xc

.field public static final FILE_TYPE_RA:I = 0x11

.field public static final FILE_TYPE_RAR:I = 0x55

.field public static final FILE_TYPE_RM:I = 0x22

.field public static final FILE_TYPE_SMF:I = 0x15

.field public static final FILE_TYPE_THEME:I = 0x49

.field public static final FILE_TYPE_TXT:I = 0x4b

.field public static final FILE_TYPE_VCF:I = 0x3e

.field public static final FILE_TYPE_VCS:I = 0x40

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x2d

.field public static final FILE_TYPE_WEBM:I = 0x27

.field public static final FILE_TYPE_WEBMA:I = 0x12

.field public static final FILE_TYPE_WEBP:I = 0x2e

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x1b

.field public static final FILE_TYPE_WPL:I = 0x35

.field public static final FILE_TYPE_XLS:I = 0x44

.field public static final FILE_TYPE_XLSX:I = 0x45

.field public static final FILE_TYPE_XML:I = 0x50

.field public static final FILE_TYPE_ZIP:I = 0x54

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_DRM_FILE_TYPE:I = 0x5b

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x29

.field private static final FIRST_MIDI_FILE_TYPE:I = 0x14

.field private static final FIRST_OTHER_FILE_TYPE:I = 0x3d

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x33

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x17

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final LAST_AUDIO_FILE_TYPE:I = 0x13

.field private static final LAST_DRM_FILE_TYPE:I = 0x5b

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x2e

.field private static final LAST_MIDI_FILE_TYPE:I = 0x16

.field private static final LAST_OTHER_FILE_TYPE:I = 0x55

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x37

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x27

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xc8

.field public static final OPPO_DEFAULT_ALARM:Ljava/lang/String; = "oppo_default_alarm"

.field public static final OPPO_DEFAULT_NOTIFICATION:Ljava/lang/String; = "oppo_default_notification"

.field public static final OPPO_DEFAULT_RINGTONE:Ljava/lang/String; = "oppo_default_ringtone"

.field public static final OPPO_SCAN_ALL_ACTION:Ljava/lang/String; = "oppo.intent.action.MEDIA_SCAN_ALL"

.field public static final OPPO_SCAN_DIRECTORY_ACTION:Ljava/lang/String; = "oppo.intent.action.MEDIA_SCAN_DIRECTORY"

.field private static build_id:Ljava/lang/String;

.field private static error:I

.field public static final sFileExtensions:Ljava/lang/String;

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static socinfo:[C

.field private static socinfo_fd:Ljava/io/FileReader;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x1e

    const v9, 0xb984

    const/16 v8, 0x17

    const/16 v7, 0x300b

    const/16 v6, 0x14

    .line 166
    new-array v2, v6, [C

    sput-object v2, Landroid/media/MediaFile;->socinfo:[C

    .line 179
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 181
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 184
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 187
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 190
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 267
    const-string v2, "MP3"

    const/4 v3, 0x1

    const-string v4, "audio/mpeg"

    const/16 v5, 0x3009

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 268
    const-string v2, "M4A"

    const/4 v3, 0x2

    const-string v4, "audio/mp4"

    invoke-static {v2, v3, v4, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 269
    const-string v2, "WAV"

    const/4 v3, 0x3

    const-string v4, "audio/x-wav"

    const/16 v5, 0x3008

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 271
    const-string v2, "AMR"

    const/4 v3, 0x4

    const-string v4, "audio/amr"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    const-string v2, "AWB"

    const/4 v3, 0x5

    const-string v4, "audio/amr-wb"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    const-string v2, "DIVX"

    const/16 v3, 0x20

    const-string/jumbo v4, "video/divx"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const-string v2, "WMA"

    const/4 v3, 0x6

    const-string v4, "audio/x-ms-wma"

    const v5, 0xb901

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 277
    :cond_0
    const-string v2, "QCP"

    const/16 v3, 0xc

    const-string v4, "audio/qcp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 278
    const-string v2, "OGG"

    const/4 v3, 0x7

    const-string v4, "application/ogg"

    const v5, 0xb902

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 279
    const-string v2, "OGA"

    const/4 v3, 0x7

    const-string v4, "application/ogg"

    const v5, 0xb902

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 280
    const-string v2, "WEBM"

    const/16 v3, 0x12

    const-string v4, "audio/webm"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 281
    const-string v2, "AAC"

    const/16 v3, 0x8

    const-string v4, "audio/aac"

    const v5, 0xb903

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 282
    const-string v2, "AAC"

    const/16 v3, 0x8

    const-string v4, "audio/aac-adts"

    const v5, 0xb903

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 283
    const-string v2, "MKA"

    const/16 v3, 0x9

    const-string v4, "audio/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    const-string v2, "3GPP"

    const/16 v3, 0xa

    const-string v4, "audio/3gpp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    const-string v2, "FLAC"

    const/16 v3, 0xe

    const-string v4, "audio/x-flac"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    const-string v2, "APE"

    const/16 v3, 0xd

    const-string v4, "audio/x-ape"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    const-string v2, "MAC"

    const/16 v3, 0xd

    const-string v4, "audio/x-ape"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 289
    const-string v2, "MP2"

    const/16 v3, 0x10

    const-string v4, "audio/mpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    const-string v2, "RA"

    const/16 v3, 0x11

    const-string v4, "audio/x-rn-ra"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    const-string v2, "RAM"

    const/16 v3, 0x11

    const-string v4, "audio/x-rn-ra"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    const-string v2, "MID"

    const-string v3, "audio/midi"

    invoke-static {v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    const-string v2, "MIDI"

    const-string v3, "audio/midi"

    invoke-static {v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    const-string v2, "XMF"

    const-string v3, "audio/midi"

    invoke-static {v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    const-string v2, "RTTTL"

    const-string v3, "audio/midi"

    invoke-static {v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 298
    const-string v2, "SMF"

    const/16 v3, 0x15

    const-string v4, "audio/sp-midi"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    const-string v2, "IMY"

    const/16 v3, 0x16

    const-string v4, "audio/imelody"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    const-string v2, "RTX"

    const-string v3, "audio/midi"

    invoke-static {v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    const-string v2, "OTA"

    const-string v3, "audio/midi"

    invoke-static {v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 302
    const-string v2, "MXMF"

    const-string v3, "audio/midi"

    invoke-static {v2, v6, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 304
    const-string v2, "MPEG"

    const-string/jumbo v3, "video/mpeg"

    invoke-static {v2, v8, v3, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 305
    const-string v2, "MPG"

    const-string/jumbo v3, "video/mpeg"

    invoke-static {v2, v8, v3, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 306
    const-string v2, "MP4"

    const-string/jumbo v3, "video/mp4"

    invoke-static {v2, v8, v3, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 307
    const-string v2, "M4V"

    const-string/jumbo v3, "video/mp4"

    invoke-static {v2, v8, v3, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 308
    const-string v2, "3GP"

    const/16 v3, 0x19

    const-string/jumbo v4, "video/3gpp"

    invoke-static {v2, v3, v4, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 309
    const-string v2, "3GPP"

    const/16 v3, 0x19

    const-string/jumbo v4, "video/3gpp"

    invoke-static {v2, v3, v4, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 310
    const-string v2, "3G2"

    const/16 v3, 0x1a

    const-string/jumbo v4, "video/3gpp2"

    invoke-static {v2, v3, v4, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 311
    const-string v2, "3GPP2"

    const/16 v3, 0x1a

    const-string/jumbo v4, "video/3gpp2"

    invoke-static {v2, v3, v4, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 312
    const-string v2, "MKV"

    const/16 v3, 0x1d

    const-string/jumbo v4, "video/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 313
    const-string v2, "WEBM"

    const/16 v3, 0x1d

    const-string/jumbo v4, "video/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    const-string v2, "TS"

    const-string/jumbo v3, "video/mp2ts"

    invoke-static {v2, v10, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    const-string v2, "TP"

    const-string/jumbo v3, "video/mp2ts"

    invoke-static {v2, v10, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    const-string v2, "MPG"

    const-string/jumbo v3, "video/mp2ts"

    invoke-static {v2, v10, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 317
    const-string v2, "WEBM"

    const/16 v3, 0x27

    const-string/jumbo v4, "video/webm"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    const-string v2, "AVI"

    const/16 v3, 0x1f

    const-string/jumbo v4, "video/avi"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    const-string v2, "DIVX"

    const/16 v3, 0x20

    const-string/jumbo v4, "video/divx"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    const-string v2, "WMV"

    const/16 v3, 0x1b

    const-string/jumbo v4, "video/x-ms-wmv"

    const v5, 0xb981

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 323
    const-string v2, "ASF"

    const/16 v3, 0x1c

    const-string/jumbo v4, "video/x-ms-asf"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 326
    :cond_1
    const-string v2, "RM"

    const/16 v3, 0x22

    const-string/jumbo v4, "video/x-rn-rv"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    const-string v2, "RV"

    const/16 v3, 0x22

    const-string/jumbo v4, "video/x-rn-rv"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    const-string v2, "RMVB"

    const/16 v3, 0x22

    const-string/jumbo v4, "video/x-rn-rv"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    const-string v2, "MOV"

    const/16 v3, 0x24

    const-string/jumbo v4, "video/quicktime"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 330
    const-string v2, "FLV"

    const/16 v3, 0x25

    const-string/jumbo v4, "video/x-flv"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 331
    const-string v2, "F4V"

    const/16 v3, 0x26

    const-string/jumbo v4, "video/f4v"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    const-string v2, "JPG"

    const/16 v3, 0x29

    const-string v4, "image/jpeg"

    const/16 v5, 0x3801

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 335
    const-string v2, "JPEG"

    const/16 v3, 0x29

    const-string v4, "image/jpeg"

    const/16 v5, 0x3801

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 336
    const-string v2, "GIF"

    const/16 v3, 0x2a

    const-string v4, "image/gif"

    const/16 v5, 0x3807

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 337
    const-string v2, "PNG"

    const/16 v3, 0x2b

    const-string v4, "image/png"

    const/16 v5, 0x380b

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 338
    const-string v2, "BMP"

    const/16 v3, 0x2c

    const-string v4, "image/x-ms-bmp"

    const/16 v5, 0x3804

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 339
    const-string v2, "WBMP"

    const/16 v3, 0x2d

    const-string v4, "image/vnd.wap.wbmp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    const-string v2, "WEBP"

    const/16 v3, 0x2e

    const-string v4, "image/webp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 342
    const-string v2, "M3U"

    const/16 v3, 0x33

    const-string v4, "audio/x-mpegurl"

    const v5, 0xba11

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 343
    const-string v2, "M3U"

    const/16 v3, 0x33

    const-string v4, "application/x-mpegurl"

    const v5, 0xba11

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 344
    const-string v2, "PLS"

    const/16 v3, 0x34

    const-string v4, "audio/x-scpls"

    const v5, 0xba14

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 345
    const-string v2, "WPL"

    const/16 v3, 0x35

    const-string v4, "application/vnd.ms-wpl"

    const v5, 0xba10

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 346
    const-string v2, "AC3"

    const/16 v3, 0xb

    const-string v4, "audio/ac3"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    const-string v2, "CSV"

    const/16 v3, 0x3d

    const-string v4, "application/excel"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    const-string v2, "VCF"

    const/16 v3, 0x3e

    const-string/jumbo v4, "text/x-vcard"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 352
    const-string v2, "DAT"

    const/16 v3, 0x3f

    const-string v4, "application/octet-stream"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    const-string v2, "VCS"

    const/16 v3, 0x40

    const-string/jumbo v4, "text/x-vcalendar"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    const-string v2, "ICS"

    const/16 v3, 0x41

    const-string/jumbo v4, "text/calendar"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 355
    const-string v2, "DOC"

    const/16 v3, 0x42

    const-string v4, "application/msdoc"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 356
    const-string v2, "DOCX"

    const/16 v3, 0x43

    const-string v4, "application/x-msdoc"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 357
    const-string v2, "XLS"

    const/16 v3, 0x44

    const-string v4, "application/vnd.ms-excel"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 358
    const-string v2, "XLSX"

    const/16 v3, 0x45

    const-string v4, "application/vnd.x-ms-excel"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 359
    const-string v2, "PPT"

    const/16 v3, 0x46

    const-string v4, "application/vnd.ms-powerpoint"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 360
    const-string v2, "PPTX"

    const/16 v3, 0x47

    const-string v4, "application/vnd.x-ms-powerpoint"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 361
    const-string v2, "APK"

    const/16 v3, 0x48

    const-string v4, "application/apk"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 362
    const-string v2, "THEME"

    const/16 v3, 0x49

    const-string v4, "application/oppo.theme"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    const-string v2, "PDF"

    const/16 v3, 0x4a

    const-string v4, "application/pdf"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 364
    const-string v2, "TXT"

    const/16 v3, 0x4b

    const-string v4, "application/txt"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    const-string v2, "HTML"

    const/16 v3, 0x4c

    const-string v4, "application/html"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    const-string v2, "HTM"

    const/16 v3, 0x4c

    const-string v4, "application/html"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 367
    const-string v2, "LRC"

    const/16 v3, 0x4d

    const-string v4, "application/lrc"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 368
    const-string v2, "EPUB"

    const/16 v3, 0x4e

    const-string v4, "application/epub"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    const-string v2, "OPUB"

    const/16 v3, 0x4f

    const-string v4, "application/opub"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 373
    const-string v2, "ZIP"

    const/16 v3, 0x54

    const-string v4, "application/zip"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 374
    const-string v2, "RAR"

    const/16 v3, 0x55

    const-string v4, "application/rar"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 378
    const-string v2, "M3U8"

    const/16 v3, 0x36

    const-string v4, "application/vnd.apple.mpegurl"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 379
    const-string v2, "M3U8"

    const/16 v3, 0x36

    const-string v4, "audio/mpegurl"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 380
    const-string v2, "M3U8"

    const/16 v3, 0x36

    const-string v4, "audio/x-mpegurl"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 381
    const-string v2, "MPD"

    const/16 v3, 0x37

    const-string v4, "application/dash+xml"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 383
    const-string v2, "FL"

    const/16 v3, 0x5b

    const-string v4, "application/x-android-drm-fl"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 384
    const-string v2, "MPG"

    const/16 v3, 0xc8

    const-string/jumbo v4, "video/mp2p"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 385
    const-string v2, "MPEG"

    const/16 v3, 0xc8

    const-string/jumbo v4, "video/mp2p"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 391
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 393
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 397
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 193
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "mtpFormatCode"

    .prologue
    .line 198
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    sget-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public static getDefaultAlarmUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "context"

    .prologue
    .line 513
    const-string/jumbo v0, "oppo_default_alarm"

    invoke-static {p0, v0}, Landroid/media/MediaFile;->getUriFor(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultNotificationUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "context"

    .prologue
    .line 519
    const-string/jumbo v0, "oppo_default_notification"

    invoke-static {p0, v0}, Landroid/media/MediaFile;->getUriFor(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "context"

    .prologue
    .line 507
    const-string/jumbo v0, "oppo_default_ringtone"

    invoke-static {p0, v0}, Landroid/media/MediaFile;->getUriFor(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 451
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 452
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 453
    add-int/lit8 v1, v1, 0x1

    .line 454
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 455
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 459
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 460
    .local v0, lastDot:I
    if-lez v0, :cond_1

    .line 461
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 463
    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 3
    .parameter "path"

    .prologue
    .line 436
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 437
    .local v0, lastDot:I
    if-gez v0, :cond_0

    .line 438
    const/4 v1, 0x0

    .line 439
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFile$MediaFileType;

    goto :goto_0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 467
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 468
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 477
    if-eqz p1, :cond_0

    .line 478
    sget-object v3, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 479
    .local v2, value:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 480
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 491
    .end local v2           #value:Ljava/lang/Integer;
    :goto_0
    return v3

    .line 483
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 484
    .local v1, lastDot:I
    if-lez v1, :cond_1

    .line 485
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, extension:Ljava/lang/String;
    sget-object v3, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 487
    .restart local v2       #value:Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 488
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 491
    .end local v0           #extension:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/Integer;
    :cond_1
    const/16 v3, 0x3000

    goto :goto_0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 472
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 473
    .local v0, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 2
    .parameter "formatCode"

    .prologue
    .line 495
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getUriFor(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "context"
    .parameter "name"

    .prologue
    .line 524
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 527
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 533
    :goto_0
    return-object v1

    .line 531
    :cond_0
    const-string v1, "MediaFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not set?!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAudioFileType(I)Z
    .locals 2
    .parameter "fileType"

    .prologue
    const/4 v0, 0x1

    .line 401
    if-lt p0, v0, :cond_0

    const/16 v1, 0x13

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x14

    if-lt p0, v1, :cond_2

    const/16 v1, 0x16

    if-gt p0, v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    const/16 v0, 0x5b

    .line 431
    if-lt p0, v0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 415
    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 443
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 444
    .local v0, fileType:I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOtherFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 426
    const/16 v0, 0x3d

    if-lt p0, v0, :cond_0

    const/16 v0, 0x55

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 420
    const/16 v0, 0x33

    if-lt p0, v0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 2
    .parameter "fileType"

    .prologue
    const/16 v1, 0xc8

    .line 408
    const/16 v0, 0x17

    if-lt p0, v0, :cond_0

    const/16 v0, 0x27

    if-le p0, v0, :cond_1

    :cond_0
    if-lt p0, v1, :cond_2

    if-gt p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWMAEnabled()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 205
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v2

    .line 207
    .local v2, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/devices/system/soc/soc0/build_id"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    sput-object v7, Landroid/media/MediaFile;->socinfo_fd:Ljava/io/FileReader;

    .line 208
    sget-object v7, Landroid/media/MediaFile;->socinfo_fd:Ljava/io/FileReader;

    sget-object v8, Landroid/media/MediaFile;->socinfo:[C

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    sput v7, Landroid/media/MediaFile;->error:I

    .line 209
    sget v7, Landroid/media/MediaFile;->error:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 210
    const-string v7, "MediaFile"

    const-string v8, "error in reading from build_id file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    sget-object v7, Landroid/media/MediaFile;->socinfo_fd:Ljava/io/FileReader;

    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    new-instance v7, Ljava/lang/String;

    sget-object v8, Landroid/media/MediaFile;->socinfo:[C

    const/16 v9, 0x11

    invoke-direct {v7, v8, v9, v6}, Ljava/lang/String;-><init>([CII)V

    sput-object v7, Landroid/media/MediaFile;->build_id:Ljava/lang/String;

    .line 216
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 217
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 218
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 219
    .local v1, decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v7, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v1, v7, :cond_4

    .line 220
    const-string/jumbo v7, "msm7630_surf"

    const-string/jumbo v8, "ro.board.platform"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 221
    sget-object v7, Landroid/media/MediaFile;->build_id:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 232
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_1
    :goto_2
    return v5

    .line 212
    .end local v0           #count:I
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 213
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "MediaFile"

    const-string v8, "Exception in FileReader"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v1       #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    .restart local v4       #i:I
    :cond_2
    move v5, v6

    .line 225
    goto :goto_2

    :cond_3
    move v5, v6

    .line 228
    goto :goto_2

    .line 217
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private static isWMVEnabled()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 236
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v2

    .line 238
    .local v2, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/devices/system/soc/soc0/build_id"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    sput-object v7, Landroid/media/MediaFile;->socinfo_fd:Ljava/io/FileReader;

    .line 239
    sget-object v7, Landroid/media/MediaFile;->socinfo_fd:Ljava/io/FileReader;

    sget-object v8, Landroid/media/MediaFile;->socinfo:[C

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    sput v7, Landroid/media/MediaFile;->error:I

    .line 240
    sget v7, Landroid/media/MediaFile;->error:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 241
    const-string v7, "MediaFile"

    const-string v8, "error in reading from build_id file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    sget-object v7, Landroid/media/MediaFile;->socinfo_fd:Ljava/io/FileReader;

    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    new-instance v7, Ljava/lang/String;

    sget-object v8, Landroid/media/MediaFile;->socinfo:[C

    const/16 v9, 0x11

    invoke-direct {v7, v8, v9, v6}, Ljava/lang/String;-><init>([CII)V

    sput-object v7, Landroid/media/MediaFile;->build_id:Ljava/lang/String;

    .line 247
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 248
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 249
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 250
    .local v1, decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v7, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v1, v7, :cond_4

    .line 251
    const-string/jumbo v7, "msm7630_surf"

    const-string/jumbo v8, "ro.board.platform"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 252
    sget-object v7, Landroid/media/MediaFile;->build_id:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 263
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_1
    :goto_2
    return v5

    .line 243
    .end local v0           #count:I
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 244
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "MediaFile"

    const-string v8, "Exception in FileReader"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v1       #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    .restart local v4       #i:I
    :cond_2
    move v5, v6

    .line 256
    goto :goto_2

    :cond_3
    move v5, v6

    .line 259
    goto :goto_2

    .line 248
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
