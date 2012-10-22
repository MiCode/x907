.class public Lcom/oppo/text/OppoCommaWatcher$OppoCommaInputFilter;
.super Ljava/lang/Object;
.source "OppoCommaWatcher.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/text/OppoCommaWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OppoCommaInputFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/text/OppoCommaWatcher;


# direct methods
.method protected constructor <init>(Lcom/oppo/text/OppoCommaWatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaInputFilter;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, change:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 417
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 418
    .local v0, c:C
    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const v3, 0xff0b

    if-eq v0, v3, :cond_0

    const v3, 0xff0c

    if-ne v0, v3, :cond_3

    .line 419
    :cond_0
    const/4 v1, 0x1

    .line 423
    .end local v0           #c:C
    :cond_1
    if-eqz v1, :cond_2

    .line 424
    iget-object v3, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaInputFilter;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    #getter for: Lcom/oppo/text/OppoCommaWatcher;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/oppo/text/OppoCommaWatcher;->access$100(Lcom/oppo/text/OppoCommaWatcher;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaInputFilter;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    #getter for: Lcom/oppo/text/OppoCommaWatcher;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/oppo/text/OppoCommaWatcher;->access$100(Lcom/oppo/text/OppoCommaWatcher;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaInputFilter;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    #getter for: Lcom/oppo/text/OppoCommaWatcher;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/oppo/text/OppoCommaWatcher;->access$100(Lcom/oppo/text/OppoCommaWatcher;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_4

    .line 425
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "\n"

    aput-object v4, v3, v6

    const-string v4, "\uff0b"

    aput-object v4, v3, v7

    const-string v4, "\uff0c"

    aput-object v4, v3, v8

    new-array v4, v5, [Ljava/lang/CharSequence;

    const-string v5, ","

    aput-object v5, v4, v6

    const-string v5, "+"

    aput-object v5, v4, v7

    const-string v5, ","

    aput-object v5, v4, v8

    invoke-static {p1, v3, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 432
    .end local p1
    :cond_2
    :goto_1
    return-object p1

    .line 416
    .restart local v0       #c:C
    .restart local p1
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 429
    .end local v0           #c:C
    :cond_4
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "\n"

    aput-object v4, v3, v6

    const-string v4, "\uff0b"

    aput-object v4, v3, v7

    const-string v4, "\uff0c"

    aput-object v4, v3, v8

    new-array v4, v5, [Ljava/lang/CharSequence;

    const-string v5, ""

    aput-object v5, v4, v6

    const-string v5, "+"

    aput-object v5, v4, v7

    const-string v5, ","

    aput-object v5, v4, v8

    invoke-static {p1, v3, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1
.end method
