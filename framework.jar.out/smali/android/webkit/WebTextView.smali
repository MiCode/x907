.class Landroid/webkit/WebTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "WebTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebTextView$AutoCompleteAdapter;,
        Landroid/webkit/WebTextView$WebTextViewLayout;,
        Landroid/webkit/WebTextView$BackgroundDrawable;,
        Landroid/webkit/WebTextView$MyResultReceiver;
    }
.end annotation


# static fields
.field private static final AUTOFILL_FORM:I = 0x64

.field private static final EMAIL:I = 0x4

.field static final FORM_NOT_AUTOFILLABLE:I = -0x1

.field static final LOGTAG:Ljava/lang/String; = "webtextview"

.field private static final NORMAL_TEXT_FIELD:I = 0x0

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final NUMBER:I = 0x5

.field private static final PASSWORD:I = 0x2

.field private static final SEARCH:I = 0x3

.field private static final TELEPHONE:I = 0x6

.field private static final TEXT_AREA:I = 0x1

.field private static final URL:I = 0x7


# instance fields
.field private mAutoFillProfileIsSet:Z

.field private mAutoFillable:Z

.field private mCharacter:[C

.field private mDelSelEnd:I

.field private mDelSelStart:I

.field private mDragSent:Z

.field private mDragStartTime:J

.field private mDragStartX:F

.field private mDragStartY:F

.field private mFromFocusChange:Z

.field private mFromSetInputType:Z

.field private mFromWebKit:Z

.field private mGotDelete:Z

.field private mGotEnterDown:Z

.field private mGotTouchDown:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasPerformedLongClick:Z

.field private mHeightSpec:I

.field private mInSetTextAndKeepSelection:Z

.field private mInsideRemove:Z

.field private mMaxLength:I

.field private mNodePointer:I

.field private mPreChange:Ljava/lang/String;

.field private mQueryId:I

.field private mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

.field private mRingInset:I

.field private mScrolled:Z

.field private mSingle:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWidthSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;I)V
    .locals 7
    .parameter "context"
    .parameter "webView"
    .parameter "autoFillQueryId"

    .prologue
    const/4 v5, -0x1

    .line 181
    const/4 v3, 0x0

    const v4, 0x10102b9

    invoke-direct {p0, p1, v3, v4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    const/4 v3, 0x1

    new-array v3, v3, [C

    iput-object v3, p0, Landroid/webkit/WebTextView;->mCharacter:[C

    .line 182
    iput-object p2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    .line 183
    iput v5, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 184
    invoke-virtual {p0, p3}, Landroid/webkit/WebTextView;->setAutoFillable(I)V

    .line 187
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 188
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x101

    or-int/lit16 v3, v3, 0x80

    or-int/lit8 v0, v3, 0x4

    .line 190
    .local v0, flags:I
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 195
    const/high16 v3, -0x100

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setTextColor(I)V

    .line 196
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setIncludeFontPadding(Z)V

    .line 201
    new-instance v3, Landroid/webkit/WebTextView$1;

    invoke-direct {v3, p0}, Landroid/webkit/WebTextView$1;-><init>(Landroid/webkit/WebTextView;)V

    iput-object v3, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    .line 211
    new-instance v3, Landroid/webkit/WebTextView$MyResultReceiver;

    iget-object v4, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebTextView$MyResultReceiver;-><init>(Landroid/webkit/WebTextView;Landroid/os/Handler;)V

    iput-object v3, p0, Landroid/webkit/WebTextView;->mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

    .line 212
    const/high16 v3, 0x4000

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v3, v4

    .line 213
    .local v2, ringWidth:F
    float-to-int v3, v2

    iput v3, p0, Landroid/webkit/WebTextView;->mRingInset:I

    .line 214
    new-instance v3, Landroid/webkit/WebTextView$BackgroundDrawable;

    iget v4, p0, Landroid/webkit/WebTextView;->mRingInset:I

    invoke-direct {v3, v4}, Landroid/webkit/WebTextView$BackgroundDrawable;-><init>(I)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 217
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebTextView;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Landroid/webkit/WebTextView;->mQueryId:I

    return v0
.end method

.method private getOppoManufacture()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manufacture:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manufacture:Ljava/lang/String;

    const-string/jumbo v2, "oppo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lineUpScroll()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 475
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 476
    .local v0, layout:Landroid/text/Layout;
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 477
    iget-boolean v3, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v3, :cond_2

    .line 479
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 484
    .local v1, maxScrollX:F
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    iget v2, p0, Landroid/view/View;->mScrollX:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    :cond_0
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->scrollFocusedTextInputX(F)V

    .line 491
    .end local v1           #maxScrollX:F
    :cond_1
    :goto_0
    return-void

    .line 488
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->scrollFocusedTextInputY(I)V

    goto :goto_0
.end method

.method private sendDomEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 887
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 888
    return-void
.end method

.method private setMaxLength(I)V
    .locals 3
    .parameter "maxLength"

    .prologue
    .line 979
    iput p1, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 980
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 981
    sget-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 986
    :goto_0
    return-void

    .line 983
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method static urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "urlString"

    .prologue
    .line 1211
    const/4 v1, 0x0

    .line 1213
    .local v1, url:Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #url:Ljava/net/URL;
    .local v2, url:Ljava/net/URL;
    move-object v1, v2

    .line 1218
    .end local v2           #url:Ljava/net/URL;
    .restart local v1       #url:Ljava/net/URL;
    :goto_0
    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    .local v0, e:Ljava/net/MalformedURLException;
    const-string/jumbo v3, "webtextview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1218
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 16
    .parameter "event"

    .prologue
    .line 291
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 443
    :goto_0
    return v1

    .line 295
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v7, 0x1

    .line 296
    .local v7, down:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 298
    .local v9, keyCode:I
    const/4 v8, 0x0

    .line 299
    .local v8, isArrowKey:Z
    packed-switch v9, :pswitch_data_0

    .line 308
    :goto_2
    const/16 v1, 0x3d

    if-ne v1, v9, :cond_3

    .line 309
    if-eqz v7, :cond_1

    .line 310
    const/4 v1, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->onEditorAction(I)V

    .line 312
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 295
    .end local v7           #down:Z
    .end local v8           #isArrowKey:Z
    .end local v9           #keyCode:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 304
    .restart local v7       #down:Z
    .restart local v8       #isArrowKey:Z
    .restart local v9       #keyCode:I
    :pswitch_0
    const/4 v8, 0x1

    goto :goto_2

    .line 314
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 315
    .local v15, text:Landroid/text/Spannable;
    invoke-static {v15}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v12

    .line 316
    .local v12, oldStart:I
    invoke-static {v15}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v11

    .line 321
    .local v11, oldEnd:I
    const/16 v1, 0x43

    if-ne v1, v9, :cond_5

    .line 322
    if-nez v12, :cond_4

    if-nez v11, :cond_4

    .line 323
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 324
    const/4 v1, 0x1

    goto :goto_0

    .line 326
    :cond_4
    if-eqz v7, :cond_5

    .line 327
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 328
    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    .line 329
    move-object/from16 v0, p0

    iput v11, v0, Landroid/webkit/WebTextView;->mDelSelEnd:I

    .line 333
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x42

    if-eq v1, v9, :cond_6

    const/16 v1, 0xa0

    if-ne v1, v9, :cond_9

    .line 335
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 336
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 338
    :cond_7
    if-nez v7, :cond_8

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 344
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v9}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 345
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 347
    :cond_8
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 348
    :cond_9
    const/16 v1, 0x17

    if-ne v1, v9, :cond_c

    .line 350
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 351
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 354
    :cond_a
    if-nez v7, :cond_b

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 358
    :cond_b
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 362
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_d

    .line 363
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebTextView;->mWidthSpec:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mHeightSpec:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 366
    :cond_d
    invoke-interface {v15}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 367
    .local v3, oldLength:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    if-ne v3, v1, :cond_10

    const/4 v10, 0x1

    .line 372
    .local v10, maxedOut:Z
    :goto_3
    if-eqz v10, :cond_11

    if-eq v11, v12, :cond_11

    .line 373
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 377
    .local v13, oldText:Ljava/lang/String;
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 388
    const/16 v1, 0x42

    if-eq v1, v9, :cond_e

    const/16 v1, 0xa0

    if-ne v1, v9, :cond_f

    .line 393
    :cond_e
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    .line 395
    :cond_f
    if-eqz v10, :cond_13

    if-nez v8, :cond_13

    const/16 v1, 0x43

    if-eq v9, v1, :cond_13

    .line 396
    if-ne v11, v12, :cond_12

    .line 398
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 367
    .end local v10           #maxedOut:Z
    .end local v13           #oldText:Ljava/lang/String;
    :cond_10
    const/4 v10, 0x0

    goto :goto_3

    .line 375
    .restart local v10       #maxedOut:Z
    :cond_11
    const-string v13, ""

    .restart local v13       #oldText:Ljava/lang/String;
    goto :goto_4

    .line 399
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 406
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v14

    .line 407
    .local v14, span:Landroid/text/Spannable;
    invoke-static {v14}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    .line 408
    .local v5, newStart:I
    invoke-static {v14}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 409
    .local v6, newEnd:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 411
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 426
    .end local v5           #newStart:I
    .end local v6           #newEnd:I
    .end local v14           #span:Landroid/text/Spannable;
    :cond_13
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 430
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    if-eqz v1, :cond_15

    if-nez v7, :cond_15

    .line 431
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 434
    :cond_15
    if-eqz v8, :cond_17

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->resetTrackballTime()V

    .line 440
    if-eqz v7, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-virtual {v1, v9, v0}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-virtual {v1, v9, v0}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 443
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method ensureLayout()V
    .locals 6

    .prologue
    .line 447
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_0

    .line 449
    iget v1, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    iget v2, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 450
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 451
    .local v0, params:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 452
    iget v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/webkit/WebTextView;->layout(IIII)V

    .line 456
    .end local v0           #params:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Landroid/webkit/WebTextView;->mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

    return-object v0
.end method

.method getSpaceInHeight()I
    .locals 5

    .prologue
    .line 1239
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 1240
    .local v2, paint:Landroid/text/TextPaint;
    if-nez v2, :cond_0

    .line 1241
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getHeight()I

    move-result v3

    .line 1245
    :goto_0
    return v3

    .line 1243
    :cond_0
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 1244
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 1245
    .local v1, fontHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_0
.end method

.method isSameTextField(I)Z
    .locals 1
    .parameter "ptr"

    .prologue
    .line 468
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 0
    .parameter "w"
    .parameter "hintWidth"
    .parameter "boring"
    .parameter "hintBoring"
    .parameter "ellipsisWidth"
    .parameter "bringIntoView"

    .prologue
    .line 498
    invoke-super/range {p0 .. p6}, Landroid/widget/AutoCompleteTextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 500
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 501
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 540
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 541
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 547
    :cond_0
    return-object v0
.end method

.method public onEditorAction(I)V
    .locals 4
    .parameter "actionCode"

    .prologue
    const/16 v3, 0x42

    const/4 v2, 0x0

    .line 552
    packed-switch p1, :pswitch_data_0

    .line 578
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 554
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeMoveCursorToNextTextInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 558
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 559
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    .line 563
    :pswitch_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onEditorAction(I)V

    goto :goto_0

    .line 568
    :pswitch_3
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 570
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 572
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 552
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 583
    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 584
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 585
    if-eqz p1, :cond_1

    .line 586
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setActive(Z)V

    .line 590
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 591
    return-void

    .line 587
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setActive(Z)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 597
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    .line 599
    const-string v1, ""

    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 601
    .local v0, settings:Landroid/webkit/WebSettings;
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mAutoFillProfileIsSet:Z

    if-eqz v1, :cond_1

    .line 603
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v2, p0, Landroid/webkit/WebTextView;->mQueryId:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->autoFillForm(I)V

    .line 612
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_0
    :goto_0
    return-void

    .line 608
    .restart local v0       #settings:Landroid/webkit/WebSettings;
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebChromeClient;->setupAutoFill(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 616
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onScrollChanged(IIII)V

    .line 617
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 618
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 622
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setSelection(II)V

    .line 629
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 631
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 17
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 635
    invoke-super/range {p0 .. p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 636
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 641
    .local v13, postChange:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    if-le v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    if-nez p4, :cond_5

    .line 647
    if-lez p3, :cond_4

    .line 649
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    .line 650
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    if-eqz v2, :cond_3

    .line 651
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 652
    add-int v12, p2, p3

    .line 653
    .local v12, oldEnd:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mDelSelEnd:I

    if-ne v2, v12, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    move/from16 v0, p2

    if-eq v2, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    if-ne v2, v12, :cond_3

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    .line 658
    :cond_2
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x43

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 660
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/16 v4, 0x43

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 667
    .end local v12           #oldEnd:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    add-int v3, p2, p3

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->deleteSelection(II)V

    .line 669
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    goto :goto_0

    .line 679
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 682
    const/4 v2, 0x1

    move/from16 v0, p4

    if-le v0, v2, :cond_6

    add-int/lit8 v2, p4, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    add-int v3, p2, p3

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 685
    .local v14, replaceButOne:Ljava/lang/String;
    add-int v2, p2, p3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 687
    .local v15, replacedString:Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 689
    add-int p2, p2, p3

    .line 690
    const/16 p3, 0x0

    .line 691
    const/16 p4, 0x1

    .line 694
    .end local v14           #replaceButOne:Ljava/lang/String;
    .end local v15           #replacedString:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 698
    const/4 v8, 0x0

    .line 699
    .local v8, events:[Landroid/view/KeyEvent;
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_7

    .line 700
    add-int v2, p2, p4

    add-int/lit8 v2, v2, -0x1

    add-int v3, p2, p4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 701
    const/4 v2, -0x1

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v10

    .line 702
    .local v10, kmap:Landroid/view/KeyCharacterMap;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    invoke-virtual {v10, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v8

    .line 704
    .end local v10           #kmap:Landroid/view/KeyCharacterMap;
    :cond_7
    if-eqz v8, :cond_a

    const/16 v16, 0x1

    .line 705
    .local v16, useKeyEvents:Z
    :goto_1
    if-eqz v16, :cond_b

    .line 712
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-nez v2, :cond_8

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    add-int v3, p2, p3

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->setSelection(II)V

    .line 715
    :cond_8
    array-length v11, v8

    .line 716
    .local v11, length:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v11, :cond_c

    .line 719
    aget-object v2, v8, v9

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 720
    aget-object v2, v8, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 716
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 704
    .end local v9           #i:I
    .end local v11           #length:I
    .end local v16           #useKeyEvents:Z
    :cond_a
    const/16 v16, 0x0

    goto :goto_1

    .line 724
    .restart local v16       #useKeyEvents:Z
    :cond_b
    add-int v2, p2, p4

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 726
    .local v5, replace:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    add-int v4, p2, p3

    add-int v6, p2, p4

    add-int v7, p2, p4

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 730
    .end local v5           #replace:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 735
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 821
    :goto_0
    const/4 v8, 0x1

    :goto_1
    return v8

    .line 737
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 740
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    .line 741
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    .line 742
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    .line 743
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 744
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 745
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 746
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    goto :goto_0

    .line 749
    :pswitch_1
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_1

    .line 750
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 752
    invoke-direct {p0}, Landroid/webkit/WebTextView;->getOppoManufacture()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 753
    invoke-virtual {p0, p1}, Landroid/webkit/WebTextView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 756
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 758
    :cond_1
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 759
    .local v6, slop:I
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 760
    .local v0, buffer:Landroid/text/Spannable;
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v3

    .line 761
    .local v3, initialScrollX:I
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v4

    .line 762
    .local v4, initialScrollY:I
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 763
    iget v8, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 764
    .local v1, dx:I
    iget v8, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 768
    .local v2, dy:I
    div-int/lit8 v7, v6, 0x2

    .line 769
    .local v7, smallerSlop:I
    if-gt v1, v7, :cond_2

    if-le v2, v7, :cond_3

    .line 771
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 772
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 773
    const/4 v8, 0x1

    goto :goto_1

    .line 775
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    .line 780
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 782
    :cond_4
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_6

    .line 784
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-nez v8, :cond_5

    .line 785
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    iget v10, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    iget-wide v11, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/WebView;->initiateTextFieldDrag(FFJ)V

    .line 787
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 789
    :cond_5
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->textFieldDrag(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 790
    .local v5, scrolled:Z
    if-eqz v5, :cond_6

    .line 791
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 792
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 793
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 796
    .end local v5           #scrolled:Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 799
    .end local v0           #buffer:Landroid/text/Spannable;
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #initialScrollX:I
    .end local v4           #initialScrollY:I
    .end local v6           #slop:I
    .end local v7           #smallerSlop:I
    :pswitch_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 800
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_7

    .line 801
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 802
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 804
    :cond_7
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    if-nez v8, :cond_8

    .line 807
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 808
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_8

    .line 809
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->touchUpOnTextField(Landroid/view/MotionEvent;)V

    .line 813
    :cond_8
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-eqz v8, :cond_9

    .line 814
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 816
    :cond_9
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    goto/16 :goto_0

    .line 735
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 826
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 827
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 839
    :cond_0
    :goto_0
    return v2

    .line 829
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 832
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 833
    .local v1, text:Landroid/text/Spannable;
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 834
    .local v0, move:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 845
    invoke-direct {p0}, Landroid/webkit/WebTextView;->getOppoManufacture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setMagnifierEnable(Z)V

    .line 847
    iput-boolean v1, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    .line 848
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->performLongClick()Z

    move-result v0

    .line 851
    :goto_0
    return v0

    .line 850
    :cond_0
    iput-boolean v1, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    .line 851
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->performLongClick()Z

    move-result v0

    goto :goto_0
.end method

.method remove()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 862
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 863
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 864
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 866
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    .line 867
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->hasFocus()Z

    move-result v1

    .line 868
    .local v1, isFocused:Z
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 869
    if-eqz v1, :cond_1

    .line 870
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    .line 872
    :cond_1
    iput-boolean v3, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    .line 873
    iget-object v2, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 874
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 879
    const/4 v0, 0x1

    return v0
.end method

.method public setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 895
    if-eqz p1, :cond_1

    .line 896
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 898
    #calls: Landroid/webkit/WebTextView$AutoCompleteAdapter;->setTextView(Landroid/widget/TextView;)V
    invoke-static {p1, p0}, Landroid/webkit/WebTextView$AutoCompleteAdapter;->access$200(Landroid/webkit/WebTextView$AutoCompleteAdapter;Landroid/widget/TextView;)V

    .line 899
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {p0, p0}, Landroid/webkit/WebTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 904
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->showDropDown()V

    .line 908
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 909
    return-void

    .line 902
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 906
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->dismissDropDown()V

    goto :goto_1
.end method

.method setAutoFillProfileIsSet(Z)V
    .locals 0
    .parameter "autoFillProfileIsSet"

    .prologue
    .line 1206
    iput-boolean p1, p0, Landroid/webkit/WebTextView;->mAutoFillProfileIsSet:Z

    .line 1207
    return-void
.end method

.method public setAutoFillable(I)V
    .locals 1
    .parameter "queryId"

    .prologue
    .line 268
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAutoFillEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    .line 270
    iput p1, p0, Landroid/webkit/WebTextView;->mQueryId:I

    .line 271
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setDefaultSelection()V
    .locals 3

    .prologue
    .line 950
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 951
    .local v1, text:Landroid/text/Spannable;
    iget-boolean v2, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v2, :cond_2

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 952
    .local v0, selection:I
    :goto_0
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 962
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 963
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0, v0}, Landroid/webkit/WebView;->setSelection(II)V

    .line 968
    :cond_0
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->incrementTextGeneration()V

    .line 969
    :cond_1
    return-void

    .line 951
    .end local v0           #selection:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 966
    .restart local v0       #selection:I
    :cond_3
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method public setGravityForRtl(Z)V
    .locals 2
    .parameter "rtl"

    .prologue
    .line 1222
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 1223
    .local v0, gravity:I
    :goto_0
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    .line 1224
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 1225
    return-void

    .line 1222
    .end local v0           #gravity:I
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 1223
    .restart local v0       #gravity:I
    :cond_1
    const/16 v1, 0x30

    goto :goto_1
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 974
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 975
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 976
    return-void
.end method

.method setNodePointer(I)V
    .locals 1
    .parameter "ptr"

    .prologue
    .line 995
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-eq p1, v0, :cond_0

    .line 996
    iput p1, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    .line 997
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    .line 999
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 276
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v2, p2

    add-int/2addr v2, p4

    iget v3, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int v0, v2, v3

    .line 277
    .local v0, paddingInHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getSpaceInHeight()I

    move-result v1

    .line 278
    .local v1, spaceInHeight:I
    if-le v0, v1, :cond_0

    .line 279
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    div-int/lit8 p4, v2, 0x2

    move p2, p4

    .line 280
    if-gez p2, :cond_0

    .line 281
    iget p4, p0, Landroid/webkit/WebTextView;->mRingInset:I

    move p2, p4

    .line 285
    :cond_0
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v2, p1

    iget v3, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v3, p2

    iget v4, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v4, p3

    iget v5, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v5, p4

    invoke-super {p0, v2, v3, v4, v5}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 287
    return-void
.end method

.method setRect(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v4, 0x4000

    .line 1012
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1013
    .local v0, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    sub-int/2addr p1, v2

    .line 1014
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    sub-int/2addr p2, v2

    .line 1015
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p3, v2

    .line 1016
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p4, v2

    .line 1017
    const/4 v1, 0x0

    .line 1018
    .local v1, needsUpdate:Z
    if-nez v0, :cond_2

    .line 1019
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v0, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 1030
    .restart local v0       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1032
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1037
    :cond_1
    :goto_1
    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    .line 1038
    invoke-static {p4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    .line 1039
    return-void

    .line 1021
    :cond_2
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    if-ne v2, p1, :cond_3

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    if-ne v2, p2, :cond_3

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, p3, :cond_3

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, p4, :cond_0

    .line 1023
    :cond_3
    const/4 v1, 0x1

    .line 1024
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1025
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1026
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1027
    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1033
    :cond_4
    if-eqz v1, :cond_1

    .line 1034
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method setSelectionFromWebKit(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1045
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1047
    .local v1, text:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 1048
    .local v0, length:I
    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    .line 1049
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    .line 1050
    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1051
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    goto :goto_0
.end method

.method setTextAndKeepSelection(Ljava/lang/String;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    .line 1078
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1079
    .local v0, edit:Landroid/text/Editable;
    iput-object p1, p0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 1080
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1099
    :goto_0
    return-void

    .line 1083
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1084
    .local v4, selStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1085
    .local v3, selEnd:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 1086
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v0, v6, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1087
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1088
    .local v2, newLength:I
    if-le v4, v2, :cond_1

    move v4, v2

    .line 1089
    :cond_1
    if-le v3, v2, :cond_2

    move v3, v2

    .line 1090
    :cond_2
    invoke-static {v0, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1091
    iput-boolean v6, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 1092
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1093
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1096
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1098
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto :goto_0
.end method

.method setType(I)V
    .locals 10
    .parameter "type"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 1110
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-nez v6, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    const/4 v5, 0x1

    .line 1112
    .local v5, single:Z
    const/4 v3, -0x1

    .line 1113
    .local v3, maxLength:I
    const/16 v2, 0xa1

    .line 1115
    .local v2, inputType:I
    const/high16 v1, 0x1200

    .line 1117
    .local v1, imeOptions:I
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateIsSpellcheck()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1118
    const/high16 v6, 0x8

    or-int/2addr v2, v6

    .line 1120
    :cond_2
    if-eq v7, p1, :cond_3

    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateHasNextTextfield()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1122
    const/high16 v6, 0x800

    or-int/2addr v1, v6

    .line 1124
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1167
    or-int/lit8 v1, v1, 0x2

    .line 1170
    :goto_1
    invoke-virtual {p0, v9}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1171
    invoke-virtual {p0, v7}, Landroid/webkit/WebTextView;->setThreshold(I)V

    .line 1172
    const/4 v0, 0x0

    .line 1173
    .local v0, autoComplete:Z
    if-eqz v5, :cond_5

    .line 1174
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v7, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->nativeFocusCandidateFramePointer()I

    move-result v7

    iget v8, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebView;->requestLabel(II)V

    .line 1176
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateMaxLength()I

    move-result v3

    .line 1177
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateIsAutoComplete()Z

    move-result v0

    .line 1178
    const/4 v6, 0x2

    if-eq p1, v6, :cond_5

    iget-boolean v6, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    if-nez v6, :cond_4

    if-eqz v0, :cond_5

    .line 1179
    :cond_4
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v4

    .line 1180
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 1181
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v7, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    invoke-virtual {v6, v4, v7, v8, v0}, Landroid/webkit/WebView;->requestFormData(Ljava/lang/String;IZZ)V

    .line 1186
    .end local v4           #name:Ljava/lang/String;
    :cond_5
    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mSingle:Z

    .line 1187
    invoke-direct {p0, v3}, Landroid/webkit/WebTextView;->setMaxLength(I)V

    .line 1188
    invoke-virtual {p0, v5}, Landroid/webkit/WebTextView;->setHorizontallyScrolling(Z)V

    .line 1189
    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 1190
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->clearComposingText()V

    .line 1191
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setImeOptions(I)V

    .line 1192
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/webkit/WebTextView;->setVisibility(I)V

    .line 1193
    if-nez v0, :cond_0

    .line 1194
    invoke-virtual {p0, v9}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto :goto_0

    .line 1126
    .end local v0           #autoComplete:Z
    :pswitch_0
    or-int/lit8 v1, v1, 0x2

    .line 1127
    goto :goto_1

    .line 1129
    :pswitch_1
    const/4 v5, 0x0

    .line 1130
    const v6, 0x2c000

    or-int/2addr v2, v6

    .line 1133
    or-int/lit8 v1, v1, 0x1

    .line 1134
    goto :goto_1

    .line 1136
    :pswitch_2
    or-int/lit16 v2, v2, 0xe0

    .line 1137
    or-int/lit8 v1, v1, 0x2

    .line 1138
    goto :goto_1

    .line 1140
    :pswitch_3
    or-int/lit8 v1, v1, 0x3

    .line 1141
    goto :goto_1

    .line 1144
    :pswitch_4
    const/16 v2, 0xd1

    .line 1146
    or-int/lit8 v1, v1, 0x2

    .line 1147
    goto :goto_1

    .line 1150
    :pswitch_5
    const/16 v2, 0x3002

    .line 1154
    or-int/lit8 v1, v1, 0x5

    .line 1155
    goto :goto_1

    .line 1158
    :pswitch_6
    const/4 v2, 0x3

    .line 1159
    or-int/lit8 v1, v1, 0x5

    .line 1160
    goto :goto_1

    .line 1164
    :pswitch_7
    or-int/lit8 v1, v1, 0x2

    .line 1165
    goto :goto_1

    .line 1124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public showDropDown()V
    .locals 2

    .prologue
    .line 1230
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1231
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 1234
    :cond_0
    return-void
.end method

.method updateCachedTextfield()V
    .locals 2

    .prologue
    .line 1202
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateCachedTextfield(Ljava/lang/String;)V

    .line 1203
    return-void
.end method

.method updateTextSize()V
    .locals 6

    .prologue
    .line 1059
    const-string/jumbo v1, "updateTextSize should only be called from mWebView, so mWebView should never be null!"

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1063
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()F

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float v0, v1, v2

    .line 1065
    .local v0, size:F
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 1067
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Landroid/webkit/WebTextView;->mRingInset:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingRight()I

    move-result v3

    iget v4, p0, Landroid/webkit/WebTextView;->mRingInset:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingBottom()I

    move-result v4

    iget v5, p0, Landroid/webkit/WebTextView;->mRingInset:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 1070
    return-void
.end method
