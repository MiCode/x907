.class public Lcom/oppo/test/StartupActivity;
.super Landroid/app/Activity;
.source "StartupActivity.java"


# static fields
.field private static final SHOW_START_UP_DIALOG:I = 0x123

.field private static final SHUT_DOWN:I = 0x124

.field private static final TAG:Ljava/lang/String; = "StartupActivity"


# instance fields
.field private mShutDownHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Lcom/oppo/test/StartupActivity$1;

    invoke-direct {v0, p0}, Lcom/oppo/test/StartupActivity$1;-><init>(Lcom/oppo/test/StartupActivity;)V

    iput-object v0, p0, Lcom/oppo/test/StartupActivity;->mShutDownHandler:Landroid/os/Handler;

    return-void
.end method

.method private getDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 87
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f040016

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/oppo/test/StartupActivity$3;

    invoke-direct {v3, p0}, Lcom/oppo/test/StartupActivity$3;-><init>(Lcom/oppo/test/StartupActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/oppo/test/StartupActivity$2;

    invoke-direct {v3, p0}, Lcom/oppo/test/StartupActivity$2;-><init>(Lcom/oppo/test/StartupActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 29
    const-string v0, "StartupActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/test/StartupActivity;->requestWindowFeature(I)Z

    .line 33
    invoke-virtual {p0}, Lcom/oppo/test/StartupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x280180

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 41
    invoke-virtual {p0}, Lcom/oppo/test/StartupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 42
    const/16 v0, 0x123

    invoke-virtual {p0, v0}, Lcom/oppo/test/StartupActivity;->showDialog(I)V

    .line 43
    iget-object v0, p0, Lcom/oppo/test/StartupActivity;->mShutDownHandler:Landroid/os/Handler;

    const/16 v1, 0x124

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 44
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 50
    const/16 v1, 0x123

    if-ne p1, v1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/oppo/test/StartupActivity;->getDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 54
    .local v0, dialog:Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 57
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "StartupActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 66
    return-void
.end method
