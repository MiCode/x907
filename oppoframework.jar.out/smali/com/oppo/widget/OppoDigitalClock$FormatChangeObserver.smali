.class Lcom/oppo/widget/OppoDigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "OppoDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoDigitalClock;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoDigitalClock;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/oppo/widget/OppoDigitalClock$FormatChangeObserver;->this$0:Lcom/oppo/widget/OppoDigitalClock;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 145
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalClock$FormatChangeObserver;->this$0:Lcom/oppo/widget/OppoDigitalClock;

    #calls: Lcom/oppo/widget/OppoDigitalClock;->setDateFormat()V
    invoke-static {v0}, Lcom/oppo/widget/OppoDigitalClock;->access$400(Lcom/oppo/widget/OppoDigitalClock;)V

    .line 150
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalClock$FormatChangeObserver;->this$0:Lcom/oppo/widget/OppoDigitalClock;

    #calls: Lcom/oppo/widget/OppoDigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/oppo/widget/OppoDigitalClock;->access$200(Lcom/oppo/widget/OppoDigitalClock;)V

    .line 151
    return-void
.end method
