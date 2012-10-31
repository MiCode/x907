.class Lcom/android/internal/policy/impl/KeyguardActions$4;
.super Ljava/lang/Object;
.source "KeyguardActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardActions;->initItemListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardActions;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardActions$4;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 197
    const/4 v1, 0x0

    .line 199
    .local v1, isFlightMode:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardActions$4;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    #getter for: Lcom/android/internal/policy/impl/KeyguardActions;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardActions;->access$300(Lcom/android/internal/policy/impl/KeyguardActions;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 203
    :goto_0
    const-string v5, "KeyguardActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Now turn "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_1

    const-string v4, "OFF"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " Flight Mode!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardActions$4;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    if-nez v1, :cond_2

    :goto_2
    #calls: Lcom/android/internal/policy/impl/KeyguardActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/KeyguardActions;->access$500(Lcom/android/internal/policy/impl/KeyguardActions;Z)V

    .line 205
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions$4;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    #getter for: Lcom/android/internal/policy/impl/KeyguardActions;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardActions;->access$400(Lcom/android/internal/policy/impl/KeyguardActions;)Lcom/android/internal/policy/impl/KeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->hideKeyguardActions()V

    .line 206
    return-void

    :cond_0
    move v1, v3

    .line 199
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const-string v4, "ON"

    goto :goto_1

    :cond_2
    move v2, v3

    .line 204
    goto :goto_2
.end method
