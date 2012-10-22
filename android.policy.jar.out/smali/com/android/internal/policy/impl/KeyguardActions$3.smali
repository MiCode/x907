.class Lcom/android/internal/policy/impl/KeyguardActions$3;
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
    .line 167
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardActions$3;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 170
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardActions$3;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    #getter for: Lcom/android/internal/policy/impl/KeyguardActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardActions;->access$200(Lcom/android/internal/policy/impl/KeyguardActions;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 171
    .local v1, silentModeOn:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 172
    const-string v2, "KeyguardActions"

    const-string v3, "Now turn to RINGER_MODE_NORMAL!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions$3;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    #getter for: Lcom/android/internal/policy/impl/KeyguardActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardActions;->access$200(Lcom/android/internal/policy/impl/KeyguardActions;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 185
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions$3;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    #getter for: Lcom/android/internal/policy/impl/KeyguardActions;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardActions;->access$400(Lcom/android/internal/policy/impl/KeyguardActions;)Lcom/android/internal/policy/impl/KeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->hideKeyguardActions()V

    .line 186
    return-void

    .line 170
    .end local v1           #silentModeOn:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 176
    .restart local v1       #silentModeOn:Z
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardActions$3;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    #getter for: Lcom/android/internal/policy/impl/KeyguardActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardActions;->access$300(Lcom/android/internal/policy/impl/KeyguardActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_in_silent"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 177
    const-string v2, "KeyguardActions"

    const-string v3, "Now turn to RINGER_MODE_VIBRATE!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x1

    .line 183
    .local v0, ringerMode:I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardActions$3;->this$0:Lcom/android/internal/policy/impl/KeyguardActions;

    #getter for: Lcom/android/internal/policy/impl/KeyguardActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardActions;->access$200(Lcom/android/internal/policy/impl/KeyguardActions;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1

    .line 180
    .end local v0           #ringerMode:I
    :cond_2
    const-string v2, "KeyguardActions"

    const-string v3, "Now turn to RINGER_MODE_SILENT!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x0

    .restart local v0       #ringerMode:I
    goto :goto_2
.end method
