.class public Lcom/oppo/text/OppoCommaWatcher;
.super Ljava/lang/Object;
.source "OppoCommaWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/text/OppoCommaWatcher$OppoCommaInputFilter;,
        Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;,
        Lcom/oppo/text/OppoCommaWatcher$OppoCommaOnKeyListener;,
        Lcom/oppo/text/OppoCommaWatcher$OppoCommaKeyListener;,
        Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener;,
        Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HWIDTH:I = 0xf8

.field public static final PRESPAN_NEEDMORE:I = 0x2

.field public static final PRESPAN_NOTSPAN:I = 0x1

.field public static final PRESPAN_SETSPAN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OppoCommaWatcher"


# instance fields
.field private mCommaSpanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mLineBounds:Landroid/graphics/Rect;

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mPreSpanLeft:I

.field private mPreSpanRight:I

.field private mTextView:Landroid/widget/TextView;

.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter "tv"

    .prologue
    .line 48
    const-class v0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;

    invoke-direct {p0, p1, v0}, Lcom/oppo/text/OppoCommaWatcher;-><init>(Landroid/widget/TextView;Ljava/lang/Class;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/Class;)V
    .locals 1
    .parameter "tv"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/TextView;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p2, commaSpanKind:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/oppo/text/OppoCommaWatcher;->mPreSpanLeft:I

    .line 42
    iput v0, p0, Lcom/oppo/text/OppoCommaWatcher;->mPreSpanRight:I

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/text/OppoCommaWatcher;->mLineBounds:Landroid/graphics/Rect;

    .line 52
    iput-object p1, p0, Lcom/oppo/text/OppoCommaWatcher;->mTextView:Landroid/widget/TextView;

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCommaFlag(Z)V

    .line 54
    iput-object p2, p0, Lcom/oppo/text/OppoCommaWatcher;->mCommaSpanClass:Ljava/lang/Class;

    .line 55
    invoke-virtual {p0}, Lcom/oppo/text/OppoCommaWatcher;->onInitListeners()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/text/OppoCommaWatcher;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oppo/text/OppoCommaWatcher;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/text/OppoCommaWatcher;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oppo/text/OppoCommaWatcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 71
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 76
    const-string v6, "OppoCommaWatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "beforeTextChanged text:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " start:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " before:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " after:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCommaSpanClass:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oppo/text/OppoCommaWatcher;->mCommaSpanClass:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-eq p3, p4, :cond_0

    .line 81
    if-lez p3, :cond_0

    instance-of v6, p1, Landroid/text/Spanned;

    if-eqz v6, :cond_0

    move-object v0, p1

    .line 82
    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 83
    .local v0, commaSpan:Landroid/text/SpannableStringBuilder;
    const/4 v6, 0x0

    add-int/lit8 v7, p2, 0x1

    iget-object v8, p0, Lcom/oppo/text/OppoCommaWatcher;->mCommaSpanClass:Ljava/lang/Class;

    invoke-virtual {v0, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 85
    .local v5, spans:[Ljava/lang/Object;
    add-int v6, p2, p3

    iget-object v7, p0, Lcom/oppo/text/OppoCommaWatcher;->mCommaSpanClass:Ljava/lang/Class;

    invoke-virtual {v0, p2, v6, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 88
    .local v4, removeSpans:[Ljava/lang/Object;
    array-length v2, v5

    .line 91
    .local v2, removeIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_0

    .line 92
    aget-object v6, v4, v1

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    aget-object v7, v4, v1

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p1, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 95
    .local v3, removeSequence:Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, v3, v2}, Lcom/oppo/text/OppoCommaWatcher;->onRemoveCommaSpan(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    .line 100
    add-int/lit8 v2, v2, 0x1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v0           #commaSpan:Landroid/text/SpannableStringBuilder;
    .end local v1           #i:I
    .end local v2           #removeIndex:I
    .end local v3           #removeSequence:Ljava/lang/CharSequence;
    .end local v4           #removeSpans:[Ljava/lang/Object;
    .end local v5           #spans:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected onInitListeners()V
    .locals 4

    .prologue
    .line 483
    new-instance v0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;

    invoke-direct {v0, p0}, Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;-><init>(Lcom/oppo/text/OppoCommaWatcher;)V

    invoke-virtual {p0, v0}, Lcom/oppo/text/OppoCommaWatcher;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 485
    iget-object v0, p0, Lcom/oppo/text/OppoCommaWatcher;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x3f99999a

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 486
    iget-object v0, p0, Lcom/oppo/text/OppoCommaWatcher;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/oppo/text/OppoCommaWatcher$OppoCommaInputFilter;

    invoke-direct {v3, p0}, Lcom/oppo/text/OppoCommaWatcher$OppoCommaInputFilter;-><init>(Lcom/oppo/text/OppoCommaWatcher;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 490
    iget-object v0, p0, Lcom/oppo/text/OppoCommaWatcher;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x1200

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 493
    return-void
.end method

.method public onNewCommaSpan(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    .line 497
    new-instance v0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;

    invoke-direct {v0, p0, p1}, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;-><init>(Lcom/oppo/text/OppoCommaWatcher;Ljava/lang/CharSequence;)V

    .line 498
    .local v0, span:Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;->setUserPadding(IIII)V

    .line 499
    return-object v0
.end method

.method public onNewCommaSpan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    .line 504
    new-instance v0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;

    invoke-direct {v0, p0, p1, p2}, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;-><init>(Lcom/oppo/text/OppoCommaWatcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .local v0, span:Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;->setUserPadding(IIII)V

    .line 506
    return-object v0
.end method

.method public onPreSetCommaSpan(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 3
    .parameter "s"
    .parameter "subCommaSequence"
    .parameter "insertIndex"

    .prologue
    .line 470
    const-string v0, "OppoCommaWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreSetCommaSpan s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subCommaSequence:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " insertIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public onRemoveCommaSpan(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 3
    .parameter "s"
    .parameter "subCommaSequence"
    .parameter "removeIndex"

    .prologue
    .line 477
    const-string v0, "OppoCommaWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoveCommaSpan s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subCommaSequence:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " removeIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 20
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 109
    const-string v17, "OppoCommaWatcher"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onTextChanged text:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " start:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " before:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " after:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v7, 0x0

    .line 113
    .local v7, insertIndex:I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .local v9, len:I
    move-object/from16 v4, p1

    .line 115
    check-cast v4, Landroid/text/SpannableStringBuilder;

    .line 117
    .local v4, commaSpan:Landroid/text/SpannableStringBuilder;
    const/16 v17, 0x0

    add-int/lit8 v18, p2, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/text/OppoCommaWatcher;->mCommaSpanClass:Ljava/lang/Class;

    move-object/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    .line 118
    .local v12, spans:[Ljava/lang/Object;
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/text/OppoCommaWatcher;->mPreSpanLeft:I

    .line 119
    array-length v0, v12

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 120
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_1

    .line 121
    aget-object v17, v12, v6

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 122
    .local v5, en:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/text/OppoCommaWatcher;->mPreSpanLeft:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v5, :cond_0

    .line 123
    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/text/OppoCommaWatcher;->mPreSpanLeft:I

    .line 120
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 128
    .end local v5           #en:I
    .end local v6           #i:I
    :cond_1
    array-length v7, v12

    .line 130
    add-int/lit8 v17, v9, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/text/OppoCommaWatcher;->mCommaSpanClass:Ljava/lang/Class;

    move-object/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    .line 139
    add-int/lit8 v17, v9, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/text/OppoCommaWatcher;->mPreSpanRight:I

    .line 140
    array-length v0, v12

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 141
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_1
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_3

    .line 142
    aget-object v17, v12, v6

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 143
    .local v13, st:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/text/OppoCommaWatcher;->mPreSpanRight:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v13, :cond_2

    .line 144
    move-object/from16 v0, p0

    iput v13, v0, Lcom/oppo/text/OppoCommaWatcher;->mPreSpanRight:I

    .line 141
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 149
    .end local v6           #i:I
    .end local v13           #st:I
    :cond_3
    const-string v17, "OppoCommaWatcher"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mPreSpanLeft:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/text/OppoCommaWatcher;->mPreSpanLeft:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mPreSpanRight:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/text/OppoCommaWatcher;->mPreSpanRight:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    move/from16 v16, p2

    .line 152
    .local v16, tokenStart:I
    move/from16 v14, v16

    .line 153
    .local v14, tokenEnd:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/text/OppoCommaWatcher;->mPreSpanLeft:I

    .line 154
    .local v15, tokenOffset:I
    const/4 v10, 0x0

    .line 156
    .local v10, preSpanResult:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/text/OppoCommaWatcher;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/text/OppoCommaWatcher;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    check-cast v3, Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;

    .line 158
    .local v3, CommaTokenizer:Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/text/OppoCommaWatcher;->mPreSpanLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;->setMinStart(Ljava/lang/CharSequence;I)V

    .line 159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/text/OppoCommaWatcher;->mPreSpanRight:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;->setMaxEnd(Ljava/lang/CharSequence;I)V

    .line 162
    .end local v3           #CommaTokenizer:Lcom/oppo/text/OppoCommaWatcher$OppoCommaTokenizer;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/text/OppoCommaWatcher;->mPreSpanRight:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/text/OppoCommaWatcher;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v16

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/text/OppoCommaWatcher;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v14}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v14

    .line 166
    const-string v17, "OppoCommaWatcher"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "tokenStart:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " tokenEnd:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    move/from16 v0, v16

    if-ge v0, v14, :cond_6

    .line 168
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    .line 170
    .local v11, spanSequence:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v7}, Lcom/oppo/text/OppoCommaWatcher;->onPreSetCommaSpan(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v10

    .line 176
    packed-switch v10, :pswitch_data_0

    .line 198
    const-string v17, "OppoCommaWatcher"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "this preSpanResult:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is not define."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 179
    :pswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/oppo/text/OppoCommaWatcher;->onNewCommaSpan(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v8

    .line 181
    .local v8, insertSpan:Ljava/lang/Object;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/text/OppoCommaWatcher;->mCommaSpanClass:Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 184
    add-int/lit8 v17, v14, 0x1

    const/16 v18, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v4, v8, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 188
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 190
    .end local v8           #insertSpan:Ljava/lang/Object;
    :pswitch_1
    add-int/lit8 v15, v14, 0x1

    .line 191
    move/from16 v16, v15

    .line 192
    add-int/lit8 v14, v16, 0x1

    .line 193
    goto/16 :goto_2

    .line 195
    :pswitch_2
    add-int/lit8 v14, v14, 0x1

    .line 196
    goto/16 :goto_2

    .line 207
    .end local v11           #spanSequence:Ljava/lang/CharSequence;
    :cond_6
    return-void

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refresh()V
    .locals 9

    .prologue
    .line 523
    iget-object v6, p0, Lcom/oppo/text/OppoCommaWatcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 525
    .local v1, editable:Landroid/text/Editable;
    instance-of v6, v1, Landroid/text/Spanned;

    if-eqz v6, :cond_2

    .line 526
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 528
    .local v5, spannableString:Landroid/text/SpannableString;
    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const-class v8, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;

    invoke-virtual {v5, v6, v7, v8}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;

    .line 530
    .local v4, oppoCommaSpans:[Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;
    new-instance v6, Lcom/oppo/text/OppoCommaWatcher$1;

    invoke-direct {v6, p0, v5}, Lcom/oppo/text/OppoCommaWatcher$1;-><init>(Lcom/oppo/text/OppoCommaWatcher;Landroid/text/SpannableString;)V

    invoke-static {v4, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 542
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 543
    .local v3, nextSpanStart:I
    const/4 v0, 0x0

    .line 544
    .local v0, curSpanEnd:I
    array-length v6, v4

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 545
    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 546
    if-eq v3, v0, :cond_0

    .line 547
    const-string v6, ","

    invoke-interface {v1, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 549
    :cond_0
    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 544
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 551
    :cond_1
    const/4 v0, 0x0

    .line 552
    if-eq v3, v0, :cond_2

    .line 553
    const-string v6, ","

    invoke-interface {v1, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 556
    .end local v0           #curSpanEnd:I
    .end local v2           #i:I
    .end local v3           #nextSpanStart:I
    .end local v4           #oppoCommaSpans:[Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;
    .end local v5           #spannableString:Landroid/text/SpannableString;
    :cond_2
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/oppo/text/OppoCommaWatcher;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 63
    return-void
.end method
