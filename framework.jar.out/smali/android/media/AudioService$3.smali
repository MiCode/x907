.class Landroid/media/AudioService$3;
.super Landroid/telephony/PhoneStateListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 2951
    iput-object p1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2954
    if-ne p1, v5, :cond_1

    .line 2956
    invoke-static {}, Landroid/media/AudioService;->access$6800()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2957
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$6902(Landroid/media/AudioService;Z)Z

    .line 2958
    monitor-exit v2

    .line 2986
    :cond_0
    :goto_0
    return-void

    .line 2958
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2960
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 2962
    invoke-static {}, Landroid/media/AudioService;->access$6800()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2963
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$6902(Landroid/media/AudioService;Z)Z

    .line 2964
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2965
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->preCallState:Z
    invoke-static {v1, v5}, Landroid/media/AudioService;->access$7002(Landroid/media/AudioService;Z)Z

    .line 2966
    const-string v1, "AudioService"

    const-string v2, "in offhook"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2964
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 2967
    :cond_2
    if-nez p1, :cond_0

    .line 2968
    invoke-static {}, Landroid/media/AudioService;->access$6800()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2969
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$6902(Landroid/media/AudioService;Z)Z

    .line 2970
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2971
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->preCallState:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)Z

    move-result v1

    if-ne v1, v5, :cond_0

    .line 2972
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->preCallState:Z
    invoke-static {v1, v4}, Landroid/media/AudioService;->access$7002(Landroid/media/AudioService;Z)Z

    .line 2973
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    iget-object v2, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2, v6}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v2

    #setter for: Landroid/media/AudioService;->mMediaTmpVolIndex:I
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$6002(Landroid/media/AudioService;I)I

    .line 2975
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1, v6, v4, v4}, Landroid/media/AudioService;->setStreamVolume(III)V

    .line 2978
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2982
    :goto_1
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    iget-object v2, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaTmpVolIndex:I
    invoke-static {v2}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)I

    move-result v2

    invoke-virtual {v1, v6, v2, v4}, Landroid/media/AudioService;->setStreamVolume(III)V

    .line 2983
    const-string v1, "AudioService"

    const-string v2, "in IDLE000"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2970
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 2979
    :catch_0
    move-exception v0

    .line 2980
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "AudioService"

    const-string v2, "delay  time out!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
