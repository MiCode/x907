.class public Lcom/android/stk/StkAppService;
.super Landroid/app/Service;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppService$1;,
        Lcom/android/stk/StkAppService$ServiceHandler;,
        Lcom/android/stk/StkAppService$InitiatedByUserAction;
    }
.end annotation


# static fields
.field private static mCardNum:I

.field static sInstance:Lcom/android/stk/StkAppService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandlerThread:[Landroid/os/HandlerThread;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private volatile mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

.field private mStkService:[Lcom/android/internal/telephony/cat/AppInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput v0, Lcom/android/stk/StkAppService;->mCardNum:I

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 84
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 308
    return-void
.end method

.method static synthetic access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    return-object v0
.end method

.method static getInstance()Lcom/android/stk/StkAppService;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-object v0
.end method

.method private waitForLooper()V
    .locals 2

    .prologue
    .line 298
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    if-nez v0, :cond_0

    .line 299
    monitor-enter p0

    .line 301
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 302
    :catch_0
    move-exception v0

    goto :goto_1

    .line 306
    :cond_0
    return-void
.end method


# virtual methods
.method getMenu(I)Lcom/android/internal/telephony/cat/Menu;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Menu on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/stk/StkAppService$ServiceHandler;->getMainMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    return-object v0
.end method

.method indicateDisplayTextDlgVisibility(ZI)V
    .locals 1
    .parameter "visibility"
    .parameter "slotId"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;->indicateDisplayTextDlgVisibility(Z)V

    .line 272
    return-void
.end method

.method indicateMenuVisibility(ZI)V
    .locals 1
    .parameter "visibility"
    .parameter "slotId"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;->indicateMenuVisibility(Z)V

    .line 279
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 155
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    sput v3, Lcom/android/stk/StkAppService;->mCardNum:I

    .line 156
    sget v3, Lcom/android/stk/StkAppService;->mCardNum:I

    new-array v3, v3, [Lcom/android/internal/telephony/cat/AppInterface;

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    .line 157
    sget v3, Lcom/android/stk/StkAppService;->mCardNum:I

    new-array v3, v3, [Landroid/os/HandlerThread;

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    .line 158
    sget v3, Lcom/android/stk/StkAppService;->mCardNum:I

    new-array v3, v3, [Lcom/android/stk/StkAppService$ServiceHandler;

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    .line 159
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v2

    .line 161
    .local v2, mUiccManager:Lcom/android/internal/telephony/UiccManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Number of Cards present:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/stk/StkAppService;->mCardNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " GetInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, catInstancePresent:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v3, Lcom/android/stk/StkAppService;->mCardNum:I

    if-ge v1, v3, :cond_2

    .line 167
    if-eqz v2, :cond_0

    .line 168
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/UiccManager;->getCatService(I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v4

    aput-object v4, v3, v1

    .line 170
    :cond_0
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " GetCatServiceInstance for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x1

    .line 174
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    new-instance v4, Landroid/os/HandlerThread;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ServiceHandler"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 175
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 177
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    new-instance v4, Lcom/android/stk/StkAppService$ServiceHandler;

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5, v1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;Landroid/os/Looper;I)V

    aput-object v4, v3, v1

    goto :goto_1

    .line 181
    :cond_2
    if-nez v0, :cond_3

    .line 182
    const-string v3, " Unable to get Service handle for any Instance"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->stopSelf()V

    .line 191
    :goto_2
    return-void

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 188
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 190
    sput-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 253
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/stk/StkAppService;->mCardNum:I

    if-ge v0, v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 259
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 199
    if-nez p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 205
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 209
    const-string v5, "slot_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 210
    .local v3, slotId:I
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v5, v5, v3

    if-nez v5, :cond_2

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Returning as CatService on"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->stopSelf()V

    goto :goto_0

    .line 216
    :cond_2
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 217
    .local v2, msg:Landroid/os/Message;
    const-string v5, "op"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "called on slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget v5, v2, Landroid/os/Message;->arg1:I

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 221
    :sswitch_0
    const-string v5, "cmd message"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 247
    :cond_3
    :goto_1
    :sswitch_1
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 226
    :sswitch_2
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 232
    :sswitch_3
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    :sswitch_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget v5, Lcom/android/stk/StkAppService;->mCardNum:I

    if-ge v1, v5, :cond_3

    .line 236
    if-eq v1, v3, :cond_4

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v5, v5, v1

    if-eqz v5, :cond_4

    .line 237
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 238
    .local v4, tmpmsg:Landroid/os/Message;
    iget v5, v2, Landroid/os/Message;->arg1:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 239
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    .end local v4           #tmpmsg:Landroid/os/Message;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 219
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_4
        0x7 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x1e -> :sswitch_2
    .end sparse-switch
.end method
