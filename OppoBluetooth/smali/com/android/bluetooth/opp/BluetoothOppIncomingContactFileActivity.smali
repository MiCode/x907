.class public Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothOppIncomingContactFileActivity.java"


# static fields
.field private static final mHasIccCard:Z


# instance fields
.field private filename:Ljava/lang/String;

.field private mContentView:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private final mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->mHasIccCard:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->mContentView:Landroid/widget/TextView;

    .line 83
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->mListView:Landroid/widget/ListView;

    .line 85
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->filename:Ljava/lang/String;

    .line 213
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->mHasIccCard:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->filename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->saveToSimCard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->saveToPhone(Ljava/lang/String;)V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 15

    .prologue
    const v14, 0x7f040075

    const v13, 0x7f040071

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 146
    .local v3, view:Landroid/view/View;
    const v4, 0x7f060014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->mContentView:Landroid/widget/TextView;

    .line 147
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->mContentView:Landroid/widget/TextView;

    const v5, 0x7f040073

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->filename:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->filename:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const v4, 0x7f060015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->mListView:Landroid/widget/ListView;

    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, strings:[Ljava/lang/String;
    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/String;

    const v4, 0x7f040074

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v11

    invoke-virtual {p0, v14}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v10

    invoke-virtual {p0, v13}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v12

    .line 153
    .local v1, sim_items:[Ljava/lang/String;
    new-array v0, v12, [Ljava/lang/String;

    invoke-virtual {p0, v14}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v11

    invoke-virtual {p0, v13}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v10

    .line 155
    .local v0, phone_items:[Ljava/lang/String;
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->mHasIccCard:Z

    if-ne v10, v4, :cond_0

    .line 157
    move-object v2, v1

    .line 164
    :goto_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x1090003

    invoke-direct {v5, p0, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity$1;

    invoke-direct {v5, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 197
    return-object v3

    .line 161
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method private onTimeout()V
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    return-void
.end method

.method private saveToPhone(Ljava/lang/String;)V
    .locals 5
    .parameter "filename"

    .prologue
    .line 126
    const-string v2, "BluetoothOppIncomingContactFileActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "import to contact in phone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "oppo.intent.action.receive_vacrd"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, importIntent:Landroid/content/Intent;
    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1           #importIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "BluetoothOppIncomingContactFileActivity"

    const-string v3, "no contact-import activity"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveToSimCard(Ljava/lang/String;)V
    .locals 5
    .parameter "filename"

    .prologue
    .line 107
    const-string v2, "BluetoothOppIncomingContactFileActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "import to contact in sim card:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "oppo.intent.action.receive_vacrd"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, importIntent:Landroid/content/Intent;
    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1           #importIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "BluetoothOppIncomingContactFileActivity"

    const-string v3, "no contact-import activity"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->filename:Ljava/lang/String;

    .line 93
    const-string v2, "BluetoothOppIncomingContactFileActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filename="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 97
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x108009b

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 98
    const v2, 0x7f040072

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 99
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 100
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->setupAlert()V

    .line 102
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->onTimeout()V

    .line 103
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 202
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingContactFileActivity;->finish()V

    .line 205
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
