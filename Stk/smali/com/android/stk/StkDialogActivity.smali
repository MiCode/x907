.class public Lcom/android/stk/StkDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "StkDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field appService:Lcom/android/stk/StkAppService;

.field dialogDuration:I

.field private mSlotId:I

.field mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 50
    iput v0, p0, Lcom/android/stk/StkDialogActivity;->dialogDuration:I

    .line 51
    iput v0, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    .line 53
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    .line 55
    new-instance v0, Lcom/android/stk/StkDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkDialogActivity$1;-><init>(Lcom/android/stk/StkDialogActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/StkDialogActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/stk/StkDialogActivity;->sendResponse(I)V

    return-void
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 277
    if-eqz p1, :cond_0

    .line 278
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 279
    const-string v0, "slot_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0
.end method

.method private sendResponse(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    .line 273
    return-void
.end method

.method private sendResponse(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    const-string v1, "confirm"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    const-string v1, "slot_id"

    iget v2, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/stk/StkDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 269
    return-void
.end method

.method private startTimeOut()V
    .locals 4

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    .line 292
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v0}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkDialogActivity;->dialogDuration:I

    .line 293
    iget v0, p0, Lcom/android/stk/StkDialogActivity;->dialogDuration:I

    if-nez v0, :cond_0

    .line 294
    const v0, 0x9c40

    iput v0, p0, Lcom/android/stk/StkDialogActivity;->dialogDuration:I

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkDialogActivity;->dialogDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 298
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v2, 0xd

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, input:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    .line 146
    :goto_1
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 143
    :cond_0
    const-string v1, "*** oppo *** ignore response"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :pswitch_1
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-eqz v1, :cond_1

    .line 150
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    .line 157
    :goto_2
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 154
    :cond_1
    const-string v1, "*** oppo *** ignore response"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 136
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stk/StkDialogActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 83
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    .line 115
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/stk/StkDialogActivity;->requestWindowFeature(I)Z

    .line 99
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 100
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/stk/StkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 101
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/stk/StkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 103
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 104
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 105
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 108
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/stk/StkDialogActivity;->setCanceledOnTouchOutside(Z)Z

    .line 111
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->setupAlert()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 165
    packed-switch p1, :pswitch_data_0

    .line 171
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 167
    :pswitch_0
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/stk/StkDialogActivity;->sendResponse(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 258
    const-string v0, "onNewIntent - updating the same Dialog box"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/stk/StkDialogActivity;->setIntent(Landroid/content/Intent;)V

    .line 260
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 235
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 237
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->indicateDisplayTextDlgVisibility(ZI)V

    .line 239
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    .line 240
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 253
    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 254
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 176
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 178
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/stk/StkDialogActivity;->mSlotId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/stk/StkAppService;->indicateDisplayTextDlgVisibility(ZI)V

    .line 180
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stk/StkDialogActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 181
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-nez v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    .line 231
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 198
    .local v0, window:Landroid/view/Window;
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 209
    :cond_2
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 210
    const v1, 0x10807be

    invoke-virtual {v0, v4, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 224
    :goto_1
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v1}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v1

    iput v1, p0, Lcom/android/stk/StkDialogActivity;->dialogDuration:I

    .line 225
    iget v1, p0, Lcom/android/stk/StkDialogActivity;->dialogDuration:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-eqz v1, :cond_4

    .line 226
    const-string v1, "User should clear text..show message for ever"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_3
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4, v1}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 230
    :cond_4
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->startTimeOut()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 244
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 246
    const-string v0, "text"

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 247
    return-void
.end method
