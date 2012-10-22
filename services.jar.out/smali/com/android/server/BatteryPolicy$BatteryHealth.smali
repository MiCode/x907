.class Lcom/android/server/BatteryPolicy$BatteryHealth;
.super Lcom/android/server/BatteryPolicy$WarringDialog;
.source "BatteryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryHealth"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryPolicy;)V
    .locals 1
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/server/BatteryPolicy$BatteryHealth;->this$0:Lcom/android/server/BatteryPolicy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/BatteryPolicy$WarringDialog;-><init>(Lcom/android/server/BatteryPolicy;Lcom/android/server/BatteryPolicy$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryPolicy;Lcom/android/server/BatteryPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/BatteryPolicy$BatteryHealth;-><init>(Lcom/android/server/BatteryPolicy;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/BatteryPolicy$BatteryHealth;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/BatteryPolicy$BatteryHealth;->updateBatteryHealth(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private updateBatteryHealth(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 189
    const-string v1, "health"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 191
    .local v0, mBatteryHealth:I
    iget-object v1, p0, Lcom/android/server/BatteryPolicy$BatteryHealth;->this$0:Lcom/android/server/BatteryPolicy;

    #getter for: Lcom/android/server/BatteryPolicy;->oldBatteryhealthStatus:I
    invoke-static {v1}, Lcom/android/server/BatteryPolicy;->access$1100(Lcom/android/server/BatteryPolicy;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/server/BatteryPolicy$BatteryHealth;->this$0:Lcom/android/server/BatteryPolicy;

    #getter for: Lcom/android/server/BatteryPolicy;->mPlugged:Z
    invoke-static {v1}, Lcom/android/server/BatteryPolicy;->access$700(Lcom/android/server/BatteryPolicy;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    packed-switch v0, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/BatteryPolicy$BatteryHealth;->this$0:Lcom/android/server/BatteryPolicy;

    #setter for: Lcom/android/server/BatteryPolicy;->oldBatteryhealthStatus:I
    invoke-static {v1, v0}, Lcom/android/server/BatteryPolicy;->access$1102(Lcom/android/server/BatteryPolicy;I)I

    .line 212
    const/4 v1, 0x1

    return v1

    .line 196
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/BatteryPolicy$BatteryHealth;->dismissWarring()V

    goto :goto_0

    .line 199
    :pswitch_2
    const v1, 0x10404eb

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryPolicy$BatteryHealth;->showWarring(I)V

    goto :goto_0

    .line 202
    :pswitch_3
    const v1, 0x10404ec

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryPolicy$BatteryHealth;->showWarring(I)V

    goto :goto_0

    .line 205
    :pswitch_4
    const v1, 0x10404ed

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryPolicy$BatteryHealth;->showWarring(I)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
