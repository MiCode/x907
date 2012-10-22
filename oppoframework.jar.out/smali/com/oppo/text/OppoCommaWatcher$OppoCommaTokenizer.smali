.class public Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;
.super Ljava/lang/Object;
.source "OppoCommaWatcher.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/text/OppoCommaWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OppoCommaTokenizer"
.end annotation


# instance fields
.field private mMaxEnd:I

.field private mMinStart:I

.field final synthetic this$0:Lcom/oppo/text/OppoCommaWatcher;


# direct methods
.method protected constructor <init>(Lcom/oppo/text/OppoCommaWatcher;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 209
    iput-object p1, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput v0, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;->mMinStart:I

    .line 211
    iput v0, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;->mMaxEnd:I

    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 3
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 243
    move v0, p2

    .line 245
    .local v0, tokenEnd:I
    :goto_0
    iget v1, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;->mMaxEnd:I

    if-gt v0, v1, :cond_1

    .line 246
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    .line 253
    .end local v0           #tokenEnd:I
    :goto_1
    return v0

    .line 249
    .restart local v0       #tokenEnd:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 3
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 232
    move v0, p2

    .line 234
    .local v0, tokenStart:I
    :goto_0
    iget v1, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;->mMinStart:I

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    .line 236
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 239
    :cond_0
    return v0
.end method

.method public setMaxEnd(Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "text"
    .parameter "en"

    .prologue
    .line 223
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 224
    iput p2, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;->mMaxEnd:I

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v0, "OppoCommaTokenizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxEnd error! text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " en:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMinStart(Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "text"
    .parameter "st"

    .prologue
    .line 214
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 215
    iput p2, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;->mMinStart:I

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_0
    const-string v0, "OppoCommaTokenizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMinStart error! text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " st:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 259
    .local v6, i:I
    if-nez v6, :cond_1

    .line 276
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 263
    .restart local p1
    :cond_1
    :goto_1
    if-lez v6, :cond_2

    add-int/lit8 v0, v6, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_2

    .line 264
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 267
    :cond_2
    if-lez v6, :cond_3

    add-int/lit8 v0, v6, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_0

    .line 270
    :cond_3
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_4

    .line 271
    new-instance v4, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v4, sp:Landroid/text/SpannableString;
    move-object v0, p1

    .line 272
    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object p1, v4

    .line 274
    goto :goto_0

    .line 276
    .end local v4           #sp:Landroid/text/SpannableString;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
