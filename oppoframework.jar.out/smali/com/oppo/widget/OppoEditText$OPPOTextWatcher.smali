.class Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;
.super Ljava/lang/Object;
.source "OppoEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OPPOTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoEditText;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoEditText;Lcom/oppo/widget/OppoEditText$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;-><init>(Lcom/oppo/widget/OppoEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v1, p0, Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/oppo/widget/OppoEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v1, p0, Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    const/4 v2, 0x0

    #setter for: Lcom/oppo/widget/OppoEditText;->deletable:Z
    invoke-static {v1, v2}, Lcom/oppo/widget/OppoEditText;->access$002(Lcom/oppo/widget/OppoEditText;Z)Z

    .line 186
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    #getter for: Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/oppo/widget/OppoEditText;->access$100(Lcom/oppo/widget/OppoEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    iget-object v2, p0, Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    #getter for: Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/oppo/widget/OppoEditText;->access$100(Lcom/oppo/widget/OppoEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v3, v3, v2, v3}, Lcom/oppo/widget/OppoEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v1, p0, Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    const/4 v2, 0x1

    #setter for: Lcom/oppo/widget/OppoEditText;->deletable:Z
    invoke-static {v1, v2}, Lcom/oppo/widget/OppoEditText;->access$002(Lcom/oppo/widget/OppoEditText;Z)Z

    .line 192
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 196
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 200
    return-void
.end method
