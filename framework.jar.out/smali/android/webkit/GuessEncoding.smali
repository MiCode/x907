.class public Landroid/webkit/GuessEncoding;
.super Ljava/lang/Object;
.source "GuessEncoding.java"


# static fields
.field static final F:C = '\u0000'

.field static final HOWMANY:I = 0x40000

.field static final I:C = '\u0002'

.field static final T:C = '\u0001'

.field static final X:C = '\u0003'

.field private static mTextChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    const/16 v0, 0x100

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/webkit/GuessEncoding;->mTextChars:[C

    return-void

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x1t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncodingForTXT(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "filePath"

    .prologue
    const/4 v9, 0x0

    const/high16 v10, 0x4

    const/4 v11, 0x1

    .line 53
    const-string v3, "GBK"

    .line 55
    .local v3, encoding:Ljava/lang/String;
    new-array v0, v10, [B

    .line 56
    .local v0, buf:[B
    const/4 v7, 0x0

    .line 58
    .local v7, nbytes:I
    const/4 v5, 0x0

    .line 59
    .local v5, input:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 61
    .local v4, inc:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v5           #input:Ljava/io/FileInputStream;
    .local v6, input:Ljava/io/FileInputStream;
    if-nez v6, :cond_1

    move-object v5, v6

    .line 102
    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v9

    .line 65
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 66
    const/high16 v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 67
    .local v1, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 68
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 69
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 70
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 77
    .end local v1           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v0, :cond_0

    .line 81
    invoke-static {v0, v7}, Landroid/webkit/GuessEncoding;->looksAscii([BI)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 82
    const-string v3, "US-ASCII"

    .line 101
    :cond_2
    :goto_2
    const/4 v0, 0x0

    move-object v9, v3

    .line 102
    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 75
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 83
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    invoke-static {v0, v7}, Landroid/webkit/GuessEncoding;->looksUtf8WithBOM([BI)I

    move-result v9

    if-lez v9, :cond_4

    .line 84
    const-string v3, "UTF-8"

    goto :goto_2

    .line 85
    :cond_4
    const/4 v9, 0x0

    invoke-static {v0, v9, v7}, Landroid/webkit/GuessEncoding;->looksUtf8([BII)I

    move-result v9

    if-le v9, v11, :cond_5

    .line 86
    const-string v3, "UTF-8"

    goto :goto_2

    .line 87
    :cond_5
    invoke-static {v0, v7}, Landroid/webkit/GuessEncoding;->looksUcs16([BI)I

    move-result v8

    .local v8, ucsType:I
    if-eqz v8, :cond_7

    .line 88
    if-ne v8, v11, :cond_6

    .line 89
    const-string v3, "UTF-16LE"

    goto :goto_2

    .line 91
    :cond_6
    const-string v3, "UTF-16BE"

    goto :goto_2

    .line 93
    :cond_7
    invoke-static {v0, v7}, Landroid/webkit/GuessEncoding;->looksGbk([BI)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 94
    const-string v3, "GBK"

    goto :goto_2

    .line 95
    :cond_8
    invoke-static {v0, v7}, Landroid/webkit/GuessEncoding;->looksBig5([BI)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 96
    const-string v3, "BIG5"

    goto :goto_2

    .line 73
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v8           #ucsType:I
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static getEncodingType([B)Ljava/lang/String;
    .locals 6
    .parameter "buf"

    .prologue
    const/4 v5, 0x1

    .line 21
    const-string/jumbo v0, "utf8"

    .line 25
    .local v0, encoding:Ljava/lang/String;
    array-length v3, p0

    const/high16 v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 29
    .local v1, nbytes:I
    invoke-static {p0, v1}, Landroid/webkit/GuessEncoding;->looksAscii([BI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    const-string v0, "US-ASCII"

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :cond_1
    invoke-static {p0, v1}, Landroid/webkit/GuessEncoding;->looksUtf8WithBOM([BI)I

    move-result v3

    if-lez v3, :cond_2

    .line 32
    const-string v0, "UTF-8"

    goto :goto_0

    .line 33
    :cond_2
    const/4 v3, 0x0

    invoke-static {p0, v3, v1}, Landroid/webkit/GuessEncoding;->looksUtf8([BII)I

    move-result v3

    if-le v3, v5, :cond_3

    .line 34
    const-string v0, "UTF-8"

    goto :goto_0

    .line 35
    :cond_3
    invoke-static {p0, v1}, Landroid/webkit/GuessEncoding;->looksUcs16([BI)I

    move-result v2

    .local v2, ucsType:I
    if-eqz v2, :cond_5

    .line 36
    if-ne v2, v5, :cond_4

    .line 37
    const-string v0, "UTF-16LE"

    goto :goto_0

    .line 39
    :cond_4
    const-string v0, "UTF-16BE"

    goto :goto_0

    .line 41
    :cond_5
    invoke-static {p0, v1}, Landroid/webkit/GuessEncoding;->looksGbk([BI)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 42
    const-string v0, "GBK"

    goto :goto_0

    .line 43
    :cond_6
    invoke-static {p0, v1}, Landroid/webkit/GuessEncoding;->looksBig5([BI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    const-string v0, "BIG5"

    goto :goto_0
.end method

.method private static looksAscii([BI)Z
    .locals 5
    .parameter "buf"
    .parameter "nbytes"

    .prologue
    const/4 v3, 0x1

    .line 186
    array-length v4, p0

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 187
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 188
    aget-byte v2, p0, v0

    .line 189
    .local v2, textIndex:I
    if-gez v2, :cond_0

    .line 190
    add-int/lit16 v2, v2, 0x100

    .line 192
    :cond_0
    sget-object v4, Landroid/webkit/GuessEncoding;->mTextChars:[C

    aget-char v4, v4, v2

    and-int/lit16 v1, v4, 0xff

    .line 193
    .local v1, t:I
    if-eq v1, v3, :cond_2

    .line 194
    const/4 v3, 0x0

    .line 197
    .end local v1           #t:I
    .end local v2           #textIndex:I
    :cond_1
    return v3

    .line 187
    .restart local v1       #t:I
    .restart local v2       #textIndex:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static looksBig5([BI)Z
    .locals 6
    .parameter "buf"
    .parameter "nbytes"

    .prologue
    const/16 v5, 0xa1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 231
    const/4 v4, 0x2

    if-ge p1, v4, :cond_0

    .line 237
    :goto_0
    return v3

    .line 234
    :cond_0
    aget-byte v4, p0, v3

    and-int/lit16 v0, v4, 0xff

    .line 235
    .local v0, high:I
    aget-byte v4, p0, v2

    and-int/lit16 v1, v4, 0xff

    .line 237
    .local v1, low:I
    if-lt v0, v5, :cond_3

    const/16 v4, 0xf9

    if-gt v0, v4, :cond_3

    const/16 v4, 0x40

    if-lt v1, v4, :cond_1

    const/16 v4, 0x7e

    if-le v1, v4, :cond_2

    :cond_1
    if-lt v1, v5, :cond_3

    const/16 v4, 0xfe

    if-gt v1, v4, :cond_3

    :cond_2
    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private static looksGbk([BI)Z
    .locals 6
    .parameter "buf"
    .parameter "nbytes"

    .prologue
    const/16 v5, 0xfe

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 220
    const/4 v4, 0x2

    if-ge p1, v4, :cond_0

    .line 226
    :goto_0
    return v3

    .line 223
    :cond_0
    aget-byte v4, p0, v3

    and-int/lit16 v0, v4, 0xff

    .line 224
    .local v0, high:I
    aget-byte v4, p0, v2

    and-int/lit16 v1, v4, 0xff

    .line 226
    .local v1, low:I
    const/16 v4, 0x81

    if-lt v0, v4, :cond_1

    if-gt v0, v5, :cond_1

    const/16 v4, 0x40

    if-lt v1, v4, :cond_1

    if-gt v1, v5, :cond_1

    const/16 v4, 0x7f

    if-eq v1, v4, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private static looksLatin1([BI)Z
    .locals 5
    .parameter "buf"
    .parameter "nbytes"

    .prologue
    const/4 v3, 0x1

    .line 249
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 250
    aget-byte v2, p0, v0

    .line 251
    .local v2, textIndex:I
    if-gez v2, :cond_0

    .line 252
    add-int/lit16 v2, v2, 0x100

    .line 254
    :cond_0
    sget-object v4, Landroid/webkit/GuessEncoding;->mTextChars:[C

    aget-char v4, v4, v2

    and-int/lit16 v1, v4, 0xff

    .line 255
    .local v1, t:I
    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    .line 256
    const/4 v3, 0x0

    .line 260
    .end local v1           #t:I
    .end local v2           #textIndex:I
    :cond_1
    return v3

    .line 249
    .restart local v1       #t:I
    .restart local v2       #textIndex:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static looksUcs16([BI)I
    .locals 8
    .parameter "buf"
    .parameter "nbytes"

    .prologue
    const/16 v7, 0xff

    const/16 v6, 0xfe

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 207
    if-ge p1, v4, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v2

    .line 209
    :cond_1
    aget-byte v5, p0, v2

    and-int/lit16 v0, v5, 0xff

    .line 210
    .local v0, b0:I
    aget-byte v5, p0, v3

    and-int/lit16 v1, v5, 0xff

    .line 211
    .local v1, b1:I
    if-ne v0, v7, :cond_2

    if-ne v1, v6, :cond_2

    move v2, v3

    .line 212
    goto :goto_0

    .line 213
    :cond_2
    if-ne v0, v6, :cond_0

    if-ne v1, v7, :cond_0

    move v2, v4

    .line 214
    goto :goto_0
.end method

.method private static looksUtf8([BII)I
    .locals 11
    .parameter "buf"
    .parameter "index"
    .parameter "nbytes"

    .prologue
    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 113
    const/4 v3, 0x0

    .local v3, gotone:I
    const/4 v1, 0x0

    .line 114
    .local v1, ctrl:I
    array-length v9, p0

    invoke-static {p2, v9}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 115
    move v4, p1

    .local v4, i:I
    :goto_0
    if-ge v4, p2, :cond_5

    .line 116
    aget-byte v9, p0, v4

    and-int/lit16 v9, v9, 0x80

    if-nez v9, :cond_2

    .line 121
    aget-byte v6, p0, v4

    .line 122
    .local v6, textIndex:I
    if-gez v6, :cond_0

    .line 123
    add-int/lit16 v6, v6, 0x100

    .line 124
    :cond_0
    sget-object v9, Landroid/webkit/GuessEncoding;->mTextChars:[C

    aget-char v9, v9, v6

    if-eq v9, v7, :cond_1

    .line 125
    const/4 v1, 0x1

    .line 115
    .end local v6           #textIndex:I
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    :cond_2
    aget-byte v9, p0, v4

    and-int/lit8 v9, v9, 0x40

    if-nez v9, :cond_4

    move v7, v8

    .line 165
    :cond_3
    :goto_2
    return v7

    .line 132
    :cond_4
    aget-byte v9, p0, v4

    and-int/lit8 v9, v9, 0x20

    if-nez v9, :cond_6

    .line 133
    aget-byte v9, p0, v4

    and-int/lit8 v9, v9, 0x1f

    int-to-byte v0, v9

    .line 134
    .local v0, c:B
    const/4 v2, 0x1

    .line 150
    .local v2, following:I
    :goto_3
    const/4 v5, 0x0

    .local v5, n:I
    :goto_4
    if-ge v5, v2, :cond_e

    .line 151
    add-int/lit8 v4, v4, 0x1

    .line 152
    if-lt v4, p2, :cond_b

    .line 165
    .end local v0           #c:B
    .end local v2           #following:I
    .end local v5           #n:I
    :cond_5
    if-eqz v1, :cond_f

    const/4 v7, 0x0

    goto :goto_2

    .line 135
    :cond_6
    aget-byte v9, p0, v4

    and-int/lit8 v9, v9, 0x10

    if-nez v9, :cond_7

    .line 136
    aget-byte v9, p0, v4

    and-int/lit8 v9, v9, 0xf

    int-to-byte v0, v9

    .line 137
    .restart local v0       #c:B
    const/4 v2, 0x2

    .restart local v2       #following:I
    goto :goto_3

    .line 138
    .end local v0           #c:B
    .end local v2           #following:I
    :cond_7
    aget-byte v9, p0, v4

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_8

    .line 139
    aget-byte v9, p0, v4

    and-int/lit8 v9, v9, 0x7

    int-to-byte v0, v9

    .line 140
    .restart local v0       #c:B
    const/4 v2, 0x3

    .restart local v2       #following:I
    goto :goto_3

    .line 141
    .end local v0           #c:B
    .end local v2           #following:I
    :cond_8
    aget-byte v9, p0, v4

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_9

    .line 142
    aget-byte v9, p0, v4

    and-int/lit8 v9, v9, 0x3

    int-to-byte v0, v9

    .line 143
    .restart local v0       #c:B
    const/4 v2, 0x4

    .restart local v2       #following:I
    goto :goto_3

    .line 144
    .end local v0           #c:B
    .end local v2           #following:I
    :cond_9
    aget-byte v9, p0, v4

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_a

    .line 145
    aget-byte v9, p0, v4

    and-int/lit8 v9, v9, 0x1

    int-to-byte v0, v9

    .line 146
    .restart local v0       #c:B
    const/4 v2, 0x5

    .restart local v2       #following:I
    goto :goto_3

    .end local v0           #c:B
    .end local v2           #following:I
    :cond_a
    move v7, v8

    .line 148
    goto :goto_2

    .line 155
    .restart local v0       #c:B
    .restart local v2       #following:I
    .restart local v5       #n:I
    :cond_b
    aget-byte v9, p0, v4

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_c

    aget-byte v9, p0, v4

    and-int/lit8 v9, v9, 0x40

    if-eqz v9, :cond_d

    :cond_c
    move v7, v8

    .line 156
    goto :goto_2

    .line 158
    :cond_d
    shl-int/lit8 v9, v0, 0x6

    aget-byte v10, p0, v4

    and-int/lit8 v10, v10, 0x3f

    add-int/2addr v9, v10

    int-to-byte v0, v9

    .line 150
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 161
    :cond_e
    const/4 v3, 0x1

    goto :goto_1

    .line 165
    .end local v0           #c:B
    .end local v2           #following:I
    .end local v5           #n:I
    :cond_f
    if-eqz v3, :cond_3

    const/4 v7, 0x2

    goto :goto_2
.end method

.method private static looksUtf8WithBOM([BI)I
    .locals 6
    .parameter "buf"
    .parameter "nbytes"

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x3

    .line 174
    array-length v4, p0

    if-ge v4, v5, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v3

    .line 176
    :cond_1
    const/4 v4, 0x0

    aget-byte v4, p0, v4

    and-int/lit16 v0, v4, 0xff

    .line 177
    .local v0, b0:I
    const/4 v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 178
    .local v1, b1:I
    const/4 v4, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .line 179
    .local v2, b2:I
    if-le p1, v5, :cond_0

    const/16 v4, 0xef

    if-ne v0, v4, :cond_0

    const/16 v4, 0xbb

    if-ne v1, v4, :cond_0

    const/16 v4, 0xbf

    if-ne v2, v4, :cond_0

    .line 180
    invoke-static {p0, v5, p1}, Landroid/webkit/GuessEncoding;->looksUtf8([BII)I

    move-result v3

    goto :goto_0
.end method
