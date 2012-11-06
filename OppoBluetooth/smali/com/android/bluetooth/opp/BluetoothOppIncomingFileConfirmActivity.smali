.class public Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothOppIncomingFileConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mContentView:Landroid/widget/TextView;

.field mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeout:Z

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

.field private mUpdateValues:Landroid/content/ContentValues;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 264
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->onTimeout()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 7

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 174
    .local v1, view:Landroid/view/View;
    const v2, 0x7f06000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mContentView:Landroid/widget/TextView;

    .line 176
    const v2, 0x7f04000d

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v5, v5

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-object v1
.end method

.method private onTimeout()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 253
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    .line 254
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mContentView:Landroid/widget/TextView;

    const v1, 0x7f040011

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f040010

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 262
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 185
    packed-switch p2, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 187
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    .line 190
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    const-string v1, "confirm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 194
    const v0, 0x7f04003c

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 200
    :pswitch_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    .line 201
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    const-string v1, "confirm"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    iput-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 130
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    .line 131
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 132
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 133
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    if-nez v3, :cond_0

    .line 134
    const-string v3, "BluetoothIncomingFileConfirmActivity"

    const-string v4, "Error: Can not get data from db"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    .line 169
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 141
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x108009b

    iput v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 142
    const v3, 0x7f04000c

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 143
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 144
    const v3, 0x7f04000f

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 145
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 146
    const v3, 0x7f04000e

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 147
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 148
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->setupAlert()V

    .line 149
    const-string v3, "BluetoothIncomingFileConfirmActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTimeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    if-eqz v3, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->onTimeout()V

    .line 154
    :cond_1
    const-string v3, "BluetoothIncomingFileConfirmActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BluetoothIncomingFileConfirmActivity: Got uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 225
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 229
    .local v0, notMgr:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 231
    const-string v1, "BluetoothIncomingFileConfirmActivity"

    const-string v2, "notMgr.cancel called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 210
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 211
    const-string v0, "BluetoothIncomingFileConfirmActivity"

    const-string v1, "onKeyDown() called; Key: back key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    const-string v1, "visibility"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 216
    const v0, 0x7f04003d

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 217
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    .line 219
    :cond_0
    return v3
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 238
    const-string v0, "user_timeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    .line 239
    const-string v0, "BluetoothIncomingFileConfirmActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState() mTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->onTimeout()V

    .line 243
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 248
    const-string v0, "BluetoothIncomingFileConfirmActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState() mTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v0, "user_timeout"

    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    return-void
.end method
