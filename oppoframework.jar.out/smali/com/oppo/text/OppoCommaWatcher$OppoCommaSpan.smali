.class public Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;
.super Lcom/oppo/text/style/OppoDrawableSpan;
.source "OppoCommaWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/text/OppoCommaWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OppoCommaSpan"
.end annotation


# instance fields
.field public mKey:Ljava/lang/String;

.field public mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/oppo/text/OppoCommaWatcher;


# direct methods
.method public constructor <init>(Lcom/oppo/text/OppoCommaWatcher;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "text"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    .line 385
    invoke-direct {p0, p2}, Lcom/oppo/text/style/OppoDrawableSpan;-><init>(Ljava/lang/CharSequence;)V

    .line 387
    return-void
.end method

.method public constructor <init>(Lcom/oppo/text/OppoCommaWatcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "value"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    .line 379
    invoke-direct {p0, p2}, Lcom/oppo/text/style/OppoDrawableSpan;-><init>(Ljava/lang/CharSequence;)V

    .line 380
    iput-object p2, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;->mKey:Ljava/lang/String;

    .line 381
    iput-object p3, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;->mValue:Ljava/lang/String;

    .line 382
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 392
    iget-object v1, p0, Lcom/oppo/text/OppoCommaWatcher$OppoCommaSpan;->this$0:Lcom/oppo/text/OppoCommaWatcher;

    #getter for: Lcom/oppo/text/OppoCommaWatcher;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/oppo/text/OppoCommaWatcher;->access$100(Lcom/oppo/text/OppoCommaWatcher;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 394
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 395
    return-object v0
.end method

.method public getMaxLineWidth()I
    .locals 1

    .prologue
    .line 404
    const/16 v0, 0xf8

    return v0
.end method
