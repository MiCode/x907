.class Lcom/android/internal/atfwd/AtEDFTCmdHandler$storageListener;
.super Landroid/os/storage/StorageEventListener;
.source "AtEDFTCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/atfwd/AtEDFTCmdHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "storageListener"
.end annotation


# instance fields
.field private exclude_sd_path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/atfwd/AtEDFTCmdHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/atfwd/AtEDFTCmdHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler$storageListener;->this$0:Lcom/android/internal/atfwd/AtEDFTCmdHandler;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/atfwd/AtEDFTCmdHandler;Lcom/android/internal/atfwd/AtEDFTCmdHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtEDFTCmdHandler$storageListener;-><init>(Lcom/android/internal/atfwd/AtEDFTCmdHandler;)V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 332
    const-string v0, "AtEDFTCmdHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStorageStateChanged path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oldState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string/jumbo v0, "mounted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "unmounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler$storageListener;->exclude_sd_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    const-string v0, "AtEDFTCmdHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unmounted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler$storageListener;->this$0:Lcom/android/internal/atfwd/AtEDFTCmdHandler;

    #calls: Lcom/android/internal/atfwd/AtEDFTCmdHandler;->formatStorage(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/internal/atfwd/AtEDFTCmdHandler;->access$100(Lcom/android/internal/atfwd/AtEDFTCmdHandler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 0
    .parameter "connected"

    .prologue
    .line 323
    return-void
.end method

.method public setEXCLUDE_SD_PATH(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler$storageListener;->exclude_sd_path:Ljava/lang/String;

    .line 316
    return-void
.end method
