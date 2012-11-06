.class public Lcom/android/stk/StkLauncherActivity2;
.super Landroid/app/Activity;
.source "StkLauncherActivity2.java"


# static fields
.field private static mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/android/stk/StkLauncherActivity2;->mSlotId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string v1, "op"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    const-string v1, "slot_id"

    sget v2, Lcom/android/stk/StkLauncherActivity2;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/stk/StkLauncherActivity2;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 41
    invoke-virtual {p0}, Lcom/android/stk/StkLauncherActivity2;->finish()V

    .line 42
    return-void
.end method
