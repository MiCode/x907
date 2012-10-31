.class Lcom/android/internal/policy/impl/PowerOnPassWordView$2;
.super Landroid/os/Handler;
.source "PowerOnPassWordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PowerOnPassWordView;
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
    .line 226
    iput-object p1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$2;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 231
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$2;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->hideView()V

    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$2;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    #getter for: Lcom/android/internal/policy/impl/PowerOnPassWordView;->mDoOpenFly:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->access$100(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$2;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    #getter for: Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->access$000(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 236
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "airplane_mode_on"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$2;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    #setter for: Lcom/android/internal/policy/impl/PowerOnPassWordView;->mDoOpenFly:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->access$102(Lcom/android/internal/policy/impl/PowerOnPassWordView;Z)Z

    .line 239
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$2;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    #getter for: Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->access$000(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$2;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    #getter for: Lcom/android/internal/policy/impl/PowerOnPassWordView;->mTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->access$300(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$2;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    #getter for: Lcom/android/internal/policy/impl/PowerOnPassWordView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->access$000(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x104050a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$2;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    #setter for: Lcom/android/internal/policy/impl/PowerOnPassWordView;->mIsPass:Z
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->access$402(Lcom/android/internal/policy/impl/PowerOnPassWordView;Z)Z

    goto :goto_0

    .line 246
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerOnPassWordView$2;->this$0:Lcom/android/internal/policy/impl/PowerOnPassWordView;

    #getter for: Lcom/android/internal/policy/impl/PowerOnPassWordView;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PowerOnPassWordView;->access$500(Lcom/android/internal/policy/impl/PowerOnPassWordView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
