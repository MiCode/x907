.class public Lcom/oppo/camera/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log_d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "tag"
    .parameter "msg"
    .parameter "isStateAllTime"

    .prologue
    .line 10
    if-nez p2, :cond_0

    .line 13
    :goto_0
    return-void

    .line 11
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static log_e(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "tag"
    .parameter "msg"
    .parameter "isStateAllTime"

    .prologue
    .line 16
    if-nez p2, :cond_0

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static log_i(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "tag"
    .parameter "msg"
    .parameter "isStateAllTime"

    .prologue
    .line 22
    if-nez p2, :cond_0

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
