.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;
.super Ljava/lang/Object;
.source "GsmDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 1679
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1684
    const-wide/16 v2, -0x1

    .local v2, preTxPkts:J
    const-wide/16 v0, -0x1

    .line 1685
    .local v0, preRxPkts:J
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1687
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->acquireWakeLock(I)V

    .line 1689
    sput v8, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->m_poll_idle_times:I

    .line 1691
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-wide v2, v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mTxPkts_dormant:J

    .line 1692
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-wide v0, v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRxPkts_dormant:J

    .line 1695
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mTxPkts_dormant:J

    .line 1696
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRxPkts_dormant:J

    .line 1700
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-wide v6, v6, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRxPkts_dormant:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preRxPkts= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-wide v6, v6, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mTxPkts_dormant:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preTxPkts= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enablePoll="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableDormantPoll:Z
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableDormantPoll:Z
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v4

    if-eqz v4, :cond_2

    cmp-long v4, v2, v10

    if-gez v4, :cond_0

    cmp-long v4, v0, v10

    if-ltz v4, :cond_2

    .line 1707
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-wide v4, v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRxPkts_dormant:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-wide v4, v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mTxPkts_dormant:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4

    .line 1709
    sget v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->m_poll_times:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->m_poll_times:I

    .line 1712
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data connection is inactive : state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", poll_times="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->m_poll_times:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mHaveSentGoDormantCmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$200()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1716
    sget v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->m_poll_times:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    .line 1717
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$200()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1718
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->goDormant()V

    .line 1719
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$202(Z)Z

    .line 1721
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->releaseWakeLock()V

    .line 1722
    sput v8, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->m_poll_times:I

    .line 1742
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$300()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1770

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNetDormantPollPeriod:I

    .line 1744
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableDormantPoll:Z
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->m_poll_idle_times:I

    if-ge v4, v9, :cond_3

    .line 1745
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget v5, v5, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNetDormantPollPeriod:I

    int-to-long v5, v5

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1747
    :cond_3
    return-void

    .line 1725
    :cond_4
    sput v8, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->m_poll_times:I

    .line 1726
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$202(Z)Z

    .line 1728
    const-string v4, "GSM"

    const-string v5, "data connection is active"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1736
    :cond_5
    sget v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->m_poll_idle_times:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->m_poll_idle_times:I

    .line 1737
    sget v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->m_poll_idle_times:I

    if-lt v4, v9, :cond_2

    .line 1738
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->releaseWakeLock()V

    goto :goto_0
.end method
