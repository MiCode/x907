.class Lcom/android/internal/policy/impl/PowerOnPassWordView$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerOnPassWordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PowerOnPassWordView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PowerOnPassWordView;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$1;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, mIsSimPinOn:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$1;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    #getter for: Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->access$000(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 84
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$1;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    #setter for: Lcom/android/internal/policy/impl/PowerOnPassWordView;->mDoOpenFly:Z
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->access$102(Lcom/android/internal/policy/impl/PowerOnPassWordView;Z)Z

    .line 85
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$1;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    #getter for: Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->access$000(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$1;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$1;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    #getter for: Lcom/android/internal/policy/impl/PowerOnPassWordView;->mDoOpenFly:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->access$100(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Z

    move-result v4

    #calls: Lcom/android/internal/policy/impl/PowerOnPassWordView;->writeIsChangedData(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->access$200(Lcom/android/internal/policy/impl/PowerOnPassWordView;Z)V

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, intent_airmode:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    const-string v3, "state"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$1;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    #getter for: Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->access$000(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    .end local v1           #intent_airmode:Landroid/content/Intent;
    .end local v2           #mIsSimPinOn:Z
    :cond_0
    return-void
.end method
