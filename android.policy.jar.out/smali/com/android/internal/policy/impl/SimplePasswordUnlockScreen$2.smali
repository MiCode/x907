.class Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$2;
.super Landroid/os/CountDownTimer;
.source "SimplePasswordUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->setEditTextEnable(Z)V

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 319
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 308
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    .line 309
    .local v1, secondsRemaining:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104030f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, instructions:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimplePasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 313
    return-void
.end method
