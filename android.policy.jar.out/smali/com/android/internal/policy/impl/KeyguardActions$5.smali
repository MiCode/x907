.class Lcom/android/internal/policy/impl/KeyguardActions$5;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardActions;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardActions$5;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardActions$5;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    #getter for: Lcom/android/internal/policy/impl/KeyguardActions;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardActions;->access$400(Lcom/android/internal/policy/impl/KeyguardActions;)Lcom/android/internal/policy/impl/KeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->hideKeyguardActions()V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardActions$5;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    #getter for: Lcom/android/internal/policy/impl/KeyguardActions;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardActions;->access$400(Lcom/android/internal/policy/impl/KeyguardActions;)Lcom/android/internal/policy/impl/KeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->hideKeyguardActions()V

    goto :goto_0

    .line 218
    :cond_2
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardActions$5;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    #calls: Lcom/android/internal/policy/impl/KeyguardActions;->updateResource()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardActions;->access$600(Lcom/android/internal/policy/impl/KeyguardActions;)V

    goto :goto_0
.end method
