.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/BaseKeyListener$1;,
        Landroid/text/method/BaseKeyListener$MyComparator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field static final OLD_SEL_START:Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "BaseKeyListener"


# instance fields
.field protected mComFlag:Z

.field protected mComs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/CommaInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mSBCCom:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/method/BaseKeyListener;->mComFlag:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/method/BaseKeyListener;->mComs:Ljava/util/ArrayList;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Landroid/text/method/BaseKeyListener;->mSBCCom:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .locals 5
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"
    .parameter "isForwardDelete"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 128
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    and-int/lit16 v4, v4, -0xf4

    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v2

    .line 134
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 135
    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p4}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x2

    invoke-static {p2, v4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 140
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 141
    goto :goto_0

    .line 145
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteEmoji(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 146
    goto :goto_0

    .line 150
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteCommaSpan(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v3

    .line 151
    goto :goto_0

    .line 155
    :cond_6
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 157
    .local v1, start:I
    if-nez p5, :cond_7

    invoke-virtual {p4}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {p2, v3}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v4

    if-ne v4, v3, :cond_8

    .line 159
    :cond_7
    invoke-static {p2, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 163
    .local v0, end:I
    :goto_1
    if-eq v1, v0, :cond_0

    .line 164
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p2, v2, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    move v2, v3

    .line 165
    goto :goto_0

    .line 161
    .end local v0           #end:I
    :cond_8
    invoke-static {p2, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .restart local v0       #end:I
    goto :goto_1
.end method

.method private deleteCommaSpan(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 10
    .parameter "view"
    .parameter "content"

    .prologue
    const/4 v7, 0x0

    .line 295
    instance-of v8, p1, Landroid/widget/TextView;

    if-nez v8, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v7

    :cond_1
    move-object v5, p1

    .line 299
    check-cast v5, Landroid/widget/TextView;

    .line 300
    .local v5, textView:Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getCommaFlag()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 304
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 305
    .local v4, selEnd:I
    move v6, v4

    .line 307
    .local v6, to:I
    invoke-virtual {v5}, Landroid/widget/TextView;->getCommaInfos()[Landroid/widget/CommaInfo;

    move-result-object v3

    .line 309
    .local v3, mComs:[Landroid/widget/CommaInfo;
    array-length v8, v3

    if-lez v8, :cond_0

    .line 311
    array-length v8, v3

    add-int/lit8 v1, v8, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 312
    aget-object v8, v3, v1

    iget v8, v8, Landroid/widget/CommaInfo;->mEnd:I

    if-ne v4, v8, :cond_6

    .line 313
    aget-object v8, v3, v1

    iget v8, v8, Landroid/widget/CommaInfo;->mEnd:I

    aget-object v9, v3, v1

    iget v9, v9, Landroid/widget/CommaInfo;->mStart:I

    sub-int/2addr v8, v9

    sub-int v6, v4, v8

    .line 314
    aget-object v8, v3, v1

    iget-object v8, v8, Landroid/widget/CommaInfo;->mValue:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 315
    add-int/lit8 v2, v1, -0x1

    .local v2, j:I
    :goto_2
    if-ltz v2, :cond_2

    .line 316
    aget-object v0, v3, v2

    .line 317
    .local v0, commaInfo:Landroid/widget/CommaInfo;
    iget v8, v0, Landroid/widget/CommaInfo;->mEnd:I

    if-ne v8, v6, :cond_4

    .line 318
    iget v8, v0, Landroid/widget/CommaInfo;->mEnd:I

    iget v9, v0, Landroid/widget/CommaInfo;->mStart:I

    sub-int/2addr v8, v9

    sub-int/2addr v6, v8

    .line 319
    iget-object v8, v0, Landroid/widget/CommaInfo;->mValue:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 331
    .end local v0           #commaInfo:Landroid/widget/CommaInfo;
    .end local v2           #j:I
    :cond_2
    :goto_3
    if-ltz v1, :cond_0

    .line 337
    if-gez v6, :cond_3

    .line 338
    const/4 v6, 0x0

    .line 341
    :cond_3
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-interface {p2, v7, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 342
    const/4 v7, 0x1

    goto :goto_0

    .line 323
    .restart local v0       #commaInfo:Landroid/widget/CommaInfo;
    .restart local v2       #j:I
    :cond_4
    add-int/lit8 v6, v6, -0x1

    .line 324
    goto :goto_3

    .line 315
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 311
    .end local v0           #commaInfo:Landroid/widget/CommaInfo;
    .end local v2           #j:I
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private deleteEmoji(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 7
    .parameter "view"
    .parameter "content"

    .prologue
    const/4 v5, 0x0

    .line 271
    instance-of v6, p1, Landroid/widget/TextView;

    if-nez v6, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v4, p1

    .line 275
    check-cast v4, Landroid/widget/TextView;

    .line 276
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getEmoFlag()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 279
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 280
    .local v2, offset:I
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->getHitEmo(I)Landroid/widget/TextView$EmoData;

    move-result-object v0

    .line 281
    .local v0, emo:Landroid/widget/TextView$EmoData;
    if-eqz v0, :cond_0

    .line 284
    iget v3, v0, Landroid/widget/TextView$EmoData;->mStart:I

    .line 285
    .local v3, start:I
    iget v1, v0, Landroid/widget/TextView$EmoData;->mEnd:I

    .line 286
    .local v1, end:I
    if-eq v3, v1, :cond_0

    .line 289
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {p2, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 290
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 5
    .parameter "view"
    .parameter "content"

    .prologue
    .line 186
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 187
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 188
    .local v1, layout:Landroid/text/Layout;
    if-eqz v1, :cond_0

    .line 189
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 190
    .local v2, line:I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 191
    .local v3, start:I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 192
    .local v0, end:I
    if-eq v0, v3, :cond_0

    .line 193
    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 194
    const/4 v4, 0x1

    .line 198
    .end local v0           #end:I
    .end local v1           #layout:Landroid/text/Layout;
    .end local v2           #line:I
    .end local v3           #start:I
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 4
    .parameter "view"
    .parameter "content"

    .prologue
    .line 171
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 172
    .local v1, selectionStart:I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 173
    .local v0, selectionEnd:I
    if-ge v0, v1, :cond_0

    .line 174
    move v2, v0

    .line 175
    .local v2, temp:I
    move v0, v1

    .line 176
    move v1, v2

    .line 178
    .end local v2           #temp:I
    :cond_0
    if-eq v1, v0, :cond_1

    .line 179
    invoke-interface {p2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 180
    const/4 v3, 0x1

    .line 182
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 3
    .parameter "caps"
    .parameter "autoText"

    .prologue
    .line 202
    const/4 v0, 0x1

    .line 203
    .local v0, contentType:I
    sget-object v1, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 214
    :goto_0
    if-eqz p1, :cond_0

    .line 215
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 217
    :cond_0
    return v0

    .line 205
    :pswitch_0
    or-int/lit16 v0, v0, 0x1000

    .line 206
    goto :goto_0

    .line 208
    :pswitch_1
    or-int/lit16 v0, v0, 0x2000

    .line 209
    goto :goto_0

    .line 211
    :pswitch_2
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 110
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 122
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 223
    sparse-switch p3, :sswitch_data_0

    .line 231
    const/4 v0, 0x0

    .line 235
    .local v0, handled:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 236
    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 239
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 225
    .end local v0           #handled:Z
    :sswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 226
    .restart local v0       #handled:Z
    goto :goto_0

    .line 228
    .end local v0           #handled:Z
    :sswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 229
    .restart local v0       #handled:Z
    goto :goto_0

    .line 223
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "content"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 247
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eqz v5, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v4

    .line 253
    :cond_1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 254
    .local v1, selectionStart:I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 255
    .local v0, selectionEnd:I
    if-ge v0, v1, :cond_2

    .line 256
    move v2, v0

    .line 257
    .local v2, temp:I
    move v0, v1

    .line 258
    move v1, v2

    .line 261
    .end local v2           #temp:I
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, text:Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 266
    invoke-interface {p2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 267
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setComFlag(ZLjava/util/ArrayList;Landroid/content/Context;)V
    .locals 3
    .parameter "comFlag"
    .parameter
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/CommaInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, coms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/CommaInfo;>;"
    if-eqz p2, :cond_0

    .line 68
    const-string v0, "BaseKeyListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setComFlag comFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";coms = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v0, "BaseKeyListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setComFlag hashCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iput-boolean p1, p0, Landroid/text/method/BaseKeyListener;->mComFlag:Z

    .line 73
    iput-object p2, p0, Landroid/text/method/BaseKeyListener;->mComs:Ljava/util/ArrayList;

    .line 74
    iput-object p3, p0, Landroid/text/method/BaseKeyListener;->mContext:Landroid/content/Context;

    .line 76
    iget-boolean v0, p0, Landroid/text/method/BaseKeyListener;->mComFlag:Z

    if-eqz v0, :cond_0

    .line 79
    const v0, 0xff0c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/BaseKeyListener;->mSBCCom:Ljava/lang/String;

    .line 83
    :cond_0
    return-void
.end method
