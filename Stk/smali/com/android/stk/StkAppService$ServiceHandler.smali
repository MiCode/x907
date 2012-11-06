.class final Lcom/android/stk/StkAppService$ServiceHandler;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;
    }
.end annotation


# instance fields
.field private lastSelectedItem:Ljava/lang/String;

.field private launchBrowser:Z

.field private mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field private mClearSelectItem:Z

.field private mCmdInProgress:Z

.field private mCmdsQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

.field private mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCurrentSlotId:I

.field private mDisplayText:Z

.field private mDisplayTextDlgIsVisibile:Z

.field private mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMainMenu:Lcom/android/internal/telephony/cat/Menu;

.field private mMenuIsVisibile:Z

.field private mScreenIdle:Z

.field private mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

.field mTimeoutHandler:Landroid/os/Handler;

.field mVibrator:Landroid/os/Vibrator;

.field player:Lcom/android/stk/TonePlayer;

.field private responseNeeded:Z

.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method public constructor <init>(Lcom/android/stk/StkAppService;Landroid/os/Looper;I)V
    .locals 4
    .parameter
    .parameter "looper"
    .parameter "slotId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 372
    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    .line 373
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 310
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 311
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 312
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 313
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    .line 314
    iput-boolean v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->responseNeeded:Z

    .line 315
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    .line 316
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser:Z

    .line 317
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 318
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 319
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    .line 320
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 321
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 322
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    .line 323
    iput-boolean v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mScreenIdle:Z

    .line 324
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->player:Lcom/android/stk/TonePlayer;

    .line 325
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mVibrator:Landroid/os/Vibrator;

    .line 326
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 327
    iput v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    .line 328
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mClearSelectItem:Z

    .line 329
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayTextDlgIsVisibile:Z

    .line 330
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    .line 335
    new-instance v0, Lcom/android/stk/StkAppService$ServiceHandler$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$ServiceHandler$1;-><init>(Lcom/android/stk/StkAppService$ServiceHandler;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mTimeoutHandler:Landroid/os/Handler;

    .line 374
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    .line 375
    iput p3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/StkAppService$ServiceHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleSessionEnd()V

    return-void
.end method

.method private callDelayedMsg()V
    .locals 2

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 617
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 618
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 619
    return-void
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    return-void
.end method

.method private checkForSetupEvent(ILandroid/os/Bundle;)V
    .locals 6
    .parameter "event"
    .parameter "args"

    .prologue
    .line 1021
    const/4 v1, 0x0

    .line 1022
    .local v1, eventPresent:Z
    const/4 v0, 0x0

    .line 1023
    .local v0, addedInfo:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    if-eqz v4, :cond_3

    .line 1028
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 1029
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v4, v4, v2

    if-ne p1, v4, :cond_1

    .line 1030
    const/4 v1, 0x1

    .line 1037
    :cond_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 1038
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "exists in the EventList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1040
    packed-switch p1, :pswitch_data_0

    .line 1063
    .end local v2           #i:I
    :goto_1
    :pswitch_0
    return-void

    .line 1028
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1042
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendSetUpEventResponse(I[B)V

    .line 1043
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;->removeSetUpEvent(I)V

    .line 1044
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/stk/StkAppService$ServiceHandler;->enableScreenStatusReq(Z)V

    goto :goto_1

    .line 1047
    :pswitch_2
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1048
    .local v3, language:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "language: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 1052
    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendSetUpEventResponse(I[B)V

    goto :goto_1

    .line 1058
    .end local v3           #language:Ljava/lang/String;
    :cond_2
    const-string v4, " Event does not exist in the EventList"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1061
    .end local v2           #i:I
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetupEventList is not received. Ignoring the event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1040
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private enableScreenStatusReq(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableScreenStatusReq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.check_screen_idle"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1358
    const-string v1, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1359
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1360
    return-void
.end method

.method private getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I
    .locals 3
    .parameter "userAction"

    .prologue
    const/4 v1, 0x0

    .line 951
    sget-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x4

    goto :goto_1
.end method

.method private getItemName(I)Ljava/lang/String;
    .locals 5
    .parameter "itemId"

    .prologue
    const/4 v3, 0x0

    .line 1320
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    .line 1321
    .local v2, menu:Lcom/android/internal/telephony/cat/Menu;
    if-nez v2, :cond_1

    .line 1329
    :cond_0
    :goto_0
    return-object v3

    .line 1324
    :cond_1
    iget-object v4, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    .line 1325
    .local v1, item:Lcom/android/internal/telephony/cat/Item;
    iget v4, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    if-ne v4, p1, :cond_2

    .line 1326
    iget-object v3, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleAlphaNotify(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1346
    const-string v0, "alpha_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alpha string received from card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1349
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1350
    const/16 v1, 0x30

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1351
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1352
    return-void
.end method

.method private handleCardStatusChangeAndIccRefresh(Landroid/os/Bundle;)V
    .locals 6
    .parameter "args"

    .prologue
    const/16 v5, 0x14d

    const/4 v4, 0x0

    .line 472
    const-string v2, "card_status"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 474
    .local v0, CardStatus:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CardStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    if-nez v0, :cond_1

    .line 476
    const-string v2, "CARD is ABSENT"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-static {v2, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 479
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 480
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v2}, Lcom/android/stk/StkAppService;->stopSelf()V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IccRefreshResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccRefreshResponse;-><init>()V

    .line 483
    .local v1, state:Lcom/android/internal/telephony/IccRefreshResponse;
    const-string v2, "refresh_result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResultFromRIL(I)Lcom/android/internal/telephony/IccRefreshResponse$Result;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Icc Refresh Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    iget-object v2, v1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    sget-object v3, Lcom/android/internal/telephony/IccRefreshResponse$Result;->ICC_INIT:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    if-eq v2, v3, :cond_2

    iget-object v2, v1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    sget-object v3, Lcom/android/internal/telephony/IccRefreshResponse$Result;->ICC_RESET:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    if-ne v2, v3, :cond_3

    .line 490
    :cond_2
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 491
    iput-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 494
    :cond_3
    iget-object v2, v1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    sget-object v3, Lcom/android/internal/telephony/IccRefreshResponse$Result;->ICC_RESET:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    if-ne v2, v3, :cond_0

    .line 496
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-static {v2, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 497
    iput-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 498
    iput-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0
.end method

.method private handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 11
    .parameter "cmdMsg"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 647
    if-nez p1, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 652
    const/4 v5, 0x1

    .line 654
    .local v5, waitForUsersResponse:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    sget-object v6, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 781
    :cond_2
    :goto_1
    if-nez v5, :cond_0

    .line 782
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-eqz v6, :cond_d

    .line 783
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->callDelayedMsg()V

    goto :goto_0

    .line 657
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v4

    .line 659
    .local v4, msg:Lcom/android/internal/telephony/cat/TextMessage;
    iget-boolean v6, v4, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v6, :cond_3

    .line 660
    const/4 v5, 0x0

    .line 662
    :cond_3
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 663
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 677
    :goto_2
    iget-boolean v6, v4, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayTextDlgIsVisibile:Z

    if-nez v6, :cond_6

    .line 678
    invoke-direct {p0, v8}, Lcom/android/stk/StkAppService$ServiceHandler;->enableScreenStatusReq(Z)V

    .line 679
    iput-boolean v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    goto :goto_1

    .line 664
    :cond_4
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v6, :cond_5

    .line 665
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 668
    :cond_5
    const-string v6, ""

    iput-object v6, v4, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 681
    :cond_6
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchTextDialog()V

    goto :goto_1

    .line 685
    .end local v4           #msg:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v6

    iput-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 686
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/stk/StkAppService$ServiceHandler;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    goto :goto_1

    .line 689
    :pswitch_2
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 690
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v6

    iput-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 691
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->removeMenu()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 692
    const-string v6, "Uninstall App"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    iput-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 694
    iput-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 695
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-static {v6, v7}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 700
    :goto_3
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iput-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 701
    iget-boolean v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    if-eqz v6, :cond_2

    .line 702
    invoke-direct {p0, v9}, Lcom/android/stk/StkAppService$ServiceHandler;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    goto/16 :goto_1

    .line 697
    :cond_7
    const-string v6, "Install App"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-static {v6, v7}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;I)V

    goto :goto_3

    .line 707
    :pswitch_3
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchInputActivity()V

    goto/16 :goto_1

    .line 710
    :pswitch_4
    const/4 v5, 0x0

    .line 711
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 712
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchIdleText()V

    .line 713
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    .line 715
    .local v1, idleModeText:Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.stk.check_screen_idle"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 716
    .local v2, idleStkIntent:Landroid/content/Intent;
    if-eqz v1, :cond_8

    .line 717
    iget-object v6, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 718
    const-string v6, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 725
    :cond_8
    :goto_4
    const-string v6, "set up idle mode"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 727
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v6, v2}, Lcom/android/stk/StkAppService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 720
    :cond_9
    const-string v6, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 721
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchIdleText()V

    .line 722
    iput-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_4

    .line 733
    .end local v1           #idleModeText:Lcom/android/internal/telephony/cat/TextMessage;
    .end local v2           #idleStkIntent:Landroid/content/Intent;
    :pswitch_5
    const/4 v5, 0x0

    .line 734
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchEventMessage()V

    .line 735
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_1

    .line 738
    :pswitch_6
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/stk/StkAppService$ServiceHandler;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 744
    :pswitch_7
    const/4 v5, 0x0

    .line 745
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchEventMessage()V

    goto/16 :goto_1

    .line 748
    :pswitch_8
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {p0, v6}, Lcom/android/stk/StkAppService$ServiceHandler;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 751
    :pswitch_9
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v6

    iget-object v3, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 752
    .local v3, mesg:Lcom/android/internal/telephony/cat/TextMessage;
    if-eqz v3, :cond_b

    iget-object v6, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget-object v6, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_b

    .line 753
    :cond_a
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v6}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 755
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SET_UP_CALL mesg.text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    invoke-direct {p0, v3}, Lcom/android/stk/StkAppService$ServiceHandler;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 759
    .end local v3           #mesg:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_a
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchToneDialog()V

    goto/16 :goto_1

    .line 762
    :pswitch_b
    const-string v6, " SETUP_EVENT_LIST"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v6

    iput-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 765
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 766
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 767
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    if-nez v6, :cond_2

    .line 769
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v6, v6

    if-ge v0, v6, :cond_2

    .line 770
    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v6, v6, v0

    const/4 v7, 0x5

    if-ne v6, v7, :cond_c

    .line 771
    const-string v6, " IDLE_SCREEN_AVAILABLE_EVENT present in List"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 773
    invoke-direct {p0, v8}, Lcom/android/stk/StkAppService$ServiceHandler;->enableScreenStatusReq(Z)V

    goto/16 :goto_1

    .line 769
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 785
    .end local v0           #i:I
    :cond_d
    iput-boolean v10, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    goto/16 :goto_0

    .line 655
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private handleCmdResponse(Landroid/os/Bundle;)V
    .locals 11
    .parameter "args"

    .prologue
    const/4 v10, 0x1

    .line 805
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v8, :cond_0

    .line 930
    :goto_0
    return-void

    .line 808
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 811
    .local v5, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const-string v8, "help"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 813
    .local v2, helpRequired:Z
    const-string v8, "response id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 917
    :pswitch_0
    const-string v8, "Unknown result id"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 815
    :pswitch_1
    const-string v8, "RES_ID_MENU_SELECTION"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    const-string v8, "menu selection"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 817
    .local v4, menuSelection:I
    sget-object v8, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 921
    .end local v4           #menuSelection:I
    :cond_1
    :goto_1
    :pswitch_2
    const-string v8, "slot_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 922
    .local v6, slotId:I
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v8}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v8

    aget-object v8, v8, v6

    if-eqz v8, :cond_c

    .line 924
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CmdResponse sent on"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 925
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v8}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-interface {v8, v5}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    .line 820
    .end local v6           #slotId:I
    .restart local v4       #menuSelection:I
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/android/stk/StkAppService$ServiceHandler;->getItemName(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    .line 821
    if-eqz v2, :cond_2

    .line 822
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 827
    :goto_2
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setMenuSelection(I)V

    .line 828
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->startTimeOut()V

    goto :goto_1

    .line 824
    :cond_2
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_3
    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_2

    :cond_3
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_3

    .line 833
    .end local v4           #menuSelection:I
    :pswitch_4
    const-string v8, "RES_ID_INPUT"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 834
    const-string v8, "input"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 835
    .local v3, input:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v0

    .line 836
    .local v0, cmdInput:Lcom/android/internal/telephony/cat/Input;
    if-eqz v0, :cond_4

    iget-boolean v8, v0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v8, :cond_4

    .line 837
    const-string v8, "YES"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 839
    .local v7, yesNoSelection:Z
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setYesNo(Z)V

    goto :goto_1

    .line 841
    .end local v7           #yesNoSelection:Z
    :cond_4
    if-eqz v2, :cond_5

    .line 842
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_1

    .line 844
    :cond_5
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_4
    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 846
    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setInput(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 844
    :cond_6
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_4

    .line 851
    .end local v0           #cmdInput:Lcom/android/internal/telephony/cat/Input;
    .end local v3           #input:Ljava/lang/String;
    :pswitch_5
    const-string v8, "RES_ID_CONFIRM"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    const-string v8, "confirm"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 853
    .local v1, confirmed:Z
    sget-object v8, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    .line 855
    :sswitch_0
    if-eqz v1, :cond_8

    .line 856
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_5
    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    :cond_7
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_5

    .line 859
    :cond_8
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 863
    :sswitch_1
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 867
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    sget-object v9, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    if-ne v8, v9, :cond_9

    if-eqz v1, :cond_9

    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/stk/StkAppService$ServiceHandler;->isBrowserLaunched(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 869
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 870
    const/4 v8, 0x2

    invoke-virtual {v5, v10, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(ZI)V

    .line 871
    const-string v8, "LAUNCH_BROWSER_ERROR - Browser_Unavailable"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 877
    :goto_6
    if-eqz v1, :cond_1

    .line 878
    iput-boolean v10, p0, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser:Z

    goto/16 :goto_1

    .line 873
    :cond_9
    if-eqz v1, :cond_a

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_7
    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_6

    :cond_a
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_7

    .line 883
    :sswitch_2
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 884
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 885
    if-eqz v1, :cond_1

    .line 886
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchCallMsg()V

    goto/16 :goto_1

    .line 892
    .end local v1           #confirmed:Z
    :pswitch_6
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 895
    :pswitch_7
    const-string v8, "RES_ID_BACKWARD"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 896
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 899
    :pswitch_8
    const-string v8, "RES_ID_END_SESSION"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 903
    :pswitch_9
    const-string v8, "RES_ID_TIMEOUT"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 908
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v8

    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v9

    if-ne v8, v9, :cond_b

    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-nez v8, :cond_b

    .line 911
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 913
    :cond_b
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 928
    .restart local v6       #slotId:I
    :cond_c
    const-string v8, "CmdResponse on wrong slotid"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 813
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 817
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 853
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleDelayedCmd()V
    .locals 2

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;

    .line 604
    .local v0, cmd:Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;
    iget v1, v0, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;->id:I

    packed-switch v1, :pswitch_data_0

    .line 613
    .end local v0           #cmd:Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 606
    .restart local v0       #cmd:Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;
    :pswitch_1
    iget-object v1, v0, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;->msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 609
    :pswitch_2
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleSessionEnd()V

    goto :goto_0

    .line 604
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleScreenStatus(Landroid/os/Bundle;)V
    .locals 3
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 504
    const-string v0, "screen status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mScreenIdle:Z

    .line 508
    iget-boolean v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mScreenIdle:Z

    if-eqz v0, :cond_0

    .line 509
    const-string v0, "Need to send IDLE SCREEN Available event to SIM"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->checkForSetupEvent(ILandroid/os/Bundle;)V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_1

    .line 513
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchIdleText()V

    .line 515
    :cond_1
    iget-boolean v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    if-eqz v0, :cond_2

    .line 521
    iget-boolean v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mScreenIdle:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->isTopOfStack()Z

    move-result v0

    if-nez v0, :cond_3

    .line 522
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendScreenBusyResponse()V

    .line 526
    :goto_0
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    .line 529
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_2

    .line 530
    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->enableScreenStatusReq(Z)V

    .line 533
    :cond_2
    return-void

    .line 524
    :cond_3
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchTextDialog()V

    goto :goto_0
.end method

.method private handleSessionEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 622
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 623
    iput-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    .line 624
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->cancelTimeOut()V

    .line 628
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 631
    :cond_0
    iget-boolean v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    if-eqz v0, :cond_1

    .line 632
    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 635
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->callDelayedMsg()V

    .line 640
    :goto_0
    iget-boolean v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser:Z

    if-eqz v0, :cond_2

    .line 641
    iput-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser:Z

    .line 642
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V

    .line 644
    :cond_2
    return-void

    .line 637
    :cond_3
    iput-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    goto :goto_0
.end method

.method private handleStopTone()V
    .locals 1

    .prologue
    .line 565
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendResponse(I)V

    .line 566
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->player:Lcom/android/stk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/stk/TonePlayer;->stop()V

    .line 567
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->player:Lcom/android/stk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/stk/TonePlayer;->release()V

    .line 568
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 569
    const-string v0, "Finished handling PlayTone with Null alpha"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method private isBrowserLaunched(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1179
    const/16 v2, 0x63

    .line 1180
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1181
    if-nez v0, :cond_0

    move v0, v1

    .line 1194
    :goto_0
    return v0

    .line 1183
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1185
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1186
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1187
    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1189
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1194
    goto :goto_0
.end method

.method private isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 2
    .parameter "cmd"

    .prologue
    .line 584
    sget-object v0, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 598
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 595
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isTopOfStack()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 536
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 538
    .local v1, mAcivityManager:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, currentPackageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 541
    const-string v2, "com.android.stk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 544
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x400

    .line 1128
    if-nez p1, :cond_0

    .line 1176
    :goto_0
    return-void

    .line 1132
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1133
    const-string v0, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1137
    const/4 v0, 0x0

    .line 1138
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settings.url = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1140
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1141
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1148
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 1149
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1151
    :cond_3
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1152
    sget-object v2, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$LaunchBrowserMode:[I

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1169
    :goto_2
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1174
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1175
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1143
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifiedUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1145
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 1154
    :pswitch_0
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1158
    :pswitch_1
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1159
    const/high16 v0, 0x800

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1162
    :pswitch_2
    if-eqz v0, :cond_5

    .line 1163
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    :cond_5
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private launchCallMsg()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1198
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 1199
    iget-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1204
    new-instance v3, Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1205
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1207
    const/high16 v1, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1208
    const v0, 0x102000b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1210
    const v1, 0x1020006

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1212
    iget-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    .line 1213
    iget-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1223
    :goto_1
    iget-object v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-boolean v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v1, :cond_3

    .line 1224
    :cond_2
    iget-object v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1228
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 1229
    const/16 v0, 0x50

    invoke-virtual {v3, v0, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 1230
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1215
    :cond_4
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1117
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const-class v2, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1118
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1122
    const-string v1, "TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1123
    const-string v1, "slot_id"

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1124
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1125
    return-void
.end method

.method private launchEventMessage()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1082
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    .line 1083
    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    new-instance v3, Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1087
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1089
    const/high16 v1, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1090
    const v0, 0x102000b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1092
    const v1, 0x1020006

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1094
    iget-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    .line 1095
    iget-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1105
    :goto_1
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v1, :cond_3

    .line 1106
    :cond_2
    iget-object v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1110
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 1111
    const/16 v0, 0x50

    invoke-virtual {v3, v0, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 1112
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1097
    :cond_4
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private launchIdleText()V
    .locals 9

    .prologue
    const v8, 0x10807be

    const v7, 0x1020006

    const/4 v6, 0x0

    const/16 v5, 0x14d

    .line 1235
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 1236
    if-nez v0, :cond_0

    .line 1237
    const-string v0, "mCurrent.getTextMessage is NULL"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1276
    :goto_0
    return-void

    .line 1240
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mScreenIdle:Z

    if-nez v1, :cond_2

    .line 1241
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 1243
    :cond_2
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1244
    new-instance v2, Landroid/widget/RemoteViews;

    const-string v3, "com.android.stk"

    const v4, 0x10900ed

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1248
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 1249
    iput v8, v1, Landroid/app/Notification;->icon:I

    .line 1256
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v3, :cond_4

    .line 1257
    :cond_3
    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1258
    const v3, 0x1020046

    iget-object v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1261
    :cond_4
    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 1262
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1270
    :goto_1
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1271
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v6, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1274
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1265
    :cond_5
    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private launchInputActivity()V
    .locals 3

    .prologue
    .line 976
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 977
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 979
    const-string v1, "com.android.stk"

    const-string v2, "com.android.stk.StkInputActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    const-string v1, "INPUT"

    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 981
    const-string v1, "slot_id"

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 982
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 983
    return-void
.end method

.method private launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 956
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 957
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.android.stk"

    const-string v3, "com.android.stk.StkMenuActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    const/high16 v0, 0x1400

    .line 960
    .local v0, intentFlags:I
    if-nez p1, :cond_0

    .line 962
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 963
    const-string v2, "STATE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 970
    :goto_0
    const-string v2, "slot_id"

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 971
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 972
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 973
    return-void

    .line 966
    :cond_0
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 967
    const-string v2, "STATE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 968
    const-string v2, "MENU"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private launchTextDialog()V
    .locals 3

    .prologue
    .line 988
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getStkTextStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    :goto_0
    return-void

    .line 991
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setStkTextStatus(Z)V

    .line 994
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const-class v2, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 995
    const/high16 v1, 0x7080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1000
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1001
    const-string v1, "slot_id"

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1002
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private launchToneDialog()V
    .locals 5

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 1280
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;

    move-result-object v1

    .line 1282
    iget-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toneMsg.text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Starting Activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1284
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const-class v4, Lcom/android/stk/ToneDialog;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1285
    const/high16 v3, 0x5080

    sget-object v4, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v4}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1288
    const-string v3, "TEXT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1289
    const-string v0, "TONE"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1290
    const-string v0, "slot_id"

    iget v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting Activity based on the ToneDialog Intent for SlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1293
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v0, v2}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1298
    :goto_0
    return-void

    .line 1295
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toneMsg.text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NO Activity, play tone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1296
    invoke-direct {p0, v0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->onPlayToneNullAlphaTag(Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/ToneSettings;)V

    goto :goto_0
.end method

.method private onPlayToneNullAlphaTag(Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/ToneSettings;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1302
    new-instance v0, Lcom/android/stk/TonePlayer;

    invoke-direct {v0}, Lcom/android/stk/TonePlayer;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->player:Lcom/android/stk/TonePlayer;

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play tone settings.tone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->player:Lcom/android/stk/TonePlayer;

    iget-object v1, p2, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {v0, v1}, Lcom/android/stk/TonePlayer;->play(Lcom/android/internal/telephony/cat/Tone;)V

    .line 1305
    iget-object v0, p2, Lcom/android/internal/telephony/cat/ToneSettings;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v0}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    .line 1306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToneDialog: Tone timeout :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1307
    if-nez v0, :cond_0

    .line 1308
    const/16 v0, 0x7d0

    .line 1310
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1311
    const/16 v2, 0xda

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1313
    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1314
    iget-boolean v1, p2, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    if-eqz v1, :cond_1

    .line 1315
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mVibrator:Landroid/os/Vibrator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1317
    :cond_1
    return-void
.end method

.method private removeMenu()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1334
    :try_start_0
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 1342
    :goto_0
    return v0

    .line 1338
    :catch_0
    move-exception v1

    .line 1339
    const-string v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1342
    goto :goto_0
.end method

.method private removeSetUpEvent(I)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove Event :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    if-eqz v1, :cond_0

    .line 1072
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 1074
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    .line 1079
    .end local v0           #i:I
    :cond_0
    return-void

    .line 1072
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendResponse(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 574
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 575
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 576
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "response id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 577
    const-string v2, "slot_id"

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResponse mCurrentSlotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 580
    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 581
    return-void
.end method

.method private sendScreenBusyResponse()V
    .locals 3

    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_0

    .line 562
    :goto_0
    return-void

    .line 551
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 552
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const-string v1, "SCREEN_BUSY"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 554
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 556
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->responseNeeded:Z

    .line 557
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->callDelayedMsg()V

    goto :goto_0

    .line 560
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    goto :goto_0
.end method

.method private sendSetUpEventResponse(I[B)V
    .locals 3
    .parameter "event"
    .parameter "addedInfo"

    .prologue
    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSetUpEventResponse: event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 1012
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1014
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1015
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    .line 1017
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private startTimeOut()V
    .locals 4

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->cancelTimeOut()V

    .line 354
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 356
    return-void
.end method


# virtual methods
.method public getMainMenu()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 380
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 382
    .local v1, opcode:I
    sparse-switch v1, :sswitch_data_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 384
    :sswitch_0
    const-string v2, "OP_LAUNCH_APP"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_0

    .line 390
    invoke-direct {p0, v6}, Lcom/android/stk/StkAppService$ServiceHandler;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    goto :goto_0

    .line 393
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 394
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OP_CMD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->cancelTimeOut()V

    .line 407
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 408
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 410
    :cond_1
    iget-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    if-nez v2, :cond_2

    .line 411
    iput-boolean v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    .line 412
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 414
    :cond_2
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    new-instance v4, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v4, p0, v5, v2}, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;-><init>(Lcom/android/stk/StkAppService$ServiceHandler;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 420
    .end local v0           #cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    :sswitch_2
    iget-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->responseNeeded:Z

    if-eqz v2, :cond_3

    .line 421
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCmdResponse(Landroid/os/Bundle;)V

    .line 424
    :cond_3
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 425
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->callDelayedMsg()V

    .line 430
    :goto_1
    iput-boolean v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->responseNeeded:Z

    goto :goto_0

    .line 427
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    goto :goto_1

    .line 433
    :sswitch_3
    iget-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    if-nez v2, :cond_5

    .line 434
    iput-boolean v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    .line 435
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleSessionEnd()V

    goto :goto_0

    .line 437
    :cond_5
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    new-instance v3, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4, v6}, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;-><init>(Lcom/android/stk/StkAppService$ServiceHandler;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 441
    :sswitch_4
    const-string v2, "OP_BOOT_COMPLETED"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-static {v2, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 447
    :sswitch_5
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleDelayedCmd()V

    goto/16 :goto_0

    .line 450
    :sswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleAlphaNotify(Landroid/os/Bundle;)V

    .line 452
    :sswitch_7
    const-string v2, "IDLE SCREEN"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleScreenStatus(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 456
    :sswitch_8
    const-string v2, "Locale Changed"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    const/4 v3, 0x7

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v3, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->checkForSetupEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 460
    :sswitch_9
    const-string v2, "Received MSG_ID_STOP_TONE"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleStopTone()V

    goto/16 :goto_0

    .line 464
    :sswitch_a
    const-string v2, "Card/Icc Status change received"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCardStatusChangeAndIccRefresh(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 382
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_a
        0x1e -> :sswitch_6
        0xda -> :sswitch_9
    .end sparse-switch
.end method

.method indicateDisplayTextDlgVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 936
    iput-boolean p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayTextDlgIsVisibile:Z

    .line 937
    return-void
.end method

.method indicateMenuVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 794
    iput-boolean p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    .line 795
    return-void
.end method
