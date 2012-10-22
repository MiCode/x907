.class Lcom/android/server/BatteryPolicy$WarringDialog$1;
.super Ljava/lang/Object;
.source "BatteryPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryPolicy$WarringDialog;->showWarring(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryPolicy$WarringDialog;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryPolicy$WarringDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/server/BatteryPolicy$WarringDialog$1;->this$1:Lcom/android/server/BatteryPolicy$WarringDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog$1;->this$1:Lcom/android/server/BatteryPolicy$WarringDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/BatteryPolicy$WarringDialog;->mDialog:Landroid/app/AlertDialog;

    .line 284
    iget-object v0, p0, Lcom/android/server/BatteryPolicy$WarringDialog$1;->this$1:Lcom/android/server/BatteryPolicy$WarringDialog;

    #calls: Lcom/android/server/BatteryPolicy$WarringDialog;->enableKeyguard()V
    invoke-static {v0}, Lcom/android/server/BatteryPolicy$WarringDialog;->access$1300(Lcom/android/server/BatteryPolicy$WarringDialog;)V

    .line 285
    return-void
.end method
