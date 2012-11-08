.class public Lcom/oppo/ImageScaleView/ThreadTools;
.super Ljava/lang/Object;
.source "ThreadTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final sleep()V
    .locals 3

    .prologue
    .line 8
    const-wide/16 v1, 0x14

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .local v0, e:Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 9
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 10
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
