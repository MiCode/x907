.class Lcom/oppo/widget/OppoDigitalLockSreenClock$1$1;
.super Ljava/lang/Object;
.source "OppoDigitalLockSreenClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoDigitalLockSreenClock$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/widget/OppoDigitalLockSreenClock$1;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoDigitalLockSreenClock$1;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock$1$1;->this$1:Lcom/oppo/widget/OppoDigitalLockSreenClock$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock$1$1;->this$1:Lcom/oppo/widget/OppoDigitalLockSreenClock$1;

    iget-object v0, v0, Lcom/oppo/widget/OppoDigitalLockSreenClock$1;->this$0:Lcom/oppo/widget/OppoDigitalLockSreenClock;

    #calls: Lcom/oppo/widget/OppoDigitalLockSreenClock;->updateTime()V
    invoke-static {v0}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->access$200(Lcom/oppo/widget/OppoDigitalLockSreenClock;)V

    .line 95
    return-void
.end method
