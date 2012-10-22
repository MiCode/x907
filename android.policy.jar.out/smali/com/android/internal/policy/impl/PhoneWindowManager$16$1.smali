.class Lcom/android/internal/policy/impl/PhoneWindowManager$16$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$16;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$16;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$16;)V
    .locals 0
    .parameter

    .prologue
    .line 3682
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$16$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$16;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3685
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$16$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$16;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3686
    return-void
.end method
