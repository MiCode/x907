.class Lcom/oppo/widget/OppoDigitalLockSreenClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "OppoDigitalLockSreenClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDigitalLockSreenClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoDigitalLockSreenClock;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoDigitalLockSreenClock;)V
    .locals 1
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock$FormatChangeObserver;->this$0:Lcom/oppo/widget/OppoDigitalLockSreenClock;

    .line 337
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 338
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock$FormatChangeObserver;->this$0:Lcom/oppo/widget/OppoDigitalLockSreenClock;

    #calls: Lcom/oppo/widget/OppoDigitalLockSreenClock;->setDateFormat()V
    invoke-static {v0}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->access$400(Lcom/oppo/widget/OppoDigitalLockSreenClock;)V

    .line 343
    iget-object v0, p0, Lcom/oppo/widget/OppoDigitalLockSreenClock$FormatChangeObserver;->this$0:Lcom/oppo/widget/OppoDigitalLockSreenClock;

    #calls: Lcom/oppo/widget/OppoDigitalLockSreenClock;->updateTime()V
    invoke-static {v0}, Lcom/oppo/widget/OppoDigitalLockSreenClock;->access$200(Lcom/oppo/widget/OppoDigitalLockSreenClock;)V

    .line 344
    return-void
.end method
