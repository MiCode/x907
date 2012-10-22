.class Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener$1;
.super Ljava/lang/Object;
.source "OppoCommaWatcher.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener;

.field final synthetic val$spannableString:Landroid/text/SpannableString;


# direct methods
.method constructor <init>(Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener;Landroid/text/SpannableString;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener$1;->this$1:Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener;

    iput-object p2, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener$1;->val$spannableString:Landroid/text/SpannableString;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener$1;->val$spannableString:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener$1;->val$spannableString:Landroid/text/SpannableString;

    invoke-virtual {v1, p2}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 307
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    check-cast p1, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;

    .end local p1
    check-cast p2, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/oppo/text/OppoCommaWatcher$OppoCommaFocusChangeListener$1;->compare(Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;)I

    move-result v0

    return v0
.end method
