.class Lcom/android/server/BatteryPolicy$ChargerVoltage;
.super Lcom/android/server/BatteryPolicy$WarringDialog;
.source "BatteryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChargerVoltage"
.end annotation


# instance fields
.field mChargeVolStatus:I

.field final synthetic this$0:Lcom/android/server/BatteryPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryPolicy;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/BatteryPolicy$ChargerVoltage;->this$0:Lcom/android/server/BatteryPolicy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/BatteryPolicy$WarringDialog;-><init>(Lcom/android/server/BatteryPolicy;Lcom/android/server/BatteryPolicy$1;)V

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/BatteryPolicy$ChargerVoltage;->mChargeVolStatus:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryPolicy;Lcom/android/server/BatteryPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/BatteryPolicy$ChargerVoltage;-><init>(Lcom/android/server/BatteryPolicy;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/BatteryPolicy$ChargerVoltage;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/BatteryPolicy$ChargerVoltage;->updateChargerVoltage(Landroid/content/Intent;)V

    return-void
.end method

.method private updateChargerVoltage(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/16 v3, 0x9

    .line 131
    const-string v1, "chargervolstatus"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryPolicy$ChargerVoltage;->mChargeVolStatus:I

    .line 133
    iget v1, p0, Lcom/android/server/BatteryPolicy$ChargerVoltage;->mChargeVolStatus:I

    sparse-switch v1, :sswitch_data_0

    .line 154
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/BatteryPolicy$ChargerVoltage;->this$0:Lcom/android/server/BatteryPolicy;

    iget v2, p0, Lcom/android/server/BatteryPolicy$ChargerVoltage;->mChargeVolStatus:I

    #setter for: Lcom/android/server/BatteryPolicy;->oldChargeVolStatus:I
    invoke-static {v1, v2}, Lcom/android/server/BatteryPolicy;->access$602(Lcom/android/server/BatteryPolicy;I)I

    .line 156
    return-void

    .line 135
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/BatteryPolicy$ChargerVoltage;->this$0:Lcom/android/server/BatteryPolicy;

    #getter for: Lcom/android/server/BatteryPolicy;->oldChargeVolStatus:I
    invoke-static {v1}, Lcom/android/server/BatteryPolicy;->access$600(Lcom/android/server/BatteryPolicy;)I

    move-result v1

    iget v2, p0, Lcom/android/server/BatteryPolicy$ChargerVoltage;->mChargeVolStatus:I

    if-eq v1, v2, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/server/BatteryPolicy$ChargerVoltage;->dismissWarring()V

    goto :goto_0

    .line 141
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/BatteryPolicy$ChargerVoltage;->this$0:Lcom/android/server/BatteryPolicy;

    #getter for: Lcom/android/server/BatteryPolicy;->mPlugged:Z
    invoke-static {v1}, Lcom/android/server/BatteryPolicy;->access$700(Lcom/android/server/BatteryPolicy;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/server/BatteryPolicy$ChargerVoltage;->this$0:Lcom/android/server/BatteryPolicy;

    #getter for: Lcom/android/server/BatteryPolicy;->oldChargeVolStatus:I
    invoke-static {v1}, Lcom/android/server/BatteryPolicy;->access$600(Lcom/android/server/BatteryPolicy;)I

    move-result v1

    iget v2, p0, Lcom/android/server/BatteryPolicy$ChargerVoltage;->mChargeVolStatus:I

    if-eq v1, v2, :cond_0

    .line 143
    iget v1, p0, Lcom/android/server/BatteryPolicy$ChargerVoltage;->mChargeVolStatus:I

    if-ne v1, v3, :cond_2

    const v0, 0x1040532

    .line 146
    .local v0, textId:I
    :goto_1
    iget v1, p0, Lcom/android/server/BatteryPolicy$ChargerVoltage;->mChargeVolStatus:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/android/server/BatteryPolicy$ChargerVoltage;->mChargeVolStatus:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 148
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryPolicy$ChargerVoltage;->showWarring(I)V

    goto :goto_0

    .line 143
    .end local v0           #textId:I
    :cond_2
    const v0, 0x1040533

    goto :goto_1

    .line 133
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
    .end sparse-switch
.end method
