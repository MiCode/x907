.class Lcom/android/internal/atfwd/AtCASPCmdHandler$1;
.super Ljava/lang/Object;
.source "AtCASPCmdHandler.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/atfwd/AtCASPCmdHandler;->startring(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/atfwd/AtCASPCmdHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/atfwd/AtCASPCmdHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCASPCmdHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCASPCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCASPCmdHandler;

    #getter for: Lcom/android/internal/atfwd/AtCASPCmdHandler;->player:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/internal/atfwd/AtCASPCmdHandler;->access$000(Lcom/android/internal/atfwd/AtCASPCmdHandler;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 138
    return-void
.end method
