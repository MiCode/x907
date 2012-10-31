.class Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1$1;
.super Landroid/telephony/PhoneStateListener;
.source "OppoFPDUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1$1;->this$1:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1$1;->this$1:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;->this$0:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;

    #getter for: Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->access$600(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1$1;->this$1:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;->this$0:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    #setter for: Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mState:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->access$702(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;I)I

    .line 449
    const-string v0, "OppoFPDUtils"

    const-string v2, "state changed"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1$1;->this$1:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;->this$0:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;

    #getter for: Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mState:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->access$700(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;)I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1$1;->this$1:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;

    iget v2, v2, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;->val$targetState:I

    if-ne v0, v2, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1$1;->this$1:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;->this$0:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;

    #getter for: Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->access$600(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 454
    :cond_0
    monitor-exit v1

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
