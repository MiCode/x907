.class public Lcom/android/internal/policy/impl/PowerOnPassWordView;
.super Landroid/widget/LinearLayout;
.source "PowerOnPassWordView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final ACTION_ENTRA_NAME:Ljava/lang/String; = "manufacture"

.field private static final ACTION_ENTRA_VALUE:Ljava/lang/String; = "oppo"

.field private static final ENABLE_PRESS:I = 0x4

.field private static final SHOW_DIALOG:I = 0x3

.field private static final SHUT_DOWN:I = 0x2

.field private static final TIMEOUT:I = 0x1


# instance fields
.field private entry:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtn:[Landroid/widget/ImageButton;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

.field private mContext:Landroid/content/Context;

.field private mDelete:Landroid/widget/ImageButton;

.field private mDoOpenFly:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mInputTimes:I

.field private mIsPass:Z

.field private mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

.field private mOkButton:Landroid/widget/ImageButton;

.field private mPassword:Ljava/lang/String;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewManager;)V
    .locals 4
    .parameter "context"
    .parameter "keyguardViewManager"

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mInputTimes:I

    .line 43
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPassword:Ljava/lang/String;

    .line 46
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mDoOpenFly:Z

    .line 48
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mIsPass:Z

    .line 226
    new-instance v2, Lcom/android/internal/policy/impl/PowerOnPassWordView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PowerOnPassWordView$2;-><init>(Lcom/android/internal/policy/impl/PowerOnPassWordView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 68
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x10900ad

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mStatusBar:Landroid/app/StatusBarManager;

    .line 70
    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 71
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->initLayout()V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "boot_authentication_password"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPassword:Ljava/lang/String;

    .line 74
    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPassword:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 75
    const-string v2, "67766776"

    iput-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPassword:Ljava/lang/String;

    .line 77
    :cond_0
    new-instance v2, Lcom/android/internal/policy/impl/PowerOnPassWordView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PowerOnPassWordView$1;-><init>(Lcom/android/internal/policy/impl/PowerOnPassWordView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mDoOpenFly:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/PowerOnPassWordView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mDoOpenFly:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PowerOnPassWordView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->writeIsChangedData(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/PowerOnPassWordView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mIsPass:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getIsChangedData()Z
    .locals 3

    .prologue
    .line 339
    new-instance v0, Ljava/io/File;

    const-string v1, "/data"

    const-string v2, "poweronpassword_saved.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private initLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xa

    .line 103
    const v3, 0x10203d6

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mTitle:Landroid/widget/TextView;

    .line 104
    const v3, 0x10203d7

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    .line 106
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v6

    .line 108
    .local v1, filters:[Landroid/text/InputFilter;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 109
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 110
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 111
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 115
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 116
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mTitle:Landroid/widget/TextView;

    const v4, 0x1040506

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 118
    const v3, 0x10203d8

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mOkButton:Landroid/widget/ImageButton;

    .line 119
    const v3, 0x1020370

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mDelete:Landroid/widget/ImageButton;

    .line 120
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mOkButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    new-array v3, v5, [Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mBtn:[Landroid/widget/ImageButton;

    .line 124
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 132
    .local v0, btn_id:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 133
    iget-object v4, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mBtn:[Landroid/widget/ImageButton;

    aget v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    aput-object v3, v4, v2

    .line 134
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mBtn:[Landroid/widget/ImageButton;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void

    .line 124
    nop

    :array_0
    .array-data 0x4
        0x6ft 0x3t 0x2t 0x1t
        0x19t 0x0t 0x2t 0x1t
        0x1at 0x0t 0x2t 0x1t
        0x1bt 0x0t 0x2t 0x1t
        0x68t 0x3t 0x2t 0x1t
        0x69t 0x3t 0x2t 0x1t
        0x6at 0x3t 0x2t 0x1t
        0x6bt 0x3t 0x2t 0x1t
        0x6ct 0x3t 0x2t 0x1t
        0x6dt 0x3t 0x2t 0x1t
    .end array-data
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 198
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 199
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method private writeIsChangedData(Z)V
    .locals 4
    .parameter "ischanged"

    .prologue
    .line 319
    new-instance v1, Ljava/io/File;

    const-string v2, "/data"

    const-string v3, "poweronpassword_saved.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .local v1, file:Ljava/io/File;
    if-eqz p1, :cond_1

    .line 321
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 331
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method


# virtual methods
.method public getIsPassBy()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mIsPass:Z

    return v0
.end method

.method public hideView()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 306
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->hidePowerOnPassword()V

    .line 308
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x4

    .line 212
    if-nez p2, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->entry:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->entry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mTitle:Landroid/widget/TextView;

    const v1, 0x1040507

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->entry:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->entry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->entry:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->verifyPassword(Ljava/lang/String;)V

    .line 221
    :cond_1
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 140
    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v4

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 144
    .local v0, id:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 145
    sparse-switch v0, :sswitch_data_0

    .line 183
    const/4 v1, -0x1

    .line 186
    .local v1, keyCode:I
    :goto_1
    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    .line 187
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->keyPressed(I)V

    goto :goto_0

    .line 147
    .end local v1           #keyCode:I
    :sswitch_0
    const/4 v1, 0x7

    .line 148
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 150
    .end local v1           #keyCode:I
    :sswitch_1
    const/16 v1, 0x8

    .line 151
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 153
    .end local v1           #keyCode:I
    :sswitch_2
    const/16 v1, 0x9

    .line 154
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 156
    .end local v1           #keyCode:I
    :sswitch_3
    const/16 v1, 0xa

    .line 157
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 159
    .end local v1           #keyCode:I
    :sswitch_4
    const/16 v1, 0xb

    .line 160
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 162
    .end local v1           #keyCode:I
    :sswitch_5
    const/16 v1, 0xc

    .line 163
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 165
    .end local v1           #keyCode:I
    :sswitch_6
    const/16 v1, 0xd

    .line 166
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 168
    .end local v1           #keyCode:I
    :sswitch_7
    const/16 v1, 0xe

    .line 169
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 171
    .end local v1           #keyCode:I
    :sswitch_8
    const/16 v1, 0xf

    .line 172
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 174
    .end local v1           #keyCode:I
    :sswitch_9
    const/16 v1, 0x10

    .line 175
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 177
    .end local v1           #keyCode:I
    :sswitch_a
    const/16 v1, 0x42

    .line 178
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 180
    .end local v1           #keyCode:I
    :sswitch_b
    const/16 v1, 0x43

    .line 181
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_1
        0x102001a -> :sswitch_2
        0x102001b -> :sswitch_3
        0x1020368 -> :sswitch_4
        0x1020369 -> :sswitch_5
        0x102036a -> :sswitch_6
        0x102036b -> :sswitch_7
        0x102036c -> :sswitch_8
        0x102036d -> :sswitch_9
        0x102036f -> :sswitch_0
        0x1020370 -> :sswitch_b
        0x10203d8 -> :sswitch_a
    .end sparse-switch
.end method

.method public setCallback(Lcom/android/internal/policy/impl/KeyguardViewCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .line 316
    return-void
.end method

.method public setPanelEnabled()V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 312
    return-void
.end method

.method public verifyPassword(Ljava/lang/String;)V
    .locals 12
    .parameter "inputEntry"

    .prologue
    const/4 v11, 0x0

    .line 255
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->entry:Ljava/lang/String;

    const-string v8, "67766776"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPassword:Ljava/lang/String;

    const-string v8, "67766776"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 256
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.security.SUPER_PASSWORD"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v2, intentz:Landroid/content/Intent;
    const-string v7, "manufacture"

    const-string v8, "oppo"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 298
    .end local v2           #intentz:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 262
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->getIsChangedData()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 263
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 264
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v7, "airplane_mode_on"

    const-string v8, "0"

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 265
    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->writeIsChangedData(Z)V

    .line 266
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, intent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    const-string v7, "state"

    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 270
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mDoOpenFly:Z

    .line 272
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mTitle:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    const v9, 0x10402e3

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 275
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    const-wide/16 v9, 0xfa

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    const-wide/16 v9, 0x708

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 286
    :goto_1
    iget v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mInputTimes:I

    const/4 v8, 0x4

    if-le v7, v8, :cond_0

    .line 287
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mTitle:Landroid/widget/TextView;

    const v8, 0x1040509

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 288
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 290
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/policy/impl/PowerOnPassWordView$3;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/PowerOnPassWordView$3;-><init>(Lcom/android/internal/policy/impl/PowerOnPassWordView;)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 296
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 279
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_3
    iget v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mInputTimes:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mInputTimes:I

    .line 280
    iget v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mInputTimes:I

    rsub-int/lit8 v3, v7, 0x5

    .line 282
    .local v3, leftTimes:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    const v8, 0x1040508

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, tmp:Ljava/lang/String;
    const-string v7, "*"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, wronghint:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
