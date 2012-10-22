.class Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;
.super Ljava/lang/Object;
.source "AtEDFTCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/atfwd/AtEDFTCmdHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParsedEDFTCmd"
.end annotation


# instance fields
.field private mAction:I

.field private mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

.field private mParam:I

.field final synthetic this$0:Lcom/android/internal/atfwd/AtEDFTCmdHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/atfwd/AtEDFTCmdHandler;Lcom/android/internal/atfwd/AtCmd;)V
    .locals 1
    .parameter
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
        }
    .end annotation

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->this$0:Lcom/android/internal/atfwd/AtEDFTCmdHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    .line 267
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->mAction:I

    .line 269
    invoke-direct {p0}, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->parse_cmd()V

    .line 270
    return-void
.end method

.method private parse_cmd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 281
    iget-object v2, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    invoke-virtual {v2}, Lcom/android/internal/atfwd/AtCmd;->getTokens()[Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, tokens:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    array-length v2, v1

    if-le v2, v3, :cond_1

    .line 286
    :cond_0
    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    const-string v3, "Must provide 1 to 2 tokens"

    invoke-direct {v2, v3}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 290
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->mAction:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    array-length v2, v1

    if-ne v2, v3, :cond_2

    .line 298
    const/4 v2, 0x1

    :try_start_1
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->mParam:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong arg0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 300
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong arg1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    iput v5, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->mParam:I

    goto :goto_0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->mAction:I

    return v0
.end method

.method public getParams()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/android/internal/atfwd/AtEDFTCmdHandler$ParsedEDFTCmd;->mParam:I

    return v0
.end method
