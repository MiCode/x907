.class public Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothOppIncomingCalendarFileActivity.java"


# instance fields
.field private filename:Ljava/lang/String;

.field private mContentView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private final mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->mContentView:Landroid/widget/TextView;

    .line 78
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->mListView:Landroid/widget/ListView;

    .line 80
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->filename:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->mContext:Landroid/content/Context;

    .line 153
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->filename:Ljava/lang/String;

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030007

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, view:Landroid/view/View;
    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->mContentView:Landroid/widget/TextView;

    .line 106
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->mContentView:Landroid/widget/TextView;

    const v3, 0x7f04006f

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->filename:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->filename:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->mListView:Landroid/widget/ListView;

    .line 109
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const v2, 0x7f040070

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    const v2, 0x7f040071

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    .line 110
    .local v0, strings:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    invoke-direct {v3, p0, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity$1;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    return-object v1
.end method

.method private onTimeout()V
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 151
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    iput-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->filename:Ljava/lang/String;

    .line 90
    const-string v2, "BluetoothOppIncomingCalendarFileActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filename="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 94
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x108009b

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 95
    const v2, 0x7f04006e

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 96
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 97
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->setupAlert()V

    .line 99
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->onTimeout()V

    .line 100
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 142
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->finish()V

    .line 145
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
