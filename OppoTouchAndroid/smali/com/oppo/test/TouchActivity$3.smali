.class Lcom/oppo/test/TouchActivity$3;
.super Ljava/lang/Object;
.source "TouchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/test/TouchActivity;->exitFPDMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/test/TouchActivity;


# direct methods
.method constructor <init>(Lcom/oppo/test/TouchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/oppo/test/TouchActivity$3;->this$0:Lcom/oppo/test/TouchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 258
    const-string v0, "sys.disable_sys_keys"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/oppo/test/TouchActivity$3;->this$0:Lcom/oppo/test/TouchActivity;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/policy/impl/OppoFPDUtils;->ACTION_EXIT_FPD_MODE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oppo/test/TouchActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 261
    const-string v0, "persist.sys.touch_app_pid"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v0, "ctl.stop"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "TouchAndroid"

    const-string v1, "fpd app exit"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 266
    return-void
.end method
