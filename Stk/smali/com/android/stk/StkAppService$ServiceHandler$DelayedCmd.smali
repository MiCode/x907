.class Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;
.super Ljava/lang/Object;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService$ServiceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedCmd"
.end annotation


# instance fields
.field id:I

.field msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field final synthetic this$1:Lcom/android/stk/StkAppService$ServiceHandler;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService$ServiceHandler;ILcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "msg"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;->this$1:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput p2, p0, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;->id:I

    .line 367
    iput-object p3, p0, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;->msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 368
    return-void
.end method
