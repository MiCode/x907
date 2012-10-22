.class public Lcom/oppo/widget/OppoEditText;
.super Landroid/widget/EditText;
.source "OppoEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoEditText$1;,
        Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;,
        Lcom/oppo/widget/OppoEditText$mPasswordTextDeletedListener;,
        Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoEditText"


# instance fields
.field private area:I

.field private bound:I

.field private deletable:Z

.field private deleteListener:Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;

.field deltX:I

.field private mCompoundDrawablePadding:I

.field private mDeleteNormal:Landroid/graphics/drawable/Drawable;

.field private mDeletePressed:Landroid/graphics/drawable/Drawable;

.field private mDrawableSizeRight:I

.field private mdeleteListener:Lcom/oppo/widget/OppoEditText$mPasswordTextDeletedListener;

.field private quickDelete:Z

.field shouldeHandleDelete:Z

.field private switchInputSwitch:Z

.field private textWatcher:Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 107
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput-boolean v8, p0, Lcom/oppo/widget/OppoEditText;->deletable:Z

    .line 67
    iput-object v6, p0, Lcom/oppo/widget/OppoEditText;->deleteListener:Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;

    .line 69
    iput-object v6, p0, Lcom/oppo/widget/OppoEditText;->mdeleteListener:Lcom/oppo/widget/OppoEditText$mPasswordTextDeletedListener;

    .line 79
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/oppo/widget/OppoEditText;->switchInputSwitch:Z

    .line 84
    iput-object v6, p0, Lcom/oppo/widget/OppoEditText;->textWatcher:Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;

    .line 92
    iput-boolean v8, p0, Lcom/oppo/widget/OppoEditText;->shouldeHandleDelete:Z

    .line 114
    const/4 v3, 0x0

    .line 115
    .local v3, deletableflag:Z
    sget-object v5, Lcom/android/internal/R$styleable;->OppoEditText:[I

    invoke-virtual {p1, p2, v5, v8, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 117
    .local v1, a:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 119
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 120
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 121
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 119
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :pswitch_0
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 124
    goto :goto_1

    .line 129
    .end local v2           #attr:I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    .end local v0           #N:I
    .end local v4           #i:I
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050052

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoEditText;->mCompoundDrawablePadding:I

    .line 135
    iget v5, p0, Lcom/oppo/widget/OppoEditText;->mCompoundDrawablePadding:I

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoEditText;->setCompoundDrawablePadding(I)V

    .line 138
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoEditText;->setDeletable(Z)V

    .line 144
    const v5, 0x108060f

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoEditText;->setBackgroundResource(I)V

    .line 146
    if-eqz v3, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/oppo/widget/OppoEditText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10801bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    .line 148
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 149
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoEditText;->area:I

    .line 150
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/oppo/widget/OppoEditText;->area:I

    iget v7, p0, Lcom/oppo/widget/OppoEditText;->area:I

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoEditText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10801c0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 155
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/oppo/widget/OppoEditText;->area:I

    iget v7, p0, Lcom/oppo/widget/OppoEditText;->area:I

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    :cond_3
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$002(Lcom/oppo/widget/OppoEditText;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/oppo/widget/OppoEditText;->deletable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoEditText;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "currentText"

    .prologue
    .line 333
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private onTextDelete()V
    .locals 1

    .prologue
    .line 294
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoEditText;->setText(Ljava/lang/CharSequence;)V

    .line 295
    return-void
.end method


# virtual methods
.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 340
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 341
    iget-boolean v0, p0, Lcom/oppo/widget/OppoEditText;->switchInputSwitch:Z

    if-nez v0, :cond_0

    .line 342
    const v0, 0x1020024

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 344
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 378
    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 381
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 382
    iget-object v0, p0, Lcom/oppo/widget/OppoEditText;->mdeleteListener:Lcom/oppo/widget/OppoEditText$mPasswordTextDeletedListener;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/oppo/widget/OppoEditText;->mdeleteListener:Lcom/oppo/widget/OppoEditText$mPasswordTextDeletedListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoEditText$mPasswordTextDeletedListener;->mTextDeleted()Z

    .line 386
    :cond_0
    const/4 v0, 0x1

    .line 388
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 208
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 209
    invoke-virtual {p0}, Lcom/oppo/widget/OppoEditText;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoEditText;->bound:I

    .line 210
    invoke-virtual {p0}, Lcom/oppo/widget/OppoEditText;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoEditText;->width:I

    .line 211
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 217
    iget-boolean v5, p0, Lcom/oppo/widget/OppoEditText;->quickDelete:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oppo/widget/OppoEditText;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 218
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 282
    :cond_1
    :goto_0
    return v3

    .line 222
    :cond_2
    iget v5, p0, Lcom/oppo/widget/OppoEditText;->mRight:I

    iget v6, p0, Lcom/oppo/widget/OppoEditText;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/oppo/widget/OppoEditText;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/oppo/widget/OppoEditText;->mDrawableSizeRight:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/oppo/widget/OppoEditText;->deltX:I

    .line 223
    iget v5, p0, Lcom/oppo/widget/OppoEditText;->deltX:I

    if-ltz v5, :cond_1

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 226
    .local v1, cur_x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 228
    .local v2, cur_y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 229
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 282
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 231
    :pswitch_0
    iget v3, p0, Lcom/oppo/widget/OppoEditText;->deltX:I

    if-le v1, v3, :cond_3

    iget-boolean v3, p0, Lcom/oppo/widget/OppoEditText;->deletable:Z

    if-eqz v3, :cond_3

    .line 233
    iput-boolean v4, p0, Lcom/oppo/widget/OppoEditText;->shouldeHandleDelete:Z

    .line 234
    iget-object v3, p0, Lcom/oppo/widget/OppoEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 235
    iget-object v3, p0, Lcom/oppo/widget/OppoEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v7, v7, v3, v7}, Lcom/oppo/widget/OppoEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    move v3, v4

    .line 237
    goto :goto_0

    .line 242
    :pswitch_1
    iget v5, p0, Lcom/oppo/widget/OppoEditText;->deltX:I

    if-le v1, v5, :cond_3

    iget-boolean v5, p0, Lcom/oppo/widget/OppoEditText;->deletable:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/oppo/widget/OppoEditText;->shouldeHandleDelete:Z

    if-eqz v5, :cond_3

    .line 250
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 251
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v7, v7, v5, v7}, Lcom/oppo/widget/OppoEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 254
    :cond_5
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->deleteListener:Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->deleteListener:Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;

    invoke-interface {v5}, Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;->onDeleted()Z

    move-result v5

    if-nez v5, :cond_3

    .line 258
    :cond_6
    invoke-direct {p0}, Lcom/oppo/widget/OppoEditText;->onTextDelete()V

    .line 259
    iput-boolean v3, p0, Lcom/oppo/widget/OppoEditText;->shouldeHandleDelete:Z

    move v3, v4

    .line 260
    goto :goto_0

    .line 266
    :pswitch_2
    iget v3, p0, Lcom/oppo/widget/OppoEditText;->deltX:I

    if-lt v1, v3, :cond_7

    if-ltz v2, :cond_7

    iget v3, p0, Lcom/oppo/widget/OppoEditText;->bound:I

    if-le v2, v3, :cond_3

    .line 267
    :cond_7
    iget-object v3, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 268
    iget-object v3, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v7, v7, v3, v7}, Lcom/oppo/widget/OppoEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 275
    :pswitch_3
    iget-object v3, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 276
    iget-object v3, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v7, v7, v3, v7}, Lcom/oppo/widget/OppoEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 364
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 366
    if-eqz p3, :cond_0

    .line 367
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoEditText;->mDrawableSizeRight:I

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoEditText;->mDrawableSizeRight:I

    goto :goto_0
.end method

.method public setDeletable(Z)V
    .locals 2
    .parameter "delete"

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/oppo/widget/OppoEditText;->quickDelete:Z

    .line 318
    iget-boolean v0, p0, Lcom/oppo/widget/OppoEditText;->quickDelete:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/oppo/widget/OppoEditText;->textWatcher:Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;-><init>(Lcom/oppo/widget/OppoEditText;Lcom/oppo/widget/OppoEditText$1;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoEditText;->textWatcher:Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;

    .line 322
    iget-object v0, p0, Lcom/oppo/widget/OppoEditText;->textWatcher:Lcom/oppo/widget/OppoEditText$OPPOTextWatcher;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 325
    :cond_0
    return-void
.end method

.method public setOnTextDeletedListener(Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;)V
    .locals 0
    .parameter "dl"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/oppo/widget/OppoEditText;->deleteListener:Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;

    .line 303
    return-void
.end method

.method public setSwitchInputMethodEnable(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/oppo/widget/OppoEditText;->switchInputSwitch:Z

    .line 353
    return-void
.end method

.method public setTextDeletedListener(Lcom/oppo/widget/OppoEditText$mPasswordTextDeletedListener;)V
    .locals 0
    .parameter "dl"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/oppo/widget/OppoEditText;->mdeleteListener:Lcom/oppo/widget/OppoEditText$mPasswordTextDeletedListener;

    .line 308
    return-void
.end method
