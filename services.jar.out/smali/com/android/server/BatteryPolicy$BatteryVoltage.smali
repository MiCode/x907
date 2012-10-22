.class Lcom/android/server/BatteryPolicy$BatteryVoltage;
.super Lcom/android/server/BatteryPolicy$WarringDialog;
.source "BatteryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryVoltage"
.end annotation


# instance fields
.field private mBatteryVolStatus:I

.field final synthetic this$0:Lcom/android/server/BatteryPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryPolicy;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/BatteryPolicy$BatteryVoltage;->this$0:Lcom/android/server/BatteryPolicy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/BatteryPolicy$WarringDialog;-><init>(Lcom/android/server/BatteryPolicy;Lcom/android/server/BatteryPolicy$1;)V

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/BatteryPolicy$BatteryVoltage;->mBatteryVolStatus:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryPolicy;Lcom/android/server/BatteryPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/BatteryPolicy$BatteryVoltage;-><init>(Lcom/android/server/BatteryPolicy;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/BatteryPolicy$BatteryVoltage;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/BatteryPolicy$BatteryVoltage;->updateBatteryVoltage(Landroid/content/Intent;)V

    return-void
.end method

.method private updateBatteryVoltage(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 165
    const-string v1, "batteryvolstatus"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryPolicy$BatteryVoltage;->mBatteryVolStatus:I

    .line 166
    iget v1, p0, Lcom/android/server/BatteryPolicy$BatteryVoltage;->mBatteryVolStatus:I

    sparse-switch v1, :sswitch_data_0

    .line 180
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/BatteryPolicy$BatteryVoltage;->this$0:Lcom/android/server/BatteryPolicy;

    iget v2, p0, Lcom/android/server/BatteryPolicy$BatteryVoltage;->mBatteryVolStatus:I

    #setter for: Lcom/android/server/BatteryPolicy;->oldBatteryVolStatus:I
    invoke-static {v1, v2}, Lcom/android/server/BatteryPolicy;->access$902(Lcom/android/server/BatteryPolicy;I)I

    .line 181
    return-void

    .line 169
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/BatteryPolicy$BatteryVoltage;->this$0:Lcom/android/server/BatteryPolicy;

    #getter for: Lcom/android/server/BatteryPolicy;->oldBatteryVolStatus:I
    invoke-static {v1}, Lcom/android/server/BatteryPolicy;->access$900(Lcom/android/server/BatteryPolicy;)I

    move-result v1

    iget v2, p0, Lcom/android/server/BatteryPolicy$BatteryVoltage;->mBatteryVolStatus:I

    if-eq v1, v2, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/server/BatteryPolicy$BatteryVoltage;->dismissWarring()V

    goto :goto_0

    .line 174
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/BatteryPolicy$BatteryVoltage;->this$0:Lcom/android/server/BatteryPolicy;

    #getter for: Lcom/android/server/BatteryPolicy;->oldBatteryVolStatus:I
    invoke-static {v1}, Lcom/android/server/BatteryPolicy;->access$900(Lcom/android/server/BatteryPolicy;)I

    move-result v1

    iget v2, p0, Lcom/android/server/BatteryPolicy$BatteryVoltage;->mBatteryVolStatus:I

    if-eq v1, v2, :cond_0

    .line 175
    const v0, 0x104052f

    .line 176
    .local v0, textId:I
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryPolicy$BatteryVoltage;->showWarring(I)V

    goto :goto_0

    .line 166
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method
