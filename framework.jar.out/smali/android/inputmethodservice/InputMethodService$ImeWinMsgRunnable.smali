.class Landroid/inputmethodservice/InputMethodService$ImeWinMsgRunnable;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImeWinMsgRunnable"
.end annotation


# instance fields
.field private mImeWinHided:Z

.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;Z)V
    .locals 1
    .parameter
    .parameter "imeWinHided"

    .prologue
    .line 1573
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$ImeWinMsgRunnable;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1571
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$ImeWinMsgRunnable;->mImeWinHided:Z

    .line 1574
    iput-boolean p2, p0, Landroid/inputmethodservice/InputMethodService$ImeWinMsgRunnable;->mImeWinHided:Z

    .line 1575
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1580
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService$ImeWinMsgRunnable;->mImeWinHided:Z

    if-eqz v2, :cond_0

    .line 1581
    const-string v0, "com.oppo.android.INPUT_WINDOW_HIDDED"

    .line 1585
    .local v0, action:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1586
    .local v1, msgIntent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$ImeWinMsgRunnable;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2, v1}, Landroid/inputmethodservice/InputMethodService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1589
    return-void

    .line 1583
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #msgIntent:Landroid/content/Intent;
    :cond_0
    const-string v0, "com.oppo.android.INPUT_WINDOW_SHOWN"

    .restart local v0       #action:Ljava/lang/String;
    goto :goto_0
.end method
