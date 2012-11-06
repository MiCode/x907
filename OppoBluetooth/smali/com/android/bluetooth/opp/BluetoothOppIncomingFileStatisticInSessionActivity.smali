.class public Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothOppIncomingFileStatisticInSessionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static keys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static lastFile:Ljava/lang/String;

.field private static sums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mImageView:Landroid/widget/TextView;

.field private mMusicView:Landroid/widget/TextView;

.field private mOtherView:Landroid/widget/TextView;

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private mVedioView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->keys:Ljava/util/ArrayList;

    .line 82
    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->sums:Ljava/util/ArrayList;

    .line 83
    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->lastFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mMusicView:Landroid/widget/TextView;

    .line 77
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mImageView:Landroid/widget/TextView;

    .line 78
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mVedioView:Landroid/widget/TextView;

    .line 79
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mOtherView:Landroid/widget/TextView;

    .line 203
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 11

    .prologue
    const/16 v9, 0x8

    const/4 v10, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030009

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 111
    .local v5, view:Landroid/view/View;
    const v6, 0x7f060016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mMusicView:Landroid/widget/TextView;

    .line 112
    const v6, 0x7f060017

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mImageView:Landroid/widget/TextView;

    .line 113
    const v6, 0x7f060018

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mVedioView:Landroid/widget/TextView;

    .line 114
    const v6, 0x7f060019

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mOtherView:Landroid/widget/TextView;

    .line 116
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mMusicView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mImageView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mVedioView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mOtherView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    sget-object v6, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->keys:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 122
    .local v2, num:I
    const/4 v0, 0x0

    .line 123
    .local v0, dirId:I
    const/4 v3, 0x0

    .line 124
    .local v3, sum:I
    const/4 v4, 0x0

    .line 125
    .local v4, text:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 127
    sget-object v6, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->keys:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 128
    sget-object v6, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->sums:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 129
    const v6, 0x7f04006b

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 130
    const v6, 0x7f040060

    if-ne v6, v0, :cond_0

    .line 132
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mMusicView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mMusicView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    const v6, 0x7f040061

    if-ne v6, v0, :cond_1

    .line 137
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mImageView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mImageView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 140
    :cond_1
    const v6, 0x7f040062

    if-ne v6, v0, :cond_2

    .line 142
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mVedioView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mVedioView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 147
    :cond_2
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mOtherView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mOtherView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 152
    :cond_3
    return-object v5
.end method

.method public static isFileEncrypted(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 8
    .parameter "cr"
    .parameter "path"

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 219
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v3, v4

    .line 239
    :cond_1
    :goto_0
    return v3

    .line 222
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, folder:Ljava/io/File;
    const/4 v0, 0x0

    .line 224
    .local v0, encrypted:Z
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/provider/Settings$Privacy;->hasFileEncrypted(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 225
    const/4 v3, 0x0

    goto :goto_0

    .line 241
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v1           #folder:Ljava/io/File;
    .local v2, folder:Ljava/io/File;
    move-object v1, v2

    .line 228
    .end local v2           #folder:Ljava/io/File;
    .restart local v1       #folder:Ljava/io/File;
    :cond_4
    const-string v5, "BluetoothOppIncomingFileStatisticInSessionActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Luocj the path is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/provider/Settings$Privacy;->hasFileEncrypted(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 230
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/oppo/file/OppoFileOperator;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/oppo/file/OppoFileOperator;->INTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 232
    :cond_5
    if-nez v0, :cond_1

    move v3, v4

    .line 235
    goto :goto_0

    .line 238
    :cond_6
    if-eqz v0, :cond_3

    goto :goto_0
.end method

.method private onTimeout()V
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 201
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 156
    packed-switch p2, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 158
    :pswitch_0
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->lastFile:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->isFileEncrypted(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 163
    :cond_0
    const-string v2, "BluetoothOppIncomingFileStatisticInSessionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick, open dir:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->lastFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v1, Landroid/content/Intent;

    const-string v2, "ACTION_FILEMANAGER_BROWSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "BluetoothOppIncomingFileStatisticInSessionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentDir:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->lastFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v2, "CurrentDir"

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->lastFile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v2, "forceInvalidate"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "BluetoothOppIncomingFileStatisticInSessionActivity"

    const-string v3, "no FileManager activity"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "keys_in_statistic"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->keys:Ljava/util/ArrayList;

    .line 91
    const-string v2, "sums_in_statistic"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->sums:Ljava/util/ArrayList;

    .line 92
    const-string v2, "last_received_file_in_statistic"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->lastFile:Ljava/lang/String;

    .line 94
    const-string v2, "BluetoothOppIncomingFileStatisticInSessionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->lastFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 98
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x108009b

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 99
    const v2, 0x7f04006c

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 100
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 101
    const v2, 0x7f04006d

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 102
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 103
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->setupAlert()V

    .line 105
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->onTimeout()V

    .line 106
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 186
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->finish()V

    .line 189
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
