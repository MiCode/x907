.class public Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener;
.super Ljava/lang/Object;
.source "OppoCommaWatcher.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/text/OppoCommaWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OppoCommaFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/text/OppoCommaWatcher;


# direct methods
.method protected constructor <init>(Lcom/oppo/text/OppoCommaWatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 9
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v8, 0x0

    .line 287
    iget-object v6, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    #getter for: Lcom/oppo/text/OppoCommaWatcher;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v6}, Lcom/oppo/text/OppoCommaWatcher;->access$000(Lcom/oppo/text/OppoCommaWatcher;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 288
    iget-object v6, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    #getter for: Lcom/oppo/text/OppoCommaWatcher;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v6}, Lcom/oppo/text/OppoCommaWatcher;->access$000(Lcom/oppo/text/OppoCommaWatcher;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 291
    :cond_0
    if-nez p2, :cond_4

    .line 292
    iget-object v6, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    #getter for: Lcom/oppo/text/OppoCommaWatcher;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/oppo/text/OppoCommaWatcher;->access$100(Lcom/oppo/text/OppoCommaWatcher;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 294
    .local v1, editable:Landroid/text/Editable;
    instance-of v6, v1, Landroid/text/Spanned;

    if-eqz v6, :cond_3

    .line 295
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 297
    .local v5, spannableString:Landroid/text/SpannableString;
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const-class v7, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;

    invoke-virtual {v5, v8, v6, v7}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;

    .line 299
    .local v4, oppoCommaSpans:[Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;
    new-instance v6, Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener$1;

    invoke-direct {v6, p0, v5}, Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener$1;-><init>(Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener;Landroid/text/SpannableString;)V

    invoke-static {v4, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 313
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 314
    .local v3, nextSpanStart:I
    const/4 v0, 0x0

    .line 315
    .local v0, curSpanEnd:I
    array-length v6, v4

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 316
    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 318
    if-eq v3, v0, :cond_1

    .line 319
    const-string v6, ","

    invoke-interface {v1, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 321
    :cond_1
    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 315
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 324
    :cond_2
    const/4 v0, 0x0

    .line 325
    if-eq v3, v0, :cond_3

    .line 326
    const-string v6, ","

    invoke-interface {v1, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 330
    .end local v0           #curSpanEnd:I
    .end local v2           #i:I
    .end local v3           #nextSpanStart:I
    .end local v4           #oppoCommaSpans:[Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;
    .end local v5           #spannableString:Landroid/text/SpannableString;
    :cond_3
    iget-object v6, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    #getter for: Lcom/oppo/text/OppoCommaWatcher;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/oppo/text/OppoCommaWatcher;->access$100(Lcom/oppo/text/OppoCommaWatcher;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 335
    .end local v1           #editable:Landroid/text/Editable;
    :goto_1
    return-void

    .line 332
    :cond_4
    iget-object v6, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    #getter for: Lcom/oppo/text/OppoCommaWatcher;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/oppo/text/OppoCommaWatcher;->access$100(Lcom/oppo/text/OppoCommaWatcher;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_1
.end method
