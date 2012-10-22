.class public Landroid/widget/EditText;
.super Landroid/widget/TextView;
.source "EditText.java"


# static fields
.field public static final CURRENTEDITTEXT:I = 0x1

.field private static final DEBUG:Z = false

.field public static final FOCUSCHANGEACTION:Ljava/lang/String; = "FOCUSCHANGEACTION"

.field public static final FOCUSCHANGEFLAG:Ljava/lang/String; = "FOCUSCHANGEFLAG"

.field public static final NONEEDITTEXT:I = 0x0

.field public static final OTHEREDITTEXT:I = 0x2

.field public static final SEARCHFLAG:Ljava/lang/String; = "SEARCHFLAG"

.field public static final SEARCHFLAGACTION:Ljava/lang/String; = "SEARCHFLAGACTION"

.field private static final TAG:Ljava/lang/String; = "EditText"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method private getLocationOnScreenRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "view"
    .parameter "rect"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 251
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 254
    .local v1, position:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getRealLocationOnScreen([I)V

    .line 255
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 256
    .local v2, width:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 257
    .local v0, height:I
    aget v3, v1, v4

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 258
    aget v3, v1, v4

    add-int/2addr v3, v2

    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 259
    aget v3, v1, v5

    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 260
    aget v3, v1, v5

    add-int/2addr v3, v0

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private getSelectView(Landroid/view/View;II)Landroid/view/View;
    .locals 8
    .parameter "parentView"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    .line 195
    if-nez p1, :cond_0

    move-object v4, v6

    .line 245
    :goto_0
    return-object v4

    .line 200
    :cond_0
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    move-object v5, p1

    .line 202
    check-cast v5, Landroid/view/ViewGroup;

    .line 203
    .local v5, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 207
    .local v1, childCount:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_3

    .line 208
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_2

    .line 207
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 214
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 215
    .local v3, rect:Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 216
    invoke-direct {p0, v0, v3}, Landroid/widget/EditText;->getLocationOnScreenRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 217
    invoke-direct {p0, v3}, Landroid/widget/EditText;->logForRect(Landroid/graphics/Rect;)V

    .line 218
    invoke-virtual {v3, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 220
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/EditText;->getSelectView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v4

    .line 221
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_1

    goto :goto_0

    .end local v0           #child:Landroid/view/View;
    .end local v3           #rect:Landroid/graphics/Rect;
    .end local v4           #view:Landroid/view/View;
    :cond_3
    move-object v4, v6

    .line 228
    goto :goto_0

    .line 232
    .end local v1           #childCount:I
    .end local v2           #i:I
    .end local v5           #viewGroup:Landroid/view/ViewGroup;
    :cond_4
    instance-of v7, p1, Landroid/widget/EditText;

    if-eqz v7, :cond_6

    .line 233
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 234
    .restart local v3       #rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 235
    invoke-direct {p0, p1, v3}, Landroid/widget/EditText;->getLocationOnScreenRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 236
    invoke-direct {p0, v3}, Landroid/widget/EditText;->logForRect(Landroid/graphics/Rect;)V

    .line 237
    invoke-virtual {v3, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v4, p1

    .line 238
    goto :goto_0

    :cond_5
    move-object v4, v6

    .line 241
    goto :goto_0

    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_6
    move-object v4, v6

    .line 245
    goto :goto_0
.end method

.method private logForRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 270
    return-void
.end method

.method private sendBroadcastToIme(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "SEARCHFLAGACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SEARCHFLAG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method private sendFocusChangeBroadcastToIme(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "FOCUSCHANGEACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "FOCUSCHANGEFLAG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    return-void
.end method


# virtual methods
.method public extendSelection(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 131
    return-void
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected notifyTextLengthChanged(II)V
    .locals 1
    .parameter "oldLength"
    .parameter "newLength"

    .prologue
    .line 276
    if-nez p1, :cond_1

    if-lez p2, :cond_1

    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/EditText;->sendBroadcastToIme(Z)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    if-lez p1, :cond_0

    if-nez p2, :cond_0

    .line 280
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/EditText;->sendBroadcastToIme(Z)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 124
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .parameter "ellipsis"

    .prologue
    .line 135
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 140
    return-void
.end method

.method public setPosition(II)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v11

    .line 163
    .local v11, rootView:Landroid/view/View;
    invoke-direct {p0, v11, p1, p2}, Landroid/widget/EditText;->getSelectView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v12

    .line 165
    .local v12, view:Landroid/view/View;
    if-eqz v12, :cond_1

    move-object v9, v12

    .line 166
    check-cast v9, Landroid/widget/EditText;

    .line 168
    .local v9, editText:Landroid/widget/EditText;
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 169
    .local v8, e1:Landroid/view/MotionEvent;
    if-eq v9, p0, :cond_0

    .line 170
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 171
    invoke-virtual {v12, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 172
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 173
    invoke-virtual {v12, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 175
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/EditText;->sendFocusChangeBroadcastToIme(I)V

    .line 191
    .end local v8           #e1:Landroid/view/MotionEvent;
    .end local v9           #editText:Landroid/widget/EditText;
    :goto_0
    return-void

    .line 177
    .restart local v8       #e1:Landroid/view/MotionEvent;
    .restart local v9       #editText:Landroid/widget/EditText;
    :cond_0
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 178
    .local v10, position:[I
    invoke-virtual {p0, v10}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 179
    const/4 v0, 0x0

    aget v0, v10, v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v10, v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 180
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 181
    invoke-virtual {p0, v8}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 182
    const/4 v0, 0x0

    aget v0, v10, v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v10, v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 183
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 184
    invoke-virtual {p0, v8}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 186
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/EditText;->sendFocusChangeBroadcastToIme(I)V

    goto :goto_0

    .line 189
    .end local v8           #e1:Landroid/view/MotionEvent;
    .end local v9           #editText:Landroid/widget/EditText;
    .end local v10           #position:[I
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/EditText;->sendFocusChangeBroadcastToIme(I)V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 117
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .parameter "start"
    .parameter "stop"

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 110
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .parameter "text"
    .parameter "type"

    .prologue
    .line 102
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 103
    return-void
.end method
