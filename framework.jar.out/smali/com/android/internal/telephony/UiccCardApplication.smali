.class public Lcom/android/internal/telephony/UiccCardApplication;
.super Ljava/lang/Object;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UiccCardApplication$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0x6

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x2

.field private static final EVENT_CHANGE_PIN1_DONE:I = 0x3

.field private static final EVENT_CHANGE_PIN2_DONE:I = 0x4

.field private static final EVENT_PIN1PUK1_DONE:I = 0x1

.field private static final EVENT_PIN2PUK2_DONE:I = 0x7

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_UiccCardApplication"

.field private static bRetryQueryFdnAvailable:Z


# instance fields
.field private mAid:Ljava/lang/String;

.field private mAppLabel:Ljava/lang/String;

.field private mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

.field private mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDesiredFdnEnabled:Z

.field private mDestroyed:Z

.field private mHandler:Landroid/os/Handler;

.field private mIccFdnAvailable:Z

.field private mIccFdnEnabled:Z

.field private mIccFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private mPersoLockedRegistrants:Landroid/os/RegistrantList;

.field private mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

.field private mPin1Replaced:Z

.field private mPin1RetryCount:I

.field private mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

.field private mPin2RetryCount:I

.field private mPin2State:Lcom/android/internal/telephony/IccCardStatus$PinState;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mReadyRegistrants:Landroid/os/RegistrantList;

.field private mUiccCard:Lcom/android/internal/telephony/UiccCard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/UiccCardApplication;->bRetryQueryFdnAvailable:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/UiccCard;Lcom/android/internal/telephony/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "uiccCard"
    .parameter "as"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    .line 66
    iput v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    .line 67
    iput v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    .line 74
    iput-boolean v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    .line 76
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    .line 77
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 78
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    .line 254
    new-instance v2, Lcom/android/internal/telephony/UiccCardApplication$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/UiccCardApplication$1;-><init>(Lcom/android/internal/telephony/UiccCardApplication;)V

    iput-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating UiccApp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 87
    iget-object v2, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    iput-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .line 88
    iget-object v2, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    iput-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .line 89
    iget-object v2, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    iput-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 90
    iget-object v2, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 91
    iget-object v2, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 92
    iget v2, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1_replaced:I

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    .line 93
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 94
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 96
    iput-object p3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 97
    iput-object p4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 99
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 100
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryFdn()V

    .line 104
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 92
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/UiccCardApplication;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/UiccCardApplication;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/UiccCardApplication;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/UiccCardApplication;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/UiccCardApplication;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/UiccCardApplication;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z

    return v0
.end method

.method private createIccFileHandler(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 3
    .parameter "type"

    .prologue
    .line 175
    sget-object v0, Lcom/android/internal/telephony/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 187
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 177
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 179
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 181
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/UsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/UsimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 183
    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/CsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/CsimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 185
    :pswitch_4
    new-instance v0, Lcom/android/internal/telephony/ims/IsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/ims/IsimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private createIccRecords(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/IccRecords;
    .locals 1
    .parameter "type"
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 162
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_1

    .line 163
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 170
    :goto_0
    return-object v0

    .line 164
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_3

    .line 165
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 166
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_4

    .line 167
    new-instance v0, Lcom/android/internal/telephony/ims/IsimUiccRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/ims/IsimUiccRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 170
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 742
    const-string v0, "RIL_UiccCardApplication"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 746
    const-string v0, "RIL_UiccCardApplication"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return-void
.end method

.method private declared-synchronized notifyPersoLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 491
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 479
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccCardApplication;->isPersoLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 483
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez p1, :cond_2

    .line 484
    const-string v1, "Notifying registrants: NETWORK_LOCKED"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 475
    .end local v0           #ar:Landroid/os/AsyncResult;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 487
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    const-string v1, "Notifying 1 registrant: NETWORK_LOCKED"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 453
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v0, v1, :cond_4

    .line 456
    :cond_3
    const-string v0, "Sanity check failed! APPSTATE is locked while PIN1 is not!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 460
    :cond_4
    if-nez p1, :cond_5

    .line 461
    :try_start_2
    const-string v0, "Notifying registrants: LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 464
    :cond_5
    const-string v0, "Notifying 1 registrant: LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 465
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 442
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 428
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v0, v1, :cond_3

    .line 430
    :cond_2
    const-string v0, "Sanity check failed! APPSTATE is ready while PIN1 is not verified!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 434
    :cond_3
    if-nez p1, :cond_4

    .line 435
    :try_start_2
    const-string v0, "Notifying registrants: READY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 438
    :cond_4
    const-string v0, "Notifying 1 registrant: READY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 439
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 207
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in querying facility lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 210
    sget-boolean v1, Lcom/android/internal/telephony/UiccCardApplication;->bRetryQueryFdnAvailable:Z

    if-eqz v1, :cond_0

    .line 212
    sput-boolean v3, Lcom/android/internal/telephony/UiccCardApplication;->bRetryQueryFdnAvailable:Z

    .line 213
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryFdn()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 220
    .local v0, ints:[I
    array-length v1, v0

    if-eqz v1, :cond_4

    .line 222
    aget v1, v0, v3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 223
    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    .line 224
    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    .line 229
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query facility FDN : FDN service available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_2
    aget v1, v0, v3

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    .line 227
    iput-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    goto :goto_1

    :cond_3
    move v1, v3

    .line 226
    goto :goto_2

    .line 232
    :cond_4
    const-string v1, "Bogus facility lock response"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    .locals 5
    .parameter "ar"
    .parameter "isPin1"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 240
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 241
    .local v0, intArray:[I
    array-length v1, v0

    .line 242
    .local v1, length:I
    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    .line 243
    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    .line 245
    if-lez v1, :cond_0

    .line 246
    if-eqz p2, :cond_1

    .line 247
    aget v2, v0, v4

    iput v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    aget v2, v0, v4

    iput v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    goto :goto_0
.end method

.method private queryFdn()V
    .locals 7

    .prologue
    .line 195
    const/4 v3, 0x7

    .line 198
    .local v3, serviceClassX:I
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    const-string v2, ""

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 201
    return-void
.end method


# virtual methods
.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Pin2 old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 725
    return-void
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Pin1 old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 707
    return-void
.end method

.method declared-synchronized dispose()V
    .locals 2

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " being Disposed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 157
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getCard()Lcom/android/internal/telephony/UiccCard;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    return-object v0
.end method

.method public getIccFdnAvailable()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    return v0
.end method

.method public getIccFdnEnabled()Z
    .locals 1

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    return v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    return-object v0
.end method

.method public getIccLockEnabled()Z
    .locals 2

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v0

    .line 597
    .local v0, pinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPin1RetryCount()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    return v0
.end method

.method public getIccPin2Blocked()Z
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccPin2RetryCount()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    return v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    return-object v0
.end method

.method public getPersoSubState()Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    return-object v0
.end method

.method public getPin1State()Lcom/android/internal/telephony/IccCardStatus$PinState;
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getUniversalPinState()Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v0

    .line 517
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    return-object v0
.end method

.method public getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    return-object v0
.end method

.method public isPersoLocked()Z
    .locals 2

    .prologue
    .line 533
    sget-object v0, Lcom/android/internal/telephony/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$PersoSubState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 539
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 537
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public is_usimcard()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 751
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-nez v1, :cond_1

    .line 753
    :cond_0
    :goto_0
    return v0

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 398
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 399
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 400
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 401
    return-void
.end method

.method public registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 411
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 412
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 413
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPersoLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 414
    return-void
.end method

.method public registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 385
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 386
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 387
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 388
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 674
    iput-boolean p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z

    .line 675
    const/16 v4, 0xf

    .line 680
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 685
    return-void
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 651
    const/4 v4, 0x7

    .line 655
    .local v4, serviceClassX:I
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 658
    return-void
.end method

.method public supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "pin"
    .parameter "type"
    .parameter "onComplete"

    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network Despersonalization: pin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    .line 585
    return-void
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 565
    return-void
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 575
    return-void
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 570
    return-void
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 580
    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 405
    return-void
.end method

.method public unregisterForPersoLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 418
    return-void
.end method

.method public unregisterForReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 392
    return-void
.end method

.method update(Lcom/android/internal/telephony/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .parameter "as"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v5, 0x0

    .line 107
    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    if-eqz v3, :cond_1

    .line 108
    const-string v3, "Application updated after destroyed! Fix me!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update. New "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 113
    iput-object p2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 114
    iput-object p3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .line 116
    .local v1, oldAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .line 117
    .local v0, oldAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 118
    .local v2, oldPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .line 119
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .line 120
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 121
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 122
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 123
    iget v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1_replaced:I

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    .line 124
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 125
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 127
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-eq v3, v1, :cond_2

    .line 128
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 129
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 130
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 131
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v3, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 134
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    if-eq v3, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccCardApplication;->isPersoLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPersoLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 140
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-eq v3, v0, :cond_0

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changed state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v3, v4, :cond_4

    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryFdn()V

    .line 147
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 148
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V

    goto/16 :goto_0

    .line 123
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method
