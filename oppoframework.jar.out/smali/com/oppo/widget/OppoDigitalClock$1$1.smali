.class Lcom/oppo/widget/OppoDigitalClock$1$1;
.super Ljava/lang/Object;
.source "OppoDigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoDigitalClock$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/widget/OppoDigitalClock$1;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoDigitalClock$1;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oppo/widget/OppoDigitalClock$1$1;->this$1:Lcom/oppo/widget/OppoDigitalClock$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalClock$1$1;->this$1:Lcom/oppo/widget/OppoDigitalClock$1;

    iget-object v0, v0, Lcom/oppo/widget/OppoDigitalClock$1;->this$0:Lcom/oppo/widget/OppoDigitalClock;

    #calls: Lcom/oppo/widget/OppoDigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/oppo/widget/OppoDigitalClock;->access$200(Lcom/oppo/widget/OppoDigitalClock;)V

    .line 84
    return-void
.end method
