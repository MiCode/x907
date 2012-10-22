.class public Lcom/oppo/internal/usb/UsbSelectionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbSelectionActivity.java"


# static fields
.field private static final DBG:Z = false

.field public static final EXTRA_USB_SELECTED_TYPE:Ljava/lang/String; = "UsbSelectedType"

.field public static final EXTRA_USB_SELECTE_DIALOG_HIDE:Ljava/lang/String; = "shouldbeHide"

.field private static final TAG:Ljava/lang/String; = "UsbSelectionActivity"

.field public static final USB_SELECTED_ACTION:Ljava/lang/String; = "android.intent.action.ACTION_USB_SELECED"

.field public static final USB_SELECTED_FINISH_ACTION:Ljava/lang/String; = "android.intent.action.ACTION_USB_SELECED_FINISH"

.field public static final USB_SELECTE_DIALOG_HIDE:Ljava/lang/String; = "android.intent.action.ACTION_USB_SELECTE_DIALOG_HIDE"

.field public static final USB_SELECT_ACTION:Ljava/lang/String; = "android.intent.action.ACTION_USB_SELECTION"

.field public static final USB_STORAGE_AFTER_STATE:Ljava/lang/String; = "android.intent.action.STATE_USB_STORAGE_AFTER"

.field public static final USB_STORAGE_BEFORE_STATE:Ljava/lang/String; = "android.intent.action.STATE_USB_STORAGE_BEFORE"

.field public static isHideUSBDlg:Z

.field static issaveusb_file:Ljava/lang/String;

.field public static mSelected:I

.field public static mSelectedBeforeConfirm:I

.field static usb_file:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/oppo/internal/usb/UsbSelectionAdapter;

.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private final mSelectedUSB:Landroid/content/DialogInterface$OnClickListener;

.field private mSelectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/internal/usb/UsbSelectionDiscription;",
            ">;"
        }
    .end annotation
.end field

.field private notificationManager:Landroid/app/NotificationManager;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sStatusBar:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput v0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelected:I

    .line 54
    sput v0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelectedBeforeConfirm:I

    .line 67
    sput-boolean v0, Lcom/oppo/internal/usb/UsbSelectionActivity;->isHideUSBDlg:Z

    .line 249
    const-string v0, "/data/data/usbfunctype.dat"

    sput-object v0, Lcom/oppo/internal/usb/UsbSelectionActivity;->usb_file:Ljava/lang/String;

    .line 250
    const-string v0, "/data/data/issaveusbtype.dat"

    sput-object v0, Lcom/oppo/internal/usb/UsbSelectionActivity;->issaveusb_file:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mContext:Landroid/content/Context;

    .line 51
    iput-object v1, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mResources:Landroid/content/res/Resources;

    .line 52
    iput-object v1, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mAdapter:Lcom/oppo/internal/usb/UsbSelectionAdapter;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelectionList:Ljava/util/List;

    .line 68
    iput-object v1, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->sStatusBar:Landroid/app/StatusBarManager;

    .line 69
    iput-object v1, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 70
    iput-object v1, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->notificationManager:Landroid/app/NotificationManager;

    .line 72
    new-instance v0, Lcom/oppo/internal/usb/UsbSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/oppo/internal/usb/UsbSelectionActivity$1;-><init>(Lcom/oppo/internal/usb/UsbSelectionActivity;)V

    iput-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelectedUSB:Landroid/content/DialogInterface$OnClickListener;

    .line 89
    new-instance v0, Lcom/oppo/internal/usb/UsbSelectionActivity$2;

    invoke-direct {v0, p0}, Lcom/oppo/internal/usb/UsbSelectionActivity$2;-><init>(Lcom/oppo/internal/usb/UsbSelectionActivity;)V

    iput-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/internal/usb/UsbSelectionActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/internal/usb/UsbSelectionActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/oppo/internal/usb/UsbSelectionActivity;->handleUsbSelected(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/internal/usb/UsbSelectionActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/internal/usb/UsbSelectionActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oppo/internal/usb/UsbSelectionActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oppo/internal/usb/UsbSelectionActivity;)Lcom/oppo/internal/usb/UsbSelectionAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mAdapter:Lcom/oppo/internal/usb/UsbSelectionAdapter;

    return-object v0
.end method

.method private handleUsbSelected(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_USB_SELECED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, usbIntent:Landroid/content/Intent;
    const-string v1, "UsbSelectedType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 212
    return-void
.end method

.method public static isSaveUsbFuncType()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 298
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/oppo/internal/usb/UsbSelectionActivity;->issaveusb_file:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v3, isfile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 300
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 301
    :cond_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 302
    .local v1, file:Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 303
    .local v2, i:I
    invoke-virtual {v1}, Ljava/io/FileReader;->read()I

    move-result v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(II)I

    move-result v2

    .line 304
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    if-ne v2, v4, :cond_1

    .line 312
    .end local v1           #file:Ljava/io/FileReader;
    .end local v2           #i:I
    :goto_0
    return v4

    .restart local v1       #file:Ljava/io/FileReader;
    .restart local v2       #i:I
    :cond_1
    move v4, v5

    .line 308
    goto :goto_0

    .line 309
    .end local v1           #file:Ljava/io/FileReader;
    .end local v2           #i:I
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v4, v5

    .line 312
    goto :goto_0
.end method

.method public static readUsbFuncType()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 254
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/oppo/internal/usb/UsbSelectionActivity;->usb_file:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v3, isfile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 256
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 257
    :cond_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 258
    .local v1, file:Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 259
    .local v2, i:I
    invoke-virtual {v1}, Ljava/io/FileReader;->read()I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(II)I

    move-result v2

    .line 260
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    if-ltz v2, :cond_1

    const/4 v5, 0x3

    if-gt v2, v5, :cond_1

    .line 268
    .end local v1           #file:Ljava/io/FileReader;
    .end local v2           #i:I
    :goto_0
    return v2

    .restart local v1       #file:Ljava/io/FileReader;
    .restart local v2       #i:I
    :cond_1
    move v2, v4

    .line 264
    goto :goto_0

    .line 265
    .end local v1           #file:Ljava/io/FileReader;
    .end local v2           #i:I
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v4

    .line 268
    goto :goto_0
.end method

.method public static saveUsbFuncType(Z)V
    .locals 5
    .parameter "bSave"

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, i:I
    if-eqz p0, :cond_0

    .line 279
    const/4 v1, 0x1

    .line 282
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Lcom/oppo/internal/usb/UsbSelectionActivity;->issaveusb_file:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 283
    .local v2, tmpwriter:Ljava/io/FileWriter;
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v2           #tmpwriter:Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 281
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static writeUsbFuncType(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 234
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    sget-object v2, Lcom/oppo/internal/usb/UsbSelectionActivity;->usb_file:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 235
    .local v1, tmpwriter:Ljava/io/FileWriter;
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v1           #tmpwriter:Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 125
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    iput-object p0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mContext:Landroid/content/Context;

    .line 128
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mResources:Landroid/content/res/Resources;

    .line 130
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->notificationManager:Landroid/app/NotificationManager;

    .line 131
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getUsbSeletcedType()I

    move-result v3

    sput v3, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelected:I

    sput v3, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelectedBeforeConfirm:I

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->sStatusBar:Landroid/app/StatusBarManager;

    if-nez v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->sStatusBar:Landroid/app/StatusBarManager;

    .line 138
    :cond_1
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->sStatusBar:Landroid/app/StatusBarManager;

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapse()V

    .line 140
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelectionList:Ljava/util/List;

    new-instance v4, Lcom/oppo/internal/usb/UsbSelectionDiscription;

    invoke-direct {v4, v6}, Lcom/oppo/internal/usb/UsbSelectionDiscription;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelectionList:Ljava/util/List;

    new-instance v4, Lcom/oppo/internal/usb/UsbSelectionDiscription;

    invoke-direct {v4, v7}, Lcom/oppo/internal/usb/UsbSelectionDiscription;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelectionList:Ljava/util/List;

    new-instance v4, Lcom/oppo/internal/usb/UsbSelectionDiscription;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/oppo/internal/usb/UsbSelectionDiscription;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelectionList:Ljava/util/List;

    new-instance v4, Lcom/oppo/internal/usb/UsbSelectionDiscription;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/oppo/internal/usb/UsbSelectionDiscription;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v2, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 145
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelectedUSB:Landroid/content/DialogInterface$OnClickListener;

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 146
    iput-boolean v6, v2, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 147
    iput-boolean v7, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 148
    const v3, 0x108009b

    iput v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 149
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x10404e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 154
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/oppo/internal/usb/UsbSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 156
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090048

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 157
    iget-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 158
    iget-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 159
    iget-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x10202ea

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 160
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    const v4, 0x1040694

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 161
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/oppo/internal/usb/UsbSelectionActivity;->isSaveUsbFuncType()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 163
    new-instance v3, Lcom/oppo/internal/usb/UsbSelectionAdapter;

    iget-object v4, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mSelectionList:Ljava/util/List;

    invoke-direct {v3, p0, v4}, Lcom/oppo/internal/usb/UsbSelectionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mAdapter:Lcom/oppo/internal/usb/UsbSelectionAdapter;

    .line 164
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mAdapter:Lcom/oppo/internal/usb/UsbSelectionAdapter;

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 166
    invoke-virtual {p0}, Lcom/oppo/internal/usb/UsbSelectionActivity;->setupAlert()V

    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_USB_SELECED_FINISH"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/oppo/internal/usb/UsbSelectionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 200
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oppo/internal/usb/UsbSelectionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 206
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 176
    const-string v0, "UsbSelectionActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 179
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->notificationManager:Landroid/app/NotificationManager;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->isUsbSelectionProcessing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x10404ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v3, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->isUsbSelectionProcessing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 190
    iput-object v3, p0, Lcom/oppo/internal/usb/UsbSelectionActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method
