.class Lcom/android/internal/policy/impl/PhoneWindowManager$4;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 585
    if-nez p2, :cond_1

    .line 586
    const-string v1, "WindowManager"

    const-string v2, "mHomeKeyDoubleClickEnableReceiver:onReceiver: intent is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.HOME_DOUBLE_ENABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 591
    const-string v1, "WindowManager"

    const-string v2, "mHomeKeyDoubleClickEnableReceiver receive HOMEKEY_DOUBLE_CLICK_ENABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDoubleClickEnable:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    goto :goto_0

    .line 593
    :cond_2
    const-string v1, "android.intent.action.HOME_DOUBLE_DISABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    const-string v1, "WindowManager"

    const-string v2, "mHomeKeyDoubleClickEnableReceiver receive HOMEKEY_DOUBLE_CLICK_DISABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDoubleClickEnable:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    goto :goto_0
.end method
