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

    .line 227
    new-instance v2, Lcom/android/internal/policy/impl/PowerOnPassWordView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PowerOnPassWordView$2;-><init>(Lcom/android/internal/policy/impl/PowerOnPassWordView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    .line 65
    const/high16 v2, -0x100

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->setBackgroundColor(I)V

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 69
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x10900ac

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mStatusBar:Landroid/app/StatusBarManager;

    .line 71
    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 72
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->initLayout()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "boot_authentication_password"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPassword:Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPassword:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 76
    const-string v2, "67766776"

    iput-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPassword:Ljava/lang/String;

    .line 78
    :cond_0
    new-instance v2, Lcom/android/internal/policy/impl/PowerOnPassWordView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PowerOnPassWordView$1;-><init>(Lcom/android/internal/policy/impl/PowerOnPassWordView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
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
    .line 340
    new-instance v0, Ljava/io/File;

    const-string v1, "/data"

    const-string v2, "poweronpassword_saved.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
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

    .line 104
    const v3, 0x10203d6

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mTitle:Landroid/widget/TextView;

    .line 105
    const v3, 0x10203d7

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    .line 107
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v6

    .line 109
    .local v1, filters:[Landroid/text/InputFilter;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 110
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 111
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 112
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 116
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 117
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mTitle:Landroid/widget/TextView;

    const v4, 0x1040506

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 119
    const v3, 0x10203d8

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mOkButton:Landroid/widget/ImageButton;

    .line 120
    const v3, 0x1020370

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mDelete:Landroid/widget/ImageButton;

    .line 121
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mOkButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    new-array v3, v5, [Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mBtn:[Landroid/widget/ImageButton;

    .line 125
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 133
    .local v0, btn_id:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 134
    iget-object v4, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mBtn:[Landroid/widget/ImageButton;

    aget v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    aput-object v3, v4, v2

    .line 135
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mBtn:[Landroid/widget/ImageButton;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void

    .line 125
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
    .line 195
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 199
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 200
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method private writeIsChangedData(Z)V
    .locals 4
    .parameter "ischanged"

    .prologue
    .line 320
    new-instance v1, Ljava/io/File;

    const-string v2, "/data"

    const-string v3, "poweronpassword_saved.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v1, file:Ljava/io/File;
    if-eqz p1, :cond_1

    .line 322
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 332
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method


# virtual methods
.method public getIsPassBy()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mIsPass:Z

    return v0
.end method

.method public hideView()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 307
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->hidePowerOnPassword()V

    .line 309
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x4

    .line 213
    if-nez p2, :cond_2

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->entry:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->entry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mTitle:Landroid/widget/TextView;

    const v1, 0x1040507

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->entry:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->entry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->entry:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->verifyPassword(Ljava/lang/String;)V

    .line 222
    :cond_1
    const/4 v0, 0x1

    .line 224
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
    .line 206
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

    .line 141
    if-nez p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v4

    .line 143
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 145
    .local v0, id:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 146
    sparse-switch v0, :sswitch_data_0

    .line 184
    const/4 v1, -0x1

    .line 187
    .local v1, keyCode:I
    :goto_1
    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    .line 188
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->keyPressed(I)V

    goto :goto_0

    .line 148
    .end local v1           #keyCode:I
    :sswitch_0
    const/4 v1, 0x7

    .line 149
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 151
    .end local v1           #keyCode:I
    :sswitch_1
    const/16 v1, 0x8

    .line 152
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 154
    .end local v1           #keyCode:I
    :sswitch_2
    const/16 v1, 0x9

    .line 155
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 157
    .end local v1           #keyCode:I
    :sswitch_3
    const/16 v1, 0xa

    .line 158
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 160
    .end local v1           #keyCode:I
    :sswitch_4
    const/16 v1, 0xb

    .line 161
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 163
    .end local v1           #keyCode:I
    :sswitch_5
    const/16 v1, 0xc

    .line 164
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 166
    .end local v1           #keyCode:I
    :sswitch_6
    const/16 v1, 0xd

    .line 167
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 169
    .end local v1           #keyCode:I
    :sswitch_7
    const/16 v1, 0xe

    .line 170
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 172
    .end local v1           #keyCode:I
    :sswitch_8
    const/16 v1, 0xf

    .line 173
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 175
    .end local v1           #keyCode:I
    :sswitch_9
    const/16 v1, 0x10

    .line 176
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 178
    .end local v1           #keyCode:I
    :sswitch_a
    const/16 v1, 0x42

    .line 179
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 181
    .end local v1           #keyCode:I
    :sswitch_b
    const/16 v1, 0x43

    .line 182
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 146
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
    .line 316
    iput-object p1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .line 317
    return-void
.end method

.method public setPanelEnabled()V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 313
    return-void
.end method

.method public verifyPassword(Ljava/lang/String;)V
    .locals 12
    .parameter "inputEntry"

    .prologue
    const/4 v11, 0x0

    .line 256
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

    .line 257
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.security.SUPER_PASSWORD"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v2, intentz:Landroid/content/Intent;
    const-string v7, "manufacture"

    const-string v8, "oppo"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 299
    .end local v2           #intentz:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 263
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->getIsChangedData()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 264
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v7, "airplane_mode_on"

    const-string v8, "0"

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 266
    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->writeIsChangedData(Z)V

    .line 267
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, intent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    const-string v7, "state"

    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mDoOpenFly:Z

    .line 273
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mTitle:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    const v9, 0x10402e3

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 276
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    const-wide/16 v9, 0xfa

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 277
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    const-wide/16 v9, 0x708

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    :goto_1
    iget v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mInputTimes:I

    const/4 v8, 0x4

    if-le v7, v8, :cond_0

    .line 288
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mTitle:Landroid/widget/TextView;

    const v8, 0x1040509

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 289
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 291
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/policy/impl/PowerOnPassWordView$3;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/PowerOnPassWordView$3;-><init>(Lcom/android/internal/policy/impl/PowerOnPassWordView;)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 297
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 280
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_3
    iget v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mInputTimes:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mInputTimes:I

    .line 281
    iget v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mInputTimes:I

    rsub-int/lit8 v3, v7, 0x5

    .line 283
    .local v3, leftTimes:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;

    const v8, 0x1040508

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 284
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

    .line 285
    .local v6, wronghint:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
