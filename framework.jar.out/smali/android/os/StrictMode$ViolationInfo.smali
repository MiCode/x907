.class public Landroid/os/StrictMode$ViolationInfo;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViolationInfo"
.end annotation


# instance fields
.field public broadcastIntentAction:Ljava/lang/String;

.field public final crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field public durationMillis:I

.field public numAnimationsRunning:I

.field public numInstances:J

.field public final policy:I

.field public tags:[Ljava/lang/String;

.field public violationNumThisLoop:I

.field public violationUptimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2003
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1961
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 1966
    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 1998
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 2004
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 2005
    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 2006
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 2064
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 2065
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Z)V
    .locals 3
    .parameter "in"
    .parameter "unsetGatheringBit"

    .prologue
    .line 2073
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1961
    const/4 v1, -0x1

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 1966
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 1998
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 2074
    new-instance v1, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 2075
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2076
    .local v0, rawPolicy:I
    if-eqz p2, :cond_0

    .line 2077
    and-int/lit16 v1, v0, -0x101

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 2081
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 2082
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    .line 2083
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 2084
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 2085
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 2086
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 2087
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 2088
    return-void

    .line 2079
    :cond_0
    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 7
    .parameter "tr"
    .parameter "policy"

    .prologue
    .line 2011
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1961
    const/4 v5, -0x1

    iput v5, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 1966
    const/4 v5, 0x0

    iput v5, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 1998
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 2012
    new-instance v5, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v5, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    iput-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 2013
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 2014
    iput p2, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 2015
    invoke-static {}, Landroid/animation/ValueAnimator;->getCurrentAnimationsCount()I

    move-result v5

    iput v5, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 2016
    invoke-static {}, Landroid/app/ActivityThread;->getIntentBeingBroadcast()Landroid/content/Intent;

    move-result-object v0

    .line 2017
    .local v0, broadcastIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 2018
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 2020
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$2200()Ljava/lang/ThreadLocal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StrictMode$ThreadSpanState;

    .line 2021
    .local v4, state:Landroid/os/StrictMode$ThreadSpanState;
    instance-of v5, p1, Landroid/os/StrictMode$InstanceCountViolation;

    if-eqz v5, :cond_1

    .line 2022
    check-cast p1, Landroid/os/StrictMode$InstanceCountViolation;

    .end local p1
    iget-wide v5, p1, Landroid/os/StrictMode$InstanceCountViolation;->mInstances:J

    iput-wide v5, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 2024
    :cond_1
    monitor-enter v4

    .line 2025
    :try_start_0
    iget v3, v4, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 2026
    .local v3, spanActiveCount:I
    const/16 v5, 0x14

    if-le v3, v5, :cond_2

    .line 2027
    const/16 v3, 0x14

    .line 2029
    :cond_2
    if-eqz v3, :cond_3

    .line 2030
    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 2031
    iget-object v2, v4, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 2032
    .local v2, iter:Landroid/os/StrictMode$Span;
    const/4 v1, 0x0

    .line 2033
    .local v1, index:I
    :goto_0
    if-eqz v2, :cond_3

    if-ge v1, v3, :cond_3

    .line 2034
    iget-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    #getter for: Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;
    invoke-static {v2}, Landroid/os/StrictMode$Span;->access$1900(Landroid/os/StrictMode$Span;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 2035
    add-int/lit8 v1, v1, 0x1

    .line 2036
    #getter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v2}, Landroid/os/StrictMode$Span;->access$1800(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v2

    goto :goto_0

    .line 2039
    .end local v1           #index:I
    .end local v2           #iter:Landroid/os/StrictMode$Span;
    :cond_3
    monitor-exit v4

    .line 2040
    return-void

    .line 2039
    .end local v3           #spanActiveCount:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 10
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 2110
    iget-object v6, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-virtual {v6, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "policy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2112
    iget v6, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 2113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "durationMillis: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2115
    :cond_0
    iget-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 2116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "numInstances: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2118
    :cond_1
    iget v6, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    if-eqz v6, :cond_2

    .line 2119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "violationNumThisLoop: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2121
    :cond_2
    iget v6, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    if-eqz v6, :cond_3

    .line 2122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "numAnimationsRunning: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2124
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "violationUptimeMillis: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2125
    iget-object v6, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 2126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "broadcastIntentAction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2128
    :cond_4
    iget-object v6, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 2129
    const/4 v2, 0x0

    .line 2130
    .local v2, index:I
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_0
    if-ge v1, v4, :cond_5

    aget-object v5, v0, v1

    .line 2131
    .local v5, tag:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "tag["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2130
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 2134
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #index:I
    .end local v4           #len$:I
    .end local v5           #tag:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 2044
    const/16 v3, 0x11

    .line 2045
    .local v3, result:I
    iget-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v5, v5, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/lit16 v3, v5, 0x275

    .line 2046
    iget v5, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    if-eqz v5, :cond_0

    .line 2047
    mul-int/lit8 v3, v3, 0x25

    .line 2049
    :cond_0
    iget-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 2050
    mul-int/lit8 v5, v3, 0x25

    iget-object v6, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int v3, v5, v6

    .line 2052
    :cond_1
    iget-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 2053
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 2054
    .local v4, tag:Ljava/lang/String;
    mul-int/lit8 v5, v3, 0x25

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int v3, v5, v6

    .line 2053
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2057
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #tag:Ljava/lang/String;
    :cond_2
    return v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 2094
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2095
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2096
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2097
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2098
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2099
    iget-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2100
    iget-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2101
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2102
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2103
    return-void
.end method
