.class public Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field public static final FACTORY_TEST_HIGH_LEVEL:I = 0x2

.field public static final FACTORY_TEST_LOW_LEVEL:I = 0x1

.field public static final FACTORY_TEST_OFF:I = 0x0

.field static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 817
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native init1([Ljava/lang/String;)V
.end method

.method public static final init2()V
    .locals 3

    .prologue
    .line 872
    const-string v1, "SystemServer"

    const-string v2, "Entered the Android system server!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance v0, Lcom/android/server/ServerThread;

    invoke-direct {v0}, Lcom/android/server/ServerThread;-><init>()V

    .line 874
    .local v0, thr:Ljava/lang/Thread;
    const-string v1, "android.server.ServerThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 878
    invoke-static {}, Lcom/android/server/SystemServer;->readCameraParam()V

    .line 880
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "args"

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    .line 839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 845
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 849
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 851
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/server/SystemServer;->timer:Ljava/util/Timer;

    .line 852
    sget-object v0, Lcom/android/server/SystemServer;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1}, Lcom/android/server/SystemServer$1;-><init>()V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 861
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 865
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 867
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 868
    invoke-static {p0}, Lcom/android/server/SystemServer;->init1([Ljava/lang/String;)V

    .line 869
    return-void
.end method

.method private static readCameraParam()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 884
    new-instance v2, Ljava/io/File;

    const-string v5, "/persist/camera/adjusting_param"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 885
    .local v2, paramFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 886
    .local v1, param:I
    const/4 v3, 0x0

    .line 888
    .local v3, paramRandomAccessFile:Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 889
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .end local v3           #paramRandomAccessFile:Ljava/io/RandomAccessFile;
    .local v4, paramRandomAccessFile:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 891
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 892
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v1

    move-object v3, v4

    .line 900
    .end local v4           #paramRandomAccessFile:Ljava/io/RandomAccessFile;
    .restart local v3       #paramRandomAccessFile:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 901
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 907
    :cond_1
    :goto_1
    const-string v5, "persist.sys.camera.rgbParams"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    return-void

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 897
    const-string v5, "SystemServer"

    const-string v6, "Read camera param failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 900
    if-eqz v3, :cond_1

    .line 901
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 903
    :catch_1
    move-exception v0

    .line 904
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 899
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 900
    :goto_4
    if-eqz v3, :cond_2

    .line 901
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 899
    :cond_2
    :goto_5
    throw v5

    .line 903
    :catch_2
    move-exception v0

    .line 904
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 903
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    goto :goto_3

    .line 899
    .end local v3           #paramRandomAccessFile:Ljava/io/RandomAccessFile;
    .restart local v4       #paramRandomAccessFile:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #paramRandomAccessFile:Ljava/io/RandomAccessFile;
    .restart local v3       #paramRandomAccessFile:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 895
    .end local v3           #paramRandomAccessFile:Ljava/io/RandomAccessFile;
    .restart local v4       #paramRandomAccessFile:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #paramRandomAccessFile:Ljava/io/RandomAccessFile;
    .restart local v3       #paramRandomAccessFile:Ljava/io/RandomAccessFile;
    goto :goto_2

    .end local v3           #paramRandomAccessFile:Ljava/io/RandomAccessFile;
    .restart local v4       #paramRandomAccessFile:Ljava/io/RandomAccessFile;
    :cond_3
    move-object v3, v4

    .end local v4           #paramRandomAccessFile:Ljava/io/RandomAccessFile;
    .restart local v3       #paramRandomAccessFile:Ljava/io/RandomAccessFile;
    goto :goto_0
.end method
