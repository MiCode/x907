.class Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;
.super Ljava/lang/Object;
.source "SimplePasswordUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTask"
.end annotation


# instance fields
.field edit:Lcom/oppo/widget/OppoEditText;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;-><init>(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;->edit:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;->edit:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    goto :goto_0

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;->edit:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    goto :goto_0

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;->edit:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    goto :goto_0
.end method
