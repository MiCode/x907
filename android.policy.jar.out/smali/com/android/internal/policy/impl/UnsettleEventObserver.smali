.class public Lcom/android/internal/policy/impl/UnsettleEventObserver;
.super Ljava/lang/Object;
.source "UnsettleEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;,
        Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailThread;,
        Lcom/android/internal/policy/impl/UnsettleEventObserver$SoftwareMarketThread;,
        Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsContent;,
        Lcom/android/internal/policy/impl/UnsettleEventObserver$PhoneContent;,
        Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;,
        Lcom/android/internal/policy/impl/UnsettleEventObserver$SoftwareMarketContent;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "StatusBar"

.field public static final UNREADPHONE:Ljava/lang/String; = "unreadphone"

.field public static final UNREADSHORTMESSAGE:Ljava/lang/String; = "unreadshortmessage"


# instance fields
.field private DeBug:Z

.field private mCallorPhoneFlag:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field private mNotifyAble:Z

.field private mOldEmailCount:I

.field private mPhoneConut:I

.field private mRMsCount:I

.field private mRMsName:Ljava/lang/String;

.field private mRPhCount:I

.field private mRPhName:Ljava/lang/String;

.field private mSmsConut:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->DeBug:Z

    .line 39
    iput v3, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mSmsConut:I

    .line 40
    iput v3, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mPhoneConut:I

    .line 41
    iput-object v4, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mCallorPhoneFlag:Ljava/lang/String;

    .line 43
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mNotifyAble:Z

    .line 45
    iput-object v4, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRMsName:Ljava/lang/String;

    .line 46
    iput v3, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRMsCount:I

    .line 48
    iput-object v4, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRPhName:Ljava/lang/String;

    .line 49
    iput v3, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRPhCount:I

    .line 51
    iput v3, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mOldEmailCount:I

    .line 57
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->registerListener(Landroid/content/Context;)V

    .line 60
    new-instance v1, Ljava/io/File;

    const-string v3, "/data"

    const-string v4, "lockscreenevent.txt"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data"

    const-string v4, "lockscreenevent1.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v2, file1:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :cond_1
    :goto_1
    return-void

    .line 65
    .end local v2           #file1:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #file1:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 78
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/UnsettleEventObserver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mCallorPhoneFlag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/UnsettleEventObserver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mCallorPhoneFlag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/UnsettleEventObserver;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mNotifyAble:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/UnsettleEventObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mOldEmailCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/UnsettleEventObserver;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mOldEmailCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/UnsettleEventObserver;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->writeFile1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/UnsettleEventObserver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRMsName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/UnsettleEventObserver;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRMsCount:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/UnsettleEventObserver;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mSmsConut:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/UnsettleEventObserver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRPhName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/UnsettleEventObserver;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRPhCount:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/UnsettleEventObserver;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mPhoneConut:I

    return p1
.end method

.method private registerListener(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->registerSmsListenter(Landroid/content/Context;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->regidterPhoneListenter(Landroid/content/Context;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->regidterEmailListenter(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->regidterEmailMessageListenter(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->regidterEmailSyncedMessageListenter(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->regidterEmailSyncedAccountListenter(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->regidterEmailSyncedDeletedMessageListenter(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->regidterSoftwareMarketListenter(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method private writeFile(Ljava/lang/String;)V
    .locals 9
    .parameter "content"

    .prologue
    .line 599
    new-instance v0, Ljava/io/File;

    const-string v7, "/data"

    const-string v8, "lockscreenevent.txt"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .local v0, contentFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 603
    const/4 v5, 0x0

    .line 607
    .local v5, wordsOutPutStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #wordsOutPutStream:Ljava/io/FileOutputStream;
    .local v6, wordsOutPutStream:Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 614
    .end local v6           #wordsOutPutStream:Ljava/io/FileOutputStream;
    .restart local v5       #wordsOutPutStream:Ljava/io/FileOutputStream;
    :goto_0
    const/4 v3, 0x0

    .line 618
    .local v3, outPutWriter:Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v7, "UTF-8"

    invoke-direct {v4, v5, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3           #outPutWriter:Ljava/io/OutputStreamWriter;
    .local v4, outPutWriter:Ljava/io/OutputStreamWriter;
    move-object v3, v4

    .line 626
    .end local v4           #outPutWriter:Ljava/io/OutputStreamWriter;
    .restart local v3       #outPutWriter:Ljava/io/OutputStreamWriter;
    :goto_1
    if-eqz p1, :cond_0

    .line 630
    if-eqz v3, :cond_0

    .line 632
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 634
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 643
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 647
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 655
    .end local v3           #outPutWriter:Ljava/io/OutputStreamWriter;
    .end local v5           #wordsOutPutStream:Ljava/io/FileOutputStream;
    :cond_1
    :goto_3
    return-void

    .line 609
    .restart local v5       #wordsOutPutStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 611
    .local v2, exc:Ljava/io/FileNotFoundException;
    const-string v7, "StatusBar"

    const-string v8, "saveImportContactsWordsToFile:create wordsOutPutStream failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 620
    .end local v2           #exc:Ljava/io/FileNotFoundException;
    .restart local v3       #outPutWriter:Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v1

    .line 622
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 637
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v1

    .line 639
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 649
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 651
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private writeFile1(Ljava/lang/String;)V
    .locals 9
    .parameter "content"

    .prologue
    .line 659
    new-instance v0, Ljava/io/File;

    const-string v7, "/data"

    const-string v8, "lockscreenevent1.txt"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    .local v0, contentFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 662
    const/4 v5, 0x0

    .line 666
    .local v5, wordsOutPutStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #wordsOutPutStream:Ljava/io/FileOutputStream;
    .local v6, wordsOutPutStream:Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 673
    .end local v6           #wordsOutPutStream:Ljava/io/FileOutputStream;
    .restart local v5       #wordsOutPutStream:Ljava/io/FileOutputStream;
    :goto_0
    const/4 v3, 0x0

    .line 678
    .local v3, outPutWriter:Ljava/io/OutputStreamWriter;
    if-eqz v5, :cond_0

    .line 680
    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v7, "UTF-8"

    invoke-direct {v4, v5, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3           #outPutWriter:Ljava/io/OutputStreamWriter;
    .local v4, outPutWriter:Ljava/io/OutputStreamWriter;
    move-object v3, v4

    .line 688
    .end local v4           #outPutWriter:Ljava/io/OutputStreamWriter;
    .restart local v3       #outPutWriter:Ljava/io/OutputStreamWriter;
    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    .line 692
    if-eqz v3, :cond_1

    .line 694
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 696
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 705
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 709
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 717
    .end local v3           #outPutWriter:Ljava/io/OutputStreamWriter;
    .end local v5           #wordsOutPutStream:Ljava/io/FileOutputStream;
    :cond_2
    :goto_3
    return-void

    .line 668
    .restart local v5       #wordsOutPutStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 670
    .local v2, exc:Ljava/io/FileNotFoundException;
    const-string v7, "StatusBar"

    const-string v8, "saveImportContactsWordsToFile:create wordsOutPutStream failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 683
    .end local v2           #exc:Ljava/io/FileNotFoundException;
    .restart local v3       #outPutWriter:Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v1

    .line 685
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 699
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v1

    .line 701
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 711
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 713
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public regidterEmailListenter(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 121
    new-instance v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;-><init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;Landroid/os/Handler;)V

    .line 122
    .local v0, content:Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.email.provider/mailbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    return-void
.end method

.method public regidterEmailMessageListenter(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 129
    new-instance v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;-><init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;Landroid/os/Handler;)V

    .line 130
    .local v0, content:Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.email.provider/message"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    return-void
.end method

.method public regidterEmailSyncedAccountListenter(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 145
    new-instance v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;-><init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;Landroid/os/Handler;)V

    .line 146
    .local v0, content:Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.email.provider/account/#"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    return-void
.end method

.method public regidterEmailSyncedDeletedMessageListenter(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 153
    new-instance v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;-><init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;Landroid/os/Handler;)V

    .line 154
    .local v0, content:Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.email.provider/deletedMessage"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    return-void
.end method

.method public regidterEmailSyncedMessageListenter(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 137
    new-instance v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;-><init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;Landroid/os/Handler;)V

    .line 138
    .local v0, content:Lcom/android/internal/policy/impl/UnsettleEventObserver$EmailContent;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.email.provider/syncedMessage/#"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    return-void
.end method

.method public regidterPhoneListenter(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 114
    new-instance v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$PhoneContent;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/UnsettleEventObserver$PhoneContent;-><init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;Landroid/os/Handler;)V

    .line 115
    .local v0, content:Lcom/android/internal/policy/impl/UnsettleEventObserver$PhoneContent;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    return-void
.end method

.method public regidterSoftwareMarketListenter(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 162
    new-instance v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SoftwareMarketContent;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/UnsettleEventObserver$SoftwareMarketContent;-><init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;Landroid/os/Handler;)V

    .line 163
    .local v0, content:Lcom/android/internal/policy/impl/UnsettleEventObserver$SoftwareMarketContent;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.oppo.market/upgrade"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 168
    return-void
.end method

.method public registerSmsListenter(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 107
    new-instance v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsContent;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsContent;-><init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;Landroid/os/Handler;)V

    .line 108
    .local v0, content:Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsContent;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://mms-sms/view_mmssms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 110
    return-void
.end method
