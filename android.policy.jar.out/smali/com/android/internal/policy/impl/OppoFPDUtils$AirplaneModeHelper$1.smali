.class Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;
.super Ljava/lang/Object;
.source "OppoFPDUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->waitStateTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;

.field final synthetic val$targetState:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;->this$0:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;

    iput p2, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;->val$targetState:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 464
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;->this$0:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mLooper:Landroid/os/Looper;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->access$502(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;Landroid/os/Looper;)Landroid/os/Looper;

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;->this$0:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;

    new-instance v1, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1$1;-><init>(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;)V

    #setter for: Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->access$602(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;->this$0:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;

    #getter for: Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->access$900(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper$1;->this$0:Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;

    #getter for: Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->mListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;->access$600(Lcom/android/internal/policy/impl/OppoFPDUtils$AirplaneModeHelper;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 483
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 484
    return-void
.end method
