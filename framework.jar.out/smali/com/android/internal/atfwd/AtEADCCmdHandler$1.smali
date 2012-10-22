.class Lcom/android/internal/atfwd/AtEADCCmdHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "AtEADCCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/atfwd/AtEADCCmdHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/atfwd/AtEADCCmdHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/atfwd/AtEADCCmdHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtEADCCmdHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide v10, 0x408f400000000000L

    const/4 v9, 0x0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    const-string/jumbo v4, "voltage"

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 73
    .local v3, nVol:I
    iget-object v4, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtEADCCmdHandler;

    int-to-double v5, v3

    div-double/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/internal/atfwd/AtEADCCmdHandler;->nVol_str:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/atfwd/AtEADCCmdHandler;->access$002(Lcom/android/internal/atfwd/AtEADCCmdHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    const-string/jumbo v4, "temperature"

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 75
    .local v2, nTemp:I
    iget-object v4, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtEADCCmdHandler;

    int-to-double v5, v2

    const-wide/high16 v7, 0x4024

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/internal/atfwd/AtEADCCmdHandler;->Temp_str:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/atfwd/AtEADCCmdHandler;->access$102(Lcom/android/internal/atfwd/AtEADCCmdHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    const-string v4, "chargervoltage"

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 79
    .local v1, chargerVol:I
    iget-object v4, p0, Lcom/android/internal/atfwd/AtEADCCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtEADCCmdHandler;

    int-to-double v5, v1

    div-double/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/internal/atfwd/AtEADCCmdHandler;->mChargerVol:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/atfwd/AtEADCCmdHandler;->access$202(Lcom/android/internal/atfwd/AtEADCCmdHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .end local v1           #chargerVol:I
    .end local v2           #nTemp:I
    .end local v3           #nVol:I
    :cond_0
    return-void
.end method
