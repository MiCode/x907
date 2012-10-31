.class Lcom/android/server/LightsService$2;
.super Landroid/content/BroadcastReceiver;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 199
    .local v7, action:Ljava/lang/String;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/LightsService;->mBootComplted:Z
    invoke-static {v0, v1}, Lcom/android/server/LightsService;->access$102(Lcom/android/server/LightsService;Z)Z

    .line 202
    const-string v0, "LightsService"

    const-string v1, "receive ACTION_BOOT_COMPLETED: setLight_native"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/16 v0, 0x8

    if-ge v8, v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v0

    aget-object v9, v0, v8

    monitor-enter v9

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mNativePointer:I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$200(Lcom/android/server/LightsService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v8

    #getter for: Lcom/android/server/LightsService$Light;->mId:I
    invoke-static {v1}, Lcom/android/server/LightsService$Light;->access$600(Lcom/android/server/LightsService$Light;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v2

    aget-object v2, v2, v8

    #getter for: Lcom/android/server/LightsService$Light;->mColor:I
    invoke-static {v2}, Lcom/android/server/LightsService$Light;->access$700(Lcom/android/server/LightsService$Light;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v3}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v3

    aget-object v3, v3, v8

    #getter for: Lcom/android/server/LightsService$Light;->mMode:I
    invoke-static {v3}, Lcom/android/server/LightsService$Light;->access$800(Lcom/android/server/LightsService$Light;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v4}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v4

    aget-object v4, v4, v8

    #getter for: Lcom/android/server/LightsService$Light;->mOnMS:I
    invoke-static {v4}, Lcom/android/server/LightsService$Light;->access$900(Lcom/android/server/LightsService$Light;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v5}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v5

    aget-object v5, v5, v8

    #getter for: Lcom/android/server/LightsService$Light;->mOffMS:I
    invoke-static {v5}, Lcom/android/server/LightsService$Light;->access$1000(Lcom/android/server/LightsService$Light;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v6}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v6

    aget-object v6, v6, v8

    #getter for: Lcom/android/server/LightsService$Light;->mBrightnessMode:I
    invoke-static {v6}, Lcom/android/server/LightsService$Light;->access$1100(Lcom/android/server/LightsService$Light;)I

    move-result v6

    #calls: Lcom/android/server/LightsService;->setLight_native(IIIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/LightsService;->access$300(IIIIIII)V

    .line 213
    monitor-exit v9

    .line 204
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFPDReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1200(Lcom/android/server/LightsService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    .end local v8           #i:I
    :cond_1
    :goto_1
    return-void

    .line 218
    :cond_2
    const-string v0, "action.fpd.restore_lcd_brightness"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    const/4 v8, 0x0

    .line 221
    .restart local v8       #i:I
    iget-object v0, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v0

    aget-object v9, v0, v8

    monitor-enter v9

    .line 224
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mNativePointer:I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$200(Lcom/android/server/LightsService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v8

    #getter for: Lcom/android/server/LightsService$Light;->mId:I
    invoke-static {v1}, Lcom/android/server/LightsService$Light;->access$600(Lcom/android/server/LightsService$Light;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v2

    aget-object v2, v2, v8

    #getter for: Lcom/android/server/LightsService$Light;->mColor:I
    invoke-static {v2}, Lcom/android/server/LightsService$Light;->access$700(Lcom/android/server/LightsService$Light;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v3}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v3

    aget-object v3, v3, v8

    #getter for: Lcom/android/server/LightsService$Light;->mMode:I
    invoke-static {v3}, Lcom/android/server/LightsService$Light;->access$800(Lcom/android/server/LightsService$Light;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v4}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v4

    aget-object v4, v4, v8

    #getter for: Lcom/android/server/LightsService$Light;->mOnMS:I
    invoke-static {v4}, Lcom/android/server/LightsService$Light;->access$900(Lcom/android/server/LightsService$Light;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v5}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v5

    aget-object v5, v5, v8

    #getter for: Lcom/android/server/LightsService$Light;->mOffMS:I
    invoke-static {v5}, Lcom/android/server/LightsService$Light;->access$1000(Lcom/android/server/LightsService$Light;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v6}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v6

    aget-object v6, v6, v8

    #getter for: Lcom/android/server/LightsService$Light;->mBrightnessMode:I
    invoke-static {v6}, Lcom/android/server/LightsService$Light;->access$1100(Lcom/android/server/LightsService$Light;)I

    move-result v6

    #calls: Lcom/android/server/LightsService;->setLight_native(IIIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/LightsService;->access$300(IIIIIII)V

    .line 227
    monitor-exit v9

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
